void sub_1E50A0754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50A078C(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void QMINasClient::requestVoiceSystemId(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v6 = ims::error(&v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Client not initialized, can't get voice system id", 49);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    v7 = a3[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (*a3)
        {
          (*(**a3 + 16))(*a3, a2, 0);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 272);
  *(a1 + 264) = v11;
  *(a1 + 272) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  memset(v13, 0, sizeof(v13));
  qmi::MutableMessageBase::MutableMessageBase(v13);
  qmi::ClientRouter::get();
  operator new();
}

void QMINasClient::reportCallStatus(void *a1, const ims::AccessNetwork *a2, int a3, uint64_t a4, ims::AccessNetwork *a5, const ims::AccessNetwork *a6, uint64_t a7)
{
  v8 = a6;
  v9 = a4;
  v42 = a3;
  v36 = 0;
  v37 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = &unk_1F5EBDEF8;
  v35 = &_bambiDomain;
  v38 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 4)
      {
        QMINasCache::cancel((a1[35] + 88 * a2), a6, a4, a7, v27);
        ImsResult::operator=(&v34, v27);
        goto LABEL_13;
      }

LABEL_8:
      QMINasCache::update((a1[35] + 88 * a2), a5, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    if ((a4 & 0x40) == 0)
    {
      QMINasCache::end((a1[35] + 88 * a2), a6, a4, a7, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    v15 = QMINasCache::mapRadioType(a5, a2);
    v16 = (*a1 + 136);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        QMINasCache::connect((a1[35] + 88 * a2), a6, a4, a7, v27);
        ImsResult::operator=(&v34, v27);
LABEL_13:
        ImsResult::~ImsResult(v27);
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if ((a4 & 0x40) == 0)
    {
      QMINasCache::start((a1[35] + 88 * a2), a5, a6, a4, a7, v27);
      ImsResult::operator=(&v34, v27);
      goto LABEL_13;
    }

    v15 = QMINasCache::mapRadioType(a5, a2);
    v16 = (*a1 + 128);
  }

  (*v16)(a1, a2, v15, a7);
LABEL_14:
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27[0] = &unk_1F5EBDEF8;
  v27[1] = &_bambiDomain;
  v28 = 1073741836;
  if (v35 == &_bambiDomain)
  {
    v12 = v36;
    ImsResult::~ImsResult(v27);
    if (v12 == 1073741836)
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "nas");
      v23[0] = 0;
      v26 = 0;
      v13 = ims::error(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to process status request ", 33);
      *(v13 + 17) = 0;
      ims::toString<UacCallStatus>(&v42, v21);
      (*(*v13 + 32))(v13, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ".  No call status started for ", 30);
      *(v13 + 17) = 0;
      if (v8)
      {
        v14 = "MO";
      }

      else
      {
        v14 = "MT";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, 2);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " call on instance ", 18);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923350](*(v13 + 8), a2);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " with services ", 15);
      *(v13 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(&v17, ",");
      BambiServices::namesForServiceMask(v9, __p);
      (*(*v13 + 32))(v13, __p);
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v29 < 0)
      {
        operator delete(v27[0]);
      }
    }
  }

  else
  {
    ImsResult::~ImsResult(v27);
  }

  ImsResult::~ImsResult(&v34);
}

void sub_1E50A102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  ImsResult::~ImsResult(&a38);
  ImsResult::~ImsResult((v43 - 160));
  _Unwind_Resume(a1);
}

void QMINasClient::sendCallStatusResponse(QMINasClient *this, int a2, int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1174405120;
    v10[2] = ___ZN12QMINasClient22sendCallStatusResponseEjjb_block_invoke;
    v10[3] = &__block_descriptor_tmp_47_3;
    v10[4] = this;
    v11 = a2;
    v12 = 100;
    v13 = 0;
    v14 = 0;
    v15 = a3;
    v16 = 0;
    v5 = *(this + 10);
    if (!v5 || (v6 = *(this + 9), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = *(this + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableI12QMINasClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_1F5EEFB10;
    block[5] = v6;
    v18 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v10;
    dispatch_async(v9, block);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

unint64_t QMINasClient::applyCallStatusRequest(uint64_t a1, int a2, char a3, unint64_t a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v10;
  if (v10 != v11)
  {
    v12 = *(a1 + 8);
    while (*(*v12 + 8) != 1)
    {
      if (++v12 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  if (v12 == v11)
  {
LABEL_9:
    operator new();
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  v13[3] = a2;
  if (v10 != v11)
  {
    while (*(*v10 + 8) != 16)
    {
      if (++v10 == v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_17:
    operator new();
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v14[2] = a4;
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(a1, 17) = a3;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (v15 != v16)
  {
    while (*(*v15 + 8) != 18)
    {
      if (++v15 == v16)
      {
        goto LABEL_25;
      }
    }
  }

  if (v15 == v16)
  {
LABEL_25:
    operator new();
  }

  if (!v17)
  {
LABEL_26:
    __cxa_bad_cast();
  }

  v17[3] = a5 ^ 1;
  return (a4 >> 3) & 1;
}

void QMINasClient::sendCallStatusRequest(uint64_t a1, int a2, int a3, char a4, unint64_t a5, int a6)
{
  memset(v19, 0, sizeof(v19));
  qmi::MutableMessageBase::MutableMessageBase(v19);
  QMINasClient::applyCallStatusRequest(v19, a3, a4, a5, a6);
  std::string::basic_string[abi:ne200100]<0>(&v20, "nas");
  v15[0] = 0;
  v18 = 0;
  v12 = ims::debug(&v20, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Sending Call Status Request to BB", 33);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a2)
  {
    v13 = 2 * (a2 == 1);
  }

  else
  {
    v13 = 1;
  }

  qmi::ClientRouter::send<nas::CallStateNotification::Request>(v14, a1 + 112, v13, v19);
}

void sub_1E50A1808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<nas::CallStateNotification::Request>(_DWORD *a1, uint64_t a2, uint64_t a3, QMIServiceMsg *a4)
{
  v4 = a3;
  qmi::ClientRouter::get();
  *a1 = v4;
  operator new();
}

void QMINasClient::sendStartImsRegistrationUacCheckRequest(uint64_t a1, int a2, char a3, char a4)
{
  memset(v10, 0, sizeof(v10));
  qmi::MutableMessageBase::MutableMessageBase(v10);
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(v10, 1) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v11, "nas");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::debug(&v11, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sending Start IMS Registration UAC Check Request to BB...", 57);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  qmi::ClientRouter::get();
  operator new();
}

void sub_1E50A1BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void QMINasClient::sendStopImsRegistrationUacCheckRequest(uint64_t a1, int a2, char a3)
{
  memset(v9, 0, sizeof(v9));
  qmi::MutableMessageBase::MutableMessageBase(v9);
  *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(v9, 1) = a3;
  std::string::basic_string[abi:ne200100]<0>(&v10, "nas");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(&v10, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Sending Stop IMS Registration UAC Check Request to BB...", 56);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  qmi::ClientRouter::get();
  operator new();
}

void sub_1E50A1F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<QMINasCache>>::construct[abi:ne200100]<QMINasCache,int,std::shared_ptr<QMINasClient::create(dispatch::queue const&)::Wrapper> &,void,0>(void *a1, int a2, uint64_t a3, std::__shared_weak_count *this)
{
  v4 = a3 + 56;
  if (!a3)
  {
    v4 = 0;
  }

  if (this)
  {
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    a1[1] = this;
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = v4;
    a1[1] = 0;
  }

  a1[4] = 0;
  v5 = a1 + 4;
  *(v5 - 4) = a2;
  *(v5 - 1) = v5;
  v5[4] = 0;
  v5[3] = 0;
  v5[1] = 0;
  v5[2] = v5 + 3;
  if (this)
  {
    std::__shared_weak_count::__release_weak(this);
  }
}

void *std::map<nas::CallMediaType,QMINasCache::CallStatusRecord>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = a1[1];
      v5 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v6 = a1[1];
      v7 = a1 + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

uint64_t std::__split_buffer<QMINasCache>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    QMINasCache::~QMINasCache((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<QMINasClient::AccessBarringHandler *>::__init_with_size[abi:ne200100]<QMINasClient::AccessBarringHandler **,QMINasClient::AccessBarringHandler **>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(a4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1E50A2314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "qmi.nas");
    v11[0] = 0;
    v14 = 0;
    v3 = ims::error(v15, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Access Barring Indication Register request failed: ", 51);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = qmi::asString();
    v5 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v6 = *(a1 + 32);
    std::string::basic_string[abi:ne200100]<0>(v15, "qmi.nas");
    v11[0] = 0;
    v14 = 0;
    v7 = ims::debug(v15, v11);
    v3 = v7;
    if (*(v6 + 4))
    {
      v8 = "";
    }

    else
    {
      v8 = "not ";
    }

    v9 = *(v7 + 8);
    if (*(v6 + 4))
    {
      v10 = 0;
    }

    else
    {
      v10 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8, v10);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "listening for Access Barring indication for instance ", 53);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v3 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1E50A2538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c93_ZTSNSt3__110shared_ptrIZN12QMINasClient20AccessBarringHandler19listenForIndicationEjbE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::AccessBarringHandler::listenForIndication(unsigned int,BOOL)::$_0,std::allocator<QMINasClient::AccessBarringHandler::listenForIndication(unsigned int,BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEEFF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas18IndicationRegister8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A26E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegSsacInfo>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 42)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  if (!v3)
  {
    __cxa_bad_cast();
  }

  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSsacInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSsacChangeInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF0E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    QMIServiceMsg::serialize(&v16, this);
    qmi::MessageBase::MessageBase(v9, v16);
    qmi::MessageBase::validateMsgId(v9);
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v9);
  }

  v6 = *(a1 + 8);
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 100;
  v22 = 0;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN12QMINasClient11SsacHandler24handleSsacInfoIndicationEjRKN3nas11SsacInfoInd10IndicationE_block_invoke;
  v15[3] = &unk_1E876C348;
  v15[4] = &v16;
  v10[0] = v15;
  qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(v9, v10);
  std::string::basic_string[abi:ne200100]<0>(v13, "qmi.nas");
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  v7 = ims::debug(v13, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Got SSAC indication: ", 21);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923390](*(v7 + 8), *(v17 + 20));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", ", 2);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *(v17 + 11));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " for instance ", 14);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), v4 == 2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10[2]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v8 = *(v6 + 8);
  if (v8)
  {
    IMSNasClient::notifyDelegates(v8, v4 == 2, v17 + 20, 1);
  }

  _Block_object_dispose(&v16, 8);
  qmi::MessageBase::~MessageBase(v9);
}

void sub_1E50A2CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  qmi::MessageBase::~MessageBase(&a9);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::SsacHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(a2 + 1);
  if (v5)
  {
    if (v5 == 74)
    {
      if (*(v4 + 8))
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
        LOBYTE(v25) = 0;
        LOBYTE(v31) = 0;
        v6 = ims::debug(v18, &v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "no SSAC information available for instance ", 43);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
        LOBYTE(v25) = 0;
        LOBYTE(v31) = 0;
        v6 = ims::error(v18, &v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "no delegate for instance ", 25);
      }

      *(v6 + 17) = 0;
      MEMORY[0x1E6923350](*(v6 + 8), *(v3 + 2));
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
      LOBYTE(v25) = 0;
      LOBYTE(v31) = 0;
      v6 = ims::error(v18, &v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "GetSsacInfo request failed: ", 28);
      *(v6 + 17) = 0;
      MEMORY[0x1E6923350](*(v6 + 8), *(a2 + 1));
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " (", 2);
      *(v6 + 17) = 0;
      v12 = qmi::asString();
      v13 = strlen(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v12, v13);
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ")", 1);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v6 + 17) = 0;
    if (v31 == 1 && SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v25, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v8 = ims::debug(v7, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "received GetSsacInfo response for instance ", 43);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923350](*(v8 + 8), *(v3 + 2));
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v25);
    }

    v9 = *(v3 + 2);
    v25 = 0;
    v26 = &v25;
    v27 = 0x4002000000;
    v28 = __Block_byref_object_copy__5;
    v29 = __Block_byref_object_dispose__5;
    v30 = 100;
    v31 = 0;
    v32 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___ZN12QMINasClient11SsacHandler22handleSsacInfoResponseEjRKN3nas11GetSsacInfo8ResponseE_block_invoke;
    v24[3] = &unk_1E876C370;
    v24[4] = &v25;
    v18[0] = v24;
    qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(a2, v18);
    std::string::basic_string[abi:ne200100]<0>(v22, "qmi.nas");
    LOBYTE(v18[0]) = 0;
    v21 = 0;
    v10 = ims::debug(v22, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Got SSAC response: ", 19);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923390](*(v10 + 8), *(v26 + 20));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", ", 2);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), *(v26 + 11));
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " for instance ", 14);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923350](*(v10 + 8), v9);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v11 = *(v4 + 8);
    if (v11)
    {
      IMSNasClient::notifyDelegates(v11, v9, v26 + 20, 1);
    }

    _Block_object_dispose(&v25, 8);
  }
}

uint64_t __copy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN12QMINasClient11SsacHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::SsacHandler::requestCurrentBarringInfo(unsigned int)::$_0,std::allocator<QMINasClient::SsacHandler::requestCurrentBarringInfo(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas11GetSsacInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A34C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

tlv *qmi::MessageBase::applyTlv<nas::tlv::SsacInfoVoice,void({block_pointer}&)(nas::tlv::SsacInfoVoice&)>(qmi::MessageBase *a1, uint64_t a2)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v5;
    v12 = result;
    tlv::parseV<nas::tlv::SsacInfoVoice>(&v12, v5, v6, v7);
    if (v12)
    {
      return (*(*a2 + 16))();
    }

    else
    {
      v10 = *MEMORY[0x1E69E5140];
      v11 = *a1;

      return v10(v11, 16, v8, v9);
    }
  }

  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegAcbChangeInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF238;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    QMIServiceMsg::serialize(&v75, this);
    qmi::MessageBase::MessageBase(v53, v75);
    qmi::MessageBase::validateMsgId(v53);
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v53);
  }

  v6 = *(a1 + 8);
  v7 = v4 == 2;
  v72 = 100;
  v73 = 0;
  v74 = 0;
  TlvValue = qmi::MessageBase::findTlvValue(v53);
  v12 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_23;
  }

  v13 = v9;
  v64[0] = TlvValue;
  v14 = tlv::parseV<nas::tlv::AcbInfoSkipVoice>(v64, v9, v10, v11);
  if (!v64[0])
  {
    (*MEMORY[0x1E69E5140])(v53[0], 24, v12, v13);
LABEL_23:
    v19 = 1;
    goto LABEL_24;
  }

  v15 = v14;
  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v75) = 0;
  v79 = 0;
  v16 = ims::debug(__p, &v75);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "ACB voice skip is ", 18);
  *(v16 + 17) = 0;
  if (v15)
  {
    v17 = "enabled";
  }

  else
  {
    v17 = "disabled";
  }

  if (v15)
  {
    v18 = 7;
  }

  else
  {
    v18 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v17, v18);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v79 == 1 && v78 < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = !v15;
LABEL_24:
  v20 = qmi::MessageBase::findTlvValue(v53);
  v24 = v20;
  if (!v20)
  {
LABEL_38:
    v27 = 0;
    goto LABEL_39;
  }

  v25 = v21;
  v64[0] = v20;
  v26 = tlv::parseV<nas::tlv::AcbInfoSkipSms>(v64, v21, v22, v23);
  if (!v64[0])
  {
    (*MEMORY[0x1E69E5140])(v53[0], 26, v24, v25);
    goto LABEL_38;
  }

  v27 = v26;
  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v75) = 0;
  v79 = 0;
  v28 = ims::debug(__p, &v75);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "ACB SMS skip is ", 16);
  *(v28 + 17) = 0;
  if (v27)
  {
    v29 = "enabled";
  }

  else
  {
    v29 = "disabled";
  }

  if (v27)
  {
    v30 = 7;
  }

  else
  {
    v30 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), v29, v30);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v79 == 1 && v78 < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v31 = qmi::MessageBase::findTlvValue(v53);
  v35 = v31;
  if (v31)
  {
    v36 = v32;
    v75 = v31;
    v37 = tlv::parseV<nas::tlv::AcbInfoSignaling>(&v75, v32, v33, v34);
    if (v75)
    {
      v38 = BYTE4(v37);
      v39 = WORD1(v37);
      if (v37 == 100)
      {
        v40 = 100;
      }

      else
      {
        v40 = 0;
      }

      LOWORD(v72) = v40;
      HIDWORD(v72) = WORD1(v37);
      LOBYTE(v73) = BYTE4(v37);
      LODWORD(v35) = 1;
      LOBYTE(v74) = 1;
      if (WORD1(v37) <= 0x200u)
      {
        HIDWORD(v73) = 1;
        goto LABEL_67;
      }

      LOWORD(v72) = 100;
      HIDWORD(v72) = 0;
      LOBYTE(v73) = 0;
      LOBYTE(v74) = 0;
      HIDWORD(v73) = 1;
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v53[0], 17, v35, v36);
      LODWORD(v35) = 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
  LOBYTE(v75) = 0;
  v79 = 0;
  v41 = ims::debug(__p, &v75);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Did not get a valid Signaling TLV. Trying the Data TLV.", 55);
  *(v41 + 17) = 0;
  (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v41 + 17) = 0;
  if (v79 == 1 && v78 < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p[0]);
  }

  v42 = qmi::MessageBase::findTlvValue(v53);
  v39 = v42;
  if (!v42)
  {
    v38 = 0;
LABEL_66:
    v40 = 100;
    goto LABEL_67;
  }

  v46 = v43;
  __p[0] = v42;
  v47 = tlv::parseV<nas::tlv::AcbInfoData>(__p, v43, v44, v45);
  if (!__p[0])
  {
    (*MEMORY[0x1E69E5140])(v53[0], 18, v39, v46);
    v38 = 0;
    v39 = 0;
    goto LABEL_66;
  }

  v38 = BYTE4(v47);
  v39 = WORD1(v47);
  if (v47 == 100)
  {
    v40 = 100;
  }

  else
  {
    v40 = 0;
  }

  LOWORD(v72) = v40;
  HIDWORD(v72) = WORD1(v47);
  LOBYTE(v73) = BYTE4(v47);
  LOBYTE(v74) = 1;
  if (WORD1(v47) >= 0x201u)
  {
    v38 = 0;
    v39 = 0;
    v40 = 100;
    LOWORD(v72) = 100;
    HIDWORD(v72) = 0;
    LOBYTE(v73) = 0;
    LOBYTE(v74) = 0;
  }

  if (v47)
  {
    LODWORD(v35) = 1;
  }

  else
  {
    LODWORD(v35) = 5;
  }

  HIDWORD(v73) = v35;
