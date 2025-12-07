uint64_t ims::SharedLoggable<SipMessageManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipMessageManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipMessageManager::create(std::weak_ptr<SipStack>)::Wrapper,std::allocator<SipMessageManager::create(std::weak_ptr<SipStack>)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE3BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipMessageManager::create(std::weak_ptr<SipStack>)::Wrapper::~Wrapper(SipMessageManager *a1)
{
  SipMessageManager::~SipMessageManager(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipMessageManager::create(std::weak_ptr<SipStack>)::Wrapper::~Wrapper(uint64_t a1)
{
  SipMessageManager::~SipMessageManager((a1 - 8));
}

{
  SipMessageManager::~SipMessageManager((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipMessageManager::~SipMessageManager((a1 - 16));
}

{
  SipMessageManager::~SipMessageManager((a1 - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipMessageManager::~SipMessageManager((a1 - 24));
}

{
  SipMessageManager::~SipMessageManager((a1 - 24));

  JUMPOUT(0x1E69235B0);
}

{
  SipMessageManager::~SipMessageManager((a1 - 160));
}

{
  SipMessageManager::~SipMessageManager((a1 - 160));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17SipMessageManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17SipMessageManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void SipSessionServerUnconfirmedState::handleOutgoingResponse(uint64_t a1, void *a2, void **a3)
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
        SipSession::serverInviteTransaction(*(a1 + 256), &v23);
        v10 = *a3;
        v11 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v10 == v11)
        {
          v12 = *(*a2 + 128);
          if (v12 - 200 > 0x63)
          {
            if (v12 >= 0x12C)
            {
              v15 = *(v9 + 832);
              if (v15)
              {
                v16 = *(v9 + 824);
                atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v17 = std::__shared_weak_count::lock(v15);
                if (!v17)
                {
                  v16 = 0;
                }

                std::__shared_weak_count::__release_weak(v15);
                bzero(&v23, 0x250uLL);
                v21 = v16;
                v22 = v17;
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              else
              {
                bzero(&v23, 0x250uLL);
                v21 = 0;
                v22 = 0;
              }

              BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(&v23, &v21);
              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

              v18 = *a2;
              v19 = a2[1];
              v20[0] = v18;
              v20[1] = v19;
              if (v19)
              {
                atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
              }

              BambiCallSessionTerminationBaseEvent::setReasonFromOutgoingResponse(&v23, v20);
            }
          }

          else
          {
            v13 = (*(*a1 + 32))(a1);
            if ((*(*v13 + 24))(v13) <= 5)
            {
              v14 = (*(*a1 + 32))(a1);
              (*(*v14 + 32))(v14, 6);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4FA2F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void SipSessionServerInviteState::handleOutgoingResponse(void *a1, uint64_t *a2, void **a3)
{
  v4 = a1[33];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[32];
      if (v9)
      {
        SipSession::serverInviteTransaction(v9, &v22);
        v10 = *a3;
        v11 = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v10 == v11)
        {
          v12 = *a2;
          if ((*(*a2 + 128) - 200) >= 0xFFFFFF9D)
          {
            v16 = SipMessage::header<SipToHeader>(v12);
            if (v16)
            {
              v17 = SipUriHeader::tag(v16);
              v18 = *(v17 + 23);
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v17 + 1);
              }

              if (v18)
              {
                v19 = (*(*a1 + 32))(a1);
                (*(*v19 + 32))(v19, 5);
              }
            }
          }

          else
          {
            v13 = a2[1];
            v21[0] = v12;
            v21[1] = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = *a3;
            v15 = a3[1];
            v20[0] = v14;
            v20[1] = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSessionServerUnconfirmedState::handleOutgoingResponse(a1, v21, v20);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4FA3134(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipToHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), &SipHeader::kHeaderTo);
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

void SipSessionServerCanceledState::handleOutgoingResponse(uint64_t a1, void *a2, void **a3)
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
        SipSession::serverInviteTransaction(*(a1 + 256), &v34);
        v10 = *a3;
        v11 = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v10 == v11 && *(*a2 + 128) >= 0x12Cu)
        {
          v12 = v9[104];
          if (v12)
          {
            v13 = v9[103];
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v14 = std::__shared_weak_count::lock(v12);
            if (!v14)
            {
              v13 = 0;
            }

            std::__shared_weak_count::__release_weak(v12);
            bzero(&v34, 0x250uLL);
            v32 = v13;
            v33 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            bzero(&v34, 0x250uLL);
            v32 = 0;
            v33 = 0;
          }

          BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(&v34, &v32);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          v15 = v9[201];
          if (v15)
          {
            LODWORD(v35) = *(v15 + 8);
            v17 = *(v15 + 16);
            v16 = *(v15 + 24);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = v37;
            v36 = v17;
            v37 = v16;
            if (v18)
            {
              std::__shared_weak_count::__release_weak(v18);
            }

            v38 = *(v15 + 32);
            v20 = *(v15 + 40);
            v19 = *(v15 + 48);
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = v40;
            v39 = v20;
            v40 = v19;
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v41 = *(v15 + 56);
            std::string::operator=(&v42, (v15 + 64));
            std::string::operator=(&v43, (v15 + 88));
            v44 = *(v15 + 112);
            std::string::operator=(&v45, (v15 + 120));
            v22 = *(v15 + 144);
            v47 = *(v15 + 148);
            v46 = v22;
            std::string::operator=(&v48, (v15 + 152));
            v49 = *(v15 + 176);
            SipUri::operator=(&v50, v15 + 184);
            v23 = (*(*v9 + 64))(v9);
            (*(*v9 + 16))(v9, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Using existing CancelReason: ", 29);
            *(v23 + 17) = 0;
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v31, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
            }

            else
            {
              v31 = v43;
            }

            (*(*v23 + 32))(v23, &v31);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
            *(v23 + 17) = 0;
            MEMORY[0x1E6923350](*(v23 + 8), v44);
            *(v23 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
            *(v23 + 17) = 0;
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v30, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
            }

            else
            {
              v30 = v42;
            }

            (*(*v23 + 32))(v23, &v30);
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }

            v26 = *a2;
            v27 = a2[1];
            v29[0] = v26;
            v29[1] = v27;
            if (v27)
            {
              atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
            }

            BambiCallSessionTerminationBaseEvent::setResponse(&v34, v29);
          }

          v24 = *a2;
          v25 = a2[1];
          v28[0] = v24;
          v28[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          BambiCallSessionTerminationBaseEvent::setReasonFromOutgoingResponse(&v34, v28);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4FA3638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&a29);
  if ((v31 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void SipSessionServerTerminateAfterAckState::enterState(SipSessionServerTerminateAfterAckState *this)
{
  v24 = *MEMORY[0x1E69E9840];
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
        v17 = 0;
        v18 = 0;
        SipSessionInterface::stack(&v17, v5);
        if (v17)
        {
          v7 = *(v17 + 31);
          v6 = *(v17 + 32);
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7)
          {
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
            v8 = v15;
            if (v15)
            {
              p_shared_weak_owners = &v15->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              if (*(SipUserAgent::config(v7) + 604))
              {
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                goto LABEL_24;
              }

              std::__shared_weak_count::__release_weak(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            else if (*(SipUserAgent::config(v7) + 604))
            {
LABEL_24:
              v19 = 0;
              operator new();
            }
          }

          else
          {
            v12 = *(this + 31);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              (*(*(this + 26) + 16))(&__p, this + 208);
              v13 = v16 >= 0 ? &__p : __p;
              *buf = 141558275;
              v21 = 1752392040;
              v22 = 2081;
              v23 = v13;
              _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
        }

        else
        {
          v10 = *(this + 31);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 26) + 16))(&__p, this + 208);
            v11 = v16 >= 0 ? &__p : __p;
            *buf = 141558275;
            v21 = 1752392040;
            v22 = 2081;
            v23 = v11;
            _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
            if (v16 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4FA39D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipSessionServerTerminateAfterAckState::handleTimer(void *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  v4 = qword_1EE2BBE28;
  if (byte_1EE2BBE37 >= 0)
  {
    v4 = byte_1EE2BBE37;
  }

  if (v3 == v4)
  {
    v6 = v2 >= 0 ? a2 : *a2;
    v7 = byte_1EE2BBE37 >= 0 ? &kWaitForAckBeforeEndingCallTimerName : kWaitForAckBeforeEndingCallTimerName;
    if (!memcmp(v6, v7, v3))
    {
      v8 = a1[33];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = a1[32];
          if (v11)
          {
            v12 = (*(*v11 + 64))(a1[32]);
            (*(*v11 + 16))(v11, v12);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "still haven't received an ACK. Terminating our call but keeping the SIP session around.", 87);
            *(v12 + 17) = 0;
            (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v12 + 17) = 0;
            v14 = 0;
            v15 = 0;
            v13 = (*(*a1 + 48))(a1);
            SipSession::performPendingTermination(v11, &v14, v13, 0);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }
}

void sub_1E4FA3C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t SipSessionServerTerminateAfterAckState::handleRequest(uint64_t a1, void *a2, const std::string **a3)
{
  v6 = (*(**a2 + 120))();
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 == 3 && (v8 >= 0 ? (v9 = v6) : (v9 = *v6), (v10 = *v9, v11 = *(v9 + 2), v10 == SipRequest::kMethodBye) ? (v12 = v11 == BYTE2(SipRequest::kMethodBye)) : (v12 = 0), v12))
  {
    v16 = *(a1 + 264);
    if (v16 && (v17 = std::__shared_weak_count::lock(v16)) != 0)
    {
      v18 = v17;
      v19 = *(a1 + 256);
      if (v19)
      {
        v20 = (*(*v19 + 64))(*(a1 + 256));
        (*(*v19 + 16))(v19, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "received a BYE while waiting to send one of our own. Terminating session.", 73);
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        v21 = a2[1];
        v28 = *a2;
        v29 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = a3[1];
        v26 = *a3;
        v27 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = SipSessionState::handleRequest(a1, &v28, &v26);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }
      }

      else
      {
        v14 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    SipServerTransaction::sendResponse(v13, v25);
    ImsResult::~ImsResult(v25);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    return 1;
  }

  return v14;
}

void sub_1E4FA3E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 72);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v15 - 56);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipSessionServerTerminateAfterAckState::handleAck(uint64_t a1)
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
        v6 = (*(*v5 + 64))(v5);
        (*(*v5 + 16))(v5, v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "received ACK, time to send pending BYE", 38);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        v7 = 0;
        v8 = 0;
        SipSession::sendPendingBye(v5, &v7);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4FA3FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipSessionServerUnconfirmedState::~SipSessionServerUnconfirmedState(SipSessionServerUnconfirmedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionServerUnconfirmedState::~SipSessionServerUnconfirmedState(SipSessionServerUnconfirmedState *this)
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

void SipSessionServerInviteState::~SipSessionServerInviteState(SipSessionServerInviteState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionServerInviteState::~SipSessionServerInviteState(SipSessionServerInviteState *this)
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

void SipSessionServerCanceledState::~SipSessionServerCanceledState(SipSessionServerCanceledState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionServerCanceledState::~SipSessionServerCanceledState(SipSessionServerCanceledState *this)
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

void SipSessionServerTerminateAfterAckState::~SipSessionServerTerminateAfterAckState(SipSessionServerTerminateAfterAckState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionServerTerminateAfterAckState::~SipSessionServerTerminateAfterAckState(SipSessionServerTerminateAfterAckState *this)
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

void *std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE3E38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EE3E38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EE3E38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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

uint64_t std::__function::__func<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0,std::allocator<SipSessionServerTerminateAfterAckState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipSessionServerStates_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kWaitForAckBeforeEndingCallTimerName, "WaitForAckBeforeEndingCallTimer");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &kWaitForAckBeforeEndingCallTimerName, &dword_1E4C3F000);
}

void XcapCDCondition::XcapCDCondition(XcapCDCondition *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  v4 = 1;
  v5 = &v4;
  v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v4, &std::piecewise_construct, &v5);
  bambi::XmlTreeItem::XmlTreeItem(v2, "conditions", (v3 + 5));
  *this = &unk_1F5EE42D8;
  *(this + 1) = &unk_1F5EE4350;
  *(this + 32) = 256;
  *(this + 66) = 0;
}

uint64_t *XcapCDCondition::asString@<X0>(uint64_t *__return_ptr a1@<X8>, XcapCDCondition *this@<X0>)
{
  v39 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  *__p = 0u;
  v36 = 0u;
  v33 = 0u;
  *__src = 0u;
  v31 = 0u;
  v32 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Conditions:[", 12);
  v5 = *(this + 64);
  v40 = this + 64;
  v6 = std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(v5, &v40);
  v9 = v6[5];
  v7 = v6 + 5;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = v7[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Media: ", 9);
  v15 = qword_1EE2BC8B0;
  if (!qword_1EE2BC8B0)
  {
LABEL_14:
    operator new();
  }

  v16 = *(this + 66);
  while (1)
  {
    while (1)
    {
      v17 = v15;
      v18 = *(v15 + 32);
      if (v18 <= v16)
      {
        break;
      }

      v15 = *v17;
      if (!*v17)
      {
        goto LABEL_14;
      }
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = v17[1];
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  v21 = v17[5];
  v20 = v17 + 5;
  v19 = v21;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v20[1];
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v23, v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "], Active: ", 11);
  MEMORY[0x1E6923320](v26, *(this + 65));
  if ((BYTE8(v37) & 0x10) != 0)
  {
    v28 = v37;
    if (v37 < __src[1])
    {
      *&v37 = __src[1];
      v28 = __src[1];
    }

    v29 = __src[0];
  }

  else
  {
    if ((BYTE8(v37) & 8) == 0)
    {
      v27 = 0;
      *(a1 + 23) = 0;
      goto LABEL_34;
    }

    v29 = *(&v32 + 1);
    v28 = *(&v33 + 1);
  }

  v27 = v28 - v29;
  if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v27;
  if (v27)
  {
    memmove(a1, v29, v27);
  }

LABEL_34:
  *(a1 + v27) = 0;
  *&v31 = *MEMORY[0x1E69E54E8];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v31 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v31 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v32);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v38);
}

void sub_1E4FA4B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

void XcapCDCondition::parseChild(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  memset(&__s, 0, sizeof(__s));
  XcapNs::stripXcapNs(a2, &__s);
  size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  if (size != 5)
  {
    if (size == 16)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_s = &__s;
      }

      v9 = p_s->__r_.__value_.__r.__words[0];
      v8 = p_s->__r_.__value_.__l.__size_;
      if (v9 == 0x6165642D656C7572 && v8 == 0x6465746176697463)
      {
        a1[65] = 0;
        goto LABEL_82;
      }
    }

LABEL_19:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __s;
    }

    v74 = 1;
    v70 = &v74;
    v15 = std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(1u, &v70);
    v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = *(v15 + 63);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = v15[6];
    }

    if (v17 != v18)
    {
      goto LABEL_34;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v23 = v15[5];
    v21 = v15 + 5;
    v22 = v23;
    v24 = v19 >= 0 ? v21 : v22;
    if (!memcmp(p_p, v24, v17))
    {
      v52 = 1;
    }

    else
    {
LABEL_34:
      v74 = 2;
      v70 = &v74;
      v25 = std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(2u, &v70);
      v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __p.__r_.__value_.__l.__size_;
      }

      v27 = *(v25 + 63);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = v25[6];
      }

      if (v26 != v27)
      {
        goto LABEL_46;
      }

      v29 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      v32 = v25[5];
      v30 = v25 + 5;
      v31 = v32;
      v33 = v28 >= 0 ? v30 : v31;
      if (!memcmp(v29, v33, v26))
      {
        v52 = 2;
      }

      else
      {
LABEL_46:
        v74 = 3;
        v70 = &v74;
        v34 = std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(3u, &v70);
        v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = __p.__r_.__value_.__l.__size_;
        }

        v36 = *(v34 + 63);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = v34[6];
        }

        if (v35 != v36)
        {
          goto LABEL_58;
        }

        v38 = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &__p;
        }

        v41 = v34[5];
        v39 = v34 + 5;
        v40 = v41;
        v42 = v37 >= 0 ? v39 : v40;
        if (!memcmp(v38, v42, v35))
        {
          v52 = 3;
        }

        else
        {
LABEL_58:
          v74 = 4;
          v70 = &v74;
          v43 = std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(4u, &v70);
          v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = __p.__r_.__value_.__l.__size_;
          }

          v45 = *(v43 + 63);
          v46 = v45;
          if ((v45 & 0x80u) != 0)
          {
            v45 = v43[6];
          }

          if (v44 != v45)
          {
            goto LABEL_79;
          }

          v47 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__p;
          }

          v50 = v43[5];
          v48 = v43 + 5;
          v49 = v50;
          v51 = v46 >= 0 ? v48 : v49;
          if (memcmp(v47, v51, v44))
          {
            goto LABEL_79;
          }

          v52 = 4;
        }
      }
    }

    a1[64] = v52;
LABEL_79:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    v55 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_81;
  }

  v11 = __s.__r_.__value_.__r.__words[0];
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__s;
  }

  data = v11->__r_.__value_.__l.__data_;
  v13 = v11->__r_.__value_.__s.__data_[4];
  if (data != 1768187245 || v13 != 97)
  {
    goto LABEL_19;
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  (*(*a1 + 72))(a1, a2, a3, &v70);
  v53 = &qword_1EE2BC8B0;
  do
  {
    v54 = *v53;
    if (!*v53)
    {
      operator new();
    }

    v53 = *v53;
  }

  while (*(v54 + 32));
  v58 = v53[5];
  v57 = v53 + 5;
  v56 = v58;
  v59 = *(v57 + 23);
  v60 = SHIBYTE(v72);
  v61 = v70;
  if (v72 >= 0)
  {
    v62 = HIBYTE(v72);
  }

  else
  {
    v62 = v71;
  }

  if (v72 >= 0)
  {
    v63 = &v70;
  }

  else
  {
    v63 = v70;
  }

  if (v59 >= 0)
  {
    v64 = *(v57 + 23);
  }

  else
  {
    v64 = v57[1];
  }

  if (v59 >= 0)
  {
    v65 = v57;
  }

  else
  {
    v65 = v56;
  }

  if (v64 >= v62)
  {
    v66 = v62;
  }

  else
  {
    v66 = v64;
  }

  v67 = memcmp(v63, v65, v66);
  if (v64 != v62 || v67 != 0)
  {
    a1[66] = 1;
  }

  if (v60 < 0)
  {
    v55 = v61;
LABEL_81:
    operator delete(v55);
  }

LABEL_82:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FA4F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void XcapCDCondition::constructTree(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  bambi::XmlTreeItem::makeNode(a2);
}

void sub_1E4FA5188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void XcapCDCondition::~XcapCDCondition(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapCDCondition::~XcapCDCondition(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

void std::vector<XcapCDCondition::Condition>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*_MergedGlobals_23)
  {
    _MergedGlobals_23 = *_MergedGlobals_23;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC898, a3);
  ++qword_1EE2BC8A0;
  return result;
}

uint64_t *std::__tree<std::__value_type<XcapCDCondition::Media,std::string const>,std::__map_value_compare<XcapCDCondition::Media,std::__value_type<XcapCDCondition::Media,std::string const>,std::less<XcapCDCondition::Media>,true>,std::allocator<std::__value_type<XcapCDCondition::Media,std::string const>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_1EE2BC8A8)
  {
    qword_1EE2BC8A8 = *qword_1EE2BC8A8;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC8B0, a3);
  ++qword_1EE2BC8B8;
  return result;
}

uint64_t *std::__tree<std::__value_type<XcapCDCondition::Condition,std::string const>,std::__map_value_compare<XcapCDCondition::Condition,std::__value_type<XcapCDCondition::Condition,std::string const>,std::less<XcapCDCondition::Condition>,true>,std::allocator<std::__value_type<XcapCDCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCDCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCDCondition::Condition const&>,std::tuple<>>(unsigned __int8 a1, _BYTE **a2)
{
  v2 = qword_1EE2BC898;
  if (!qword_1EE2BC898)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a1)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a1)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void _GLOBAL__sub_I_XcapCDCondition_cpp()
{
  v13[3] = *MEMORY[0x1E69E9840];
  LOBYTE(v0) = 0;
  std::string::basic_string[abi:ne200100]<0>(v1, "unconditional");
  LOBYTE(v2) = 1;
  std::string::basic_string[abi:ne200100]<0>(v3, "busy");
  LOBYTE(v4) = 2;
  std::string::basic_string[abi:ne200100]<0>(v5, "no-answer");
  LOBYTE(v6) = 3;
  std::string::basic_string[abi:ne200100]<0>(v7, "not-reachable");
  LOBYTE(v8) = 4;
  std::string::basic_string[abi:ne200100]<0>(v9, "not-registered");
  v10 = 5;
  std::string::basic_string[abi:ne200100]<0>(v11, "all");
  v12 = 6;
  std::string::basic_string[abi:ne200100]<0>(v13, "allConditional");
  qword_1EE2BC8A0 = 0;
  qword_1EE2BC898 = 0;
  _MergedGlobals_23 = &qword_1EE2BC898;
  operator new();
}

void sub_1E4FA5B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4FA5DE4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliContentTypeHeader::~LazuliContentTypeHeader(void **this)
{
  *this = &unk_1F5EF8F88;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  *this = &unk_1F5EC66B8;
  this[7] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 8), this[9]);

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF8F88;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  *this = &unk_1F5EC66B8;
  this[7] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 8), this[9]);
  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4FA601C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliContentTypeHeader::create(std::string const&)::HeaderWrapper,std::allocator<LazuliContentTypeHeader::create(std::string const&)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliContentTypeHeader::create(std::string const&)::HeaderWrapper::~HeaderWrapper(uint64_t a1)
{
  *a1 = &unk_1F5EF8F88;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *a1 = &unk_1F5EC66B8;
  *(a1 + 56) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 64, *(a1 + 72));

  LazuliHeader::~LazuliHeader(a1);
}

{
  *a1 = &unk_1F5EF8F88;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *a1 = &unk_1F5EC66B8;
  *(a1 + 56) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 64, *(a1 + 72));
  LazuliHeader::~LazuliHeader(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::shared_ptr<IPTelephonyManager>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void DeferredInit::DeferredInit(std::string *this, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  ims::NetworkConfig::NetworkConfig(&this[3]);
  *&this[30].__r_.__value_.__r.__words[1] = 0u;
  *&this[31].__r_.__value_.__l.__data_ = 0u;
  *&this[29].__r_.__value_.__l.__data_ = 0u;
  *&this[29].__r_.__value_.__r.__words[2] = 0u;
  *&this[27].__r_.__value_.__r.__words[2] = 0u;
  *&this[28].__r_.__value_.__r.__words[1] = 0u;
  LOWORD(this[31].__r_.__value_.__r.__words[2]) = 257;
  HIDWORD(this[32].__r_.__value_.__r.__words[0]) = 0;
  LODWORD(this[32].__r_.__value_.__r.__words[1]) = 65792;
  WORD2(this[32].__r_.__value_.__r.__words[1]) = 0;
  this[32].__r_.__value_.__s.__data_[16] = 0;
  this[250].__r_.__value_.__s.__data_[8] = 0;
  ims::NetworkConfig::operator=(&this[3], a4 + 24);
  std::string::operator=((this + 664), (a4 + 616));
  std::string::operator=((this + 688), (a4 + 640));
  std::string::operator=((this + 712), (a4 + 664));
  std::string::operator=((this + 736), (a4 + 688));
  LOWORD(this[31].__r_.__value_.__r.__words[2]) = *(a4 + 712);
  HIDWORD(this[32].__r_.__value_.__r.__words[0]) = *(a4 + 724);
  LOWORD(this[32].__r_.__value_.__r.__words[1]) = *(a4 + 728);
  this[32].__r_.__value_.__s.__data_[11] = *(a4 + 731);
  WORD2(this[32].__r_.__value_.__r.__words[1]) = *(a4 + 732);
}

void sub_1E4FA63A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<DeferredEmergency>::~optional(uint64_t a1)
{
  if (*(a1 + 5224) == 1)
  {
    IMSCallOptions::~IMSCallOptions((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

std::string *DeferredInit::operator=(std::string *this, uint64_t a2)
{
  if (this != a2)
  {
    v4 = a2 + 4096;
    std::string::operator=(this, a2);
    std::string::operator=(this + 1, (a2 + 24));
    ims::NetworkConfig::operator=(&this[3], a2 + 72);
    std::string::operator=((this + 664), (a2 + 664));
    std::string::operator=((this + 688), (a2 + 688));
    std::string::operator=((this + 712), (a2 + 712));
    std::string::operator=((this + 736), (a2 + 736));
    LOWORD(this[31].__r_.__value_.__r.__words[2]) = *(a2 + 760);
    HIDWORD(this[32].__r_.__value_.__r.__words[0]) = *(a2 + 772);
    LOWORD(this[32].__r_.__value_.__r.__words[1]) = *(a2 + 776);
    this[32].__r_.__value_.__s.__data_[11] = *(a2 + 779);
    WORD2(this[32].__r_.__value_.__r.__words[1]) = *(a2 + 780);
    v5 = (a2 + 784);
    v6 = &this[32].__r_.__value_.__r.__words[2];
    if (this[250].__r_.__value_.__s.__data_[8] == *(v4 + 1912))
    {
      if (this[250].__r_.__value_.__s.__data_[8])
      {
        std::string::operator=((this + 784), v5);
        LOWORD(this[33].__r_.__value_.__r.__words[2]) = *(a2 + 808);
        std::string::operator=((this + 824), (a2 + 824));
        LOWORD(this[35].__r_.__value_.__r.__words[1]) = *(a2 + 848);
        std::string::operator=((this + 856), (a2 + 856));
        v8 = *(a2 + 896);
        v7 = *(a2 + 912);
        v9 = *(a2 + 880);
        *(&this[38].__r_.__value_.__r.__words[1] + 5) = *(a2 + 925);
        *&this[37].__r_.__value_.__r.__words[1] = v8;
        *&this[38].__r_.__value_.__l.__data_ = v7;
        *&this[36].__r_.__value_.__r.__words[2] = v9;
        std::string::operator=(this + 39, (a2 + 936));
        std::string::operator=(this + 40, (a2 + 960));
        this[41].__r_.__value_.__s.__data_[0] = *(a2 + 984);
        v10 = *(a2 + 992);
        v11 = *(a2 + 1024);
        *&this[42].__r_.__value_.__l.__data_ = *(a2 + 1008);
        *&this[42].__r_.__value_.__r.__words[2] = v11;
        *&this[41].__r_.__value_.__r.__words[1] = v10;
        std::string::operator=((this + 1040), (a2 + 1040));
        std::string::operator=((this + 1064), (a2 + 1064));
        std::string::operator=((this + 1088), (a2 + 1088));
        std::string::operator=((this + 1112), (a2 + 1112));
        std::string::operator=((this + 1136), (a2 + 1136));
        this[48].__r_.__value_.__s.__data_[8] = *(a2 + 1160);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 1168), (a2 + 1168));
        std::string::operator=(this + 50, (a2 + 1200));
        std::string::operator=(this + 51, (a2 + 1224));
        std::string::operator=(this + 52, (a2 + 1248));
        this[53].__r_.__value_.__s.__data_[0] = *(a2 + 1272);
        SipRegistrationConfig::operator=(&this[53].__r_.__value_.__l.__size_, a2 + 1280);
        SipStackConfig::operator=(&this[123], a2 + 2952);
      }
    }

    else
    {
      if (!this[250].__r_.__value_.__s.__data_[8])
      {
        if (*(a2 + 807) < 0)
        {
          std::string::__init_copy_ctor_external((this + 784), *(a2 + 784), *(a2 + 792));
        }

        else
        {
          v12 = *&v5->__r_.__value_.__l.__data_;
          this[33].__r_.__value_.__l.__size_ = *(a2 + 800);
          *v6 = v12;
        }

        IMSCallOptions::IMSCallOptions(&this[33].__r_.__value_.__r.__words[2], (a2 + 808));
      }

      IMSCallOptions::~IMSCallOptions(&this[33].__r_.__value_.__r.__words[2]);
      if (this[33].__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(*v6);
      }

      this[250].__r_.__value_.__s.__data_[8] = 0;
    }
  }

  return this;
}

void sub_1E4FA66D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 807) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::createManagers(IPTelephonyManager *this)
{
  IMSClientManager::instance(&v2);
  v1 = v3;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  IPTelephonyManager::setLoggingEnabled(v1, 1);
  BambiClient::create();
}

void sub_1E4FA6DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::IPTelephonyManager(IPTelephonyManager *this)
{
  *this = &unk_1F5EE4900;
  *(this + 1) = &unk_1F5EE49A8;
  *(this + 2) = &unk_1F5EE49D0;
  std::string::basic_string[abi:ne200100]<0>(object, "ipt");
  v3[0] = 0;
  v6 = 0;
  ImsLogContainer::ImsLogContainer(this + 24, object, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(object[0]);
  }

  *(this + 20) = &unk_1F5EE49E8;
  *(this + 21) = &unk_1F5EE4A10;
  ims::getQueue(object);
  *(this + 23) = 0;
  *(this + 24) = 0;
  v2 = object[0];
  *(this + 25) = object[0];
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 26) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 216), "com.apple.ipTelephony", "ipt");
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_1F5EE4548;
  *(this + 1) = &unk_1F5EE4638;
  *(this + 2) = &unk_1F5EE4660;
  *(this + 3) = &unk_1F5EE4678;
  *(this + 20) = &unk_1F5EE46D8;
  *(this + 21) = &unk_1F5EE4700;
  *(this + 22) = &unk_1F5EE4728;
  *(this + 56) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = this + 344;
  *(this + 44) = this + 344;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 45) = 0;
  *(this + 46) = this + 376;
  *(this + 49) = 0;
  *(this + 50) = 0;
  IMSiRatClient::IMSiRatClient((this + 408));
}