LABEL_67:
  std::string::basic_string[abi:ne200100]<0>(v64, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v71 = 0;
  v48 = ims::debug(v64, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "Received ACB info: ", 19);
  *(v48 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "Services : ", 11);
  *(v48 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(v54, ",");
  BambiServices::namesForServiceMask(v35, v60);
  (*(*v48 + 32))(v48, v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), ", Factor : ", 11);
  *(v48 + 17) = 0;
  MEMORY[0x1E6923390](*(v48 + 8), v40);
  *(v48 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), ", Time : ", 9);
  *(v48 + 17) = 0;
  MEMORY[0x1E6923350](*(v48 + 8), v39);
  *(v48 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), ", SpecialAccessClass: ", 22);
  *(v48 + 17) = 0;
  MEMORY[0x1E6923340](*(v48 + 8), v38);
  *(v48 + 17) = 0;
  (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v48 + 17) = 0;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (v71 == 1 && v70 < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
    if (!v35)
    {
      goto LABEL_92;
    }
  }

  else if (!v35)
  {
LABEL_92:
    v51 = *(v6 + 8);
    if (v51)
    {
      IMSNasClient::notifyDelegates(v51, v7, &v72, 2);
    }

    goto LABEL_94;
  }

  if (v19 & 1 | ((v35 & 1) == 0))
  {
    goto LABEL_83;
  }

  LODWORD(v35) = v35 & 6;
  HIDWORD(v73) = v35;
  std::string::basic_string[abi:ne200100]<0>(v60, "qmi.nas");
  LOBYTE(v64[0]) = 0;
  v67 = 0;
  v49 = ims::debug(v60, v64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "ACB Skip for voice is enabled, removing voice service flag from barring indication.", 83);
  *(v49 + 17) = 0;
  (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v49 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
    if ((v35 & 4) == 0)
    {
      goto LABEL_91;
    }
  }

  else
  {
LABEL_83:
    if ((v35 & 4) == 0)
    {
      goto LABEL_91;
    }
  }

  if (!v27)
  {
    goto LABEL_92;
  }

  LODWORD(v35) = v35 & 3;
  HIDWORD(v73) = v35;
  std::string::basic_string[abi:ne200100]<0>(v54, "qmi.nas");
  LOBYTE(v60[0]) = 0;
  v63 = 0;
  v50 = ims::debug(v54, v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), "ACB Skip for SMS is enabled, removing SMS service flag from barring indication.", 79);
  *(v50 + 17) = 0;
  (*(*v50 + 64))(v50, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v50 + 17) = 0;
  if (v63 == 1 && v62 < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

LABEL_91:
  if (v35)
  {
    goto LABEL_92;
  }

  std::string::basic_string[abi:ne200100]<0>(v58, "qmi.nas");
  LOBYTE(v54[0]) = 0;
  v57 = 0;
  v52 = ims::warn(v58, v54);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "Ignoring ACB barring indiciation with no valid service to bar.", 62);
  *(v52 + 17) = 0;
  (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v52 + 17) = 0;
  if (v57 == 1 && v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

LABEL_94:
  qmi::MessageBase::~MessageBase(v53);
}

void sub_1E50A404C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  if (a40 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0>(unsigned short,QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::AcbHandler::internalListenForIndication(unsigned int,BOOL)::$_0 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(a2 + 1);
  if (!v5)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v88, "qmi.nas");
    v63[0] = 0;
    v66 = 0;
    v9 = ims::debug(v8, v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "received GetAcbInfo response for instance ", 42);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923350](*(v9 + 8), *(v3 + 2));
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v66 == 1 && v65 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88[0]);
    }

    v10 = *(v3 + 2);
    v85 = 100;
    v86 = 0;
    v87 = 0;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    if (TlvValue)
    {
      v15 = TlvValue;
      v16 = v12;
      v77[0] = TlvValue;
      v17 = tlv::parseV<nas::tlv::AcbInfoSkipVoice>(v77, v12, v13, v14);
      if (v77[0])
      {
        v18 = v17;
        v19 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
        LOBYTE(v88[0]) = 0;
        v91 = 0;
        v20 = ims::debug(v19, v88);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "ACB voice skip is ", 18);
        *(v20 + 17) = 0;
        if (v18)
        {
          v21 = "enabled";
        }

        else
        {
          v21 = "disabled";
        }

        if (v18)
        {
          v22 = 7;
        }

        else
        {
          v22 = 8;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), v21, v22);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (v91 == 1 && v90 < 0)
        {
          operator delete(v89);
        }

        if (SHIBYTE(v82) < 0)
        {
          operator delete(v81[0]);
        }

        v23 = !v18;
LABEL_33:
        v28 = qmi::MessageBase::findTlvValue(a2);
        if (v28)
        {
          v32 = v28;
          v33 = v29;
          v77[0] = v28;
          v34 = tlv::parseV<nas::tlv::AcbInfoSkipSms>(v77, v29, v30, v31);
          if (v77[0])
          {
            v35 = v34;
            v36 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
            LOBYTE(v88[0]) = 0;
            v91 = 0;
            v37 = ims::debug(v36, v88);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "ACB SMS skip is ", 16);
            *(v37 + 17) = 0;
            if (v35)
            {
              v38 = "enabled";
            }

            else
            {
              v38 = "disabled";
            }

            if (v35)
            {
              v39 = 7;
            }

            else
            {
              v39 = 8;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), v38, v39);
            *(v37 + 17) = 0;
            (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v37 + 17) = 0;
            if (v91 == 1 && v90 < 0)
            {
              operator delete(v89);
            }

            if (SHIBYTE(v82) < 0)
            {
              operator delete(v81[0]);
            }

LABEL_48:
            v40 = qmi::MessageBase::findTlvValue(a2);
            v44 = v40;
            if (v40)
            {
              v45 = v41;
              v88[0] = v40;
              v46 = tlv::parseV<nas::tlv::AcbInfoSignaling>(v88, v41, v42, v43);
              if (v88[0])
              {
                v47 = BYTE4(v46);
                v48 = WORD1(v46);
                if (v46 == 100)
                {
                  v49 = 100;
                }

                else
                {
                  v49 = 0;
                }

                LOWORD(v85) = v49;
                HIDWORD(v85) = WORD1(v46);
                LOBYTE(v86) = BYTE4(v46);
                LODWORD(v44) = 1;
                LOBYTE(v87) = 1;
                if (WORD1(v46) <= 0x200u)
                {
                  HIDWORD(v86) = 1;
                  goto LABEL_76;
                }

                LOWORD(v85) = 100;
                HIDWORD(v85) = 0;
                LOBYTE(v86) = 0;
                LOBYTE(v87) = 0;
                HIDWORD(v86) = 1;
              }

              else
              {
                (*MEMORY[0x1E69E5140])(*a2, 17, v44, v45);
                LODWORD(v44) = 0;
              }
            }

            v50 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
            LOBYTE(v88[0]) = 0;
            v91 = 0;
            v51 = ims::debug(v50, v88);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Did not get a valid Signaling TLV. Trying the Data TLV.", 55);
            *(v51 + 17) = 0;
            (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v51 + 17) = 0;
            if (v91 == 1 && v90 < 0)
            {
              operator delete(v89);
            }

            if (SHIBYTE(v82) < 0)
            {
              operator delete(v81[0]);
            }

            v52 = qmi::MessageBase::findTlvValue(a2);
            v48 = v52;
            if (v52)
            {
              v56 = v53;
              v81[0] = v52;
              v57 = tlv::parseV<nas::tlv::AcbInfoData>(v81, v53, v54, v55);
              if (v81[0])
              {
                v47 = BYTE4(v57);
                v48 = WORD1(v57);
                if (v57 == 100)
                {
                  v49 = 100;
                }

                else
                {
                  v49 = 0;
                }

                LOWORD(v85) = v49;
                HIDWORD(v85) = WORD1(v57);
                LOBYTE(v86) = BYTE4(v57);
                LOBYTE(v87) = 1;
                if (WORD1(v57) >= 0x201u)
                {
                  v47 = 0;
                  v48 = 0;
                  v49 = 100;
                  LOWORD(v85) = 100;
                  HIDWORD(v85) = 0;
                  LOBYTE(v86) = 0;
                  LOBYTE(v87) = 0;
                }

                if (v57)
                {
                  LODWORD(v44) = 1;
                }

                else
                {
                  LODWORD(v44) = 5;
                }

                HIDWORD(v86) = v44;
LABEL_76:
                std::string::basic_string[abi:ne200100]<0>(v77, "qmi.nas");
                LOBYTE(v81[0]) = 0;
                v84 = 0;
                v58 = ims::debug(v77, v81);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "Received ACB info: ", 19);
                *(v58 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "Services : ", 11);
                *(v58 + 17) = 0;
                std::string::basic_string[abi:ne200100]<0>(v67, ",");
                BambiServices::namesForServiceMask(v44, v73);
                (*(*v58 + 32))(v58, v73);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), ", Factor : ", 11);
                *(v58 + 17) = 0;
                MEMORY[0x1E6923390](*(v58 + 8), v49);
                *(v58 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), ", Time : ", 9);
                *(v58 + 17) = 0;
                MEMORY[0x1E6923350](*(v58 + 8), v48);
                *(v58 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), ", SpecialAccessClass: ", 22);
                *(v58 + 17) = 0;
                MEMORY[0x1E6923340](*(v58 + 8), v47);
                *(v58 + 17) = 0;
                (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v58 + 17) = 0;
                if (SHIBYTE(v74) < 0)
                {
                  operator delete(v73[0]);
                }

                if (SHIBYTE(v68) < 0)
                {
                  operator delete(v67[0]);
                }

                if (v84 == 1 && v83 < 0)
                {
                  operator delete(v82);
                }

                if (SHIBYTE(v78) < 0)
                {
                  operator delete(v77[0]);
                  if (!v44)
                  {
                    goto LABEL_101;
                  }
                }

                else if (!v44)
                {
                  goto LABEL_101;
                }

                if (v23 & 1 | ((v44 & 1) == 0))
                {
                  goto LABEL_92;
                }

                LODWORD(v44) = v44 & 6;
                HIDWORD(v86) = v44;
                std::string::basic_string[abi:ne200100]<0>(v73, "qmi.nas");
                LOBYTE(v77[0]) = 0;
                v80 = 0;
                v59 = ims::debug(v73, v77);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "ACB Skip for voice is enabled, removing voice service flag from barring indication.", 83);
                *(v59 + 17) = 0;
                (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v59 + 17) = 0;
                if (v80 == 1 && v79 < 0)
                {
                  operator delete(v78);
                }

                if (SHIBYTE(v74) < 0)
                {
                  operator delete(v73[0]);
                  if ((v44 & 4) != 0)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
LABEL_92:
                  if ((v44 & 4) != 0)
                  {
LABEL_93:
                    if (!v35)
                    {
                      goto LABEL_101;
                    }

                    LODWORD(v44) = v44 & 3;
                    HIDWORD(v86) = v44;
                    std::string::basic_string[abi:ne200100]<0>(v67, "qmi.nas");
                    LOBYTE(v73[0]) = 0;
                    v76 = 0;
                    v60 = ims::debug(v67, v73);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "ACB Skip for SMS is enabled, removing SMS service flag from barring indication.", 79);
                    *(v60 + 17) = 0;
                    (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v60 + 17) = 0;
                    if (v76 == 1 && v75 < 0)
                    {
                      operator delete(v74);
                    }

                    if (SHIBYTE(v68) < 0)
                    {
                      operator delete(v67[0]);
                    }
                  }
                }

                if (!v44)
                {
                  std::string::basic_string[abi:ne200100]<0>(v71, "qmi.nas");
                  LOBYTE(v67[0]) = 0;
                  v70 = 0;
                  v62 = ims::warn(v71, v67);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v62 + 8), "Ignoring ACB barring indiciation with no valid service to bar.", 62);
                  *(v62 + 17) = 0;
                  (*(*v62 + 64))(v62, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v62 + 17) = 0;
                  if (v70 == 1 && v69 < 0)
                  {
                    operator delete(v68);
                  }

                  if (v72 < 0)
                  {
                    v27 = v71[0];
                    goto LABEL_30;
                  }

                  return;
                }