void sub_1E4FA70CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(v24 + 376));
  std::__list_imp<unsigned long long>::clear(v27);
  v29 = *(v24 + 336);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v24 + 320);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v24 + 304);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v24 + 288);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v24 + 272);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v24 + 256);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(v24 + 240);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  MEMORY[0x1E69225A0](v24 + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v26);
  ImsLogContainer::~ImsLogContainer(v25);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::setLoggingEnabled(IPTelephonyManager *this, uint64_t a2)
{
  v2 = a2;
  v3 = ims::logger(this);
  if (v2)
  {
    if (*(v3 + 476))
    {
      return;
    }

    v4 = ims::logger(v3);
    *(v4 + 476) = 1;
    v5 = ims::logger(v4);
    std::string::basic_string[abi:ne200100]<0>(&__p, &str_1_13);
    ImsLogger::setPriority(v5, 8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = ImsLogger::clearDestinations(v3);
    v7 = ims::logger(v6);
    std::string::basic_string[abi:ne200100]<0>(&__p, "oslog:ims");
    v8 = ImsLogger::addDestination(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(ims::logger(v8) + 476) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ImsLoggingEnabled");
  IPTelephonyPrefs::setBoolValueInRuntimeConfig(&__p, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FA729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::~IPTelephonyManager(IPTelephonyManager *this)
{
  *this = &unk_1F5EE4548;
  *(this + 1) = &unk_1F5EE4638;
  *(this + 2) = &unk_1F5EE4660;
  *(this + 3) = &unk_1F5EE4678;
  *(this + 20) = &unk_1F5EE46D8;
  *(this + 21) = &unk_1F5EE4700;
  *(this + 22) = &unk_1F5EE4728;
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  IPTelephonyManager::deinitialize(this, __p, 1, 1, 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = *(this + 29);
  v3 = *(v2 + 792);
  v4 = 0uLL;
  *(v2 + 784) = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    v4 = 0uLL;
  }

  v5 = *(this + 29);
  v6 = *(v5 + 760);
  *(v5 + 752) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v7 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v8 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v9 = v7 + 216;
  for (i = *(v7 + 224); i != v9; i = *(i + 8))
  {
    (*(**(i + 16) + 16))(*(i + 16));
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v11 = *(&off_1EE2BBBC0 + 1);
  off_1EE2BBBC0 = 0;
  *(&off_1EE2BBBC0 + 1) = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v12 = *(this + 49);
  if (v12)
  {
    (*(*v12 + 8))(v12);
    *(this + 49) = 0;
  }

  std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::destroy(*(this + 58));
  std::__tree<std::string>::destroy(this + 432, *(this + 55));
  v13 = *(this + 53);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  IMSiRatClient::~IMSiRatClient(this + 51);
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 47));
  std::__list_imp<unsigned long long>::clear(this + 43);
  v14 = *(this + 42);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 38);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(this + 36);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(this + 34);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(this + 32);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(this + 30);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  MEMORY[0x1E69225A0](this + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 23);
  *(this + 3) = &unk_1F5ED7318;
  if (*(this + 104) == 1 && *(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  IPTelephonyManager::~IPTelephonyManager(this);

  JUMPOUT(0x1E69235B0);
}

void IPTelephonyManager::deinitialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v10 = (a1 + 344);
  v11 = *(a1 + 352);
  if (v11 != (a1 + 344))
  {
    do
    {
      v12 = v11[2];
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = *(v12 + 55);
      if (v13 >= 0)
      {
        v14 = *(v12 + 55);
      }

      else
      {
        v14 = *(v12 + 40);
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15 && (v13 >= 0 ? (v17 = (v12 + 32)) : (v17 = *(v12 + 32)), v16 >= 0 ? (v18 = a2) : (v18 = *a2), !memcmp(v17, v18, v14)))
      {
        v19 = AuthQueueItem<BambiClient>::~AuthQueueItem(v12);
        MEMORY[0x1E69235B0](v19, 0x1032C403FAF6B48);
        v20 = *v11;
        v21 = v11[1];
        *(v20 + 8) = v21;
        *v21 = v20;
        --*(a1 + 360);
        operator delete(v11);
        v11 = v21;
      }

      else
      {
LABEL_16:
        v11 = v11[1];
      }
    }

    while (v11 != v10);
  }

  if (IMSRegistrationManager::getRegistrationState(*(a1 + 248), a2))
  {
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
    (*(**(a1 + 232) + 184))(&v24);
    IMSMetricsManager::logDeRegistration(v22, &v24);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  BambiClient::deinitializeStack(*(a1 + 232), a2, a4 ^ 1, v7, v5);
  IPTelephonyManager::deinitializeNasClient(a1, a2);
}

void non-virtual thunk toIPTelephonyManager::~IPTelephonyManager(IPTelephonyManager *this)
{
  IPTelephonyManager::~IPTelephonyManager((this - 24));
}

{
  IPTelephonyManager::~IPTelephonyManager((this - 160));
}

{
  IPTelephonyManager::~IPTelephonyManager((this - 176));
}

{
  IPTelephonyManager::~IPTelephonyManager((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  IPTelephonyManager::~IPTelephonyManager((this - 160));

  JUMPOUT(0x1E69235B0);
}

{
  IPTelephonyManager::~IPTelephonyManager((this - 176));

  JUMPOUT(0x1E69235B0);
}

void IPTelephonyManager::getCallManager(uint64_t *__return_ptr a1@<X8>)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(v4 + 288);
  *a1 = *(v4 + 280);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void IPTelephonyManager::getSMSManager(uint64_t *__return_ptr a1@<X8>)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(v4 + 304);
  *a1 = *(v4 + 296);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void IPTelephonyManager::getRegistrationManager(void *a1@<X8>)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(v4 + 256);
  *a1 = *(v4 + 248);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void IPTelephonyManager::getXcapManager(uint64_t *__return_ptr a1@<X8>)
{
  IPTelephonyManager::instance(&v4);
  v2 = *(v4 + 320);
  *a1 = *(v4 + 312);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void IPTelephonyManager::getBBServerConnection(Class *__return_ptr a1@<X8>)
{
  ims::getQueue(&queue);
  v2 = queue;
  dispatch_assert_queue_V2(queue);
  if (v2)
  {
    dispatch_release(v2);
  }

  IPTelephonyManager::instance(&queue);
  isa = queue[53].isa;
  *a1 = queue[52].isa;
  a1[1] = isa;
  if (isa)
  {
    atomic_fetch_add_explicit(isa + 1, 1uLL, memory_order_relaxed);
  }

  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4FA7C2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::setBBServerConnection(uint64_t *a1)
{
  IPTelephonyManager::instance(&v7);
  v2 = v7;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 424);
  *(v2 + 416) = v4;
  *(v2 + 424) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void IPTelephonyManager::addCallEndInfo(uint64_t a1, xpc_object_t *a2)
{
  pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v3 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global();
  }

  v4 = *(&off_1EE2BBBC0 + 1);
  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v5 = *a2;
  v6 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v6 = v5;
  }

  IMSMetricsManager::addCallEndInfo(v3, &v6);
  xpc_release(v5);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void IPTelephonyManager::initializeNasClient(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 392);
  if (v4)
  {
    if (!*(a1 + 192) || (v8 = *(a1 + 184), (v9 = std::__shared_weak_count::lock(*(a1 + 192))) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    v11 = v8 + 7;
    if (!v8)
    {
      v11 = 0;
    }

    v13 = v11;
    v14 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    ims::getQueue(&object);
    IMSNasDeviceClient::initializeNasClient(v4, a2, a3, &v13, &object, a4);
    if (object)
    {
      dispatch_release(object);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4FA7ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::deinitializeNasClient(uint64_t a1, char *a2)
{
  v3 = *(a1 + 392);
  if (v3)
  {
    IMSNasDeviceClient::deinitializeNasClient(v3, a2);
    std::__tree<std::string>::__erase_unique<std::string>((a1 + 432), a2);
    v15 = 0;
    v16 = 0;
    (*(**(a1 + 232) + 184))(&v15);
    if (v15)
    {
      v14[0] = 0;
      v14[1] = 0;
      BambiAccessBarring::setDelegate((v15 + 3160), v14);
    }

    v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 456, a2);
    if (a1 + 464 != v5)
    {
      v6 = v5;
      std::string::basic_string[abi:ne200100]<0>(v12, "ipt");
      v8[0] = 0;
      v11 = 0;
      v7 = ims::warn(v12, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "We were waiting to initialize stack ", 36);
      *(v7 + 17) = 0;
      (*(*v7 + 32))(v7, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", but it is being deinitialized!", 32);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v11 == 1 && v10 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::erase((a1 + 456), v6);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_1E4FA80BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 - 40);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::nasSystemInitialized()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v0 + 432), v1, v1);
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v3 + 456, v2);
  if (v3 + 464 == v4)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(&v23, "ipt");
    v14[0] = 0;
    v17 = 0;
    v9 = ims::error(v8, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "The NAS system has been initialized for an untracked stack ", 59);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, v2);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = v4;
    v6 = std::string::basic_string[abi:ne200100]<0>(&v23, "ipt");
    v19[0] = 0;
    v22 = 0;
    v7 = ims::debug(v6, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Continuing deferred initialization for stack ", 45);
    *(v7 + 17) = 0;
    (*(*v7 + 32))(v7, v2);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v25 < 0)
    {
      operator delete(v23);
    }

    if (*(v5 + 6064) == 1)
    {
      IMSCallOptions::IMSCallOptions(v18, (v5 + 864));
    }

    IPTelephonyManager::_initializeFromSIM(v3, v2, v5 + 104);
    v23 = 0;
    v24 = 0;
    (*(**(v3 + 232) + 184))(&v23);
    if (v23 && *(v23 + 2848) == 1)
    {
      v10 = v23[31];
      v11 = v23[32];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v12 = v10[14].__vftable;
        shared_owners = v10[14].__shared_owners_;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12)
        {
          std::string::operator=(v12 + 173, "PushSetup");
        }

        if (shared_owners)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::erase((v3 + 456), v5);
  }
}

void sub_1E4FA8444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v27 = *(v25 - 64);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::_initializeFromSIM(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = 0;
  v91 = 0;
  (*(**(a1 + 232) + 184))(&v91);
  v6 = (*(*(a1 + 24) + 64))(a1 + 24);
  (*(*(a1 + 24) + 16))(a1 + 24, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "got initialization request for ", 31);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(__p, "MNC");
  ImsPrefs::setRuntimeVar(v7, __p, (a3 + 360), 1);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(__p, "MCC");
  ImsPrefs::setRuntimeVar(v8, __p, (a3 + 336), 1);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(__p, "MDN");
  ImsPrefs::setRuntimeVar(v9, __p, (a3 + 384), 1);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(__p, "DEVICE_ID");
  ImsPrefs::setRuntimeVar(v10, __p, (a3 + 616), 1);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(__p, "DEVICE_REF_ID");
  ImsPrefs::setRuntimeVar(v11, __p, (a3 + 640), 1);
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v90, 0, sizeof(v90));
  v12 = SipStack::prefs(v91);
  ImsPrefs::DeviceIMEI(&v90, v12);
  memset(&v89, 0, sizeof(v89));
  v13 = SipStack::prefs(v91);
  if (ImsPrefs::FeatureTagsEnabled(v13))
  {
    size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v90.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      std::string::operator=(&v90, (a3 + 616));
    }

    v15 = SipStack::prefs(v91);
    if (!ImsPrefs::DisableDeviceSVN(v15))
    {
      std::string::operator=(&v89, (a3 + 664));
    }
  }

  memset(&v88, 0, sizeof(v88));
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  SipUri::SipUri(v86);
  v81 = 0;
  v80 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v78 = &unk_1F5EBDEF8;
  v79 = &_bambiDomain;
  v82 = 0;
  bzero(__p, 0x2E0uLL);
  ims::NetworkConfig::NetworkConfig(v64);
  memset(v73, 0, sizeof(v73));
  memset(v72, 0, sizeof(v72));
  v74 = 257;
  v75 = 0;
  v76 = 65792;
  v77 = 0;
  ims::NetworkConfig::operator=(v64, a3 + 24);
  std::string::operator=(v72, (a3 + 616));
  std::string::operator=(&v72[1], (a3 + 640));
  std::string::operator=(v73, (a3 + 664));
  std::string::operator=(&v73[1], (a3 + 688));
  v74 = *(a3 + 712);
  v75 = *(a3 + 724);
  LOBYTE(v76) = *(a3 + 728);
  HIBYTE(v76) = *(a3 + 731);
  v77 = *(a3 + 732);
  if (v74)
  {
    v16 = SipStack::prefs(v91);
    v17 = ImsPrefs::UseDummyImeiCheckDigit(v16);
    ims::makeUrnFromImei(&v90, &v89, v17, v86, v48);
  }

  else
  {
    ims::makeUrnFromUuid(&v90, v86, v48);
  }

  ImsResult::operator=(&v78, v48);
  ImsResult::~ImsResult(v48);
  if (((*(*v79 + 24))(v79, v80) & 1) == 0)
  {
    SipUri::asString(v86, &v88, 0);
    v18 = SipStack::prefs(v91);
    std::string::basic_string[abi:ne200100]<0>(v48, "INSTANCE_URN");
    ImsPrefs::setRuntimeVar(v18, v48, &v88, 1);
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }
  }

  v19 = SipStack::prefs(v91);
  std::string::basic_string[abi:ne200100]<0>(v48, "ipt");
  v58[0] = 0;
  v61 = 0;
  v20 = ims::debug(v48, v58);
  ImsPrefs::logRuntimeVars(v19, v20);
  if (v61 == 1 && v60 < 0)
  {
    operator delete(v59);
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48[0]);
  }

  v21 = v91;
  v22 = v92;
  if (v92)
  {
    atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&v114, 0, sizeof(v114));
  v23 = SipStack::prefs(v21);
  ImsPrefs::PcscfOverride(v23, &v114);
  v24 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v114.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    v25 = v71;
    v26 = v70;
    while (v25 != v26)
    {
      v27 = *(v25 - 1);
      v25 -= 3;
      if (v27 < 0)
      {
        operator delete(*v25);
      }
    }

    v71 = v26;
    ims::tokenize(&v114, &v70, 0x2Cu);
    v28 = std::string::basic_string[abi:ne200100]<0>(v109, "ipt");
    LOBYTE(v48[0]) = 0;
    LOBYTE(v51) = 0;
    v29 = ims::debug(v28, v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "using P-CSCF list from prefs", 28);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v51 == 1 && SBYTE7(v50) < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v110) < 0)
    {
      operator delete(v109[0]);
    }
  }

  memset(&v113, 0, sizeof(v113));
  v30 = SipStack::prefs(v21);
  ImsPrefs::Impu(v30, &v113);
  v31 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v113.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    v32 = v69;
    v33 = v68;
    while (v32 != v33)
    {
      v34 = *(v32 - 1);
      v32 -= 3;
      if (v34 < 0)
      {
        operator delete(*v32);
      }
    }

    v69 = v33;
    std::vector<std::string>::push_back[abi:ne200100](&v68, &v113);
    v35 = std::string::basic_string[abi:ne200100]<0>(v104, "ipt");
    LOBYTE(v109[0]) = 0;
    v112 = 0;
    v36 = ims::debug(v35, v109);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "using IMPU list from prefs", 26);
    *(v36 + 17) = 0;
    (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v36 + 17) = 0;
    if (v112 == 1 && v111 < 0)
    {
      operator delete(v110);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104[0]);
    }
  }

  memset(&__str, 0, sizeof(__str));
  v37 = SipStack::prefs(v21);
  ImsPrefs::Impi(v37, &__str);
  v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v38 = __str.__r_.__value_.__l.__size_;
  }

  if (v38)
  {
    std::string::operator=(&v66, &__str);
    std::string::basic_string[abi:ne200100]<0>(v100, "ipt");
    LOBYTE(v104[0]) = 0;
    v107 = 0;
    v39 = ims::debug(v100, v104);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "using IMPI list from prefs", 26);
    *(v39 + 17) = 0;
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v39 + 17) = 0;
    if (v107 == 1 && v106 < 0)
    {
      operator delete(v105);
    }

    if (SHIBYTE(v101) < 0)
    {
      operator delete(v100[0]);
    }
  }

  v40 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = v66.__r_.__value_.__l.__size_;
  }

  if (!v40)
  {
    std::string::operator=(&v66, &v113);
    std::string::basic_string[abi:ne200100]<0>(v93, "ipt");
    LOBYTE(v100[0]) = 0;
    v103 = 0;
    v41 = ims::debug(v93, v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "no IMPI specified.  Using IMPU for IMPI", 39);
    *(v41 + 17) = 0;
    (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v41 + 17) = 0;
    if (v103 == 1 && v102 < 0)
    {
      operator delete(v101);
    }

    if (SHIBYTE(v94) < 0)
    {
      operator delete(v93[0]);
    }
  }

  memset(&v99, 0, sizeof(v99));
  v42 = SipStack::prefs(v21);
  ImsPrefs::Domain(v42, &v99);
  v43 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  v44 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v99.__r_.__value_.__l.__size_;
  }

  if (v43)
  {
    std::string::operator=(&v67, &v99);
    std::string::basic_string[abi:ne200100]<0>(v97, "ipt");
    LOBYTE(v93[0]) = 0;
    v96 = 0;
    v45 = ims::debug(v97, v93);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "using domain from prefs", 23);
    *(v45 + 17) = 0;
    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v45 + 17) = 0;
    if (v96 == 1 && v95 < 0)
    {
      operator delete(v94);
    }

    if (v98 < 0)
    {
      operator delete(v97[0]);
    }

    v44 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  }

  if (v44 < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (HIBYTE(v76) == 1)
  {
    v46 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v65.__r_.__value_.__l.__size_;
    }

    if (!v46 && v69 != v68)
    {
      v57 = 0;
      v55 = 0u;
      memset(v56, 0, sizeof(v56));
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *v48 = 0u;
      SipUri::SipUri(v48, v68);
      std::string::operator=(&v65, v56);
      SipUri::~SipUri(v48);
    }
  }

  v47 = v92;
  if (v92)
  {
    atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IPTelephonyManager::_initialize();
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  ims::StackConfig::~StackConfig(__p);
  ImsResult::~ImsResult(&v78);
  SipUri::~SipUri(v86);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v92);
  }
}

void sub_1E4FA90F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  SipUri::~SipUri(&a11);
  ims::StackConfig::~StackConfig(&a65);
  ImsResult::~ImsResult(&STACK[0x4C8]);
  SipUri::~SipUri(&STACK[0x520]);
  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (STACK[0x710])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x710]);
  }

  _Unwind_Resume(a1);
}

void DeferredInit::~DeferredInit(void **this)
{
  if (*(this + 6008) == 1)
  {
    IMSCallOptions::~IMSCallOptions(this + 101);
    if (*(this + 807) < 0)
    {
      operator delete(this[98]);
    }
  }

  ims::StackConfig::~StackConfig(this + 6);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void IPTelephonyManager::initializeTransient(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v29 = 0;
  v30 = 0;
  (*(**(a1 + 232) + 184))(&v29);
  if (!v29)
  {
    v21 = *(a1 + 24);
    v20 = a1 + 24;
    v22 = (*(v21 + 56))(v20);
    (*(*v20 + 16))(v20, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Transient init on unknown stack ", 32);
    *(v22 + 17) = 0;
    v23 = (v22 + 17);
    (*(*v22 + 32))(v22, a2);
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_27:
    *v23 = 0;
    goto LABEL_28;
  }

  if ((*(v29 + 2848) & 1) == 0)
  {
    v25 = *(a1 + 24);
    v24 = a1 + 24;
    v26 = (*(v25 + 56))(v24);
    (*(*v24 + 16))(v24, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Transient init requested on non-transient stack!", 48);
    *(v26 + 17) = 0;
    v23 = (v26 + 17);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_27;
  }

  v6 = *(v29 + 248);
  v7 = *(v29 + 256);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 336);
  v8 = *(v6 + 344);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v9 + 716);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = *(v9 + 716);
  if (v7)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_8:
  v11 = a1 + 24;
  v12 = *(*(a1 + 24) + 64);
  if (v10 != 4)
  {
    v27 = v12(a1 + 24);
    (*(*v11 + 16))(v11, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Transient init already registered on stack ", 43);
    *(v27 + 17) = 0;
    v23 = (v27 + 17);
    (*(*v27 + 32))(v27, a2);
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_27;
  }

  v13 = v12(a1 + 24);
  (*(*v11 + 16))(a1 + 24, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Transient init for ", 19);
  *(v13 + 17) = 0;
  (*(*v13 + 32))(v13, a2);
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  count = xpc_dictionary_get_count(*a3);
  if (MEMORY[0x1E6924740](*a3) == MEMORY[0x1E69E9E80] && (count > 4 || count == 1))
  {
    v15 = (*(*v11 + 64))(a1 + 24);
    (*(*v11 + 16))(a1 + 24, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Auth params provided", 20);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    v16 = *(v29 + 248);
    v17 = *(v29 + 256);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      v19 = *(v16 + 336);
      v18 = *(v16 + 344);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v19)
      {
        xpc::dict::dict(&object, *a3);
        SipRegistrationClient::skipUnauthorizedRegister(v19, &object);
        xpc_release(object);
        object = 0;
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  IPTelephonyManager::_initializeFromSIM(a1, a2, v29 + 3648);
LABEL_28:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1E4FA99B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(object);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::_initialize()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v35 = *MEMORY[0x1E69E9840];
  if (*(v2 + 558))
  {
    v6 = 0;
    size = 0;
    v8 = 0;
    IpAddress::_alwaysCompressIPv6Addresses = 1;
    *(v33 + 3) = 0;
    v33[0] = 0;
  }

  else
  {
    v9 = SipStack::prefs(*v1);
    v10 = ImsPrefs::CompressIPv6Addresses(v9);
    v11 = *(v3 + 558);
    IpAddress::_alwaysCompressIPv6Addresses = v10;
    *(v33 + 3) = 0;
    v33[0] = 0;
    if (v11)
    {
      v6 = 0;
      size = 0;
      v8 = 0;
    }

    else
    {
      v12 = SipStack::prefs(*v4);
      ImsPrefs::LegacyImpuRank(v12, &__s);
      size = __s.__r_.__value_.__l.__size_;
      v8 = __s.__r_.__value_.__r.__words[0];
      v33[0] = __s.__r_.__value_.__r.__words[2];
      *(v33 + 3) = *(&__s.__r_.__value_.__r.__words[2] + 3);
      v6 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }
  }

  v13 = v4[1];
  v32[0] = *v4;
  v32[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v26 = v8;
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v8, size);
  }

  else
  {
    v31.__r_.__value_.__r.__words[0] = v8;
    v31.__r_.__value_.__l.__size_ = size;
    LODWORD(v31.__r_.__value_.__r.__words[2]) = v33[0];
    *(&v31.__r_.__value_.__r.__words[2] + 3) = *(v33 + 3);
    *(&v31.__r_.__value_.__s + 23) = v6;
  }

  IPTelephonyManager::initializeImpuRankings(v5, v32, &v31);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v5 + 24;
  v15 = (*(*(v5 + 24) + 64))(v5 + 24);
  (*(*(v5 + 24) + 16))(v5 + 24, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "picking IMPU ", 13);
  *(v15 + 17) = 0;
  if (*(v3 + 552))
  {
    v16 = "USIM";
  }

  else
  {
    v16 = "ISIM";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16, 4);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " from list: ", 12);
  *(v15 + 17) = 0;
  v17 = (*(*v14 + 64))(v5 + 24);
  std::string::basic_string[abi:ne200100]<0>(&__s, ",");
  ims::join<std::__wrap_iter<std::string const*>>(*(v3 + 480), *(v3 + 488), v17, &__s);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v18 = (*(*v14 + 64))(v5 + 24);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v18[17] = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  SipStack::carrierIdentifier(*v4, &__s);
  v19 = ImsPrefsManager::impuRank(&__s);
  SipImpuRank::preferredImpu(v19, (v3 + 480), (v3 + 456), (v3 + 408), v3 + 384, &v28);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v30 >= 0)
  {
    v20 = HIBYTE(v30);
  }

  else
  {
    v20 = v29;
  }

  v21 = *v14;
  if (v20)
  {
    v22 = (*(v21 + 32))(v5 + 24);
    (*(*v14 + 16))(v5 + 24, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "initializing SIP stack ", 23);
    *(v22 + 17) = 0;
    v23 = *v4;
    if (*(*v4 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, *(v23 + 554), *(v23 + 555));
    }

    else
    {
      __s = *(v23 + 4432);
    }

    (*(*v22 + 32))(v22, &__s);
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v25 = (*(*v14 + 64))(v5 + 24);
    (*(*v14 + 16))(v5 + 24, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "P-CSCF   : ", 11);
    *(v25 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v27, ",");
    ims::join<std::__wrap_iter<std::string const*>>();
  }

  v24 = (*(v21 + 56))(v5 + 24);
  (*(*v14 + 16))(v5 + 24, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "no valid IMPU in IPTelephonyConfig", 34);
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      return;
    }

LABEL_37:
    operator delete(v26);
    return;
  }

  operator delete(v28);
  if (v6 < 0)
  {
    goto LABEL_37;
  }
}

void sub_1E4FAB9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, int a11, char a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  SipStackConfig::~SipStackConfig(&STACK[0x7A0]);
  SipRegistrationConfig::~SipRegistrationConfig(&a42);
  STACK[0x7A0] = &STACK[0x740];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x7A0]);
  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(STACK[0x758]);
  }

  if (a12 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::initializeFromSIM()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
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
  v12 = v10 + 216;
  v13 = *(v10 + 224);
  if (v13 != v10 + 216)
  {
    v14 = *(v4 + 730);
    do
    {
      (*(**(v13 + 16) + 8))(*(v13 + 16), v14);
      v13 = *(v13 + 8);
    }

    while (v13 != v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!*v2)
  {
    v23 = (*(*(v9 + 24) + 56))(v9 + 24);
    (*(*(v9 + 24) + 16))(v9 + 24, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Prefs is NULL", 13);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    std::allocate_shared[abi:ne200100]<ImsPrefs,std::allocator<ImsPrefs>,std::string const&,0>();
  }

  v30 = 0;
  v31 = 0;
  (*(**(v9 + 232) + 184))(&v30);
  if (v30)
  {
    std::string::operator=((v30 + 4456), v6);
    if ((*(v4 + 729) & 1) != 0 || !ImsPrefsManager::exists(v6))
    {
      v16 = v2[1];
      v28 = *v2;
      v29 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ImsPrefsManager::setPrefsForCarrier(v6, &v28, *(v4 + 556));
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    else
    {
      v15 = (*(*(v9 + 24) + 48))(v9 + 24);
      (*(*(v9 + 24) + 16))(v9 + 24, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "skipping loading prefs for carrier ", 35);
      *(v15 + 17) = 0;
      (*(*v15 + 32))(v15, v6);
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
    }

    memset(&__str, 0, sizeof(__str));
    v17 = SipStack::prefs(v30);
    ImsPrefs::LoggingParams(v17, &__str);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v20 = ims::logger(v18);
      ImsLogger::setParams(v20, &__str);
    }

    IPTelephonyManager::auditCarrierPrefs(v9, v8, v6);
    std::string::basic_string[abi:ne200100]<0>(&__p, "ipt");
    v39[0] = 0;
    v42 = 0;
    v21 = ims::debug(&__p, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Deferring initialization for stack ", 35);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, v8);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    DeferredInit::DeferredInit(&__p, v8, v6, v4);
    v43 = v8;
    v22 = std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v9 + 456), v8, &v43);
    DeferredInit::operator=((v22 + 7), &__p);
    if (v38 == 1)
    {
      IMSCallOptions::~IMSCallOptions(&v37);
      if (v36 < 0)
      {
        operator delete(v35[92]);
      }
    }

    ims::StackConfig::~StackConfig(v35);
    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    IPTelephonyManager::initializeNasClient(v9, v8, *(v4 + 724), *(v4 + 730));
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25 = *(v9 + 24);
    v24 = v9 + 24;
    v26 = (*(v25 + 56))(v24);
    (*(*v24 + 16))(v24, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "invalid sip stack ", 18);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, v8);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void IPTelephonyManager::auditCarrierPrefs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    *&v44.__r_.__value_.__l.__data_ = 0uLL;
    (*(**(a1 + 232) + 184))(&v44);
    v7 = std::string::basic_string[abi:ne200100]<0>(&v62, "audit");
    v58[0] = 0;
    v61 = 0;
    v8 = ims::info(v7, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Performing audit due to ", 24);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " for carrier ", 13);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a3);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v62);
    }

    if (v44.__r_.__value_.__r.__words[0])
    {
      v9 = std::string::basic_string[abi:ne200100]<0>(&v62, "audit");
      v50[0] = 0;
      v53 = 0;
      v10 = ims::info(v9, v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Stack ", 6);
      *(v10 + 17) = 0;
      (*(*v10 + 32))(v10, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " is using ", 10);
      *(v10 + 17) = 0;
      SipStack::carrierIdentifier(v44.__r_.__value_.__l.__data_, &__p);
      (*(*v10 + 32))(v10, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " and wants ", 11);
      *(v10 + 17) = 0;
      (*(*v10 + 32))(v10, a3);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v53 != 1 || (v52 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v11 = v51;
    }

    else
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(&v62, "audit");
      v54[0] = 0;
      v57 = 0;
      v13 = ims::warn(v12, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No stack for ", 13);
      *(v13 + 17) = 0;
      (*(*v13 + 32))(v13, a2);
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v57 != 1 || (v56 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v11 = v55;
    }

    operator delete(v11);
LABEL_19:
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v62);
    }

    if (v44.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44.__r_.__value_.__l.__size_);
    }
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&v62, "audit");
  v45[0] = 0;
  v48 = 0;
  v15 = ims::info(v14, v45);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Stack Audit:", 12);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v62);
  }

  memset(&__p, 0, sizeof(__p));
  BambiClient::sipStacks(&__p.__r_.__value_.__l.__data_, *(a1 + 232));
  v16 = *(*(a1 + 232) + 232);
  v17 = *(*(a1 + 232) + 240);
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
  {
    v20 = __p.__r_.__value_.__r.__words[0];
    v21 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
    v22 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4;
    v23 = v22 + 1;
    if ((v22 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v24 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3 > v23)
    {
      v23 = v24 >> 3;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFF0;
    v26 = 0xFFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    p_p = &__p;
    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(&__p, v26);
    }

    *(16 * v22) = v16;
    v19 = 16 * v22 + 16;
    memcpy(0, v20, v21);
    v27 = __p.__r_.__value_.__r.__words[0];
    v28 = __p.__r_.__value_.__r.__words[2];
    __p.__r_.__value_.__r.__words[0] = 0;
    *&__p.__r_.__value_.__r.__words[1] = v19;
    v64 = v27;
    v65 = v28;
    v62 = v27;
    v63 = v27;
    std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(&v62);
  }

  else
  {
    *__p.__r_.__value_.__l.__size_ = v16;
    *(size + 8) = v17;
    v19 = size + 16;
  }

  __p.__r_.__value_.__l.__size_ = v19;
  v63 = 0;
  v64 = 0;
  v62 = &v63;
  v29 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] != v19)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v44, "audit");
      v40[0] = 0;
      v43 = 0;
      v30 = ims::info(&v44, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "  ", 2);
      *(v30 + 17) = 0;
      v31 = *v29;
      if (*(*v29 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *(v31 + 554), *(v31 + 555));
      }

      else
      {
        v39 = *(v31 + 4432);
      }

      (*(*v30 + 32))(v30, &v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ": ", 2);
      *(v30 + 17) = 0;
      SipStack::carrierIdentifier(*v29, &v38);
      (*(*v30 + 32))(v30, &v38);
      (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v30 + 17) = 0;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      SipStack::carrierIdentifier(*v29, &v44);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v62, &v44, &v44);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v29 += 2;
    }

    while (v29 != v19);
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "audit");
  v34[0] = 0;
  v37 = 0;
  v32 = ims::info(&v44, v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Bundle Audit:", 13);
  *(v32 + 17) = 0;
  v33 = (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v32 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  ImsPrefsManager::audit(v33);
  std::__tree<std::string>::destroy(&v62, v63);
  v62 = &__p;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v62);
}

void sub_1E4FACCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::initializeEmergency()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = v0;
  memset(&v39, 0, sizeof(v39));
  if (*(v1 + 5199) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(v1 + 5176), *(v1 + 5184));
  }

  else
  {
    v39 = *(v1 + 5176);
  }

  v38 = 0;
  v37 = 0;
  (*(**(v7 + 232) + 184))(&v37);
  if (v37)
  {
    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v8)
    {
      std::string::operator=((v37 + 4456), v5);
      if (*(v37 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(__s, *(v37 + 554), *(v37 + 555));
      }

      else
      {
        *__s = *(v37 + 277);
        *&__s[16] = *(v37 + 556);
      }

      IPTelephonyManager::setDelegates(v7, __s, 1);
      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }
    }

    else
    {
      v11 = v3[1];
      v26 = *v3;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v11;
      v12 = (*(*(v7 + 24) + 64))(v7 + 24);
      (*(*(v7 + 24) + 16))(v7 + 24, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "loading prefs for SIM-less emergency", 36);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      RadioVendor = TelephonyRadiosGetRadioVendor();
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

      v16 = v7;
      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v17 = v14 + 216;
      for (i = *(v14 + 224); i != v17; i = *(i + 8))
      {
        (*(**(i + 16) + 8))(*(i + 16), RadioVendor == 3);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v51 = 0;
      v50 = 0;
      (*(*v16[29] + 184))(&v50);
      v19 = v50;
      ImsUuid::generate(__s);
      if ((__s[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v40, *&__s[8], *&__s[16]);
      }

      else
      {
        v40 = *&__s[8];
      }

      std::string::operator=((v19 + 4456), &v40);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      *__s = &unk_1F5EBEE78;
      if ((__s[31] & 0x80000000) != 0)
      {
        operator delete(*&__s[8]);
      }

      SipStack::carrierIdentifier(v50, __s);
      v48 = v26;
      v49 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ImsPrefsManager::setPrefsForCarrier(__s, &v48, 0);
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      v20 = v51;
      v47[0] = v50;
      v47[1] = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v46, &str_1_13);
      IPTelephonyManager::initializeImpuRankings(v16, v47, &v46);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      bzero(__s, 0xA20uLL);
      SipStackConfig::SipStackConfig(__s);
      v21 = SipStack::prefs(v50);
      bzero(&v40, 0x2E0uLL);
      ims::NetworkConfig::NetworkConfig(v41);
      memset(&v41[592], 0, 96);
      v42 = 257;
      v43 = 0;
      v44 = 65792;
      v45 = 0;
      SipStackConfig::initializeFromPrefs(__s, v21, &v40, (v50 + 200));
      ims::StackConfig::~StackConfig(&v40.__r_.__value_.__l.__data_);
      LODWORD(v40.__r_.__value_.__l.__data_) = 0x10000;
      BambiClient::bootstrap(v16[29], &v40);
      IPTelephonyManager::setDelegates(v16, &v39, 1);
      SipStackConfig::~SipStackConfig(__s);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    SipStack::carrierIdentifier(v37, __s);
    v22 = ImsPrefsManager::exists(__s);
    v23 = v22;
    if ((__s[23] & 0x80000000) != 0)
    {
      operator delete(*__s);
      if (v23)
      {
LABEL_58:
        IMSCallOptions::IMSCallOptions(v28, v6);
      }
    }

    else if (v22)
    {
      goto LABEL_58;
    }

    std::string::basic_string[abi:ne200100]<0>(__s, "call");
    v29[0] = 0;
    v32 = 0;
    v24 = ims::error(__s, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "unable to resolve preferences for given identifier: ", 52);
    *(v24 + 17) = 0;
    SipStack::carrierIdentifier(v37, &v40);
    (*(*v24 + 32))(v24, &v40);
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if ((__s[23] & 0x80000000) != 0)
    {
      operator delete(*__s);
    }

    v25 = IMSClientManager::delegateForStack(&v39);
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(v6 + 16), *(v6 + 24));
    }

    else
    {
      v40 = *(v6 + 16);
    }

    ims::CFString::asString(&v46, @"kCallDisconnectionReasonUnknownError", 0x8000100);
    *__s = 256;
    v53 = 0;
    memset(&__s[8], 0, 24);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    (*(*v25 + 16))(v25, &v40, &v46, __s);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__s, "call");
    v33[0] = 0;
    v36 = 0;
    v9 = ims::error(__s, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "No sip stack ", 13);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, &v39);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v36 == 1 && v35 < 0)
    {
      operator delete(__p);
    }

    if ((__s[23] & 0x80000000) != 0)
    {
      operator delete(*__s);
    }

    v10 = IMSClientManager::delegateForStack(&v39);
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(v6 + 16), *(v6 + 24));
    }

    else
    {
      v40 = *(v6 + 16);
    }

    ims::CFString::asString(&v46, @"kCallDisconnectionReasonUnknownError", 0x8000100);
    *__s = 256;
    v53 = 0;
    memset(&__s[8], 0, 24);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    (*(*v10 + 16))(v10, &v40, &v46, __s);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(*(&v55 + 1));
  }

  if (SBYTE7(v55) < 0)
  {
    operator delete(v54);
  }

  if ((__s[31] & 0x80000000) != 0)
  {
    operator delete(*&__s[8]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FB0370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, SipUserAgentConfig *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, SipRegistrationConfig *a35, std::__shared_weak_count *a36)
{
  STACK[0x1900] = &unk_1F5EBEE78;
  if (SLOBYTE(STACK[0x191F]) < 0)
  {
    operator delete(STACK[0x1908]);
  }

  if (STACK[0x18F8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x18F8]);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (STACK[0x15A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x15A8]);
  }

  if (SLOBYTE(STACK[0x15C7]) < 0)
  {
    operator delete(STACK[0x15B0]);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::setDelegates(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[29];
  v6 = a1[31];
  v5 = a1[32];
  if (v6)
  {
    v7 = v6 + 48;
  }

  else
  {
    v7 = 0;
  }

  v25 = v7;
  v26 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[34];
  v23 = a1[33];
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1[42];
  v21 = a1[41];
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[37];
  v11 = a1[38];
  v19 = v10;
  v20 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = a1 + 37;
    v12 = a1[37];
    v13 = v14[1];
    if (v12)
    {
      v15 = v12 + 8;
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = v10 + 8;
    if (!v10)
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = 0;
  }

  BambiClient::setDelegatesForStack(v4, a2, &v25, &v23, &v21, &v19, &v17, a3);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }
}

void sub_1E4FB0A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::initiateLimitedAccessRegister(uint64_t a1, uint64_t a2, unsigned int a3, std::string *a4, std::vector<std::string> *a5)
{
  v65 = 0;
  v66 = 0;
  (*(**(a1 + 232) + 184))(&v65);
  if (!v65)
  {
    v15 = *(a1 + 24);
    v14 = a1 + 24;
    v16 = (*(v15 + 48))(v14);
    (*(*v14 + 16))(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Unable to initiate limited access registration on invalid stack ", 64);
    *(v16 + 17) = 0;
    (*(*v16 + 32))(v16, a2);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_9:
    *(v16 + 17) = 0;
    goto LABEL_46;
  }

  if (!SipStack::isRegistrationLimitedAccess(v65))
  {
    v18 = *(a1 + 24);
    v17 = a1 + 24;
    v16 = (*(v18 + 48))(v17);
    (*(*v17 + 16))(v17, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Not in limited access mode to try LimitedAccess Registration", 60);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_9;
  }

  bzero(v50, 0x2E0uLL);
  ims::NetworkConfig::NetworkConfig(v51);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v61 = 257;
  v62 = 0;
  v63 = 65792;
  v64 = 0;
  bzero(&v46, 0x688uLL);
  SipRegistrationConfig::SipRegistrationConfig(&v46);
  SipStack::copyStackConfigs((v65 + 3648), v50, v10);
  v51[54] = (a3 >> 2) & 1 | (2 * (a3 & 3));
  v11 = v53;
  v12 = v52;
  while (v11 != v12)
  {
    v13 = *(v11 - 1);
    v11 -= 3;
    if (v13 < 0)
    {
      operator delete(*v11);
    }
  }

  v53 = v12;
  std::vector<std::string>::push_back[abi:ne200100](&v52, a4);
  end = v54[0].__end_;
  begin = v54[0].__begin_;
  while (end != begin)
  {
    v21 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
    --end;
    if (v21 < 0)
    {
      operator delete(end->__r_.__value_.__l.__data_);
    }
  }

  v54[0].__end_ = begin;
  if (v54 != a5)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v54, a5->__begin_, a5->__end_, 0xAAAAAAAAAAAAAAABLL * ((a5->__end_ - a5->__begin_) >> 3));
  }

  v22 = v65;
  v23 = *(v65 + 31);
  v24 = *(v65 + 32);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v23)
  {
    v25 = *(v22 + 31);
    v26 = *(v22 + 32);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = *(v25 + 336);
    v27 = *(v25 + 344);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v29 = v28 != 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (!v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v29 = 0;
    if (!v24)
    {
      goto LABEL_27;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_27:
  if (v29)
  {
    v30 = *(v65 + 31);
    v31 = *(v65 + 32);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *(v30 + 336);
    v33 = *(v30 + 344);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipRegistrationConfig::operator=(&v46, v32 + 1312);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v34 = v46;
  if (v47 != v46)
  {
    v35 = v47 - 408;
    v36 = v47 - 408;
    do
    {
      (**v36)(v36);
      v35 -= 408;
      v37 = v36 == v34;
      v36 -= 408;
    }

    while (!v37);
  }

  v47 = v34;
  v39 = a5->__begin_;
  v38 = a5->__end_;
  while (v39 != v38)
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    SipUri::SipUri(v44, v39);
    if (SipUri::isValidUri(v44))
    {
      std::vector<SipUri>::push_back[abi:ne200100](&v46, v44);
    }

    SipUri::~SipUri(v44);
    v39 += 3;
  }

  SipUri::fromString(&v49, a4);
  v48 = a3;
  v41 = *(a1 + 24);
  v40 = a1 + 24;
  v42 = (*(v41 + 32))(v40);
  (*(*v40 + 16))(v40, v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "Start Limited Access registration", 33);
  *(v42 + 17) = 0;
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v42 + 17) = 0;
  SipStack::setSimConfig(v65, v50, v43);
  SipStack::startRegistration(v65, &v46);
  SipRegistrationConfig::~SipRegistrationConfig(&v46);
  ims::StackConfig::~StackConfig(v50);
LABEL_46:
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }
}

void sub_1E4FB107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  SipRegistrationConfig::~SipRegistrationConfig(&a60);
  ims::StackConfig::~StackConfig(&STACK[0x820]);
  v64 = *(v62 - 72);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::initializeImpuRankings(uint64_t a1, SipStack **a2, uint64_t a3)
{
  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a3 + 8))
    {
LABEL_6:
      v7 = SipStack::prefs(v4);
      ImsPrefs::ImpuRank(v7, &v22);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v22;
      v4 = *a2;
    }
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_6;
  }

  memset(&v22, 0, sizeof(v22));
  v8 = SipStack::prefs(v4);
  ImsPrefs::EmergencyImpuRank(v8, &v22);
  SipStack::carrierIdentifier(*a2, &__p);
  v9 = ImsPrefsManager::impuRank(&__p);
  SipImpuRank::setImpuRankFromString(v9, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipStack::carrierIdentifier(*a2, &__p);
  v10 = ImsPrefsManager::impuRank(&__p);
  SipImpuRank::setEmergencyImpuRankFromString(v10, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipStack::carrierIdentifier(*a2, &__p);
  v11 = ImsPrefsManager::impuRank(&__p);
  v13 = *(a1 + 24);
  v12 = a1 + 24;
  v14 = (*(v13 + 64))(v12);
  (*(*v12 + 16))(v12, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Normal IMPU ranking:", 20);
  *(v14 + 17) = 0;
  v15 = (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  SipImpuRank::logRanks(v15, v14, v11, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = (*(*v12 + 64))(v12);
  (*(*v12 + 16))(v12, v16);
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v16[17] = 0;
  SipStack::carrierIdentifier(*a2, &__p);
  v17 = ImsPrefsManager::impuRank(&__p);
  v18 = (*(*v12 + 64))(v12);
  (*(*v12 + 16))(v12, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Emergency IMPU ranking:", 23);
  *(v18 + 17) = 0;
  v19 = (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  SipImpuRank::logRanks(v19, v18, (v17 + 24), 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = (*(*v12 + 64))(v12);
  (*(*v12 + 16))(v12, v20);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v20[17] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FB14F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::updateContactUser(unsigned __int16 *a1@<X1>, unsigned __int16 **a2@<X2>, unsigned __int16 **a3@<X3>, std::string *a4@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v4 == 7)
        {
          if (*a1 != 1230196011 || *(a1 + 3) != 1313100617)
          {
            goto LABEL_43;
          }

          goto LABEL_28;
        }

        goto LABEL_32;
      }

      v12 = a1[2];
      v13 = *a1 == 1397314381;
      v14 = 20036;
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v5 = *a1;
          if (*a1 != 1313099051)
          {
            goto LABEL_33;
          }

          goto LABEL_28;
        }

LABEL_32:
        v5 = *a1;
LABEL_33:
        if (v4 == 4 && v5 == 1230196041)
        {
          goto LABEL_35;
        }

LABEL_43:
        *&a4->__r_.__value_.__l.__data_ = *a1;
        v11 = *(a1 + 2);
        goto LABEL_54;
      }

      v12 = *(a1 + 2);
      v13 = *a1 == 17485;
      v14 = 78;
    }

    if (!v13 || v12 != v14)
    {
      goto LABEL_43;
    }

LABEL_52:
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
      v21 = a2[1];
LABEL_60:
      v20 = a4;
      goto LABEL_51;
    }

LABEL_53:
    *&a4->__r_.__value_.__l.__data_ = *a2;
    v11 = a2[2];
    goto LABEL_54;
  }

  v6 = *a1;
  v7 = *(a1 + 1);
  if (v7 > 5)
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        goto LABEL_50;
      }

      if (*v6 != 1230196011 || *(v6 + 3) != 1313100617)
      {
        goto LABEL_50;
      }

      goto LABEL_28;
    }

    v16 = v6[2];
    v17 = *v6 == 1397314381;
    v18 = 20036;
LABEL_46:
    if (!v17 || v16 != v18)
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  if (v7 == 3)
  {
    v16 = *(v6 + 2);
    v17 = *v6 == 17485;
    v18 = 78;
    goto LABEL_46;
  }

  if (v7 != 4)
  {
    goto LABEL_50;
  }

  if (*v6 != 1313099051)
  {
    if (*v6 == 1230196041)
    {
LABEL_35:
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
        *&a4->__r_.__value_.__l.__data_ = *a3;
        v11 = a3[2];
LABEL_54:
        a4->__r_.__value_.__r.__words[2] = v11;
        return;
      }

      v6 = *a3;
      v21 = a3[1];
      goto LABEL_60;
    }

    goto LABEL_50;
  }