LABEL_101:
                v61 = *(v4 + 8);
                if (v61)
                {
                  IMSNasClient::notifyDelegates(v61, v10, &v85, 2);
                }

                return;
              }

              (*MEMORY[0x1E69E5140])(*a2, 18, v48, v56);
              v47 = 0;
              v48 = 0;
            }

            else
            {
              v47 = 0;
            }

            v49 = 100;
            goto LABEL_76;
          }

          (*MEMORY[0x1E69E5140])(*a2, 21, v32, v33);
        }

        v35 = 0;
        goto LABEL_48;
      }

      (*MEMORY[0x1E69E5140])(*a2, 19, v15, v16);
    }

    v23 = 1;
    goto LABEL_33;
  }

  if (v5 == 74)
  {
    if (!*(v4 + 8))
    {
      return;
    }

    v6 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
    LOBYTE(v88[0]) = 0;
    v91 = 0;
    v7 = ims::debug(v6, v88);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "no ACB information available for instance ", 42);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), *(v3 + 2));
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v24 = std::string::basic_string[abi:ne200100]<0>(v81, "qmi.nas");
    LOBYTE(v88[0]) = 0;
    v91 = 0;
    v7 = ims::error(v24, v88);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "GetAcbInfo request failed: ", 27);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923350](*(v7 + 8), *(a2 + 1));
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " (", 2);
    *(v7 + 17) = 0;
    v25 = qmi::asString();
    v26 = strlen(v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v25, v26);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ")", 1);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *(v7 + 17) = 0;
  if (v91 == 1 && v90 < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v82) < 0)
  {
    v27 = v81[0];
LABEL_30:
    operator delete(v27);
  }
}

void sub_1E50A4D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{
  if (a47 == 1 && a45 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN12QMINasClient10AcbHandler25requestCurrentBarringInfoEjE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::AcbHandler::requestCurrentBarringInfo(unsigned int)::$_0,std::allocator<QMINasClient::AcbHandler::requestCurrentBarringInfo(unsigned int)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF2E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas10GetAcbInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A4FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<QMINasClient::create(dispatch::queue const&)::Wrapper,std::allocator<QMINasClient::create(dispatch::queue const&)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void QMINasClient::create(dispatch::queue const&)::Wrapper::~Wrapper(QMINasClient *a1)
{
  QMINasClient::~QMINasClient(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMINasClient::create(dispatch::queue const&)::Wrapper::~Wrapper(uint64_t a1)
{
  QMINasClient::~QMINasClient((a1 - 56));
}

{
  QMINasClient::~QMINasClient((a1 - 56));

  JUMPOUT(0x1E69235B0);
}

{
  QMINasClient::~QMINasClient((a1 - 64));
}

{
  QMINasClient::~QMINasClient((a1 - 64));

  JUMPOUT(0x1E69235B0);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF4A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  *(*(a1 + 8) + 129) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v14, "qmi.nas");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::debug(&v14, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "QMI client started for instance ", 32);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), v2 == 2);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  v8 = 0u;
  v9 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeE_block_invoke;
  v6[3] = &__block_descriptor_tmp_162;
  v7 = v2 == 2;
  v4 = *(&v8 + 1);
  if (*(&v8 + 1) != v9)
  {
    while (*(*v4 + 8) != 1)
    {
      if (++v4 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 != v9)
  {
    if (v5)
    {
      ___ZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeE_block_invoke(v6, v5 + 9);
      qmi::ClientRouter::get();
      operator new();
    }

    __cxa_bad_cast();
  }

LABEL_13:
  operator new();
}

void sub_1E50A56C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_0,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::SubType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZZN12QMINasClient10initializeERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEjENK3__0clENS_16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 4))
  {
    v6 = *(a1 + 32);
    v7 = *v6;
    v16 = *(v6 + 8);
    v8 = v16;
    std::string::basic_string[abi:ne200100]<0>(v10, "qmi.nas");
    v12[0] = 0;
    v15 = 0;
    v9 = ims::debug(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Client bound for instance ", 26);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923350](*(v9 + 8), v8);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v7 + 216, &v16, &v16);
    QMINasClient::startListening(v7, v16);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "qmi.nas");
  v12[0] = 0;
  v15 = 0;
  v3 = ims::error(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Bind Subscription request failed: ", 34);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
  *(v3 + 17) = 0;
  v4 = qmi::asString();
  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1E50A5BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c191_ZTSNSt3__110shared_ptrIZZN12QMINasClient10initializeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c191_ZTSNSt3__110shared_ptrIZZN12QMINasClient10initializeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjENK3__0clEN3qmi16SubscriptionTypeEEUlRKN3nas16BindSubscription8ResponseEE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::initialize(std::string const&,unsigned int)::$_0::operator() const(qmi::SubscriptionType)::{lambda(nas::BindSubscription::Response const&)#1},std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_0::operator() const(qmi::SubscriptionType)::{lambda(nas::BindSubscription::Response const&)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas16BindSubscription8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A5D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF5F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(*(a1 + 8) + 129) = 0;
  v3 = v2 == 2;
  v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "qmi.nas");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::debug(v4, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "QMI client stopped for instance ", 32);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), v3);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_1E50A5F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t std::__function::__func<QMINasClient::initialize(std::string const&,unsigned int)::$_1,std::allocator<QMINasClient::initialize(std::string const&,unsigned int)::$_1>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF678;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v21, __p);
    qmi::MessageBase::validateMsgId(v21);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v21);
  }

  v6 = *(a1 + 8);
  v7 = v4 == 2;
  TlvValue = qmi::MessageBase::findTlvValue(v21);
  v12 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_21;
  }

  v13 = v9;
  __p = TlvValue;
  v14 = tlv::parseV<nas::tlv::VoiceSystemId>(&__p, v9, v10, v11);
  if (__p)
  {
    goto LABEL_12;
  }

  if (!(*MEMORY[0x1E69E5140])(v21[0], 19, v12, v13))
  {
LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(v22, "qmi.nas");
    LOBYTE(__p) = 0;
    v32 = 0;
    v19 = ims::debug(v22, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Got subscription info indication.  No relevant changes. [instance=", 66);
    *(v19 + 17) = 0;
    MEMORY[0x1E6923350](*(v19 + 8), v7);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    goto LABEL_34;
  }

  v14 = 0;
LABEL_12:
  std::string::basic_string[abi:ne200100]<0>(v22, "qmi.nas");
  LOBYTE(__p) = 0;
  v32 = 0;
  v15 = ims::debug(v22, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Got subscription info indication [instance=", 43);
  *(v15 + 17) = 0;
  MEMORY[0x1E6923350](*(v15 + 8), v7);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " voiceSystemId=", 15);
  *(v15 + 17) = 0;
  MEMORY[0x1E6923350](*(v15 + 8), v14);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  v16 = *(v6 + 272);
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = *(v6 + 264);
      if (v18)
      {
        (*(*v18 + 24))(v18, v7, v14);
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        goto LABEL_34;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v26, "qmi.nas");
  LOBYTE(v22[0]) = 0;
  v25 = 0;
  v20 = ims::debug(v26, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "NasVoiceSystemReceiver is null", 30);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v17)
  {
    goto LABEL_33;
  }

LABEL_34:
  qmi::MessageBase::~MessageBase(v21);
}

void sub_1E50A643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  qmi::MessageBase::~MessageBase(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_2>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_2 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF6F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v60 = 0;
    v61 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v49, __p);
    qmi::MessageBase::validateMsgId(v49);
    if (__p)
    {
      v60 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v49);
  }

  v6 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
  v67[0] = 0;
  v70 = 0;
  v7 = ims::debug(&__p, v67);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Received MMTel response indication from baseband", 48);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v70 == 1 && v69 < 0)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v49);
  v12 = TlvValue;
  if (TlvValue)
  {
    v13 = v9;
    __p = TlvValue;
    v14 = tlv::parseV<nas::tlv::Response>(&__p, v9, v10, v11);
    if (__p)
    {
      if ((v14 - 1) > 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = dword_1E517EBC8[v14 - 1];
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v49[0], 1, v12, v13);
      v12 = 0;
    }
  }

  v15 = qmi::MessageBase::findTlvValue(v49);
  v19 = v15;
  if (v15)
  {
    v20 = v16;
    __p = v15;
    v21 = tlv::parseV<nas::tlv::CallType>(&__p, v16, v17, v18);
    if (__p)
    {
      goto LABEL_23;
    }

    (*MEMORY[0x1E69E5140])(v49[0], 2, v19, v20);
  }

  v21 = 0;
LABEL_23:
  v22 = qmi::MessageBase::findTlvValue(v49);
  v26 = v22;
  if (v22)
  {
    v27 = v23;
    __p = v22;
    v28 = tlv::parseV<nas::tlv::BarringTime>(&__p, v23, v24, v25);
    if (__p)
    {
      goto LABEL_27;
    }

    (*MEMORY[0x1E69E5140])(v49[0], 4, v26, v27);
  }

  v28 = 0;
LABEL_27:
  v29 = qmi::MessageBase::findTlvValue(v49);
  v33 = v29;
  if (v29)
  {
    v34 = v30;
    __p = v29;
    v35 = tlv::parseV<nas::tlv::SystemMode>(&__p, v30, v31, v32);
    if (__p)
    {
      v36 = v35 != 8;
      goto LABEL_32;
    }

    (*MEMORY[0x1E69E5140])(v49[0], 3, v33, v34);
  }

  v36 = 1;
LABEL_32:
  v64 = 0;
  v65 = 0;
  if (v12 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = 100;
  }

  LOWORD(v64) = v37;
  HIDWORD(v64) = v28;
  v66 = 1;
  if (v28 >= 0x201)
  {
    LOWORD(v64) = 100;
    HIDWORD(v64) = 0;
    LOBYTE(v66) = 0;
  }

  HIDWORD(v65) = v21 & 7;
  Responded = QMINasCache::setLastResponded((v6[35] + 88 * (v4 == 2)), &__p);
  v39 = (*(*v60 + 24))(v60, v61, Responded);
  ImsResult::~ImsResult(&__p);
  if (!v39)
  {
    goto LABEL_42;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
  v55[0] = 0;
  v58 = 0;
  v40 = ims::error(&__p, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "Unmatched MMTel response!", 25);
  *(v40 + 17) = 0;
  (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v40 + 17) = 0;
  if (v58 == 1 && v57 < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_42:
    if (!v12)
    {
      goto LABEL_44;
    }
  }

  v54 = 0;
  v41 = QMINasCache::cancelLast((v6[35] + 88 * (v4 == 2)), &v54, &__p);
  v42 = (*(*v60 + 24))(v60, v61, v41) | v36;
  ImsResult::~ImsResult(&__p);
  if ((v42 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "nas");
    v50[0] = 0;
    v53 = 0;
    v43 = ims::error(&__p, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "Call status failed for LTE RAT!", 31);
    *(v43 + 17) = 0;
    (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v43 + 17) = 0;
    if (v53 == 1 && v52 < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p);
    }

    v44 = v54;
    v73 = v12;
    memset(v72, 0, 32);
    v45 = qmi::MutableMessageBase::MutableMessageBase(v72);
    QMINasClient::applyCallStatusRequest(v45, 1, 8, v21, v44);
    v46 = std::string::basic_string[abi:ne200100]<0>(&v74, "nas");
    LOBYTE(__p) = 0;
    v63 = 0;
    v47 = ims::debug(v46, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "Sending Call Status Request to BB due to ", 41);
    *(v47 + 17) = 0;
    ims::toString<UacAccessResponse>(&v73, &aBlock);
    (*(*v47 + 32))(v47, &aBlock);
    (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v47 + 17) = 0;
    if (v77 < 0)
    {
      operator delete(aBlock);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(v61);
    }

    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (v4 == 2)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    qmi::ClientRouter::send<nas::CallStateNotification::Request>(v71, (v6 + 14), v48, v72);
  }

LABEL_44:
  IMSNasClient::notifyDelegates(v6, v4 == 2, &v64, v12, (v21 >> 3) & 1);
  qmi::MessageBase::~MessageBase(v49);
}

void sub_1E50A6E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  v63 = *(v61 - 128);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  qmi::ClientRouter::SendProxy::~SendProxy((v61 - 224));
  qmi::MutableMessageBase::~MutableMessageBase((v61 - 208));
  qmi::MessageBase::~MessageBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_3>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_3 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF778;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v17, __p);
    qmi::MessageBase::validateMsgId(v17);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v17);
  }

  v6 = *(a1 + 8);
  v7 = v4 == 2;
  v8 = std::string::basic_string[abi:ne200100]<0>(&v23, "nas");
  LOBYTE(__p) = 0;
  v22 = 0;
  v9 = ims::debug(v8, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Received UAC barring alleviation indication from baseband", 57);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v26 < 0)
  {
    operator delete(v23);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v17);
  v14 = TlvValue;
  if (!TlvValue)
  {
    goto LABEL_16;
  }

  v15 = v11;
  v23 = TlvValue;
  v16 = tlv::parseV<nas::tlv::CallType>(&v23, v11, v12, v13);
  if (!v23)
  {
    (*MEMORY[0x1E69E5140])(v17[0], 1, v14, v15);
LABEL_16:
    v16 = 0;
  }

  v23 = 100;
  v24 = 0;
  v25 = v16 & 7;
  IMSNasClient::notifyDelegates(v6, v7, &v23, 3, (v16 >> 3) & 1);
  qmi::MessageBase::~MessageBase(v17);
}

void sub_1E50A723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  qmi::MessageBase::~MessageBase(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_4>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_4 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF7F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::MessageBase::MessageBase(v7, __p);
    qmi::MessageBase::validateMsgId(v7);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v7);
  }

  v6 = *(a1 + 8);
  v9 = 0x4000000000;
  __p = 100;
  LODWORD(v10) = 0;
  IMSNasClient::notifyDelegates(v6, v4 == 2, &__p, 3, 0);
  qmi::MessageBase::~MessageBase(v7);
}

void sub_1E50A7484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_5>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_5 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EEF878;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    QMIServiceMsg::serialize(&v43, this);
    qmi::MessageBase::MessageBase(v29, v43);
    qmi::MessageBase::validateMsgId(v29);
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v29);
  }

  v6 = *(a1 + 8);
  v7 = v4 == 2;
  std::string::basic_string[abi:ne200100]<0>(__p, "nas");
  LOBYTE(v43) = 0;
  v47 = 0;
  v8 = ims::debug(__p, &v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Received network congestion indication from baseband", 52);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  TlvValue = qmi::MessageBase::findTlvValue(v29);
  v13 = TlvValue;
  v14 = "Internal";
  if (TlvValue)
  {
    v15 = v10;
    __p[0] = TlvValue;
    v16 = tlv::parseV<nas::tlv::NwCongestion>(__p, v10, v11, v12);
    if (__p[0])
    {
      if (v16)
      {
        v14 = "Network";
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(v29[0], 16, v13, v15);
    }
  }

  v17 = qmi::MessageBase::findTlvValue(v29);
  v21 = v17;
  if (!v17)
  {
    goto LABEL_22;
  }

  v22 = v18;
  __p[0] = v17;
  v23 = tlv::parseV<nas::tlv::TimerValueRemaining>(__p, v18, v19, v20);
  if (!__p[0])
  {
    (*MEMORY[0x1E69E5140])(v29[0], 17, v21, v22);
LABEL_22:
    v23 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v30, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v42 = 0;
  v24 = ims::debug(v30, __p);
  v25 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v14, v25);
  *(v24 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " is congested: TimerValue=", 26);
  *(v24 + 17) = 0;
  MEMORY[0x1E6923350](*(v24 + 8), v23);
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v37 = 0;
  v36 = 100;
  v26 = v23 / 0x3E8;
  if (v23 % 0x3E8)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

  HIDWORD(v37) = 64;
  v38 = 0;
  HIDWORD(v36) = v27;
  std::string::basic_string[abi:ne200100]<0>(v34, "qmi.nas");
  LOBYTE(v30[0]) = 0;
  v33 = 0;
  v28 = ims::debug(v34, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "barringTime will be ", 20);
  *(v28 + 17) = 0;
  MEMORY[0x1E6923350](*(v28 + 8), v27);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  IMSNasClient::notifyDelegates(v6, v7, &v36, 4, 0);
  qmi::MessageBase::~MessageBase(v29);
}

void sub_1E50A79C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  qmi::MessageBase::~MessageBase(&a9);
  v45 = *(v43 - 120);
  if (v45)
  {
    *(v43 - 112) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMINasClient::initialize(std::string const&,unsigned int)::$_6>(unsigned short,QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMINasClient::initialize(std::string const&,unsigned int)::$_6 &&,QMIServiceMsg const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__tree<std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,QMINasClient::BarringHandler>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,QMINasClient::BarringHandler>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
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
      v5 = *(v3 + 8);
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

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegSubscriptionInfo>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 21)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  if (!v3)
  {
    __cxa_bad_cast();
  }

  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegSubscriptionInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::RegMmtelRespInd>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*(*v1 + 8) != 64)
    {
      if (++v1 == v2)
      {
        goto LABEL_8;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_8:
    operator new();
  }

  if (!v3)
  {
    __cxa_bad_cast();
  }

  return v3 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::RegMmtelRespInd>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient13stopListeningEjbE3__2EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "qmi.nas");
    v6[0] = 0;
    v9 = 0;
    v3 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Indication Register request failed: ", 36);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = qmi::asString();
    v5 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1E50A8048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient13stopListeningEjbE3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient13stopListeningEjbE3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::stopListening(unsigned int,BOOL)::$_2,std::allocator<QMINasClient::stopListening(unsigned int,BOOL)::$_2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEF9C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient14startListeningEjE3__2EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "qmi.nas");
    v6[0] = 0;
    v9 = 0;
    v3 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Indication Register request failed: ", 36);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = qmi::asString();
    v5 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1E50A8270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient14startListeningEjE3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c65_ZTSNSt3__110shared_ptrIZN12QMINasClient14startListeningEjE3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::startListening(unsigned int)::$_2,std::allocator<QMINasClient::startListening(unsigned int)::$_2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient20requestVoiceSystemIdEjNSt3__18weak_ptrI22NasVoiceSystemReceiverEEE3__0EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *this)
{
  if (*(this + 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "qmi.nas");
    LOBYTE(v28[0]) = 0;
    v31 = 0;
    v3 = ims::error(v20, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "GetVoiceSystemId request failed: ", 33);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(this + 1));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = qmi::asString();
    v5 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v21 = ___ZZN12QMINasClient20requestVoiceSystemIdEjNSt3__18weak_ptrI22NasVoiceSystemReceiverEEENK3__0clERKN3nas19GetSubscriptionInfo8ResponseE_block_invoke;
    v22 = &unk_1E876C4A0;
    v23 = &v24;
    TlvValue = qmi::MessageBase::findTlvValue(this);
    v11 = TlvValue;
    if (TlvValue)
    {
      v12 = v8;
      v28[0] = TlvValue;
      LODWORD(v18[0]) = tlv::parseV<nas::tlv::SubInfoVSID>(v28, v8, v9, v10);
      if (v28[0])
      {
        v21(v20, v18);
      }

      else
      {
        (*MEMORY[0x1E69E5140])(*this, 19, v11, v12);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
    LOBYTE(v28[0]) = 0;
    v31 = 0;
    v13 = ims::debug(v18, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "received GetVoiceSystemId response [voiceSystemId=", 50);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), *(v25 + 6));
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "]", 1);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v14 = *(v6 + 2);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(v6 + 1);
        if (v17)
        {
          (*(*v17 + 16))(v17, *v6, *(v25 + 6));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

void sub_1E50A86A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c110_ZTSNSt3__110shared_ptrIZN12QMINasClient20requestVoiceSystemIdEjNS_8weak_ptrI22NasVoiceSystemReceiverEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c110_ZTSNSt3__110shared_ptrIZN12QMINasClient20requestVoiceSystemIdEjNS_8weak_ptrI22NasVoiceSystemReceiverEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0,std::allocator<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0,std::allocator<QMINasClient::requestVoiceSystemId(unsigned int,std::weak_ptr<NasVoiceSystemReceiver>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas19GetSubscriptionInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A88AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12QMINasClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12QMINasClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallStatus>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::getTLV<nas::tlv::SystemMode>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    operator new();
  }

  if (!v4)
  {
    __cxa_bad_cast();
  }

  return v4 + 9;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::SystemMode>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::CallDirection>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS4_13CallRadioTypeEybE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v3 = *(a1 + 32);
    v4 = *v3;
    std::string::basic_string[abi:ne200100]<0>(&v13, "qmi.nas");
    v9[0] = 0;
    v12 = 0;
    v5 = ims::error(&v13, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send CallStateNotification: ", 38);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), *(a2 + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = qmi::asString();
    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v13);
    }

    v8 = *(v3 + 8);
    LOWORD(v13) = 100;
    HIDWORD(v13) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IMSNasClient::notifyDelegates(v4, v8, &v13, 2, *(v3 + 12));
  }
}

void sub_1E50A8E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c116_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEybE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c116_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEybE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL)::$_0,std::allocator<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFCC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas21CallStateNotification8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A9018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS4_13CallRadioTypeEyb17UacAccessResponseE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v5 = ims::error(v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send CallStateNotification: ", 38);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), *(a2 + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = qmi::asString();
    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v8 = *(v2 + 8);
    v9 = *(v2 + 32);
    v10 = (v2 + 12);
    v11 = v3;
    v12 = 2;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "qmi.nas");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::debug(v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "CallStateNotification request succeeded", 39);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v8 = *(v2 + 8);
    v12 = *(v2 + 36);
    v9 = *(v2 + 32);
    v10 = (v2 + 12);
    v11 = v3;
  }

  IMSNasClient::notifyDelegates(v11, v8, v10, v12, v9);
}