LABEL_28:
  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
    v7 = a2[1];
    if (v7 && *v6 != 43)
    {
      goto LABEL_57;
    }

LABEL_50:
    v20 = a4;
    v21 = v7;
LABEL_51:
    std::string::__init_copy_ctor_external(v20, v6, v21);
    return;
  }

  if (!*(a2 + 23) || *a2 == 43)
  {
    goto LABEL_53;
  }

LABEL_57:
  std::operator+<char>();
}

void IPTelephonyManager::updatePolicyInterfaceList(uint64_t a1, std::string *a2)
{
  if (*(a1 + 328))
  {
    memset(v6, 0, sizeof(v6));
    std::string::basic_string[abi:ne200100]<0>(__p, ", ");
    ims::tokenize(a2, v6, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    (*(**(a1 + 328) + 96))(*(a1 + 328), v6);
    __p[0] = v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_1E4FB1818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::handleClientStatusChange(uint64_t a1, char *a2, std::string *a3)
{
  v6 = (a1 + 24);
  v7 = (*(*(a1 + 24) + 64))(a1 + 24);
  ((*v6)[2])(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ClientStatusChange for stack ", 29);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " with status ", 13);
  *(v7 + 17) = 0;
  v8 = operator<<(v7, a3);
  (*(*v7 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v18 = 0uLL;
  (*(*v6[26] + 184))(&v18);
  if (v18)
  {
    v9 = *(v18 + 4625);
  }

  else
  {
    v9 = 0;
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, &BambiClientStatus::kStatusInitialized))
  {
    IMSRegistrationManager::startRegistration(*(a1 + 248), a2);
    v10 = IMSClientManager::delegateForStack(a2);
    (*(*(v10 + 8) + 56))();
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, BambiClientStatus::kStatusUninitialized) || a3[1].__r_.__value_.__s.__data_[0] == 1)
  {
    IMSRegistrationManager::sipStackInvalidated(*(a1 + 248), a2);
    if ((v9 & 1) == 0)
    {
      v19 = 0;
      v18 = xmmword_1E51786F0;
      v11 = IMSClientManager::delegateForStack(a2);
      (*(*(v11 + 8) + 32))();
    }

    v12 = IMSClientManager::delegateForStack(a2);
    (*(*(v12 + 8) + 64))();
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, BambiClientStatus::kStatusInitFailed))
  {
    v13 = (*(*(a1 + 24) + 56))(v6);
    (*(*(a1 + 24) + 16))(v6, v13);
    v14 = *(v13 + 8);
    v15 = "failed to initialize BambiClient";
    v16 = 32;
LABEL_17:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    IMSRegistrationManager::setRegistrationTerminated(*(a1 + 248), a2, 2, -1, 0, 1, 200);
    IPTelephonyManager::deinitialize(a1, a2, 0, 0, 0);
    return;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, BambiClientStatus::kStatusFatalError))
  {
    v13 = (*(*(a1 + 24) + 56))(v6);
    (*(*(a1 + 24) + 16))(v6, v13);
    v14 = *(v13 + 8);
    v15 = "received a fatal error from BambiClient";
    v16 = 39;
    goto LABEL_17;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, BambiClientStatus::kStatusMediaRequestTimedOut))
  {
    IPTelephonyManager::deinitialize(a1, a2, 0, 0, 0);
    v17 = (*(*(a1 + 24) + 56))(v6);
    (*(*(a1 + 24) + 16))(v6, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "received a fatal media error from BambiClient, going to request BB reset", 72);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    IMSRegistrationManager::setRegistrationTerminated(*(a1 + 248), a2, 5, -1, 0, 1, 200);
  }
}

void IPTelephonyManager::handleDigestAuthChallenge(uint64_t a1, const SipDigestAuthChallenge *a2, uint64_t a3)
{
  memset(&v29, 0, sizeof(v29));
  memset(&v28, 0, sizeof(v28));
  v27[0] = 0;
  v27[1] = 0;
  (*(**(a1 + 232) + 184))(v27);
  v5 = std::string::basic_string[abi:ne200100]<0>(&v26, "auth");
  v22[0] = 0;
  v25 = 0;
  v6 = ims::debug(v5, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleDigestAuthChallenge: handling challenge for ", 50);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a3);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if ((*(v27[0] + 4231) & 0x8000000000000000) != 0)
  {
    if (!*(v27[0] + 527))
    {
      goto LABEL_16;
    }
  }

  else if (!*(v27[0] + 4231))
  {
    goto LABEL_16;
  }

  if ((*(v27[0] + 4255) & 0x8000000000000000) != 0)
  {
    if (*(v27[0] + 530))
    {
LABEL_12:
      std::string::operator=(&v29, (v27[0] + 4208));
      std::string::operator=(&v28, (v27[0] + 4232));
      v7 = std::string::basic_string[abi:ne200100]<0>(&v26, "auth");
      v18[0] = 0;
      v21 = 0;
      v8 = ims::debug(v7, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "using Auth from stored config", 29);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v21 != 1 || (v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v9 = v19;
      goto LABEL_23;
    }
  }

  else if (*(v27[0] + 4255))
  {
    goto LABEL_12;
  }

LABEL_16:
  v10 = SipStack::prefs(v27[0]);
  ImsPrefs::DigestUsername(v10, &v26);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v29 = v26;
  v11 = SipStack::prefs(v27[0]);
  ImsPrefs::DigestPassword(v11, &v26);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v28 = v26;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v26, "auth");
  v14[0] = 0;
  v17 = 0;
  v13 = ims::debug(v12, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "using Auth from prefs", 21);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v17 != 1 || (v16 & 0x80000000) == 0)
  {
LABEL_24:
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    SipDigestAuthChallenge::createResponse(a2, &v29, &v28);
  }

  v9 = v15;
LABEL_23:
  operator delete(v9);
  goto LABEL_24;
}

void sub_1E4FB2110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  v40 = *(v38 - 120);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::handleSignedDigestAuthChallenge(uint64_t a1, const SipSignedDigestAuthChallenge *a2, uint64_t a3)
{
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  v18[0] = 0;
  v18[1] = 0;
  (*(**(a1 + 232) + 184))(v18);
  if ((*(v18[0] + 4231) & 0x8000000000000000) != 0)
  {
    if (!*(v18[0] + 527))
    {
      goto LABEL_11;
    }
  }

  else if (!*(v18[0] + 4231))
  {
    goto LABEL_11;
  }

  if ((*(v18[0] + 4255) & 0x8000000000000000) != 0)
  {
    if (*(v18[0] + 530))
    {
LABEL_7:
      std::string::operator=(&v20, (v18[0] + 4208));
      std::string::operator=(&v19, (v18[0] + 4232));
      std::string::basic_string[abi:ne200100]<0>(&v17, "auth");
      v13[0] = 0;
      v16 = 0;
      v4 = ims::debug(&v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "using Auth from stored config", 29);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      if (v16 != 1 || (v15 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v5 = v14;
      goto LABEL_18;
    }
  }

  else if (*(v18[0] + 4255))
  {
    goto LABEL_7;
  }

LABEL_11:
  v6 = SipStack::prefs(v18[0]);
  ImsPrefs::DigestUsername(v6, &v17);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v20 = v17;
  v7 = SipStack::prefs(v18[0]);
  ImsPrefs::DigestPassword(v7, &v17);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v19 = v17;
  std::string::basic_string[abi:ne200100]<0>(&v17, "auth");
  v9[0] = 0;
  v12 = 0;
  v8 = ims::debug(&v17, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "using Auth from prefs", 21);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v12 != 1 || (v11 & 0x80000000) == 0)
  {
LABEL_19:
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    SipSignedDigestAuthChallenge::createResponse(a2, &v20, &v19);
  }

  v5 = __p;
LABEL_18:
  operator delete(v5);
  goto LABEL_19;
}

void sub_1E4FB24D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  v37 = *(v35 - 120);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

void AuthQueueItem<BambiClient>::sendChallenge(void *a1)
{
  v13 = 0;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v2 = (*(**a1 + 24))(*a1);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v5[1], (v2 + 184), (v2 + 200), 0x10uLL);
  v3 = (*(**a1 + 24))();
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, (v3 + 200), (v3 + 216), 0x10uLL);
  LODWORD(v13) = *(a1 + 6);
  v4 = IMSClientManager::delegateForStack(a1 + 32);
  (*(*(v4 + 8) + 96))();
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }
}

void IPTelephonyManager::handleAkaAuthResponse(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  {
    v7 = v6;
    v31 = 0;
    v30 = 0u;
    v29 = 0u;
    *v28 = 0u;
    v27 = 0u;
    *v26 = 0u;
    *v25 = 0u;
    v24 = 0u;
    *v23 = 0u;
    v8 = v6[1];
    v22 = &unk_1F5EF50B8;
    v23[0] = v8;
    ims::aka::AuthSuccess::AuthSuccess(&v23[1], (v6 + 2));
    *(&v29 + 1) = 0;
    v30 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v29 + 1, v7[14], v7[15], v7[15] - v7[14]);
    HIDWORD(v31) = *(v7 + 35);
    memset(&__p, 0, sizeof(__p));
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if (LOBYTE(v23[0]) == 1)
    {
      IMSXcapManager::handleAuthChallengeResponse(a1[39], &__p, &v22);
    }

    v12 = a1[45];
    if (v12)
    {
      v13 = a1[44];
      v14 = v13[1];
      v15 = v13[2];
      v16 = *v13;
      *(v16 + 8) = v14;
      *v14 = v16;
      a1[45] = v12 - 1;
      operator delete(v13);
      v32 = 0;
      v33 = 0;
      switch(HIDWORD(v23[0]))
      {
        case 3:
          SipAkaAuthChallenge::createFailureResponse(*v15);
        case 2:
          SipAkaAuthChallenge::createSyncFailureResponse(*v15, &v29 + 1);
        case 1:
          SipAkaAuthChallenge::createSuccessResponse(*v15, &v23[1], v25, &v26[1]);
      }

      if (v15)
      {
        v20 = AuthQueueItem<BambiClient>::~AuthQueueItem(v15);
        MEMORY[0x1E69235B0](v20, 0x1032C403FAF6B48);
      }

      if (a1[45])
      {
        AuthQueueItem<BambiClient>::sendChallenge(*(a1[44] + 16));
      }
    }

    else
    {
      v18 = a1[3];
      v17 = a1 + 3;
      v19 = (*(v18 + 56))(v17);
      (*(*v17 + 16))(v17, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "received AKA response from ISIM but don't have any queued challenges", 68);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v22 = &unk_1F5EF50B8;
    if (*(&v29 + 1))
    {
      *&v30 = *(&v29 + 1);
      operator delete(*(&v29 + 1));
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    if (v26[1])
    {
      *&v27 = v26[1];
      operator delete(v26[1]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v23[1])
    {
      *&v24 = v23[1];
      operator delete(v23[1]);
    }
  }

  else
  {
    v10 = a1[3];
    v9 = a1 + 3;
    v11 = (*(v10 + 56))(v9, a2);
    (*(*v9 + 16))(v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "received AKA response with wrong Response type", 46);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
  }
}

void sub_1E4FB2CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  v18 = *(v16 - 72);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(v16 - 56);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  ims::aka::Response::~Response(&a16);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::handleEmergencyRegistrationError(IPTelephonyManager *this, const SipRegistrationErrorNotification *a2)
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
  v6 = *(this + 29);
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  (*(*v6 + 184))(&v9, v6, __p);
  IMSMetricsManager::logRegistrationError(v4, &v9, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void IPTelephonyManager::handleEmergencyRegistrationActive(IPTelephonyManager *this, const SipRegistrationActiveNotification *a2)
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
  v6 = *(this + 29);
  std::string::basic_string[abi:ne200100]<0>(__p, "8928DFB0-9B9E-11E6-9F33-A24FC0D9649C");
  (*(*v6 + 184))(&v9, v6, __p);
  IMSMetricsManager::logRegistrationSuccess(v4, &v9, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t IPTelephonyManager::handleEmergencyStateExited(uint64_t a1, char *a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 56);

  return v2();
}

uint64_t IPTelephonyManager::handleRequestNetworkReset(uint64_t a1, char *a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 8) + 80);

  return v2();
}

void IPTelephonyManager::handleRequestStateDump(uint64_t a1, uint64_t a2, char *a3)
{
  memset(&v10, 0, sizeof(v10));
  std::string::basic_string[abi:ne200100]<0>(&v10, "IMS pre-alerting call failure");
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    std::string::append(&v10, ": ", 2uLL);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    std::string::append(&v10, v7, v8);
  }

  v9 = IMSClientManager::delegateForStack(a3);
  (*(*(v9 + 8) + 88))();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FB31AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPTelephonyManager::handleThumperAuthFailure(uint64_t a1, char *a2)
{
  v2 = *(*(IMSClientManager::delegateForStack(a2) + 16) + 64);

  return v2();
}

void IPTelephonyManager::dumpState(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v6 = a1 + 24;
  v7 = (*(*(a1 + 24) + 32))(a1 + 24);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dumping BambiClient state", 25);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "state");
  v17[0] = 0;
  v20 = 0;
  v9 = ims::info(v21, v17);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  BambiClient::dumpState(*(a1 + 232), a2, v9, v8 != 0, 1);
  IMSCallManager::dumpState(*(a1 + 280), v9);
  IMSXcapManager::internalDumpState(*(a1 + 312), v9);
  v11 = *(a1 + 416);
  v10 = *(a1 + 424);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v9 + 8);
  if (v11)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "BB Server Connection: ", 22);
    *(v9 + 17) = 0;
    v13 = (v9 + 17);
    MEMORY[0x1E6923310](*(v9 + 8), v11);
    *(v9 + 17) = 0;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "BB Server Connection: (0x0)", 27);
    *(v9 + 17) = 0;
    v13 = (v9 + 17);
  }

  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *v13 = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "********************************************************************************", 80);
  *(v9 + 17) = 0;
  v14 = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v15 = *(a3 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 8);
  }

  if (v15)
  {
    v16 = ims::logger(v14);

    ImsLogger::dumpToPath(v16, a3);
  }
}

void sub_1E4FB352C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void IPTelephonyManager::handleAuthResponse(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    BambiClient::setAuthResponse(a2, a3, *a4);
  }
}

void non-virtual thunk toIPTelephonyManager::handleAuthResponse(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    BambiClient::setAuthResponse(a2, a3, *a4);
  }
}

uint64_t IPTelephonyManager::makeOutgoingUri(uint64_t a1, SipStack **a2, uint64_t ***a3, SipUri *a4)
{
  v5 = *a2;
  if (!*a2)
  {
    v13 = *(a1 + 24);
    v12 = a1 + 24;
    v14 = (*(v13 + 56))(v12);
    (*(*v12 + 16))(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Invalid SIP stack", 17);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v15 = 0;
    *(v14 + 17) = 0;
    return v15;
  }

  memset(&v30, 0, sizeof(v30));
  v9 = SipStack::prefs(v5);
  ImsPrefs::OutgoingUri(v9, &v30);
  size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v11 = SipUri::fromString(a4, &v30);
LABEL_15:
    v15 = v11;
    goto LABEL_16;
  }

  v16 = SipStack::prefs(*a2);
  if (!ImsPrefs::UseOutgoingSipUri(v16))
  {
    v17 = SipStack::prefs(*a2);
    ImsPrefs::OutgoingDomain(v17, &v24);
    if (SBYTE7(v25) < 0)
    {
      v18 = *(&v24 + 1);
      operator delete(v24);
      if (!v18)
      {
LABEL_14:
        v11 = SipUri::fromString(a4, a3);
        goto LABEL_15;
      }
    }

    else if (!BYTE7(v25))
    {
      goto LABEL_14;
    }
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  SipStack::makeOutgoingSipUri(*a2, a3, a4, &v24);
  if ((*(**(&v24 + 1) + 24))(*(&v24 + 1), v25))
  {
    v20 = *(a1 + 24);
    v19 = a1 + 24;
    v21 = (*(v20 + 56))(v19);
    (*(*v19 + 16))(v19, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "unable to create outgoing sip URI: ", 35);
    *(v21 + 17) = 0;
    (*(v24 + 16))(&v24, v21);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    v22 = (*(*v19 + 56))(v19);
    (*(*v19 + 16))(v19, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "falling back to tel: URI", 24);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    ImsResult::~ImsResult(&v24);
    goto LABEL_14;
  }

  ImsResult::~ImsResult(&v24);
  v15 = 1;
LABEL_16:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1E4FB3944(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPTelephonyManager::makeOutgoingUriForPull(uint64_t a1, uint64_t a2, const std::string *a3, SipUri *a4)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  (*(**(a1 + 232) + 184))(&v13);
  v7.n128_f64[0] = SipStack::makeOutgoingSipUriForPull(v13, a3, a4, &v18);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v8 = (*(**(&v18 + 1) + 24))(*(&v18 + 1), v19, v7);
  if (v8)
  {
    v10 = *(a1 + 24);
    v9 = a1 + 24;
    v11 = (*(v10 + 56))(v9);
    (*(*v9 + 16))(v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "unable to create outgoing sip URI for pull : ", 45);
    *(v11 + 17) = 0;
    (*(v18 + 16))(&v18, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " , callId : ", 12);
    *(v11 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v13, a3);
    (*(*v11 + 56))(v11, &v13);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v13);
    }
  }

  ImsResult::~ImsResult(&v18);
  return v8 ^ 1u;
}

void sub_1E4FB3BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::sendUssdData(void *a1, char *a2, const std::string *a3)
{
  v6 = a1 + 46;
  v7 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 46), a2);
  if (a1 + 47 == v7)
  {
    v23 = 0;
    v24 = 0;
    v8 = a1[29];
    std::string::basic_string[abi:ne200100]<0>(&v26, &str_1_13);
    v9 = a1[24];
    if (!v9 || (v10 = a1[23], (v11 = std::__shared_weak_count::lock(v9)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v21 = 0;
    v22 = 0;
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = v10 + 8;
      if (!v10)
      {
        v15 = 0;
      }

      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = v15;
      v22 = v13;
      std::__shared_weak_count::__release_weak(v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      std::__shared_weak_count::__release_weak(v12);
    }

    BambiClient::initializeUssdSession(v8, a2, &v23);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (v23)
    {
      SipUssdSession::startSession(*(v23 + 72), v20);
      ImsResult::~ImsResult(v20);
      v28 = 0;
      v16 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v6, &v28, a2);
      if (!v16)
      {
        operator new();
      }

      v18 = v23;
      v17 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v16 + 64);
      *(v16 + 56) = v18;
      *(v16 + 64) = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  else
  {
    SipUssdSession::sendAdditionalData(*(v7[7] + 72), a3, v25);
    ImsResult::~ImsResult(v25);
  }
}

void sub_1E4FB3E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,void *>>>>::~unique_ptr[abi:ne200100](v23 - 96);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::handleUssdData(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  if (v4)
  {
    v13[0] = &unk_1F5EBED08;
    v13[1] = 0;
    ims::CFMutableDictionary::setStringValue(v13, @"kIncomingUSSDData", a3);
    if (a4)
    {
      ims::CFMutableDictionary::setValue(v13, @"kFurtherInfoRequired", *MEMORY[0x1E695E4D0]);
    }

    v7 = *a2;
    v8 = *(*a2 + 64);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(v7 + 56);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if (*(v10 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v10 + 4432), *(v10 + 4440));
    }

    else
    {
      __p = *(v10 + 4432);
    }

    v11 = IMSClientManager::delegateForStack(&__p);
    (*(*(v11 + 16) + 88))();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    ims::CFType::~CFType(v13);
  }
}

void sub_1E4FB3FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ims::CFType::~CFType(&a16);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::handleUssdError(int a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v13[0] = &unk_1F5EBED08;
  v13[1] = 0;
  ims::CFMutableDictionary::setUintValue(v13, @"kIncomingUSSDError", a4);
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v6)
  {
    ims::CFMutableDictionary::setStringValue(v13, @"kIncomingUSSDData", a3);
  }

  v7 = *a2;
  v8 = *(*a2 + 64);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(v7 + 56);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (*(v10 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v10 + 4432), *(v10 + 4440));
  }

  else
  {
    __p = *(v10 + 4432);
  }

  v11 = IMSClientManager::delegateForStack(&__p);
  (*(*(v11 + 16) + 96))();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ims::CFType::~CFType(v13);
}