void sub_1E50A9288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c135_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEyb17UacAccessResponseE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c135_ZTSNSt3__110shared_ptrIZN12QMINasClient21sendCallStatusRequestEjN3nas14CallStatusTypeENS2_13CallRadioTypeEyb17UacAccessResponseE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL,UacAccessResponse)::$_0,std::allocator<QMINasClient::sendCallStatusRequest(unsigned int,nas::CallStatusType,nas::CallRadioType,unsigned long long,BOOL,UacAccessResponse)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EEOS1_OT__block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  if (*(a2 + 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "qmi.nas");
    LOBYTE(v52[0]) = 0;
    v55 = 0;
    v5 = ims::error(__p, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Failed to send StartImsRegistrationUacCheck request: ", 53);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923350](*(v5 + 8), *(a2 + 1));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " (", 2);
    *(v5 + 17) = 0;
    v6 = qmi::asString();
    v7 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v55 == 1 && v54 < 0)
    {
      operator delete(v53);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    __p[1] = 0x4000000000;
    __p[0] = 100;
    LODWORD(v49) = 0;
    v8 = *(v3 + 8);
    v9 = *(v3 + 12);
    v10 = __p;
    v11 = v4;
    v12 = 2;
    goto LABEL_49;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v52, "qmi.nas");
  LOBYTE(__p[0]) = 0;
  v51 = 0;
  v14 = ims::debug(v13, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Got Start IMS Registration UAC Check Response from BB", 53);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v19 = TlvValue;
  if (TlvValue)
  {
    v20 = v16;
    v43[0] = TlvValue;
    v21 = tlv::parseV<nas::tlv::Status>(v43, v16, v17, v18);
    if (v43[0])
    {
      v22 = v21;
      std::string::basic_string[abi:ne200100]<0>(v39, "qmi.nas");
      LOBYTE(v52[0]) = 0;
      v55 = 0;
      v23 = ims::debug(v39, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "StartImsRegistrationUacCheck response: Status=", 46);
      *(v23 + 17) = 0;
      v24 = nas::asString(v22);
      v25 = strlen(v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), v24, v25);
      *(v23 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "(", 1);
      *(v23 + 17) = 0;
      MEMORY[0x1E6923340](*(v23 + 8), v22);
      *(v23 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ")", 1);
      *(v23 + 17) = 0;
      (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v23 + 17) = 0;
      if (v55 == 1 && v54 < 0)
      {
        operator delete(v53);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if ((v22 & 0xFFFFFFFB) == 2)
      {
        v26 = qmi::MessageBase::findTlvValue(a2);
        if (v26)
        {
          v30 = v26;
          v31 = v27;
          v52[0] = v26;
          v32 = tlv::parseV<nas::tlv::RemainingTimerValue>(v52, v27, v28, v29);
          if (v52[0])
          {
            v19 = v32;
LABEL_29:
            std::string::basic_string[abi:ne200100]<0>(v39, "qmi.nas");
            LOBYTE(v52[0]) = 0;
            v55 = 0;
            v33 = ims::debug(v39, v52);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "StartImsRegistrationUacCheck response: ", 39);
            *(v33 + 17) = 0;
            if (v22 == 2)
            {
              v34 = "Barring Duration = ";
            }

            else
            {
              v34 = "Timer 3346 remaining time = ";
            }

            if (v22 == 2)
            {
              v35 = 19;
            }

            else
            {
              v35 = 28;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), v34, v35);
            *(v33 + 17) = 0;
            MEMORY[0x1E6923350](*(v33 + 8), v19);
            *(v33 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " milliseconds", 13);
            *(v33 + 17) = 0;
            (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v33 + 17) = 0;
            if (v55 == 1 && v54 < 0)
            {
              operator delete(v53);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[0]);
            }

            goto LABEL_40;
          }

          (*MEMORY[0x1E69E5140])(*a2, 16, v30, v31);
        }

        v19 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      (*MEMORY[0x1E69E5140])(*a2, 17, v19, v20);
      LODWORD(v22) = 0;
    }

    LODWORD(v19) = 0;
  }

  else
  {
    LODWORD(v22) = 0;
  }

LABEL_40:
  v46 = 0;
  v45 = 100;
  v36 = v19 / 0x3E8;
  if (v19 % 0x3E8)
  {
    v37 = v36 + 1;
  }

  else
  {
    v37 = v36;
  }

  HIDWORD(v46) = 64;
  v47 = 0;
  HIDWORD(v45) = v37;
  std::string::basic_string[abi:ne200100]<0>(v43, "qmi.nas");
  LOBYTE(v39[0]) = 0;
  v42 = 0;
  v38 = ims::debug(v43, v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "StartImsRegistrationUacCheck response: barringTime will be ", 59);
  *(v38 + 17) = 0;
  MEMORY[0x1E6923350](*(v38 + 8), v37);
  *(v38 + 17) = 0;
  (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v38 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  v12 = 2 * (v22 != 1);
  v8 = *(v3 + 8);
  v9 = *(v3 + 12);
  v10 = &v45;
  v11 = v4;
LABEL_49:
  IMSNasClient::notifyDelegates(v11, v8, v10, v12, v9);
}

void sub_1E50A9984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (*(v41 - 72) == 1 && *(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c112_ZTSNSt3__110shared_ptrIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c112_ZTSNSt3__110shared_ptrIZN12QMINasClient39sendStartImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendStartImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1,std::allocator<QMINasClient::sendStartImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas28StartImsRegistrationUacCheck8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A9BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "qmi.nas");
    v6[0] = 0;
    v9 = 0;
    v3 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to send StopImsRegistrationUacCheck request: ", 52);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(a2 + 4));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " (", 2);
    *(v3 + 17) = 0;
    v4 = qmi::asString();
    v5 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ")", 1);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "nas");
    v6[0] = 0;
    v9 = 0;
    v3 = ims::debug(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Got Stop IMS Registration UAC Check Response from BB", 52);
  }

  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1E50A9DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c111_ZTSNSt3__110shared_ptrIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c111_ZTSNSt3__110shared_ptrIZN12QMINasClient38sendStopImsRegistrationUacCheckRequestEjN3nas13CallRadioTypeEbE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<QMINasClient::sendStopImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1,std::allocator<QMINasClient::sendStopImsRegistrationUacCheckRequest(unsigned int,nas::CallRadioType,BOOL)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEFE40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas27StopImsRegistrationUacCheck8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p);
    qmi::MessageBase::validateMsgId(v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_1E50A9F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *SipServerInviteProceedingTransactionState::SipServerInviteProceedingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EEFE90;
  a1[1] = &unk_1F5EEFF18;
  a1[26] = &unk_1F5EEFF48;
  return a1;
}

void sub_1E50AA060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteProceedingTransactionState::sendTryingResponse(SipServerInviteProceedingTransactionState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v6 = v5[38];
          if (v6)
          {
            v7 = v5[37];
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v8 = std::__shared_weak_count::lock(v6);
            std::__shared_weak_count::__release_weak(v6);
            if (v8)
            {
              if (v7)
              {
                v16[0] = 0;
                v16[1] = 0;
                std::string::basic_string[abi:ne200100]<0>(&v15, "Trying");
                SipTransactionLayer::messageEncoding(v7);
                SipResponse::create(v16);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }

        else
        {
          v10 = v5[16];
          v9 = v5 + 16;
          v11 = (*(v10 + 56))(v9);
          (*(*v9 + 16))(v9, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "How did a ", 10);
          *(v11 + 17) = 0;
          v12 = *(*(*this - 8) + 8);
          v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
          *(v11 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " end up in a ", 13);
          *(v11 + 17) = 0;
          v14 = strlen(("NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "NSt3__110shared_ptrI14SipTransactionEE" & 0x7FFFFFFFFFFFFFFFLL, v14);
          *(v11 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "?", 1);
          *(v11 + 17) = 0;
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v11 + 17) = 0;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50AA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v14 = *(v12 - 56);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipServerInviteProceedingTransactionState::handleTimer(SipServerInviteProceedingTransactionState *this, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v2 == 6)
  {
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 1769566804 && v6 == 26478)
    {
      SipServerInviteProceedingTransactionState::sendTryingResponse(this);
    }
  }
}

void SipServerInviteProceedingTransactionState::enterState(SipServerInviteProceedingTransactionState *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        SipTransaction::stack(&v10, v5);
        v6 = SipStack::prefs(v10);
        v7 = ImsPrefs::AlwaysSendTryingResponse(v6);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (!v7)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 27);
          v8 = v11;
          if (v11)
          {
            p_shared_weak_owners = &v11->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          }

          v12 = 0;
          operator new();
        }

        SipServerInviteProceedingTransactionState::sendTryingResponse(this);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50AA554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void SipServerInviteProceedingTransactionState::handleRequest(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 256);
      if (v5)
      {
        v6 = (*(v5[16] + 64))(v5 + 16);
        (*(v5[16] + 16))(v5 + 16, v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "received duplicate request", 26);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        (*(*v5 + 120))(v7, v5);
        ImsResult::~ImsResult(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipServerInviteProceedingTransactionState::handleOutgoingResponse(void *a1, uint64_t a2)
{
  SipTimerContainer::cancelTimer((a1 + 2), "Trying");
  v4 = a1[33];
  if (!v4)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1[32];
  if (v7)
  {
    v8 = *(*a2 + 128);
    if (v8 / 0x64 != 1)
    {
      if (v8 / 0x64 == 2)
      {
        v9 = 5;
LABEL_10:
        (*(*v7 + 32))(v7, v9);
        goto LABEL_11;
      }

      if (v8 >= 0x12C)
      {
        v9 = 4;
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

uint64_t SipServerInviteCompletedTransactionState::SipServerInviteCompletedTransactionState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EEFF70;
  *(a1 + 8) = &unk_1F5EEFFF8;
  *(a1 + 208) = &unk_1F5EF0028;
  *(a1 + 272) = 1;
  return a1;
}

void sub_1E50AA8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteCompletedTransactionState::enterState(SipServerInviteCompletedTransactionState *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 68) = 1;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 27);
        v5 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (SipTransaction::retryEnabled(v4))
        {
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = 0;
          operator new();
        }

        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E50AAA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipServerInviteCompletedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7)
      {
        if (operator==(a2, &SipTimers::kTimerG))
        {
          v8 = (*(v7[16] + 64))(v7 + 16);
          (*(v7[16] + 16))(v7 + 16, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "resending response", 18);
          *(v8 + 17) = 0;
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v8 + 17) = 0;
          (*(*v7 + 120))(v11, v7);
          ImsResult::~ImsResult(v11);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (a1 + 216));
          v9 = v13;
          if (v13)
          {
            p_shared_weak_owners = &v13->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            *(a1 + 272) *= 2;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          }

          else
          {
            *(a1 + 272) *= 2;
          }

          v14 = 0;
          operator new();
        }

        if (operator==(a2, &SipTimers::kTimerH))
        {
          (*(*v7 + 32))(v7, 7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E50AAD7C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v3 - 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipServerInviteCompletedTransactionState::handleRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7)
      {
        v8 = (*(**a2 + 120))();
        v9 = *(v8 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v8 + 8);
        }

        if (v9 == 6 && (v10 >= 0 ? (v11 = v8) : (v11 = *v8), (v12 = *v11, v13 = *(v11 + 4), v12 == *"INVITE") ? (v14 = v13 == *"TE") : (v14 = 0), v14))
        {
          (*(*v7 + 120))(v22, v7);
          ImsResult::~ImsResult(v22);
        }

        else
        {
          v15 = (*(**a2 + 120))();
          v16 = *(v15 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v15 + 8);
          }

          if (v16 == 3)
          {
            if (v17 >= 0)
            {
              v18 = v15;
            }

            else
            {
              v18 = *v15;
            }

            v19 = *v18;
            v20 = *(v18 + 2);
            if (v19 == SipRequest::kMethodAck && v20 == BYTE2(SipRequest::kMethodAck))
            {
              (*(*v7 + 32))(v7, 6);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void *SipServerInviteConfirmedTransactionState::SipServerInviteConfirmedTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF0050;
  a1[1] = &unk_1F5EF00D8;
  a1[26] = &unk_1F5EF0108;
  return a1;
}

void sub_1E50AB03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteConfirmedTransactionState::enterState(SipServerInviteConfirmedTransactionState *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, this + 27);
  v1 = v4;
  if (v4)
  {
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  operator new();
}

void sub_1E50AB15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void SipServerInviteConfirmedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerI))
  {
    v3 = *(a1 + 264);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 256);
        if (v6)
        {
          (*(*v6 + 32))(v6, 7);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *SipServerInviteTerminationPendingTransactionState::SipServerInviteTerminationPendingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF0130;
  a1[1] = &unk_1F5EF01B0;
  a1[26] = &unk_1F5EF01E0;
  return a1;
}

void sub_1E50AB308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteProceedingTransactionState::~SipServerInviteProceedingTransactionState(SipServerInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteProceedingTransactionState::~SipServerInviteProceedingTransactionState(SipServerInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteCompletedTransactionState::~SipServerInviteCompletedTransactionState(SipServerInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteCompletedTransactionState::~SipServerInviteCompletedTransactionState(SipServerInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteConfirmedTransactionState::~SipServerInviteConfirmedTransactionState(SipServerInviteConfirmedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteConfirmedTransactionState::~SipServerInviteConfirmedTransactionState(SipServerInviteConfirmedTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipServerInviteTerminationPendingTransactionState::~SipServerInviteTerminationPendingTransactionState(SipServerInviteTerminationPendingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteTerminationPendingTransactionState::~SipServerInviteTerminationPendingTransactionState(SipServerInviteTerminationPendingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0268;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0268;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0268;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF02E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF02E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF02E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0368;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0368;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0368;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipServerInviteCompletedTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF03E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF03E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF03E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipServerInviteConfirmedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1E50AC83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E50ACF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E50AD61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void sub_1E50ADB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AE06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AE540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E50AEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void sub_1E50AFA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  STACK[0x318] = a21;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&STACK[0x318]);
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = &unk_1F5EF0658;
  *(a1 + 56) = v2;
  v3 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a2 + 96);
  *(a1 + 96) = result;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

void __Block_byref_object_dispose__6(void *a1)
{
  a1[6] = &unk_1F5EF0658;
  v1 = a1[12];
  if (v1)
  {
    a1[13] = v1;
    operator delete(v1);
  }
}

void sub_1E50AFDBC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = &unk_1F5EF3398;
  *(a1 + 56) = v2;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

void __Block_byref_object_dispose__18(void *a1)
{
  a1[6] = &unk_1F5EF3398;
  v1 = a1[10];
  if (v1)
  {
    a1[11] = v1;
    operator delete(v1);
  }
}

void sub_1E50AFF28(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50AFFE8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50B0094(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1E50B03E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void sub_1E50B07AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void sub_1E50B0B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void sub_1E50B0F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_AVCAudioSessionDelegate_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void XpcConnectionClient::XpcConnectionClient(std::string *this, __int128 *a2, std::string::size_type a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[0] = &this[3].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__str = 0u;
  v15 = 0u;
  snprintf(__str, 0x80uLL, "com.apple.ipTelephony.ConnectionClient.%p", this);
  this[1].__r_.__value_.__r.__words[2] = dispatch_queue_create(__str, 0);
  snprintf(__str, 0x80uLL, "com.apple.ipTelephony.ConnectionClient.%p.events", this);
  v6 = dispatch_queue_create(__str, 0);
  this[1].__r_.__value_.__l.__size_ = v6;
  dispatch_set_target_queue(v6, this[1].__r_.__value_.__l.__data_);
  dispatch_set_context(this[1].__r_.__value_.__l.__size_, this[1].__r_.__value_.__r.__words[2]);
  dispatch_set_finalizer_f(this[1].__r_.__value_.__l.__size_, _finalizeEventQueue);
  v7 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v7, 0x8000100u);
  if (v8)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, this, XpcConnectionClient::handleDaemonStart, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFRelease(v8);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN19XpcConnectionClientC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP16dispatch_queue_s_block_invoke;
  aBlock[3] = &unk_1E876C5B8;
  aBlock[4] = v12;
  this[2].__r_.__value_.__l.__size_ = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN19XpcConnectionClientC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP16dispatch_queue_s_block_invoke_2;
  v10[3] = &unk_1E876C5E0;
  v10[4] = v12;
  this[2].__r_.__value_.__r.__words[2] = _Block_copy(v10);
  XpcConnectionClient::createConnection(this);
  _Block_object_dispose(v12, 8);
}

void sub_1E50B13D0(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v2, *(v1 + 80));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void _finalizeEventQueue(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

void XpcConnectionClient::handleDaemonStart(XpcConnectionClient *this, __CFNotificationCenter *a2, CFStringRef theString, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  syslog(5, "received daemon re-start notification for service %s\n", CStringPtr);
  v8 = *(a2 + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient17handleDaemonStartEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_14_0;
  block[4] = a2;
  dispatch_async(v8, block);
}

void XpcConnectionClient::createConnection(XpcConnectionClient *this)
{
  if (!*(this + 6))
  {
    operator new();
  }
}

void XpcConnectionClient::~XpcConnectionClient(char **this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this);
  v3 = this[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClientD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_5_1;
  block[4] = this;
  dispatch_sync(v3, block);
  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
    this[4] = 0;
  }

  std::__tree<std::string>::destroy((this + 9), this[10]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ___ZN19XpcConnectionClientD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  XpcConnectionClient::destroyConnection(v1);
  v2 = (v1 + 80);
  v3 = *(v1 + 72);
  if (v3 != (v1 + 80))
  {
    do
    {
      _Block_release(v3[7]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::string>::destroy(v1 + 72, *(v1 + 80));
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = v2;
  v7 = *(v1 + 96);
  if (v7)
  {
    _Block_release(v7);
    *(v1 + 96) = 0;
  }

  v8 = *(v1 + 64);
  if (v8)
  {
    (*(v8 + 16))();
    _Block_release(*(v1 + 64));
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 56);
  if (v9)
  {
    _Block_release(v9);
    *(v1 + 56) = 0;
  }
}

XpcConnection *XpcConnectionClient::destroyConnection(XpcConnectionClient *this)
{
  result = *(this + 6);
  if (result)
  {
    XpcConnection::~XpcConnection(result);
    result = MEMORY[0x1E69235B0]();
    *(this + 6) = 0;
  }

  return result;
}

void *___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[13];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = v2[7];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke_2;
  v7[3] = &unk_1E876C628;
  v5 = *(a1 + 32);
  v7[4] = v4;
  v7[5] = v5;
  v2[13] = _Block_copy(v7);
  result = v2[6];
  if (result)
  {
    return XpcConnection::setInterruptionHandler(result, v7);
  }

  return result;
}

uint64_t ___ZN19XpcConnectionClient22setInterruptionHandlerEU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void ___ZN19XpcConnectionClient16createConnectionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient16createConnectionEv_block_invoke_2;
  block[3] = &__block_descriptor_tmp_16_2;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t XpcConnectionClient::sendXpcMessage(XpcConnectionClient *this, const xpc::dict *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN19XpcConnectionClient14sendXpcMessageERKN3xpc4dictE_block_invoke;
  block[3] = &unk_1E876C6D8;
  block[5] = this;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN19XpcConnectionClient14sendXpcMessageERKN3xpc4dictE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (v1)
  {
    xpc_connection_send_message(*v1, **(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void SipResultDomain::~SipResultDomain(void **this)
{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipResultDomain::textForResultCode(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  v2 = qword_1EE2BD560;
  if (qword_1EE2BD560)
  {
    v3 = &qword_1EE2BD560;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a1;
      v6 = v4 < a1;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    v7 = &ims::kEmptyString;
    if (v3 != &qword_1EE2BD560)
    {
      v8 = *(v3 + 8);
      v9 = (v3 + 5);
      if (v8 <= a1)
      {
        v7 = v9;
      }
    }
  }

  else
  {
    v7 = &ims::kEmptyString;
  }

  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v7, *(v7 + 1));
  }

  else
  {
    v10 = *v7;
    a2->__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&a2->__r_.__value_.__l.__data_ = v10;
  }
}

void SipResultDomain::makeResult(uint64_t *__return_ptr a1@<X8>, SipResultDomain *this@<X0>)
{
  a1[10] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  SipResultDomain::makeResult(*(this + 15), this + 32, a1);
  BambiCallTerminationResult::BambiCallTerminationResult(v4, this);
  ImsResult::setItem(a1, v4);
  v4[0] = &unk_1F5EE4F78;
  if (v5 < 0)
  {
    operator delete(v4[1]);
  }
}

void sub_1E50B1CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(v15);
  _Unwind_Resume(a1);
}

void *SipResultDomain::responseFromResult@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 40);
  {
    v5 = *(a1 + 48);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void BambiCallTerminationResult::BambiCallTerminationResult(BambiCallTerminationResult *this, const BambiCallTerminationReason *a2)
{
  *this = &unk_1F5EE4F78;
  v2 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v3 = *(a2 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t _GLOBAL__sub_I_SipResultDomain_cpp()
{
  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 5261651;
  ImsResultDomain::ImsResultDomain(&SipResultDomain::_domain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipResultDomain::_domain = &unk_1F5EF0468;
  byte_1EE2BD430 = 1;

  return __cxa_atexit(SipResultDomain::~SipResultDomain, &SipResultDomain::_domain, &dword_1E4C3F000);
}

void sub_1E50B1F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaSettings::~SDPMediaSettings(SDPMediaSettings *this)
{
  *this = &unk_1F5EF04B0;
  if (*(this + 272) == 1)
  {
    SDPMediaCrypto::~SDPMediaCrypto((this + 192));
  }

  if (*(this + 184) == 1)
  {
    SDPMediaCrypto::~SDPMediaCrypto((this + 104));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  SDPMediaSettings::~SDPMediaSettings(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaSettings::setRemoteAddress(uint64_t a1, std::string *a2)
{
  IpAddress::createAddress(a2, &v4);
  v3 = *(a1 + 16);
  *(a1 + 8) = v4;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

SDPMediaCrypto *std::optional<SDPMediaCrypto>::operator=[abi:ne200100]<SDPMediaCrypto const&,void>(SDPMediaCrypto *a1, const SDPMediaCrypto *a2)
{
  if (*(a1 + 80) == 1)
  {
    SDPMediaCrypto::operator=(a1, a2);
  }

  else
  {
    SDPMediaCrypto::SDPMediaCrypto(a1, a2);
    *(a1 + 80) = 1;
  }

  return a1;
}

BOOL SDPMediaSettings::operator!=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  if (v4)
  {
    if (!v6 || ((*(*v4 + 104))(v4, v5, 0) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (!v6)
  {
    goto LABEL_23;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 26) != *(a2 + 26) || *(a1 + 28) != *(a2 + 28) || *(a1 + 30) != *(a2 + 30))
  {
    goto LABEL_23;
  }

  v8 = *(a1 + 95);
  if (v8 >= 0)
  {
    v9 = *(a1 + 95);
  }

  else
  {
    v9 = *(a1 + 80);
  }

  v10 = *(a2 + 95);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 80);
  }

  if (v9 != v10)
  {
    goto LABEL_23;
  }

  v12 = v8 >= 0 ? (a1 + 72) : *(a1 + 72);
  v13 = v11 >= 0 ? (a2 + 72) : *(a2 + 72);
  if (memcmp(v12, v13, v9))
  {
    goto LABEL_23;
  }

  if (*(a1 + 184) != 1)
  {
    if ((*(a2 + 184) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_23:
    v14 = 1;
    return v14 & 1;
  }

  if (!*(a2 + 184) || operator!=(a1 + 104, a2 + 104))
  {
    goto LABEL_23;
  }

LABEL_30:
  v16 = *(a1 + 272);
  v14 = v16 | *(a2 + 272);
  if (v16 != 1 || (*(a2 + 272) & 1) == 0)
  {
    return v14 & 1;
  }

  return operator!=(a1 + 192, a2 + 192);
}

BOOL operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 72) == *(a2 + 72) && *(a1 + 73) == *(a2 + 73) && *(a1 + 74) == *(a2 + 74) && *(a1 + 75) == *(a2 + 75) && (v3 = a1 + 48, v2 = *(a1 + 48), v4 = *(v3 + 8) - v2, v6 = a2 + 48, v5 = *(a2 + 48), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) != 0;
  }

  else
  {
    return 1;
  }
}

void dispatch::workloop::~workloop(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_release(v1);
  }
}

void xcap::getQueue(uint64_t *__return_ptr a1@<X8>)
{
  if (xcap::getQueue(void)::once != -1)
  {
    dispatch_once(&xcap::getQueue(void)::once, &__block_literal_global_11);
  }

  v2 = sXcapDispatchQueue;
  *a1 = sXcapDispatchQueue;
  if (v2)
  {

    dispatch_retain(v2);
  }
}

void ___ZN4xcap8getQueueEv_block_invoke(xcap *a1)
{
  if (!sXcapDispatchQueue)
  {
    xcap::getWorkloop(&v5);
    v1 = v5;
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v3 = dispatch_queue_create_with_target_V2("com.apple.ipTelephony.xcap.queue", initially_inactive, v1);
    dispatch_set_qos_class_floor(v3, QOS_CLASS_USER_INITIATED, 0);
    dispatch_activate(v3);
    v4 = sXcapDispatchQueue;
    sXcapDispatchQueue = v3;
    if (v4)
    {
      dispatch_release(v4);
    }

    if (v1)
    {
      dispatch_release(v1);
    }
  }
}

void xcap::getWorkloop(uint64_t *__return_ptr a1@<X8>)
{
  if (xcap::getWorkloop(void)::once != -1)
  {
    dispatch_once(&xcap::getWorkloop(void)::once, &__block_literal_global_7);
  }

  v2 = sXcapDispatchWorkloop;
  *a1 = sXcapDispatchWorkloop;
  if (v2)
  {

    dispatch_retain(v2);
  }
}

void ___ZN4xcap11getWorkloopEv_block_invoke()
{
  if (!sXcapDispatchWorkloop)
  {
    v0 = dispatch_workloop_create("com.apple.ipTelephony.xcap.workloop");
    v1 = sXcapDispatchWorkloop;
    sXcapDispatchWorkloop = v0;
    if (v1)
    {

      dispatch_release(v1);
    }
  }
}

uint64_t _GLOBAL__sub_I_ImsDispatch_cpp()
{
  sImsDispatchQueue = 0;
  __cxa_atexit(dispatch::queue::~queue, &sImsDispatchQueue, &dword_1E4C3F000);
  sXcapDispatchQueue = 0;
  __cxa_atexit(dispatch::queue::~queue, &sXcapDispatchQueue, &dword_1E4C3F000);
  sXcapDispatchWorkloop = 0;

  return __cxa_atexit(dispatch::workloop::~workloop, &sXcapDispatchWorkloop, &dword_1E4C3F000);
}

void LazuliStatusHeader::LazuliStatusHeader(LazuliStatusHeader *this, unsigned int __val)
{
  *(&v8.__r_.__value_.__s + 23) = 4;
  strcpy(&v8, "000 ");
  std::to_string(&__p, __val);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = std::string::append(&v8, p_p, size);
  v6 = std::string::append(v5, " OK", 3uLL);
  LazuliStringHeader::LazuliStringHeader(this, "Status", v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F5EF0530;
}

void sub_1E50B2648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50B2768(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliStatusHeader::~LazuliStatusHeader(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50B290C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliStatusHeader::create(unsigned int)::HeaderWrapper,std::allocator<LazuliStatusHeader::create(unsigned int)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF0590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliStatusHeader::create(unsigned int)::HeaderWrapper::~HeaderWrapper(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void RTCPSRPacket::packetize(RTCPSRPacket *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  LODWORD(__x.__begin_) = bswap32(*(this + 6));
  v4.__i_ = 0;
  std::vector<unsigned int>::insert(a2, v4, &__x);
  RTCPSenderInfo::packetize((this + 28), &__x);
  begin = __x.__begin_;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), __x.__begin_, __x.__end_, __x.__end_ - __x.__begin_);
  RTCPReceiverReports::packetize((this + 48), &__x);
  if (begin)
  {
    operator delete(begin);
  }

  v6 = __x.__begin_;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), __x.__begin_, __x.__end_, __x.__end_ - __x.__begin_);
  v7 = -73 * ((*(this + 14) - *(this + 12)) >> 2);
  v8.__i_ = *a2;
  v9 = (*(a2 + 8) - *a2) >> 2;
  *(this + 12) = 0;
  *(this + 13) = v7;
  *(this + 4) = 200;
  *(this + 10) = v9;
  LODWORD(__x.__begin_) = bswap32(v9) & 0xFFFF0000 | 0xC800 | v7 & 0x1F | 0x80;
  std::vector<unsigned int>::insert(a2, v8, &__x);
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_1E50B2BC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPSRPacket::toStream(RTCPSRPacket *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCPSRPacket - Sender SSRC: ", 28);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 6));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  RTCPSenderInfo::toStream((this + 28), a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (this + 48);
  if (v5 != v4)
  {
    RTCPReceiverReports::toStream(v6, a2);
  }

  return a2;
}

void RTCPSRPacket::~RTCPSRPacket(RTCPSRPacket *this)
{
  *this = &unk_1F5EF0658;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5EF0658;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void *SipSessionState::SipSessionState(void *a1, uint64_t a2)
{
  SipSessionInterface::stack(&v23, *a2);
  v21 = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  SipState::SipState(a1, &v21);
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "sip.session.state");
  v4 = *a2;
  v15 = *(*a2 + 192);
  shared_owners = v4[8].__shared_owners_;
  if (SHIBYTE(v4[9].__shared_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v4[8].__shared_weak_owners_, v4[9].__vftable);
  }

  else
  {
    __p = *(v4 + 208);
  }

  shared_weak_owners = v4[9].__shared_weak_owners_;
  ims::getQueue(&v25);
  ClientConfig::getLogTag(&v22, &v15);
  if ((v20 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v6 = v20;
  }

  else
  {
    v6 = v19[1];
  }

  v7 = std::string::insert(&v22, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v24 = v7->__r_.__value_.__r.__words[2];
  v23 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v9 = &v23;
  }

  else
  {
    v9 = v23;
  }

  a1[27] = 0;
  a1[28] = 0;
  v10 = v25;
  a1[29] = v25;
  if (v10)
  {
    dispatch_retain(v10);
  }

  a1[30] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 31), "com.apple.ipTelephony", v9);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  a1[26] = &unk_1F5EF07E8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  *a1 = &unk_1F5EF0EA8;
  a1[1] = &unk_1F5EF0F50;
  a1[26] = &unk_1F5EF0F80;
  a1[32] = 0;
  a1[33] = 0;
  v11 = *a2;
  v12 = *(a2 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
    v13 = a1[33];
    a1[32] = v11;
    a1[33] = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    a1[32] = v11;
    a1[33] = 0;
  }

  return a1;
}

void sub_1E50B3010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  SipState::~SipState(v31);
  _Unwind_Resume(a1);
}

void sub_1E50B3098(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  v20 = *(v19 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  JUMPOUT(0x1E50B3090);
}

uint64_t SipSessionState::stateMachine(SipSessionState *this)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 32);
  if (v4)
  {
    v5 = v4 + 712;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 32);
  if (v4)
  {
    v5 = v4 + 712;
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

uint64_t SipSessionState::handleRequest(uint64_t a1, void *a2, const std::string **a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (!v9)
      {
LABEL_82:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return v9;
      }

      v10 = (*(**a2 + 120))();
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v11 == 6 && (v12 >= 0 ? (v13 = v10) : (v13 = *v10), (v14 = *v13, v15 = *(v13 + 4), v14 == *"CANCEL") ? (v16 = v15 == *"EL") : (v16 = 0), v16))
      {
        v56 = a2[1];
        v90 = *a2;
        v91 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = a3[1];
        v88 = *a3;
        v89 = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleCancel(v9, &v90, &v88);
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        v58 = v91;
        if (!v91)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v17 = (*(**a2 + 120))();
        v18 = *(v17 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v17 + 8);
        }

        if (v18 == 5 && (v19 >= 0 ? (v20 = v17) : (v20 = *v17), (v21 = *v20, v22 = *(v20 + 4), v21 == *"PRACK") ? (v23 = v22 == SipRequest::kMethodPrack[4]) : (v23 = 0), v23))
        {
          v60 = a2[1];
          v86 = *a2;
          v87 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = a3[1];
          v84 = *a3;
          v85 = v61;
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::handlePrack(v9, &v86, &v84);
          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          v58 = v87;
          if (!v87)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v24 = (*(**a2 + 120))();
          v25 = *(v24 + 23);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v24 + 8);
          }

          if (v25 == 3 && (v26 >= 0 ? (v27 = v24) : (v27 = *v24), (v28 = *v27, v29 = *(v27 + 2), v28 == SipRequest::kMethodBye) ? (v30 = v29 == BYTE2(SipRequest::kMethodBye)) : (v30 = 0), v30))
          {
            v62 = a2[1];
            v82 = *a2;
            v83 = v62;
            if (v62)
            {
              atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v63 = a3[1];
            v80 = *a3;
            v81 = v63;
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::handleBye(v9, &v82, &v80);
            if (v81)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v81);
            }

            v58 = v83;
            if (!v83)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v31 = (*(**a2 + 120))();
            v32 = *(v31 + 23);
            v33 = v32;
            if ((v32 & 0x80u) != 0)
            {
              v32 = *(v31 + 8);
            }

            if (v32 == 7)
            {
              v34 = v33 >= 0 ? v31 : *v31;
              v35 = *v34;
              v36 = *(v34 + 3);
              if (v35 == *"OPTIONS" && v36 == *"IONS")
              {
                v66 = a2[1];
                v79[0] = *a2;
                v79[1] = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                }

                v67 = a3[1];
                v78[0] = *a3;
                v78[1] = v67;
                if (v67)
                {
                  atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
                }

                SipSession::handleOptions(v9, v79, v78);
              }
            }

            v38 = (*(**a2 + 120))();
            v39 = *(v38 + 23);
            v40 = v39;
            if ((v39 & 0x80u) != 0)
            {
              v39 = *(v38 + 8);
            }

            if (v39 == 4 && (v40 >= 0 ? (v41 = v38) : (v41 = *v38), *v41 == *"INFO"))
            {
              v68 = a2[1];
              v76 = *a2;
              v77 = v68;
              if (v68)
              {
                atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v69 = a3[1];
              v74 = *a3;
              v75 = v69;
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleInfo(v9, &v76, &v74);
              if (v75)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v75);
              }

              v58 = v77;
              if (!v77)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v42 = (*(**a2 + 120))();
              v43 = *(v42 + 23);
              v44 = v43;
              if ((v43 & 0x80u) != 0)
              {
                v43 = *(v42 + 8);
              }

              if (v43 != 6 || (v44 >= 0 ? (v45 = v42) : (v45 = *v42), (v46 = *v45, v47 = *(v45 + 4), v46 == *"UPDATE") ? (v48 = v47 == *"TE") : (v48 = 0), !v48))
              {
                v49 = (*(**a2 + 120))();
                v50 = *(v49 + 23);
                v51 = v50;
                if ((v50 & 0x80u) != 0)
                {
                  v50 = *(v49 + 8);
                }

                if (v50 != 6 || (v51 >= 0 ? (v52 = v49) : (v52 = *v49), (v53 = *v52, v54 = *(v52 + 4), v53 == *"INVITE") ? (v55 = v54 == *"TE") : (v55 = 0), !v55))
                {
                  v9 = 0;
                  goto LABEL_82;
                }
              }

              v64 = a2[1];
              v72 = *a2;
              v73 = v64;
              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v65 = a3[1];
              v70 = *a3;
              v71 = v65;
              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipSession::handleInviteOrUpdateRequest(v9, &v72, &v70);
              if (v71)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v71);
              }

              v58 = v73;
              if (!v73)
              {
LABEL_81:
                v9 = 1;
                goto LABEL_82;
              }
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      goto LABEL_81;
    }
  }

  return 0;
}

void sub_1E50B36F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void SipSessionState::handleUpdateResponse(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (v9)
      {
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = a3[1];
        v12 = *a3;
        v13 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleInviteOrUpdateResponse(v9, &v14, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E50B3868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipSessionState::handleInviteResponse(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (v9)
      {
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = a3[1];
        v12 = *a3;
        v13 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleInviteOrUpdateResponse(v9, &v14, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E50B3944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipSessionState::handleResponse(SipSessionState *a1, void *a2, void *a3)
{
  v4 = *(a1 + 33);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_71;
      }

      v10 = *(*a3 + 264);
      v11 = *(*a3 + 272);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = (*(*v10 + 120))(v10);
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v13 == 6)
      {
        if (v14 >= 0)
        {
          v15 = v12;
        }

        else
        {
          v15 = *v12;
        }

        v16 = *v15;
        v17 = *(v15 + 4);
        v19 = v16 == *"UPDATE" && v17 == *"TE";
        if (!v11)
        {
LABEL_22:
          if (v19)
          {
            v20 = a2[1];
            v51 = *a2;
            v52 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = a3[1];
            v49 = *a3;
            v50 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 80))(a1, &v51, &v49);
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            v22 = v52;
            if (!v52)
            {
              goto LABEL_71;
            }

            goto LABEL_57;
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

          if (v26 == 6)
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
            v32 = v29 == *"INVITE" && v30 == *"TE";
            if (!v24)
            {
LABEL_49:
              if (!v32)
              {
                v35 = *(*a2 + 128);
                if (v35 == 481 || v35 == 408)
                {
                  v36 = (v9->__vftable[1].__get_deleter)(v9);
                  (v9->__on_zero_shared)(v9, v36);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "terminating session due to ", 27);
                  *(v36 + 17) = 0;
                  MEMORY[0x1E6923350](*(v36 + 8), *(*a2 + 128));
                  *(v36 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), " response", 9);
                  *(v36 + 17) = 0;
                  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v36 + 17) = 0;
                  bzero(v44, 0x250uLL);
                  shared_weak_owners = v9[34].__shared_weak_owners_;
                  if (shared_weak_owners)
                  {
                    shared_owners = v9[34].__shared_owners_;
                    atomic_fetch_add_explicit(&shared_weak_owners->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v42 = 0;
                    v43 = std::__shared_weak_count::lock(shared_weak_owners);
                    if (v43)
                    {
                      v42 = shared_owners;
                    }
                  }

                  else
                  {
                    v42 = 0;
                    v43 = 0;
                  }

                  BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(v44, &v42);
                  if (v43)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
                  }

                  if (shared_weak_owners)
                  {
                    std::__shared_weak_count::__release_weak(shared_weak_owners);
                  }

                  v39 = a2[1];
                  v41[0] = *a2;
                  v41[1] = v39;
                  if (v39)
                  {
                    atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
                  }

                  SipSessionInterface::stack(&v40, v9);
                  BambiCallSessionTerminationBaseEvent::setReasonFromIncomingResponse(v44, v41, v40 + 2552);
                }

                goto LABEL_71;
              }

              v33 = a2[1];
              v47 = *a2;
              v48 = v33;
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v34 = a3[1];
              v45 = *a3;
              v46 = v34;
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*a1 + 72))(a1, &v47, &v45);
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              v22 = v48;
              if (v48)
              {
LABEL_57:
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

LABEL_71:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              return;
            }
          }

          else
          {
            v32 = 0;
            if (!v24)
            {
              goto LABEL_49;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          goto LABEL_49;
        }
      }

      else
      {
        v19 = 0;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      goto LABEL_22;
    }
  }
}

void sub_1E50B3DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  _Unwind_Resume(a1);
}

void SipSessionState::terminateSessionWithEvent(SipSessionState *this, BambiCallEvent *a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        SipSession::terminateWithEvent(v7, a2, 13);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipSessionState::handleTransactionError(SipSessionState *a1, uint64_t **a2, uint64_t a3)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = v6[4];
  }

  while (v6);
  ImsResult::ImsResult(&v31, v7);
  v8 = a2[1];
  v9 = *(a2 + 4);
  if (v8 == &SipResultDomain::_domain && v9 == 408)
  {
    bzero(v28, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 13);
    v28[0] = &unk_1F5EC4038;
    v10 = *(a1 + 33);
    if (!v10)
    {
      v11 = 0;
      goto LABEL_33;
    }

    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(*a3 + 264);
        v14 = *(*a3 + 272);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = (*(*v13 + 120))(v13);
        v16 = *(v15 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v15 + 8);
        }

        if (v16 == 6 && (v17 >= 0 ? (v18 = v15) : (v18 = *v15), (v19 = *v18, v20 = *(v18 + 4), v19 == *"INVITE") ? (v21 = v20 == *"TE") : (v21 = 0), v21))
        {
          v22 = SipSession::confirmed(v12) ^ 1;
          if (v14)
          {
LABEL_21:
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            if (v22)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = 0;
          if (v14)
          {
            goto LABEL_21;
          }
        }

        if (v22)
        {
LABEL_39:
          *&__str.__r_.__value_.__l.__data_ = 0uLL;
          SipSessionInterface::stack(&__str, v12);
          if (__str.__r_.__value_.__r.__words[0])
          {
            v23 = *(__str.__r_.__value_.__r.__words[0] + 296);
            v24 = *(__str.__r_.__value_.__r.__words[0] + 248);
            v25 = *(__str.__r_.__value_.__r.__words[0] + 256);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v24)
            {
              v26 = SipUserAgent::config(v24);
              shouldCSFBOnInviteResponse = SipUserAgentConfig::shouldCSFBOnInviteResponse(v26, 408, v23);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }

          if (__str.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
          }
        }
      }
    }

LABEL_33:
    SipSessionState::terminateSessionWithEvent(a1, v28);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    goto LABEL_36;
  }

  if (v8 == &_posixDomain)
  {
    if (v9 == 60)
    {
LABEL_31:
      bzero(v28, 0x250uLL);
      BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 11);
      v28[0] = &unk_1F5EC4038;
      SipSessionState::terminateSessionWithEvent(a1, v28);
      goto LABEL_36;
    }

    if (*(&v31 + 1) != &_posixDomain)
    {
LABEL_35:
      bzero(v28, 0x250uLL);
      BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 22);
      v28[0] = &unk_1F5EC4038;
      SipSessionState::terminateSessionWithEvent(a1, v28);
      goto LABEL_36;
    }

LABEL_30:
    if (v32 == 60)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (*(&v31 + 1) == &_posixDomain)
  {
    goto LABEL_30;
  }

  bzero(v28, 0x250uLL);
  BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v28, 15, 10);
  v28[0] = &unk_1F5EC4038;
  ImsResult::description(a2, &__str);
  std::string::operator=(&v29, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  SipSessionState::terminateSessionWithEvent(a1, v28);
LABEL_36:
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v28);
  ImsResult::~ImsResult(&v31);
}

void sub_1E50B4314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&a16);
  ImsResult::~ImsResult((v18 - 144));
  _Unwind_Resume(a1);
}

void SipSessionState::fireCallEvent(SipSessionState *this, BambiCallEvent *a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        SipSession::fireCallEvent(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void SipSessionConfirmedState::enterState(SipSessionConfirmedState *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        SipSession::handleSessionConfirmed(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipSessionRttUpgradeRequestedState::enterState(SipSessionRttUpgradeRequestedState *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 32))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 27);
        v4 = v7;
        if (v7)
        {
          p_shared_weak_owners = &v7->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E50B460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void SipSessionRttUpgradeRequestedState::handleTimer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 15)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = *(v4 + 7);
    if (v5 == 0x6172677055747452 && v6 == 0x72656D6954656461)
    {
      v9 = *(a1 + 264);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 256);
          if (v12)
          {
            SipSession::answerRttUpgradeRequest(v12, v13);
            ImsResult::~ImsResult(v13);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }
  }
}

void SipSessionSilentHangUpState::enterState(SipSessionSilentHangUpState *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 32))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 27);
        v4 = v7;
        if (v7)
        {
          p_shared_weak_owners = &v7->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E50B489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

BOOL SipSessionSilentHangUpState::handleRequest(void *a1, void *a2, const std::string **a3)
{
  v4 = a1[33];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[32];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = (*(**a2 + 120))();
        v12 = *(v11 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v11 + 8);
        }

        if (v12 == 3)
        {
          v14 = v13 >= 0 ? v11 : *v11;
          v15 = *v14;
          v16 = *(v14 + 2);
          if (v15 == SipRequest::kMethodBye && v16 == BYTE2(SipRequest::kMethodBye))
          {
            SipTimerContainer::cancelAllTimers((a1 + 2));
            v41 = 0;
            v42 = 0;
            SipSessionInterface::stack(&v41, v9);
            if (v41)
            {
              v28 = *(v41 + 31);
              v29 = *(v41 + 32);
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v28)
              {
                v39 = 0;
                v40 = 0;
                v44 = 200;
                v43 = v28 + 384;
                std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
              }

              if (v29)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              }
            }

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            v30 = (*(*a1 + 32))(a1);
            (*(*v30 + 32))(v30, 13);
            goto LABEL_44;
          }
        }

        v18 = (*(**a2 + 120))();
        v19 = *(v18 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 + 8);
        }

        if (v19 == 6 && (v20 >= 0 ? (v21 = v18) : (v21 = *v18), (v22 = *v21, v23 = *(v21 + 4), v22 == *"CANCEL") ? (v24 = v23 == *"EL") : (v24 = 0), v24 && (v32 = v9[10].__vftable) != 0 && (v32[70].__on_zero_shared & 1) == 0))
        {
          v33 = a2[1];
          v37 = *a2;
          v38 = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = a3[1];
          v35 = *a3;
          v36 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::handleCancel(v9, &v37, &v35);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          v27 = v38;
          if (!v38)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v41 = 0;
          v42 = 0;
          SipSessionInterface::stack(&v41, v9);
          if (v41)
          {
            v25 = *(v41 + 31);
            v26 = *(v41 + 32);
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v25)
            {
              v39 = 0;
              v40 = 0;
              v44 = 500;
              v43 = v25 + 384;
              std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }

          v27 = v42;
          if (!v42)
          {
            goto LABEL_44;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

LABEL_44:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      return v10;
    }
  }

  return 0;
}