void sub_1E4FB4178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ims::CFType::~CFType(&a16);
  _Unwind_Resume(a1);
}

void IPTelephonyManager::handleUssdSessionInvalidated(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = *(v2 + 56);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (v7)
        {
          v8 = *a2;
          v9 = *(v8 + 64);
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = *(v8 + 56);
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
            std::string::__init_copy_ctor_external(&__p, *(v11 + 4432), *(v11 + 4440));
          }

          else
          {
            __p = *(v11 + 4432);
          }

          v12 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 46), &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          if (a1 + 47 != v12)
          {
            v13 = (*(a1[3] + 64))(a1 + 3);
            (*(a1[3] + 16))(a1 + 3, v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "invalidating USSD session", 25);
            *(v13 + 17) = 0;
            (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v13 + 17) = 0;
            v14 = v12[1];
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
              v16 = v12;
              do
              {
                v15 = v16[2];
                v17 = *v15 == v16;
                v16 = v15;
              }

              while (!v17);
            }

            if (a1[46] == v12)
            {
              a1[46] = v15;
            }

            v18 = a1[47];
            --a1[48];
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v12);
            std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v12 + 4));
            operator delete(v12);
          }
        }
      }
    }
  }
}

void sub_1E4FB43C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::delegateForIncomingUssdSession(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 64);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(v6 + 56);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (*(v9 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
  }

  else
  {
    __p = *(v9 + 4432);
  }

  v22 = 0;
  v10 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 368, &v22, &__p);
  if (!v10)
  {
    operator new();
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v10 + 64);
  *(v10 + 56) = v12;
  *(v10 + 64) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v14 = *(a1 + 192);
  if (!v14 || (v15 = *(a1 + 184), (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v18 = std::__shared_weak_count::lock(v17);
  v19 = v18;
  if (v18)
  {
    if (v15)
    {
      v20 = v15 + 8;
    }

    else
    {
      v20 = 0;
    }

    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    std::__shared_weak_count::__release_weak(v17);
    v20 = 0;
  }

  *a3 = v20;
  a3[1] = v19;
}

void sub_1E4FB45D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPTelephonyManager::cancelUssdSession(uint64_t a1, char *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 368, a2);
  if (a1 + 376 == v4)
  {
    v12 = *(a1 + 24);
    v11 = a1 + 24;
    v7 = (*(v12 + 64))(v11);
    (*(*v11 + 16))(v11, v7);
    v8 = *(v7 + 8);
    v9 = "IPTelephonyManager::cancelUssdSession: session not found for stack ";
    v10 = 67;
  }

  else
  {
    SipUssdSession::cancelSession(v14, *(*(v4 + 56) + 72));
    ImsResult::~ImsResult(v14);
    v6 = *(a1 + 24);
    v5 = a1 + 24;
    v7 = (*(v6 + 64))(v5);
    (*(*v5 + 16))(v5, v7);
    v8 = *(v7 + 8);
    v9 = "IPTelephonyManager::cancelUssdSession: session canceled for stack ";
    v10 = 66;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  result = (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  return result;
}

void IPTelephonyManager::restoreLoggingState(IPTelephonyManager *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ImsLoggingEnabled");
  BoolValueFromRuntimeConfig = IPTelephonyPrefs::getBoolValueFromRuntimeConfig(__p, 0);
  v2 = BoolValueFromRuntimeConfig;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  IPTelephonyManager::setLoggingEnabled(BoolValueFromRuntimeConfig, v2);
}

void sub_1E4FB480C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::setAutoAnswer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "enableAutoAnswer");
  IPTelephonyPrefs::setBoolValueInRuntimeConfig(__p, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4FB487C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::updateAccessBarringInfo(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = *(a1 + 224);
  *(a1 + 224) = v3 + 1;
  LODWORD(v4.__r_.__value_.__l.__data_) = v3;
  ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
}

void sub_1E4FB4B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18IPTelephonyManager23updateAccessBarringInfoERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN18BambiAccessBarring4InfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v2 += 24;
  v4 = (*(v3 + 64))(v2);
  (*(*v2 + 16))(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "performing block ", 17);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 40);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v11 = 0;
  v12 = 0;
  (*(**(v2 + 208) + 184))(&v11);
  if (v11)
  {
    v5 = *(a1 + 88);
    v6 = *(a1 + 92);
    v7 = *(a1 + 96);
    v8 = *(a1 + 100);
    v9 = *(a1 + 104);
    BambiAccessBarring::updateVoiceInfo((v11 + 3160), &v5, v10);
    ImsResult::~ImsResult(v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4FB4D1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c31_ZTSN18BambiAccessBarring4InfoE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  *(a1 + 88) = 100;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
}

void sub_1E4FB4DE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void IPTelephonyManager::updateUacBarringInfo(uint64_t a1, const void **a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v7 = a3;
  v45 = a3;
  v10 = a1 + 24;
  v11 = (*(*(a1 + 24) + 64))(a1 + 24);
  (*(*v10 + 16))(v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Received UAC barring info for stack ", 36);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ": UAC resp=", 11);
  *(v11 + 17) = 0;
  ims::toString<UacAccessResponse>(&v45, v36);
  (*(*v11 + 32))(v11, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ", affected services=", 20);
  *(v11 + 17) = 0;
  ims::Services::namesForMask(&__p, *(a4 + 3));
  (*(*v11 + 32))(v11, &__p);
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v36[0]);
  }

  v12 = *(a4 + 3);
  if (v12)
  {
    IMSCallManager::handleUacBarringResponse(*(a1 + 280), a2, v7);
    v12 = *(a4 + 3);
  }

  if ((v12 & 4) != 0)
  {
    IMSSMSManager::handleUacBarringResponse(*(a1 + 296), a2, v7);
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  (*(**(a1 + 232) + 184))(&__p);
  v13 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    if ((a4[6] & 0x40) != 0)
    {
      v14 = *(__p.__r_.__value_.__r.__words[0] + 248);
      size = *(__p.__r_.__value_.__r.__words[0] + 256);
      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v14)
        {
LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          goto LABEL_46;
        }

        v14 = *(v13 + 248);
        v16 = *(v13 + 256);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_46;
        }

        v16 = 0;
      }

      v18 = *(v14 + 336);
      v17 = *(v14 + 344);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }

      if (v18)
      {
        v19 = *(__p.__r_.__value_.__r.__words[0] + 248);
        size = *(__p.__r_.__value_.__r.__words[0] + 256);
        if (v7 == 3)
        {
          if (size)
          {
            atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = *(v19 + 336);
          v21 = *(v19 + 344);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipRegistrationClient::handleBarringAccessAlleviated(v22);
          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (size)
          {
            atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(v19 + 336);
          v21 = *(v19 + 344);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipRegistrationClient::handleAccessCongested(v20, *(a4 + 1));
LABEL_36:
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

LABEL_84:
          if (size)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](size);
          }

          goto LABEL_86;
        }

        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *(v19 + 336);
        v24 = *(v19 + 344);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36[0] = &unk_1F5EBDEF8;
        v36[1] = &_bambiDomain;
        v37 = (v7 != 0) << 30;
        v39 = 0;
        v40 = 0;
        SipRegistrationClient::handleAccessCheck(v23, v36, *(a4 + 1));
        ImsResult::~ImsResult(v36);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (size)
        {
          goto LABEL_45;
        }
      }
    }

LABEL_46:
    v25 = __p.__r_.__value_.__r.__words[0];
    if (*(__p.__r_.__value_.__r.__words[0] + 296) != a5)
    {
      goto LABEL_86;
    }

    v26 = *(a4 + 3);
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *a4;
    v28 = *(a4 + 1);
    if (v26)
    {
      if (v27 == 100)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 1, v29);
    }

    if ((v26 & 2) != 0)
    {
      if (v27 == 100)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 2, v30);
    }

    if ((v26 & 4) != 0)
    {
      if (v27 == 100)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 4, v31);
    }

    if ((v26 & 8) != 0)
    {
      if (v27 == 100)
      {
        v32 = 0;
      }

      else
      {
        v32 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 8, v32);
    }

    if ((v26 & 0x10) != 0)
    {
      if (v27 == 100)
      {
        v33 = 0;
      }

      else
      {
        v33 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 16, v33);
    }

    if ((v26 & 0x20) != 0)
    {
      if (v27 == 100)
      {
        v34 = 0;
      }

      else
      {
        v34 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 32, v34);
    }

    if ((v26 & 0x40) != 0)
    {
      if (v27 == 100)
      {
        v35 = 0;
      }

      else
      {
        v35 = v28;
      }

      BambiAccessBarring::setUacBarring(v25 + 3160, 64, v35);
    }

    goto LABEL_84;
  }

LABEL_86:
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }
}

void sub_1E4FB533C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, std::__shared_weak_count *a25, int a26, __int16 a27, char a28, char a29)
{
  ImsResult::~ImsResult(&__p);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::sendCallStatusRequest(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v41 = a3;
  v39 = 0;
  v40 = 0;
  (*(**(a1 + 232) + 184))(&v39);
  v12 = v39;
  if (v39)
  {
    v13 = *(v39 + 4372);
    v34 = 0;
    v33 = 0u;
    memset(v32, 0, sizeof(v32));
    if (*(v39 + 3455) < 0)
    {
      std::string::__init_copy_ctor_external(v32, *(v39 + 3432), *(v39 + 3440));
    }

    else
    {
      v32[0] = *(v39 + 3432);
    }

    if (*(v12 + 3479) < 0)
    {
      std::string::__init_copy_ctor_external(&v32[1], *(v12 + 3456), *(v12 + 3464));
    }

    else
    {
      v32[1] = *(v12 + 3456);
    }

    LOBYTE(v34) = *(v12 + 3496);
    v33 = *(v12 + 3480);
    if (a6)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(v39 + 296);
    }

    if (ims::AccessNetwork::isWifi((v39 + 3432)) && TelephonyRadiosGetRadioVendor() == 3)
    {
      v18 = *(a1 + 24);
      v17 = a1 + 24;
      v19 = (*(v18 + 64))(v17);
      (*(*v17 + 16))(v17, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Skip Reporting call status ", 27);
      *(v19 + 17) = 0;
      ims::toString<UacCallStatus>(&v41, __p);
      (*(*v19 + 32))(v19, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " for ", 5);
      *(v19 + 17) = 0;
      if (a5)
      {
        v20 = "MO ";
      }

      else
      {
        v20 = "MT ";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v20, 3);
      *(v19 + 17) = 0;
      if (v16)
      {
        v21 = "emergency call";
      }

      else
      {
        v21 = "call";
      }

      if (v16)
      {
        v22 = 14;
      }

      else
      {
        v22 = 4;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), v21, v22);
      *(v19 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " on stack ", 10);
      *(v19 + 17) = 0;
      (*(*v19 + 32))(v19, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " with access network ", 21);
      *(v19 + 17) = 0;
      v23 = ims::operator<<(v19, v32);
      (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v23[17] = 0;
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v24 = (*(*(a1 + 24) + 64))(a1 + 24);
      (*(*(a1 + 24) + 16))(a1 + 24, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Reporting call status ", 22);
      *(v24 + 17) = 0;
      ims::toString<UacCallStatus>(&v41, __p);
      (*(*v24 + 32))(v24, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " for ", 5);
      *(v24 + 17) = 0;
      if (a5)
      {
        v25 = "MO ";
      }

      else
      {
        v25 = "MT ";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v25, 3);
      *(v24 + 17) = 0;
      if (v16)
      {
        v26 = "emergency call";
      }

      else
      {
        v26 = "call";
      }

      if (v16)
      {
        v27 = 14;
      }

      else
      {
        v27 = 4;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v26, v27);
      *(v24 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " on stack ", 10);
      *(v24 + 17) = 0;
      (*(*v24 + 32))(v24, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " with access network ", 21);
      *(v24 + 17) = 0;
      v28 = ims::operator<<(v24, v32);
      (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v28[17] = 0;
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      v29 = *(a1 + 392);
      if (v29)
      {
        IMSNasDeviceClient::reportCallStatus(v29, v13, a3, a4, v32, a5, v16 & 1, 0);
      }
    }

    if (SHIBYTE(v32[1].__r_.__value_.__r.__words[2]) < 0)
    {
      data = v32[1].__r_.__value_.__l.__data_;
      goto LABEL_42;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "call");
    v35[0] = 0;
    v38 = 0;
    v14 = ims::error(v32, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Unable to send call status request for invalid stack ", 53);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, a2);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      data = v36;
LABEL_42:
      operator delete(data);
    }
  }

  if (SHIBYTE(v32[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32[0].__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1E4FB59D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  ims::AccessNetwork::~AccessNetwork(&__p);
  v40 = *(v38 - 96);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

void IPTelephonyManager::initializeXcap(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  memset(v8, 0, sizeof(v8));
  ImsPrefs::ImsPrefs(v8);
  ImsPrefs::setPrefs(v8, a4, 0);
  IMSXcapManager::initialize(*(a1 + 312), a3, a2, v8);
  ImsPrefs::clear(v8);
  ImsPrefs::~ImsPrefs(v8);
}

void IPTelephonyManager::updateNetworkServices(uint64_t a1, const void **a2, uint64_t a3, int a4)
{
  v135 = 0;
  v136 = 0;
  (*(**(a1 + 232) + 184))(&v135);
  if (v135)
  {
    v8 = *(v135 + 3888);
    v114 = *(a3 + 216);
    v113 = *(a3 + 300);
    v134 = 0;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    *v122 = 0u;
    v123 = 0u;
    memset(v121, 0, sizeof(v121));
    std::ostringstream::basic_ostringstream[abi:ne200100](v121);
    if ((*(v135 + 3888) & 1) != 0 && (*(a3 + 216) & 1) != 0 && !ims::AccessNetwork::isWifi(a3) && !ims::AccessNetwork::isLTE(a3) && !ims::AccessNetwork::isNR(a3))
    {
      v9 = (*(*(a1 + 24) + 48))(a1 + 24);
      (*(*(a1 + 24) + 16))(a1 + 24, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "voice services requested on non-VoLTE RAT type: ", 48);
      *(v9 + 17) = 0;
      v10 = ims::operator<<(v9, a3);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v10[17] = 0;
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "updateNetworkServices (", 23);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = a2[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "): servicesChanged= ", 20);
    if (v8 == v114)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "false", 5);
    }

    else
    {
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "true (is= ", 10);
      v17 = *(a3 + 216);
      std::string::basic_string[abi:ne200100]<0>(&v120, ",");
      BambiServices::namesForServiceMask(v17, &v115);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v115;
      }

      else
      {
        v18 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v115.__r_.__value_.__l.__size_;
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, size);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "; was= ", 7);
      v22 = *(v135 + 3888);
      std::string::basic_string[abi:ne200100]<0>(&v116, ",");
      BambiServices::namesForServiceMask(v22, __p);
      if ((v119 & 0x80u) == 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      if ((v119 & 0x80u) == 0)
      {
        v24 = v119;
      }

      else
      {
        v24 = __p[1];
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ")", 1);
      if (v119 < 0)
      {
        operator delete(__p[0]);
      }

      if (v117 < 0)
      {
        operator delete(v116);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, " contextUp= ", 12);
    if (v113)
    {
      v30 = "true";
    }

    else
    {
      v30 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(&v115, v30);
    if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v115;
    }

    else
    {
      v31 = v115.__r_.__value_.__r.__words[0];
    }

    if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v115.__r_.__value_.__l.__size_;
    }

    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " isEmergency= ", 14);
    if (a4)
    {
      v35 = "true";
    }

    else
    {
      v35 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(&v120, v35);
    if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v120;
    }

    else
    {
      v36 = v120.__r_.__value_.__r.__words[0];
    }

    if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v120.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    v38 = a1 + 24;
    v39 = (*(*(a1 + 24) + 64))(a1 + 24);
    (*(*(a1 + 24) + 16))(a1 + 24, v39);
    std::ostringstream::str[abi:ne200100](v121, &v120);
    LoggableString::LoggableString(&v115, &v120);
    (*(*v39 + 40))(v39, &v115);
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v39[17] = 0;
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    v40 = v135;
    v41 = *(v135 + 3919);
    if (v41 >= 0)
    {
      v42 = *(v135 + 3919);
    }

    else
    {
      v42 = *(v135 + 3904);
    }

    v43 = *(a3 + 247);
    v44 = v43;
    if ((v43 & 0x80u) != 0)
    {
      v43 = *(a3 + 232);
    }

    if (v42 != v43 || (v41 >= 0 ? (v45 = (v135 + 3896)) : (v45 = *(v135 + 3896)), v44 >= 0 ? (v46 = (a3 + 224)) : (v46 = *(a3 + 224)), memcmp(v45, v46, v42)))
    {
      std::string::operator=((v40 + 4384), (a3 + 224));
      v40 = v135;
    }

    v47 = *(v40 + 3943);
    if (v47 >= 0)
    {
      v48 = *(v40 + 3943);
    }

    else
    {
      v48 = *(v40 + 3928);
    }

    v49 = *(a3 + 271);
    v50 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(a3 + 256);
    }

    v112 = v8;
    if (v48 != v49 || (v47 >= 0 ? (v51 = (v40 + 3920)) : (v51 = *(v40 + 3920)), v50 >= 0 ? (v52 = (a3 + 248)) : (v52 = *(a3 + 248)), memcmp(v51, v52, v48)))
    {
      std::string::operator=((v40 + 4408), (a3 + 248));
      v40 = v135;
    }

    if (ims::AccessNetwork::networkTypeChanged((v40 + 3672), a3))
    {
      goto LABEL_129;
    }

    v53 = *(v40 + 3695);
    if ((v53 & 0x80u) != 0)
    {
      v53 = *(v40 + 3680);
    }

    if (v53)
    {
      v54 = *(v40 + 3719);
      if ((v54 & 0x80u) != 0)
      {
        v54 = *(v40 + 3704);
      }

      v56 = (a3 + 23);
      v55 = *(a3 + 23);
      v57 = (a3 + 8);
      if ((v55 & 0x80u) != 0)
      {
        v55 = *(a3 + 8);
      }

      if (v55)
      {
        v58 = v54 != 0;
        v59 = *(a3 + 47);
        if ((v59 & 0x80u) != 0)
        {
          v59 = *(a3 + 32);
        }

        if ((v58 ^ (v59 != 0)))
        {
          goto LABEL_129;
        }

LABEL_110:
        if (ims::AccessNetwork::networkTypeChanged((v40 + 3744), (a3 + 72)))
        {
          goto LABEL_129;
        }

        v61 = *(v40 + 3767);
        if ((v61 & 0x80u) != 0)
        {
          v61 = *(v40 + 3752);
        }

        if (v61)
        {
          v62 = *(v40 + 3791);
          if ((v62 & 0x80u) != 0)
          {
            v62 = *(v40 + 3776);
          }

          v63 = *(a3 + 95);
          if ((v63 & 0x80u) != 0)
          {
            v63 = *(a3 + 80);
          }

          if (v63)
          {
            v64 = v62 != 0;
            v65 = *(a3 + 119);
            if ((v65 & 0x80u) != 0)
            {
              v65 = *(a3 + 104);
            }

            if ((v64 ^ (v65 != 0)))
            {
              goto LABEL_129;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v66 = *(a3 + 95);
          if ((v66 & 0x80u) != 0)
          {
            v66 = *(a3 + 80);
          }

          if (!v66)
          {
LABEL_165:
            v88 = *(v40 + 3695);
            if ((v88 & 0x80u) != 0)
            {
              v88 = *(v40 + 3680);
            }

            if (!v88)
            {
              goto LABEL_178;
            }

            v89 = *(v40 + 3719);
            if ((v89 & 0x80u) != 0)
            {
              v89 = *(v40 + 3704);
            }

            if (!v89)
            {
              goto LABEL_178;
            }

            v90 = *v56;
            if ((v90 & 0x80u) != 0)
            {
              v90 = *v57;
            }

            if (!v90)
            {
              goto LABEL_178;
            }

            v91 = *(a3 + 47);
            if ((v91 & 0x80u) != 0)
            {
              v91 = *(a3 + 32);
            }

            if (!v91 || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v40 + 3696), (a3 + 24)))
            {
LABEL_178:
              v92 = (*(*v38 + 64))(a1 + 24);
              (*(*v38 + 16))(a1 + 24, v92);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v92 + 8), "updateNetworkServices: Access network has NOT changed", 53);
              *(v92 + 17) = 0;
              (*(*v92 + 64))(v92, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v92 + 17) = 0;
              goto LABEL_225;
            }

LABEL_129:
            v67 = (*(*v38 + 64))(a1 + 24);
            (*(*v38 + 16))(a1 + 24, v67);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v67 + 8), "updateNetworkServices: Access network has changed from ", 55);
            *(v67 + 17) = 0;
            v68 = ims::operator<<(v67, v135 + 3672);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v68 + 8), " to ", 4);
            *(v68 + 17) = 0;
            v69 = ims::operator<<(v68, a3);
            (*(*v69 + 64))(v69, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v69[17] = 0;
            pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v70 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global();
            }

            v71 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v72 = *(a3 + 95);
            if ((v72 & 0x80u) != 0)
            {
              v72 = *(a3 + 80);
            }

            v73 = a3;
            if (v72)
            {
              v74 = *(a3 + 119);
              if (*(a3 + 119) < 0)
              {
                v74 = *(a3 + 104);
              }

              v75 = v74 == 0;
              v76 = 72;
              if (v75)
              {
                v76 = 0;
              }

              v73 = a3 + v76;
            }

            v77 = *(*(v70 + 184) + 680);
            if (v77)
            {
              (**v77)(v77, v73);
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            }

            if (a4)
            {
              goto LABEL_224;
            }

            if (ims::AccessNetwork::networkTypeChanged((v135 + 3672), a3))
            {
              if (ims::AccessNetwork::isHandover(a3, (v135 + 3672)))
              {
                isCellularHandover = 1;
              }

              else
              {
                isCellularHandover = ims::AccessNetwork::isCellularHandover(a3, (v135 + 3672));
              }
            }

            else
            {
              isCellularHandover = 0;
            }

            if (ims::AccessNetwork::isLTE(a3) && !ims::AccessNetwork::isLTE((v135 + 3672)) && *(a1 + 392))
            {
              v79 = (*(*v38 + 64))(a1 + 24);
              (*(*v38 + 16))(a1 + 24, v79);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), "updateNetworkServices: Moving to LTE RAT.  Requesting current barring information.", 82);
              *(v79 + 17) = 0;
              (*(*v79 + 64))(v79, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v79 + 17) = 0;
              IMSNasDeviceClient::requestCurrentBarringInfo(*(a1 + 392));
            }

            if (isCellularHandover)
            {
              v80 = *(a1 + 392);
              if (v80)
              {
                v81 = *(v135 + 4372);
                v82 = ims::AccessNetwork::isWifi((v135 + 3672)) && !ims::AccessNetwork::isWifi(a3);
                IMSNasDeviceClient::reportCallStatus(v80, v81, 3, 1, a3, 1, 0, v82);
                if (capabilities::radio::supportsRel16(v83))
                {
                  v84 = v135;
                  v85 = *(v135 + 248);
                  v86 = *(v135 + 256);
                  if (v86)
                  {
                    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (!v85)
                    {
                      goto LABEL_209;
                    }

                    v85 = *(v84 + 248);
                    v87 = *(v84 + 256);
                    v111 = v86;
                    if (v87)
                    {
                      atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
                    }
                  }

                  else
                  {
                    if (!v85)
                    {
                      goto LABEL_210;
                    }

                    v111 = *(v135 + 256);
                    v87 = 0;
                  }

                  v93 = *(v85 + 336);
                  v94 = *(v85 + 344);
                  if (v94)
                  {
                    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v93)
                  {
                    v109 = v87;
                    v95 = *(v84 + 248);
                    v96 = *(v84 + 256);
                    if (v96)
                    {
                      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v110 = v96;
                    v97 = *(v95 + 336);
                    v98 = *(v95 + 344);
                    if (v98)
                    {
                      atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v99 = SipRegistrationClient::nasImsRegInProgress(v97);
                    if (v98)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
                    }

                    if (v110)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v110);
                    }

                    v87 = v109;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  if (v94)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
                  }

                  if (v87)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                  }

                  if (v111)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v111);
                    if ((v99 & 1) == 0)
                    {
                      goto LABEL_210;
                    }
                  }

                  else if (!v99)
                  {
                    goto LABEL_210;
                  }

                  v100 = (*(*v38 + 64))(a1 + 24);
                  (*(*v38 + 16))(a1 + 24, v100);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v100 + 8), "stop previous RegAccessCheck while on the previous cellular RAT...", 66);
                  *(v100 + 17) = 0;
                  (*(*v100 + 64))(v100, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v100 + 17) = 0;
                  IMSNasDeviceClient::reportCallStatus(*(a1 + 392), *(v135 + 4372), 2, 64, v135 + 3672, 1, 0, 0);
                  v101 = *(v135 + 248);
                  v86 = *(v135 + 256);
                  if (v86)
                  {
                    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v102 = *(v101 + 336);
                  v103 = *(v101 + 344);
                  if (v103)
                  {
                    atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  SipRegistrationClient::nasImsRegStop(v102);
                  if (v103)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
                  }

                  if (v86)
                  {
LABEL_209:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
                  }
                }
              }
            }

LABEL_210:
            v104 = v135;
            if (ims::AccessNetwork::isWifi((v135 + 3672)))
            {
              v105 = ims::AccessNetwork::isLTE(a3) || ims::AccessNetwork::isNR(a3);
            }

            else
            {
              v105 = 0;
            }

            if (ims::AccessNetwork::isLTE((v104 + 3672)) || (isWifi = ims::AccessNetwork::isNR((v104 + 3672))))
            {
              isWifi = ims::AccessNetwork::isWifi(a3);
            }

            if (v105 || isWifi)
            {
              v107 = (*(*v38 + 64))(a1 + 24);
              (*(*v38 + 16))(a1 + 24, v107);
              if (v105)
              {
                v108 = "WiFi->Cell";
              }

              else
              {
                v108 = "Cell->WiFi";
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v107 + 8), v108, 10);
              *(v107 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v107 + 8), " handover detected", 18);
              *(v107 + 17) = 0;
              (*(*v107 + 64))(v107, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v107 + 17) = 0;
            }

            if ((v112 != v114) | isCellularHandover & 1)
            {
LABEL_225:
              std::string::basic_string[abi:ne200100]<0>(&v120, ",");
              ims::join<std::__wrap_iter<std::string const*>>();
            }

LABEL_224:
            BambiClient::updateAccessNetworkInfo(*(a1 + 232), a2, a3, 0);
            goto LABEL_225;
          }

          v62 = *(a3 + 119);
          if ((v62 & 0x80u) != 0)
          {
            v62 = *(a3 + 104);
          }
        }

        if (v62)
        {
          goto LABEL_129;
        }

        goto LABEL_165;
      }
    }

    else
    {
      v56 = (a3 + 23);
      v60 = *(a3 + 23);
      v57 = (a3 + 8);
      if ((v60 & 0x80u) != 0)
      {
        v60 = *(a3 + 8);
      }

      if (!v60)
      {
        goto LABEL_110;
      }

      v54 = *(a3 + 47);
      if ((v54 & 0x80u) != 0)
      {
        v54 = *(a3 + 32);
      }
    }

    if (v54)
    {
      goto LABEL_129;
    }

    goto LABEL_110;
  }

  v27 = *(a1 + 24);
  v26 = a1 + 24;
  v28 = (*(v27 + 56))(v26);
  (*(*v26 + 16))(v26, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "unable to update network services, sip stack ", 45);
  *(v28 + 17) = 0;
  (*(*v28 + 32))(v28, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " invalid.", 9);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }
}

void sub_1E4FB7308(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::ostringstream::~ostringstream(&STACK[0x370], MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&STACK[0x3E0]);
  v5 = *(v3 - 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

BOOL ims::AccessNetwork::networkTypeChanged(ims::AccessNetwork *this, const ims::AccessNetwork *a2)
{
  v2 = *(this + 23);
  if (v2 < 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if ((*(this + 47) & 0x8000000000000000) != 0)
  {
    if (*(this + 4))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!*(this + 47))
  {
    return 0;
  }

LABEL_9:
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 1);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 47);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 4);
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 1);
  if (v2 >= 0)
  {
    v6 = *(this + 23);
  }

  if (v6 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    this = *this;
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  return memcmp(this, a2, v4) != 0;
}

uint64_t ims::AccessNetwork::isHandover(ims::AccessNetwork *this, const ims::AccessNetwork *a2)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if ((*(this + 47) & 0x8000000000000000) != 0)
  {
    if (!*(this + 4))
    {
      return 0;
    }
  }

  else if (!*(this + 47))
  {
    return 0;
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  if (v3)
  {
    v4 = *(a2 + 47);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 4);
    }

    if (v4)
    {
      isWifi = ims::AccessNetwork::isWifi(this);
      return isWifi ^ ims::AccessNetwork::isWifi(a2);
    }
  }

  return 0;
}

uint64_t ims::AccessNetwork::isCellularHandover(ims::AccessNetwork *this, const ims::AccessNetwork *a2)
{
  result = ims::AccessNetwork::networkTypeChanged(this, a2);
  if (result)
  {
    if (ims::AccessNetwork::isLTE(this) || (result = ims::AccessNetwork::isNR(this), result))
    {
      if (ims::AccessNetwork::isLTE(a2))
      {
        return 1;
      }

      else
      {

        return ims::AccessNetwork::isNR(a2);
      }
    }
  }

  return result;
}

void IPTelephonyManager::updateSimAccessClass(uint64_t a1, uint64_t a2, const unsigned int *a3)
{
  v4 = 0;
  v5 = 0;
  (*(**(a1 + 232) + 184))(&v4);
  if (v4)
  {
    BambiAccessBarring::updateSimAccessClass((v4 + 3160), a3);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FB775C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *IPTelephonyManager::logPrefix(IPTelephonyManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IPTelephonyManager: ", 20);
  *(a2 + 17) = 0;
  return result;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void DeferredEmergency::~DeferredEmergency(void **this)
{
  IMSCallOptions::~IMSCallOptions(this + 3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

ims::aka::AuthSuccess *ims::aka::AuthSuccess::AuthSuccess(ims::aka::AuthSuccess *this, const ims::aka::AuthSuccess *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this, *a2, *(a2 + 1), *(a2 + 1) - *a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 3, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 6, *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 9, *(a2 + 9), *(a2 + 10), *(a2 + 10) - *(a2 + 9));
  return this;
}

void sub_1E4FB79B0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void ims::aka::AuthSuccess::~AuthSuccess(ims::aka::AuthSuccess *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void ims::aka::Response::~Response(ims::aka::Response *this)
{
  *this = &unk_1F5EF50B8;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

{
  *this = &unk_1F5EF50B8;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

{
  *this = &unk_1F5EF50B8;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }

  JUMPOUT(0x1E69235B0);
}

void _ZNSt3__120__shared_ptr_emplaceI18IPTelephonyManagerNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EE4A38;
  IPTelephonyManager::IPTelephonyManager((a1 + 3));
}

void std::__shared_ptr_emplace<IPTelephonyManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DeferredInit>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DeferredInit>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DeferredInit>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DeferredInit>,void,0>(uint64_t a1)
{
  if (*(a1 + 6032) == 1)
  {
    IMSCallOptions::~IMSCallOptions((a1 + 832));
    if (*(a1 + 831) < 0)
    {
      operator delete(*(a1 + 808));
    }
  }

  ims::StackConfig::~StackConfig((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

void std::__shared_ptr_emplace<IPSecurityManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSRegistrationManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSDialogEventManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSCallManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<IMSSMSManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE4BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,DeferredInit>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,DeferredInit>,void,0>((a2 + 4));

  operator delete(a2);
}

uint64_t *std::__tree<std::__value_type<std::string,DeferredInit>,std::__map_value_compare<std::string,std::__value_type<std::string,DeferredInit>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeferredInit>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

uint64_t *AuthQueueItem<BambiClient>::~AuthQueueItem(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(a1[4]);
  }

  return a1;
}

void sub_1E4FB83B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<SipAkaAuthResponse *,std::shared_ptr<SipAkaAuthResponse>::__shared_ptr_default_delete<SipAkaAuthResponse,SipAkaAuthResponse>,std::allocator<SipAkaAuthResponse>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<SipAkaAuthResponse *,std::shared_ptr<SipAkaAuthResponse>::__shared_ptr_default_delete<SipAkaAuthResponse,SipAkaAuthResponse>,std::allocator<SipAkaAuthResponse>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SipAkaAuthResponse *,std::shared_ptr<SipAkaAuthResponse>::__shared_ptr_default_delete<SipAkaAuthResponse,SipAkaAuthResponse>,std::allocator<SipAkaAuthResponse>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18IPTelephonyManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18IPTelephonyManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __cxx_global_var_init_157()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

std::string *SipOfferAnswerItem::set(uint64_t a1, uint64_t a2, uint64_t a3, std::string *__str)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = a2;
  *(a1 + 8) = a3;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return std::string::operator=((a1 + 16), __str);
}

ImsOutStream *SipOfferAnswerExchange::log(std::string *this, ImsOutStream *a2)
{
  if (SipOfferAnswerExchange::empty(this))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "none", 4);
    *(a2 + 17) = 0;
    return a2;
  }

  v5 = this[1].__r_.__value_.__r.__words[2];
  data = this[2].__r_.__value_.__l.__data_;
  if (data)
  {
    atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
    if (v5)
    {
      v5 = this[1].__r_.__value_.__r.__words[2];
LABEL_7:
      size = this->__r_.__value_.__l.__size_;
      if (v5 == size)
      {
        v7 = "local";
      }

      else
      {
        v7 = "remote";
      }

      if (v5 == size)
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v7, v8);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " offer (", 8);
      *(a2 + 17) = 0;
      v9 = this[1].__r_.__value_.__r.__words[2];
      v10 = this[2].__r_.__value_.__l.__data_;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LoggableString::LoggableString(&__p, (v9 + 16));
      (*(*a2 + 40))(a2, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      LODWORD(v5) = 1;
    }
  }

  else if (v5)
  {
    goto LABEL_7;
  }

  v12 = this[2].__r_.__value_.__l.__size_;
  v11 = this[2].__r_.__value_.__r.__words[2];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    if (v5)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
      *(a2 + 17) = 0;
    }

    v13 = this[2].__r_.__value_.__l.__size_;
    v14 = this->__r_.__value_.__l.__size_;
    if (v13 == v14)
    {
      v15 = "local";
    }

    else
    {
      v15 = "remote";
    }

    if (v13 == v14)
    {
      v16 = 5;
    }

    else
    {
      v16 = 6;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v15, v16);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " answer (", 9);
    *(a2 + 17) = 0;
    v17 = this[2].__r_.__value_.__l.__size_;
    v18 = this[2].__r_.__value_.__r.__words[2];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LoggableString::LoggableString(&__p, (v17 + 16));
    (*(*a2 + 40))(a2, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
    *(a2 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    LODWORD(v5) = 1;
  }

  if ((SHIBYTE(this[3].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this[3].__r_.__value_.__l.__size_)
    {
      return a2;
    }
  }

  else if (!*(&this[3].__r_.__value_.__s + 23))
  {
    return a2;
  }

  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "(txn ", 5);
  *(a2 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&__p, this + 3);
  (*(*a2 + 56))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
  *(a2 + 17) = 0;
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_1E4FB88A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipOfferAnswerExchange::remoteAnswerPending(SipOfferAnswerExchange *this)
{
  if (*(this + 5) != *(this + 1))
  {
    return 0;
  }

  v3 = *(this + 7);
  v2 = *(this + 8);
  if (!v2)
  {
    return v3 == 0;
  }

  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  v1 = v3 == 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  return v1;
}

BOOL SipOfferAnswerExchange::localAnswerPending(SipOfferAnswerExchange *this)
{
  if (*(this + 5) != *(this + 3))
  {
    return 0;
  }

  v3 = *(this + 7);
  v2 = *(this + 8);
  if (!v2)
  {
    return v3 == 0;
  }

  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  v1 = v3 == 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  return v1;
}

BOOL SipOfferAnswerExchange::validateSdpSource(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  v6 = *(a1 + 95);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 80);
  }

  if (v4 == v6)
  {
    v8 = v5 >= 0 ? a3 : *a3;
    v11 = *(a1 + 72);
    v9 = a1 + 72;
    v10 = v11;
    v12 = (v7 >= 0 ? v9 : v10);
    if (!memcmp(v8, v12, v4))
    {
      return 1;
    }
  }

  v13 = *(a2 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 1);
  }

  if (v13 == 3)
  {
    if (v14 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    v16 = *v20;
    v17 = SipRequest::kMethodAck;
    v18 = *(v20 + 2);
    v19 = BYTE2(SipRequest::kMethodAck);
  }

  else
  {
    if (v13 != 5)
    {
      return 0;
    }

    if (v14 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = *v15;
    v17 = *"PRACK";
    v18 = *(v15 + 4);
    v19 = SipRequest::kMethodPrack[4];
  }

  return v16 == v17 && v18 == v19;
}

uint64_t SipOfferAnswer::SipOfferAnswer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_1F5EBEEC0;
  v6 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v28, "sip.offer.answer");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v23, a3);
  ImsLogContainer::ImsLogContainer(v6, &v28, v23);
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "sip.offer.answer");
  v17 = *a3;
  v18 = *(a3 + 8);
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v19 = *(a3 + 16);
  }

  v20 = *(a3 + 40);
  ims::getQueue(&v30);
  ClientConfig::getLogTag(&v27, &v17);
  if ((v22 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v8 = v22;
  }

  else
  {
    v8 = v21[1];
  }

  v9 = std::string::insert(&v27, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v29 = v9->__r_.__value_.__r.__words[2];
  v28 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v29 >= 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = v30;
  *(a1 + 168) = v30;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 144) = &unk_1F5EE4F00;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_1F5EE4CF8;
  *(a1 + 8) = &unk_1F5EE4D30;
  *(a1 + 144) = &unk_1F5EE4D90;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = a1 + 216;
  *(a1 + 224) = a1 + 216;
  *(a1 + 232) = 0;
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 200);
    *(a1 + 192) = v13;
    *(a1 + 200) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else
  {
    *(a1 + 200) = 0;
    *(a1 + 192) = v13;
  }

  SipOfferAnswer::startNewExchange(a1);
  return a1;
}