void sub_1E50B4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

uint64_t SipSessionSilentHangUpState::handleTimer(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 == 21)
  {
    v5 = v4 >= 0 ? a2 : *a2;
    v6 = *v5;
    v7 = v5[1];
    v8 = *(v5 + 13);
    v9 = v6 == 0x6148746E656C6953 && v7 == 0x656D69547055676ELL;
    if (v9 && v8 == 0x656D614E72656D69)
    {
      v11 = *(*(*(*result + 32))(result) + 32);

      return v11();
    }
  }

  return result;
}

void SipSessionSentByeState::enterState(SipSessionSentByeState *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 27);
        v6 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        v10 = 0;
        SipSessionInterface::stack(&v9, v5);
        if (v9)
        {
          v8 = *(v9 + 31);
          v7 = *(v9 + 32);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v11 = 0;
            operator new();
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E50B5064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void SipSessionSentByeState::handleTimer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 21)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 13);
    v8 = v5 == 0x46676E6974696157 && v6 == 0x736552657942726FLL;
    if (v8 && v7 == 0x65736E6F70736552)
    {
      v11 = *(a1 + 264);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 256);
          if (v14)
          {
            v15 = (*(*v14 + 64))(v14);
            (*(*v14 + 16))(v14, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "timed out waiting for response to our BYE. Terminating session.", 63);
            *(v15 + 17) = 0;
            (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v15 + 17) = 0;
            v16 = 0;
            v17 = 0;
            SipSession::performPendingTermination(v14, &v16, 13, 1);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }
  }
}