void sub_1E4FB8D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void sub_1E4FB8E28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  JUMPOUT(0x1E4FB8E20);
}

BOOL SipOfferAnswer::startNewExchange(SipOfferAnswer *this)
{
  if (!*(this + 29) || !(result = SipOfferAnswerExchange::empty(*(*(this + 27) + 16))))
  {
    operator new();
  }

  return result;
}

void SipOfferAnswer::~SipOfferAnswer(SipOfferAnswer *this)
{
  *this = &unk_1F5EE4CF8;
  *(this + 1) = &unk_1F5EE4D30;
  *(this + 18) = &unk_1F5EE4D90;
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 27);
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  SipOfferAnswer::~SipOfferAnswer(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipOfferAnswer::~SipOfferAnswer(SipOfferAnswer *this)
{
  SipOfferAnswer::~SipOfferAnswer((this - 8));
}

{
  SipOfferAnswer::~SipOfferAnswer((this - 144));
}

{
  SipOfferAnswer::~SipOfferAnswer((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipOfferAnswer::~SipOfferAnswer((this - 144));

  JUMPOUT(0x1E69235B0);
}

void *SipOfferAnswer::logPrefix(SipOfferAnswer *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Offer/Answer: ", 14);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toSipOfferAnswer::logPrefix(SipOfferAnswer *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Offer/Answer: ", 14);
  *(a2 + 17) = 0;
  return result;
}

void SipOfferAnswer::revert(SipOfferAnswer *this)
{
  v2 = this + 8;
  v3 = (*(*(this + 1) + 64))(this + 8);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "reverting exchange ", 19);
  *(v3 + 17) = 0;
  SipOfferAnswer::debugInfo(&__p, this);
}

void sub_1E4FB952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void SipOfferAnswer::debugInfo(std::string *this, uint64_t a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ImsStringOutStream::ImsStringOutStream(v2, 1);
}

void sub_1E4FB9658(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipOfferAnswer::activeRemoteSdp(uint64_t *__return_ptr a1@<X8>, SipOfferAnswer *this@<X0>)
{
  if (*(this + 29))
  {
    v2 = (this + 216);
    while (v2 != *(this + 28))
    {
      v2 = *v2;
      v3 = v2[2];
      if (v3[5] && v3[7])
      {
        v5 = v3[3];
        v4 = v3[4];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = *v5;
        v6 = v5[1];
        *a1 = v7;
        a1[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }

        return;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

void SipOfferAnswer::activeLocalSdp(SipOfferAnswer *this@<X0>, void *a2@<X8>)
{
  if (*(this + 29))
  {
    v2 = (this + 216);
    while (v2 != *(this + 28))
    {
      v2 = *v2;
      v3 = v2[2];
      if (v3[5] && v3[7])
      {
        v5 = v3[1];
        v4 = v3[2];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = *v5;
        v6 = v5[1];
        *a2 = v7;
        a2[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        }

        return;
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void SipOfferAnswer::updateWithIncomingRequest(SipOfferAnswer *a1@<X0>, SipMessage **a2@<X1>, ImsPrefs *a3@<X3>, uint64_t a4@<X8>, const void **a5@<X2>)
{
  v10 = SipMessage::body<SipSdpBody>(*a2);
  if (v10)
  {
    v12 = *(v10 + 1);
    v11 = *(v10 + 2);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v111 = 0;
  v112[0] = xpc_null_create();
  v109 = 0;
  v110 = 0;
  SipMessage::headerValueAsString(*a2, "P-Asserted-Service");
  v85 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v108, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
  v84 = a3;
  v13 = HIBYTE(v111);
  v14 = v110;
  if (v111 >= 0)
  {
    v15 = HIBYTE(v111);
  }

  else
  {
    v15 = v110;
  }

  size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  v17 = SHIBYTE(v108.__r_.__value_.__r.__words[2]);
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v108.__r_.__value_.__l.__size_;
  }

  if (v15 == size)
  {
    if (v111 >= 0)
    {
      v18 = &v109;
    }

    else
    {
      v18 = v109;
    }

    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v108;
    }

    else
    {
      v19 = v108.__r_.__value_.__r.__words[0];
    }

    v20 = memcmp(v18, v19, v15) == 0;
    if (v17 < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_20:
      operator delete(v108.__r_.__value_.__l.__data_);
      v13 = HIBYTE(v111);
      v14 = v110;
    }
  }

  v21 = 0;
  if (v13 < 0 && v14 == 47)
  {
    v21 = memcmp(v109, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session", 0x2FuLL) == 0;
  }

  if (!v20 && !v21)
  {
    goto LABEL_148;
  }

  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22 || (v22 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6924740](v22) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
    }
  }

  else
  {
    v23 = xpc_null_create();
    v22 = 0;
  }

  xpc_release(v22);
  v24 = xpc_null_create();
  v25 = v112[0];
  v112[0] = v23;
  xpc_release(v25);
  xpc_release(v24);
  v26 = SipMessage::header<SipConversationIdHeader>(*a2);
  v27 = (v26 + 64);
  if (!v26)
  {
    v27 = &ims::kEmptyString;
  }

  if (*(v27 + 23) >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = *v27;
  }

  v106 = xpc_string_create(v28);
  if (!v106)
  {
    v106 = xpc_null_create();
  }

  v108.__r_.__value_.__r.__words[0] = v112;
  v108.__r_.__value_.__l.__size_ = "kConversationId";
  xpc::dict::object_proxy::operator=(&v108, &v106, &v107);
  xpc_release(v107);
  v107 = 0;
  xpc_release(v106);
  v106 = 0;
  v29 = SipMessage::header<SipContributionIdHeader>(*a2);
  v30 = (v29 + 64);
  if (!v29)
  {
    v30 = &ims::kEmptyString;
  }

  if (*(v30 + 23) >= 0)
  {
    v31 = v30;
  }

  else
  {
    v31 = *v30;
  }

  v104 = xpc_string_create(v31);
  if (!v104)
  {
    v104 = xpc_null_create();
  }

  v108.__r_.__value_.__r.__words[0] = v112;
  v108.__r_.__value_.__l.__size_ = "kContributionId";
  xpc::dict::object_proxy::operator=(&v108, &v104, &v105);
  xpc_release(v105);
  v105 = 0;
  xpc_release(v104);
  v104 = 0;
  v32 = SipMessage::bodyWithContentType(*a2, "multipart/mixed");
  if (!v32)
  {
    v33 = 0;
    goto LABEL_51;
  }

  if (!v33)
  {
LABEL_51:
    v36 = 1;
    goto LABEL_55;
  }

  std::string::basic_string[abi:ne200100]<0>(&v108, "message/cpim");
  v34 = SipMultiPartBody::partWithContentType(v33, &v108);
  v35 = v34;
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v34)
    {
      goto LABEL_54;
    }

LABEL_53:
    memset(&v108, 0, sizeof(v108));
    SipBodyPart::encodeBodyToString(v35, &v108);
  }

  operator delete(v108.__r_.__value_.__l.__data_);
  if (v35)
  {
    goto LABEL_53;
  }

LABEL_54:
  v36 = 0;
LABEL_55:
  memset(&v108, 0, sizeof(v108));
  if (!SipMessage::headerValueAsString(*a2, "MLS-Opaque-Token"))
  {
    goto LABEL_64;
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v108.__r_.__value_.__l.__size_)
    {
      goto LABEL_64;
    }

    v37 = v108.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v108.__r_.__value_.__s + 23))
    {
      goto LABEL_64;
    }

    v37 = &v108;
  }

  v100 = xpc_string_create(v37);
  if (!v100)
  {
    v100 = xpc_null_create();
  }

  v102 = v112;
  v103 = "kMlsOpaqueToken";
  xpc::dict::object_proxy::operator=(&v102, &v100, &v101);
  xpc_release(v101);
  v101 = 0;
  xpc_release(v100);
  v100 = 0;
LABEL_64:
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  memset(&v108, 0, sizeof(v108));
  if (SipMessage::headerValueAsString(*a2, "Recv-Info"))
  {
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v108.__r_.__value_.__l.__size_)
      {
        goto LABEL_75;
      }

      v38 = v108.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v108.__r_.__value_.__s + 23))
      {
        goto LABEL_75;
      }

      v38 = &v108;
    }

    v98 = xpc_string_create(v38);
    if (!v98)
    {
      v98 = xpc_null_create();
    }

    v102 = v112;
    v103 = "kMlsRecvInfo";
    xpc::dict::object_proxy::operator=(&v102, &v98, &v99);
    xpc_release(v99);
    v99 = 0;
    xpc_release(v98);
    v98 = 0;
  }

LABEL_75:
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (xpc_dictionary_get_value(v112[0], "kMlsBinaryBlob"))
  {
    v39 = "true";
    if (!v20)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v39 = "true";
    if (xpc_dictionary_get_value(v112[0], "kMlsOpaqueToken"))
    {
      if (!v20)
      {
LABEL_129:
        v49 = (*(*(a1 + 1) + 64))(a1 + 8);
        (*(*(a1 + 1) + 16))(a1 + 8, v49);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "P2P Chat Incoming ", 18);
        *(v49 + 17) = 0;
        v50 = SipMessage::header<SipConversationIdHeader>(*a2);
        if (v50)
        {
          v51 = (v50 + 64);
        }

        else
        {
          v51 = &ims::kEmptyString;
        }

        (*(*v49 + 32))(v49, v51);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " Encrypted=", 11);
        *(v49 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(&v108, v39);
        (*(*v49 + 32))(v49, &v108);
        (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        goto LABEL_147;
      }
    }

    else
    {
      if (!xpc_dictionary_get_value(v112[0], "kMlsRecvInfo"))
      {
        v39 = "false";
      }

      if (!v20)
      {
        goto LABEL_129;
      }
    }
  }

  v96 = xpc_BOOL_create(1);
  if (!v96)
  {
    v96 = xpc_null_create();
  }

  v108.__r_.__value_.__r.__words[0] = v112;
  v108.__r_.__value_.__l.__size_ = "kIsGroupChat";
  xpc::dict::object_proxy::operator=(&v108, &v96, &v97);
  xpc_release(v97);
  v97 = 0;
  xpc_release(v96);
  v96 = 0;
  if ((v36 & 1) == 0)
  {
    v40 = SipMultiPartBody::partWithContentType(v33, &SipRecipientListBody::kContentType);
    if (v40)
    {
      memset(&v108, 0, sizeof(v108));
      SipBodyPart::encodeToString(v40, &v108);
    }
  }

  memset(&v108, 0, sizeof(v108));
  v41 = SipMessage::header<SipSubjectHeader>(*a2);
  v42 = (v41 + 64);
  if (!v41)
  {
    v42 = &ims::kEmptyString;
  }

  if (*(v42 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *v42, *(v42 + 1));
  }

  else
  {
    v108 = *v42;
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v108.__r_.__value_.__l.__size_)
    {
LABEL_100:
      operator delete(v108.__r_.__value_.__l.__data_);
      goto LABEL_101;
    }

    v43 = v108.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v108.__r_.__value_.__s + 23))
    {
      goto LABEL_101;
    }

    v43 = &v108;
  }

  v94 = xpc_string_create(v43);
  if (!v94)
  {
    v94 = xpc_null_create();
  }

  v102 = v112;
  v103 = "kSubject";
  xpc::dict::object_proxy::operator=(&v102, &v94, &v95);
  xpc_release(v95);
  v95 = 0;
  xpc_release(v94);
  v94 = 0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_100;
  }

LABEL_101:
  memset(&v108, 0, sizeof(v108));
  SipMessage::referredBy(&v108, *a2);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v108.__r_.__value_.__l.__size_)
    {
LABEL_109:
      operator delete(v108.__r_.__value_.__l.__data_);
      goto LABEL_110;
    }

    v44 = v108.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v108.__r_.__value_.__s + 23))
    {
      goto LABEL_110;
    }

    v44 = &v108;
  }

  v92 = xpc_string_create(v44);
  if (!v92)
  {
    v92 = xpc_null_create();
  }

  v102 = v112;
  v103 = "kReferredBy";
  xpc::dict::object_proxy::operator=(&v102, &v92, &v93);
  xpc_release(v93);
  v93 = 0;
  xpc_release(v92);
  v92 = 0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_109;
  }

LABEL_110:
  memset(&v108, 0, sizeof(v108));
  v45 = SipMessage::header<SipContactHeader>(*a2);
  if (v45[9] == v45[10])
  {
    v46 = 0;
  }

  else
  {
    v46 = v45[9];
  }

  SipUri::asString(v46 + 8, 2, &v108);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v108.__r_.__value_.__l.__size_)
    {
LABEL_121:
      operator delete(v108.__r_.__value_.__l.__data_);
      goto LABEL_122;
    }

    v47 = v108.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v108.__r_.__value_.__s + 23))
    {
      goto LABEL_122;
    }

    v47 = &v108;
  }

  v90 = xpc_string_create(v47);
  if (!v90)
  {
    v90 = xpc_null_create();
  }

  v102 = v112;
  v103 = "kConferenceFocus";
  xpc::dict::object_proxy::operator=(&v102, &v90, &v91);
  xpc_release(v91);
  v91 = 0;
  xpc_release(v90);
  v90 = 0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_121;
  }

LABEL_122:
  memset(&v108, 0, sizeof(v108));
  if (SipMessage::headerValueAsString(*a2, "Referred-By"))
  {
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v108.__r_.__value_.__l.__size_)
      {
        v48 = v108.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      }
    }

    else if (*(&v108.__r_.__value_.__s + 23))
    {
      v48 = &v108;
LABEL_135:
      v88 = xpc_string_create(v48);
      if (!v88)
      {
        v88 = xpc_null_create();
      }

      v102 = v112;
      v103 = "kRemoteUri";
      xpc::dict::object_proxy::operator=(&v102, &v88, &v89);
      xpc_release(v89);
      v89 = 0;
      xpc_release(v88);
      v88 = 0;
    }
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v49 = (*(*(a1 + 1) + 64))(a1 + 8);
  (*(*(a1 + 1) + 16))(a1 + 8, v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "Group Chat Incoming ", 20);
  *(v49 + 17) = 0;
  v52 = SipMessage::header<SipConversationIdHeader>(*a2);
  if (v52)
  {
    v53 = (v52 + 64);
  }

  else
  {
    v53 = &ims::kEmptyString;
  }

  (*(*v49 + 32))(v49, v53);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " Subject ", 9);
  *(v49 + 17) = 0;
  v54 = SipMessage::header<SipSubjectHeader>(*a2);
  if (v54)
  {
    v55 = (v54 + 64);
  }

  else
  {
    v55 = &ims::kEmptyString;
  }

  (*(*v49 + 32))(v49, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " Encrypted=", 11);
  *(v49 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v108, v39);
  (*(*v49 + 32))(v49, &v108);
  (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_147:
  *(v49 + 17) = 0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_149;
    }

LABEL_162:
    v59 = (*(**a2 + 120))();
    v60 = *(v59 + 23);
    v61 = v60;
    if ((v60 & 0x80u) != 0)
    {
      v60 = *(v59 + 8);
    }

    if (v60 == 6 && (v61 >= 0 ? (v62 = v59) : (v62 = *v59), (v63 = *v62, v64 = *(v62 + 4), v63 == *"INVITE") ? (v65 = v64 == *"TE") : (v65 = 0), v65))
    {
      v77 = SipOfferAnswer::answerPending(*(*(a1 + 27) + 16), *(*(a1 + 27) + 24));
      v79 = a1 + 8;
      v78 = *(a1 + 1);
      if (v77)
      {
        v80 = (*(v78 + 32))(a1 + 8);
        (*(*v79 + 16))(a1 + 8, v80);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v80 + 8), "received INVITE w/ no SDP while in state: ", 42);
        *(v80 + 17) = 0;
        SipOfferAnswer::debugInfo(&v108, a1);
      }

      v81 = (*(v78 + 64))(a1 + 8);
      (*(*v79 + 16))(a1 + 8, v81);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v81 + 8), "received INVITE w/ no SDP. Starting new offer/answer exchange so we can send an offer", 85);
      *(v81 + 17) = 0;
      v82 = (v81 + 17);
      (*(*v81 + 64))(v81, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      v66 = (*(**a2 + 120))();
      v67 = *(v66 + 23);
      v68 = v67;
      if ((v67 & 0x80u) != 0)
      {
        v67 = *(v66 + 8);
      }

      if (v67 != 6)
      {
        goto LABEL_191;
      }

      v69 = v68 >= 0 ? v66 : *v66;
      v70 = *v69;
      v71 = *(v69 + 4);
      v72 = v70 == *"UPDATE" && v71 == *"TE";
      if (!v72 || !ImsPrefs::AllowRTTControlInSipUpdate(v84))
      {
        goto LABEL_191;
      }

      v73 = SipOfferAnswer::answerPending(*(*(a1 + 27) + 16), *(*(a1 + 27) + 24));
      v75 = a1 + 8;
      v74 = *(a1 + 1);
      if (v73)
      {
        v76 = (*(v74 + 32))(a1 + 8);
        (*(*v75 + 16))(a1 + 8, v76);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "received UPDATE w/ no SDP while in state: ", 42);
        *(v76 + 17) = 0;
        SipOfferAnswer::debugInfo(&v108, a1);
      }

      v83 = (*(v74 + 64))(a1 + 8);
      (*(*v75 + 16))(a1 + 8, v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), "received UPDATE w/ no SDP. Starting new offer/answer exchange so we can send an offer", 85);
      *(v83 + 17) = 0;
      v82 = (v83 + 17);
      (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *v82 = 0;
    SipOfferAnswer::startNewExchange(a1);
LABEL_191:
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    goto LABEL_192;
  }

LABEL_148:
  if (!v12)
  {
    goto LABEL_162;
  }

LABEL_149:
  v87[0] = v12;
  v87[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**a2 + 40))(&v108);
  v56 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v56)
  {
    v57 = v56[15];
  }

  else
  {
    v57 = 0;
  }

  v58 = v112[0];
  v86 = v112[0];
  if (v112[0])
  {
    xpc_retain(v112[0]);
  }

  else
  {
    v58 = xpc_null_create();
    v86 = v58;
  }

  SipOfferAnswer::updateWithIncomingSdp(a4, a1, v87, &v108, v85, v57, &v86);
  xpc_release(v58);
  v86 = 0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_192:
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  xpc_release(v112[0]);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}