void sub_1E50B5268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *SipSessionSentByeState::handleRequest(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = (*(**a2 + 120))();
  v6 = *(v5 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6 != 3 || (v7 >= 0 ? (v8 = v5) : (v8 = *v5), (v9 = *v8, v10 = *(v8 + 2), v9 == SipRequest::kMethodBye) ? (v11 = v10 == BYTE2(SipRequest::kMethodBye)) : (v11 = 0), !v11))
  {
    v12 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    SipServerTransaction::sendResponse(v12, v18);
    ImsResult::~ImsResult(v18);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  result = *(a1 + 264);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v14 = result;
      v15 = *(a1 + 256);
      if (!v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](result);
        return 0;
      }

      v16 = *a3;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      SipServerTransaction::sendResponse(v16, v23);
      ImsResult::~ImsResult(v23);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = (*(*v15 + 64))(v15);
      (*(*v15 + 16))(v15, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "received a BYE while waiting for a response to our BYE. Terminating session.", 76);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      v19 = 0;
      v20 = 0;
      SipSession::performPendingTermination(v15, &v19, 13, 1);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      return 1;
    }
  }

  return result;
}

void sub_1E50B54C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipSessionSentByeState::handleResponse(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(*a3 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 120))(v5);
  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 == 3 && (v9 >= 0 ? (v10 = v7) : (v10 = *v7), (v11 = *v10, v12 = *(v10 + 2), v11 == SipRequest::kMethodBye) ? (v13 = v12 == BYTE2(SipRequest::kMethodBye)) : (v13 = 0), v13))
  {
    v14 = *(*a2 + 128) - 200;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v14 <= 0xFFFFFF9B)
    {
      v15 = *(a1 + 264);
      if (v15)
      {
        v16 = std::__shared_weak_count::lock(v15);
        if (v16)
        {
          v17 = v16;
          v18 = *(a1 + 256);
          if (v18)
          {
            v19 = (*(*v18 + 64))(v18);
            (*(*v18 + 16))(v18, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received response to our BYE. Time to terminate.", 48);
            *(v19 + 17) = 0;
            (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v19 + 17) = 0;
            v20 = a2[1];
            v21 = *a2;
            v22 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::performPendingTermination(v18, &v21, 13, 1);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }
    }
  }

  else if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E50B5730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t SipSessionTerminatedState::handleRequest(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  SipServerTransaction::sendResponse(v3, v7);
  ImsResult::~ImsResult(v7);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_1E50B57CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSipSessionState::~SipSessionState(SipSessionState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionConfirmedState::~SipSessionConfirmedState(SipSessionConfirmedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionConfirmedState::~SipSessionConfirmedState(SipSessionConfirmedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionRttUpgradeRequestedState::~SipSessionRttUpgradeRequestedState(SipSessionRttUpgradeRequestedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionRttUpgradeRequestedState::~SipSessionRttUpgradeRequestedState(SipSessionRttUpgradeRequestedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionSilentHangUpState::~SipSessionSilentHangUpState(SipSessionSilentHangUpState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionSilentHangUpState::~SipSessionSilentHangUpState(SipSessionSilentHangUpState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionSentByeState::~SipSessionSentByeState(SipSessionSentByeState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionSentByeState::~SipSessionSentByeState(SipSessionSentByeState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionTerminatedState::~SipSessionTerminatedState(SipSessionTerminatedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionTerminatedState::~SipSessionTerminatedState(SipSessionTerminatedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<SipSessionState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipSessionState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0810;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0810;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0810;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0,std::allocator<SipSessionRttUpgradeRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0890;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0890;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0890;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionSilentHangUpState::enterState(unsigned int)::$_0,std::allocator<SipSessionSilentHangUpState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0910;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF0910;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF0910;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionSentByeState::enterState(unsigned int)::$_0,std::allocator<SipSessionSentByeState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN18IPTelephonyHandler5startEv_block_invoke(ims *a1)
{
  v1 = ims::logger(a1);
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  ImsLogger::setPriority(v1, 3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  wis::metrics::initAWDMetrics(0x22);
}

void sub_1E50B65CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InitializeIPTelephony()
{
  v0 = IPTelephonyHandler::gIPTelephonyHandler;
  if (!IPTelephonyHandler::gIPTelephonyHandler)
  {
    operator new();
  }

  ims::getQueue(&queue);
  v1 = queue;
  dispatch_async(queue, &__block_literal_global_12);
  if (v1)
  {
    dispatch_release(v1);
  }

  syslog(5, "IPTelephonyManager ready!");
  return v0;
}

void ImsUuid::assign(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v4 = (a1 + 8);

    std::string::operator=(v4, a2);
  }

  else
  {
    ImsUuid::generate(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = v7;
    *(&v7.__r_.__value_.__s + 23) = 0;
    v7.__r_.__value_.__s.__data_[0] = 0;
    v5 = &unk_1F5EBEE78;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E50B6774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsUuid::generate(ImsUuid *__return_ptr a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v4 = 0;
  memset(v2, 0, sizeof(v2));
  MEMORY[0x1E69244D0](uu);
  uuid_unparse(uu, v2);
  ImsUuid::ImsUuid(a1, v2);
}

char *ImsUuid::asStringNoDashes@<X0>(ImsUuid *this@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *a2 = *(this + 8);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v11 = 45;
  v5 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v4, v4 + size, &v11);
  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  v8 = a2 + v6;
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = (a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_);
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v5 - v9, v8 - v5);
  return ims::lowerCase(a2);
}

void sub_1E50B68F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void ImsUuid::ImsUuid(ImsUuid *this, const char *__s)
{
  *this = &unk_1F5EBEE78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
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

  v7 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  ImsUuid::assign(this, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1E50B6A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_ImsUuid_cpp()
{
  ImsUuid::kEmptyUuid = &unk_1F5EBEE78;
  *byte_1EE2BD0B0 = 0;
  *&byte_1EE2BD0B0[8] = 0;
  *&byte_1EE2BD0B0[16] = 0;
  return __cxa_atexit(ImsUuid::~ImsUuid, &ImsUuid::kEmptyUuid, &dword_1E4C3F000);
}

void SipRouteHeader::~SipRouteHeader(void **this)
{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

powerlog::PowerLogger *powerlog::PowerLogger::PowerLogger(powerlog::PowerLogger *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
  v17[0] = 0;
  v20 = 0;
  ImsLogContainer::ImsLogContainer(this, &v21, v17);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  ctu::OsLogLogger::OsLogLogger((this + 144), "com.apple.ipTelephony", "power.logger");
  *this = &unk_1F5EF1050;
  *(this + 17) = &unk_1F5EF10B0;
  *(this + 19) = 0;
  v2 = PPSCreateTelemetryIdentifier();
  *(this + 19) = v2;
  if (v2)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
    v13[0] = 0;
    v16 = 0;
    v4 = ims::debug(v3, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Telemetry Identifier created", 28);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      v5 = v14;
LABEL_13:
      operator delete(v5);
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
    v9[0] = 0;
    v12 = 0;
    v7 = ims::error(v6, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Couldn't create Telemetry Identifier", 36);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      v5 = __p;
      goto LABEL_13;
    }
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  return this;
}

void sub_1E50B6E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  MEMORY[0x1E69225A0](v28 + 18, a2, a3, a4, a5, a6, a7, a8);
  ImsLogContainer::~ImsLogContainer(v28);
  _Unwind_Resume(a1);
}

void powerlog::PowerLogger::~PowerLogger(void **this)
{
  MEMORY[0x1E69225A0](this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  powerlog::PowerLogger::~PowerLogger(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk topowerlog::PowerLogger::~PowerLogger(void **this)
{
  powerlog::PowerLogger::~PowerLogger(this - 17);
}

{
  powerlog::PowerLogger::~PowerLogger(this - 17);

  JUMPOUT(0x1E69235B0);
}

void powerlog::PowerLogger::logLazuliSipRequest(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Action"];
  [v11 setObject:v12 forKey:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Interface"];
  [v11 setObject:v14 forKey:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TransactionType"];
  [v11 setObject:v16 forKey:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:a5];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Value"];
  [v11 setObject:v18 forKey:v19];

  v20 = [MEMORY[0x1E695DF00] date];
  [v20 timeIntervalSince1970];
  v22 = v21;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Timestamp"];
  [v11 setObject:v23 forKey:v24];

  PPSSendTelemetry();
  v25 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "----------------------------------------------------", 52);
  *(v25 + 17) = 0;
  (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  v26 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Sending telemetry data to PowerLog", 34);
  *(v26 + 17) = 0;
  (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v26 + 17) = 0;
  v27 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "  Action          : ", 20);
  *(v27 + 17) = 0;
  if (a2)
  {
    v28 = "Received (1)";
  }

  else
  {
    v28 = "Sent (2)";
  }

  if (a2)
  {
    v29 = 12;
  }

  else
  {
    v29 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), v28, v29);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  v30 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "  Interface       : ", 20);
  *(v30 + 17) = 0;
  if (a3)
  {
    std::to_string(&v45, 1u);
    v31 = std::string::insert(&v45, 0, "WiFi (", 6uLL);
  }

  else
  {
    std::to_string(&v45, 0);
    v31 = std::string::insert(&v45, 0, "Cellular (", 0xAuLL);
  }

  v32 = *&v31->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v46, ")", 1uLL);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v44 = v33->__r_.__value_.__r.__words[2];
  *__p = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  (*(*v30 + 32))(v30, __p);
  (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v30 + 17) = 0;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  v35 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "  TransactionType : ", 20);
  *(v35 + 17) = 0;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      std::to_string(&v45, 3u);
      v36 = std::string::insert(&v45, 0, "SIP REFER (", 0xBuLL);
    }

    else
    {
      std::to_string(&v45, 4u);
      v36 = std::string::insert(&v45, 0, "SIP REGISTER (", 0xEuLL);
    }
  }

  else if (a4 == 1)
  {
    std::to_string(&v45, 1u);
    v36 = std::string::insert(&v45, 0, "SIP INVITE (", 0xCuLL);
  }

  else
  {
    std::to_string(&v45, 2u);
    v36 = std::string::insert(&v45, 0, "SIP BYE (", 9uLL);
  }

  v37 = *&v36->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v46, ")", 1uLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v44 = v38->__r_.__value_.__r.__words[2];
  *__p = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  (*(*v35 + 32))(v35, __p);
  (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v35 + 17) = 0;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "  Timestamp       : ", 20);
  *(v40 + 17) = 0;
  MEMORY[0x1E6923330](*(v40 + 8), v22);
  *(v40 + 17) = 0;
  (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v40 + 17) = 0;
  v41 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "  Value           : ", 20);
  *(v41 + 17) = 0;
  MEMORY[0x1E6923350](*(v41 + 8), a5);
  *(v41 + 17) = 0;
  (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v41 + 17) = 0;
  v42 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "----------------------------------------------------", 52);
  *(v42 + 17) = 0;
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v42 + 17) = 0;
}