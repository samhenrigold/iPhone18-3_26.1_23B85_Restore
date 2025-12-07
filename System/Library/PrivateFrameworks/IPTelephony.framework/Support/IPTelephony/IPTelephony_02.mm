void sub_1E4C64594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::handleTransactionError(void *a1, const ImsResult *a2, uint64_t a3)
{
  v5 = *a3;
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[52];
  if (v8 && v5 == *(v8 + 88))
  {
    memset(&v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    ImsResult::ImsResult(v9, a2);
    std::string::operator=(&v10, (a1[52] + 48));
    SipLazuliManager::generateError(a1, *(a1[52] + 16), a1[52] + 24, v9);
    ImsResult::~ImsResult(v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4C64854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::transactionTerminated(SipLazuliManager *a1, uint64_t a2)
{
  v3 = *a2;
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 52);
  if (v6 && v3 == *(v6 + 88))
  {
    v7 = *(a1 + 53);
    *(a1 + 52) = 0;
    *(a1 + 53) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    SipLazuliManager::processSendQueue(a1);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4C64960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsUuid::~ImsUuid(void **this)
{
  *this = &unk_1F5EBEE78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBEE78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

const void **SipMessage::header<SipAcceptContactHeader>(SipMessage *a1, uint64_t a2)
{
  result = SipMessage::headerWithName(a1, "Accept-Contact", a2);
  if (result)
  {
  }

  return result;
}

void SipParameterMap::~SipParameterMap(SipParameterMap *this)
{
  *this = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1E69235B0);
}

void SipLazuliManager::sendMsrp(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = (a1 + 32);
  v13 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v12 + 16))(v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SipLazuliManager::sendMsrp", 26);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v12 + 91, a2);
  if (v14)
  {
    v16 = v14[5];
    v15 = v14[6];
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "");
      MessageSession::sendMessageBlob(v16, a3, a4, a5, v6, v19);
    }
  }

  v17 = (*(*v12 + 64))(v12);
  (*(*v12 + 16))(v12, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "conversation not found, queueing: ", 34);
  *(v17 + 17) = 0;
  (*(*v17 + 32))(v17, a2);
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  v20.__r_.__value_.__r.__words[0] = a2;
  v18 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 296), a2, &v20);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
  }

  else
  {
    v20 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a4, *(a4 + 8));
  }

  else
  {
    v21 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  v23 = v6;
  std::list<SipLazuliManager::OutgoingMsrp>::emplace_back<SipLazuliManager::OutgoingMsrp>(v18 + 7, &v20);
}

void sub_1E4C64DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLazuliManager::send(SipLazuliManager *this, const std::string *a2, const SipUri *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(this + 29);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(this + 28);
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          v18 = *(this + 27);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 22) + 16))(__p, this + 176);
            v50 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v50;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          v11 = 0;
          goto LABEL_113;
        }

        v11 = *(this + 65);
        *(this + 65) = v11 + 1;
        memset(buf, 0, sizeof(buf));
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(buf, a2[6].__r_.__value_.__l.__data_, a2[6].__r_.__value_.__l.__size_, a2[6].__r_.__value_.__l.__size_ - a2[6].__r_.__value_.__r.__words[0]);
        v54 = v10;
        v12 = &a2[9].__r_.__value_.__s.__data_[8];
        if (a2[10].__r_.__value_.__s.__data_[7] < 0)
        {
          v13 = 0;
          v19 = a2[9].__r_.__value_.__r.__words[2];
          if (v19 <= 9)
          {
            if (v19)
            {
              if (v19 != 5)
              {
                goto LABEL_61;
              }

              if (**v12 != *"kImdn" || *(*v12 + 4) != str_37_5[4])
              {
                goto LABEL_60;
              }

LABEL_31:
              v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, &a2[3].__r_.__value_.__l.__data_);
              if (v21)
              {
                v23 = v21[5];
                v22 = v21[6];
                if (v22)
                {
                  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
                  v13 = v23 != 0;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                  goto LABEL_61;
                }
              }

              else
              {
                v23 = 0;
              }

              v13 = v23 != 0;
LABEL_61:
              if (SHIBYTE(a2[7].__r_.__value_.__r.__words[2]) < 0 && a2[7].__r_.__value_.__l.__size_ == 34 && !memcmp(a2[7].__r_.__value_.__l.__data_, "application/vnd.gsma.rcsrevoke+xml", 0x22uLL))
              {
                v31 = (*(*(this + 4) + 64))(this + 32);
                (*(*(this + 4) + 16))(this + 32, v31);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Using pager for Revoke message", 30);
                *(v31 + 17) = 0;
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v13 = 0;
                *(v31 + 17) = 0;
              }

              v32 = this + 32;
              v33 = (*(*(this + 4) + 64))(this + 32);
              (*(*(this + 4) + 16))(this + 32, v33);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "send trx ", 9);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, a2 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " recipient ", 11);
              *(v33 + 17) = 0;
              SipUri::asString(a3, 2, __p);
              (*(*v33 + 32))(v33, __p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " conv ", 6);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, a2 + 3);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " original length ", 17);
              *(v33 + 17) = 0;
              MEMORY[0x1E69233B0](*(v33 + 8), a2[9].__r_.__value_.__r.__words[0]);
              *(v33 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " length ", 8);
              *(v33 + 17) = 0;
              if ((buf[23] & 0x80u) == 0)
              {
                v34 = buf[23];
              }

              else
              {
                v34 = *&buf[8];
              }

              MEMORY[0x1E6923370](*(v33 + 8), v34);
              *(v33 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " type ", 6);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, &a2[9].__r_.__value_.__l.__size_);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " session ", 9);
              *(v33 + 17) = 0;
              if (v13)
              {
                v35 = "yes";
              }

              else
              {
                v35 = "no";
              }

              if (v13)
              {
                v36 = 3;
              }

              else
              {
                v36 = 2;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), v35, v36);
              *(v33 + 17) = 0;
              (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v33 + 17) = 0;
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (*(this + 500) == 1)
              {
                IPTelephonyManager::getCallManager(__p);
                v37 = __p[0].__r_.__value_.__r.__words[0];
                v38 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(__p[0].__r_.__value_.__r.__words[0] + 88, &a2[3]);
                v39 = v37 + 96;
                if (__p[0].__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
                }

                if (v39 != v38)
                {
                  v40 = (*(*v32 + 64))(this + 32);
                  (*(*v32 + 16))(this + 32, v40);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "deferring trx ", 14);
                  *(v40 + 17) = 0;
                  (*(*v40 + 32))(v40, a2 + 1);
                  (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v40 + 17) = 0;
                  LazuliSendParams::LazuliSendParams(__p, a2);
                  SipUri::SipUri(v56, a3);
                  v56[408] = v13;
                  v57 = v11;
                  operator new();
                }
              }

              if (v13)
              {
                v41 = *(this + 500) == 1 && a2[9].__r_.__value_.__r.__words[0] > *(this + 124);
                LazuliSendParams::LazuliSendParams(__p, a2);
                v56[0] = v41;
                v44 = *(this + 24);
                if (v44)
                {
                  if (std::__shared_weak_count::lock(v44))
                  {
                    operator new();
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              Body = SipMessageEncodingMap::createBody((v54 + 384), a2 + 7);
              v43 = Body;
              if (!Body)
              {
                v45 = (*(*v32 + 56))(this + 32);
                (*(*v32 + 16))(v32, v45);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "unknown content type ", 21);
                *(v45 + 17) = 0;
                (*(*v45 + 32))(v45, a2 + 7);
                (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v11 = 0;
                *(v45 + 17) = 0;
                goto LABEL_111;
              }

              if ((*(*Body + 88))(Body, buf, v54 + 384))
              {
                SipLazuliManager::sendPager(this, a3, v43, a2, v11);
                goto LABEL_111;
              }

LABEL_110:
              v11 = 0;
LABEL_111:
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

LABEL_113:
              if (v9)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              }

LABEL_115:
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              return v11;
            }

LABEL_54:
            v13 = a2[9].__r_.__value_.__r.__words[0] > *(this + 124);
            goto LABEL_61;
          }

          if (v19 != 10)
          {
            if (v19 != 12)
            {
              goto LABEL_61;
            }

            if (**v12 != *"kMessageText" || *(*v12 + 8) != *"Text")
            {
              goto LABEL_60;
            }

            goto LABEL_54;
          }

          v24 = *v12;
        }

        else
        {
          v13 = 0;
          v14 = a2[10].__r_.__value_.__s.__data_[7];
          if (v14 <= 9)
          {
            if (a2[10].__r_.__value_.__s.__data_[7])
            {
              if (v14 != 5)
              {
                goto LABEL_61;
              }

              if (*v12 != *"kImdn" || a2[9].__r_.__value_.__s.__data_[12] != str_37_5[4])
              {
                goto LABEL_60;
              }

              goto LABEL_31;
            }

            goto LABEL_54;
          }

          v24 = &a2[9].__r_.__value_.__s.__data_[8];
          if (v14 != 10)
          {
            if (v14 != 12)
            {
              goto LABEL_61;
            }

            if (*v12 != *"kMessageText" || LODWORD(a2[9].__r_.__value_.__r.__words[2]) != *"Text")
            {
              goto LABEL_60;
            }

            goto LABEL_54;
          }
        }

        v28 = *v24;
        v29 = *(v24 + 4);
        if (v28 != *"kComposing" || v29 != *"ng")
        {
LABEL_60:
          v13 = 0;
          goto LABEL_61;
        }

        v46 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, &a2[3].__r_.__value_.__l.__data_);
        if (v46)
        {
          v47 = v46[5];
          v48 = v46[6];
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v47)
          {
            v49 = 1;
LABEL_106:
            if (v48)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v48);
            }

            if (!v49)
            {
              goto LABEL_110;
            }

            v13 = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v48 = 0;
        }

        v51 = (*(*(this + 4) + 64))(this + 32);
        (*(*(this + 4) + 16))(this + 32, v51);
        v52 = ImsOutStream::operator<<(v51, "Dropping composing imdn ");
        (*(*v52 + 32))(v52, a2 + 1);
        v53 = ImsOutStream::operator<<(v52, " on ");
        (*(*v53 + 32))(v53, a2 + 3);
        (*(*v53 + 64))(v53, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v49 = 0;
        v53[17] = 0;
        goto LABEL_106;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *(this + 27);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 22) + 16))(__p, this + 176);
    v26 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v11 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_115;
  }

  return result;
}

void sub_1E4C65AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  LazuliSendParams::~LazuliSendParams(v17 + 2);
  operator delete(v17);
  SipUri::~SipUri((v18 + 392));
  LazuliSendParams::~LazuliSendParams(&__p);
  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipLazuliManager::addGroupParticipants(SipLazuliManager *this, const void **a2, const SipUri *a3)
{
  v5 = (a2 + 9);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v14[0] = 0;
  v14[1] = 0;
  v9 = a2[44];
  if (v9 != a2[43])
  {
    v13[0] = a2[43];
    v12 = v9;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(__p, v13, &v12);
  }

  if (!v8)
  {
    v10 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "conversation for refer not found, queueing: ", 44);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, v5);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    __p[0] = v5;
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 40, v5, __p);
    LODWORD(__p[0]) = 0;
    std::__list_imp<SipLazuliManager::DeferredGroupModification>::__create_node[abi:ne200100]<std::string const&,std::string const&,std::vector<std::string> const&,SipLazuliManager::DeferredGroupModification::Action,std::shared_ptr<std::vector<unsigned char>> &>((a2 + 3), (a2 + 6), a2 + 24, __p, v14);
  }

  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E4C66270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  v76 = v73 + 192;
  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v74 - 120) = v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v74 - 120));
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SipUri>::push_back[abi:ne200100](uint64_t a1, const SipUri *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SipUri>::__emplace_back_slow_path<SipUri const&>(a1, a2);
  }

  else
  {
    SipUri::SipUri(*(a1 + 8), a2);
    result = v3 + 408;
    *(a1 + 8) = v3 + 408;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SipUri>::__emplace_back_slow_path<SipUri>(a1, a2);
  }

  else
  {
    SipUri::SipUri(*(a1 + 8), a2);
    result = v3 + 408;
    *(a1 + 8) = v3 + 408;
  }

  *(a1 + 8) = result;
  return result;
}

void SipLazuliManager::removeGroupParticipants(SipLazuliManager *this, const void **a2, const SipUri *a3)
{
  v5 = (a2 + 9);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v14[0] = 0;
  v14[1] = 0;
  v9 = a2[44];
  if (v9 != a2[43])
  {
    v13[0] = a2[43];
    v12 = v9;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(__p, v13, &v12);
  }

  if (!v8)
  {
    v10 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "conversation for refer not found, queueing: ", 44);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, v5);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    __p[0] = v5;
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 40, v5, __p);
    LODWORD(__p[0]) = 1;
    std::__list_imp<SipLazuliManager::DeferredGroupModification>::__create_node[abi:ne200100]<std::string const&,std::string const&,std::vector<std::string> const&,SipLazuliManager::DeferredGroupModification::Action,std::shared_ptr<std::vector<unsigned char>> &>((a2 + 3), (a2 + 6), a2 + 24, __p, v14);
  }

  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E4C66B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  v76 = v73 + 192;
  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v74 - 120) = v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v74 - 120));
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  _Unwind_Resume(a1);
}

uint64_t SipLazuliManager::changeGroupInfo(SipLazuliManager *this, const void **a2, const SipUri *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v18, a2[18], a2[19], a2[19] - a2[18]);
  if (v8 && MessageSession::isGroupMgmtViaMSRP(v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = HIBYTE(v20);
    if (v20 < 0)
    {
      v10 = v19;
    }

    v9 = v10 > *(this + 124);
  }

  v11 = (*(*(this + 4) + 64))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "change group info trx ", 22);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a2 + 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " recipient ", 11);
  *(v11 + 17) = 0;
  SipUri::asString(a3, 2, &__p);
  (*(*v11 + 32))(v11, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " conv ", 6);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a2 + 9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " len ", 5);
  *(v11 + 17) = 0;
  if (v20 >= 0)
  {
    v12 = HIBYTE(v20);
  }

  else
  {
    v12 = v19;
  }

  MEMORY[0x1E6923370](*(v11 + 8), v12);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v17 < 0)
  {
    operator delete(__p);
    if (v9)
    {
LABEL_16:
      IPTelephonyManager::getCallManager(&__p);
      IMSCallManager::initializeMOLazuliSession(__p, a2, 0, 0);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v13 = *(this + 65);
      *(this + 65) = v13 + 1;
      SipLazuliManager::sendMsrp(this, a2 + 9, &v18, (a2 + 21), (a2 + 3), v13);
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return 0;
}

void sub_1E4C66FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLazuliManager::reportSpam(SipLazuliManager *this, const LazuliSpamReportParams *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(this + 29);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        v8 = v6[31];
        v7 = v6[32];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v7;
        if (v8)
        {
          v9 = this + 32;
          v10 = (*(*(this + 4) + 64))(this + 32);
          (*(*(this + 4) + 16))(this + 32, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "SipLazuliManager::reportSpam for ", 33);
          *(v10 + 17) = 0;
          if (*(a2 + 504))
          {
            v11 = "Chatbot";
          }

          else
          {
            v11 = "Contact";
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, 7);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          v12 = (*(*v9 + 64))(this + 32);
          (*(*v9 + 16))(this + 32, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "send trx: ", 10);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", call-id: ", 11);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 72);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", recipient: ", 13);
          *(v12 + 17) = 0;
          SipUri::asString(a2 + 512, 2, __p);
          (*(*v12 + 32))(v12, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", spam-reporting-uri: ", 22);
          *(v12 + 17) = 0;
          SipUri::asString(a2 + 96, 2, buf);
          (*(*v12 + 32))(v12, buf);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", conv: ", 8);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 48);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", content len: ", 15);
          *(v12 + 17) = 0;
          if (*(a2 + 951) >= 0)
          {
            v13 = *(a2 + 951);
          }

          else
          {
            v13 = *(a2 + 117);
          }

          MEMORY[0x1E6923370](*(v12 + 8), v13);
          *(v12 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", spam type: ", 13);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 952);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", free text len: ", 17);
          *(v12 + 17) = 0;
          if (*(a2 + 999) >= 0)
          {
            v14 = *(a2 + 999);
          }

          else
          {
            v14 = *(a2 + 123);
          }

          MEMORY[0x1E6923370](*(v12 + 8), v14);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          if (v28 < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          v24[1] = 0;
          v24[0] = 0;
          v15 = v6[31];
          ims::AccessNetwork::isWifi((v6 + 429));
          SipMessageEncodingMap::createRequestFromTemplate(v15 + 384, v24);
        }

        v18 = *(this + 27);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          (*(*(this + 22) + 16))(__p, this + 176);
          v20 = v23 >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v26 = 2081;
          v27 = v20;
          _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *(this + 27);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 22) + 16))(__p, this + 176);
    v19 = v23 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v26 = 2081;
    v27 = v19;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
  if (v5)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_1E4C68390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  *(v36 - 144) = a11;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v36 - 136, *(v36 - 128));
  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (STACK[0x230])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x230]);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

void SipLazuliManager::sendInfoRequest(SipLazuliManager *this, const LazuliSendParams *a2)
{
  memset(v43, 0, 408);
  SipUri::SipUri(v43);
  SipUri::fromString(v43, a2 + 6);
  if (SipUri::isValidUri(v43))
  {
    goto LABEL_40;
  }

  v4 = (*(*(this + 4) + 56))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Invalid uri ", 12);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " for INFO request trx ", 22);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " conv ", 6);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 72);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *(this + 29);
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = v6;
  v8 = *(this + 28);
  if (v8)
  {
    v41 = 0;
    v42 = 0;
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v29 = *(v8 + 4432);
    }

    IMSClientManager::lazuliDelegateForStack(&v29, &v41);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (!v41)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v9;
    if (v9)
    {
      v40 = v9;
    }

    else
    {
      v10 = xpc_null_create();
      v40 = v10;
      if (!v10)
      {
        v11 = xpc_null_create();
        v10 = 0;
        goto LABEL_18;
      }
    }

    if (MEMORY[0x1E6924740](v10) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v10);
LABEL_19:
      xpc_release(v10);
      v38 = xpc_BOOL_create(0);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v29, &v38, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v38);
      v38 = 0;
      if (*(a2 + 47) >= 0)
      {
        v12 = a2 + 24;
      }

      else
      {
        v12 = *(a2 + 3);
      }

      v36 = xpc_string_create(v12);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v29, &v36, &v37);
      xpc_release(v37);
      v37 = 0;
      xpc_release(v36);
      v36 = 0;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v29.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v29.__r_.__value_.__r.__words[2]) = 1073741825;
      v34 = xpc_int64_create(1073741825);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      v28[0] = &v40;
      v28[1] = "kErrorCode";
      xpc::dict::object_proxy::operator=(v28, &v34, &v35);
      xpc_release(v35);
      v35 = 0;
      xpc_release(v34);
      v34 = 0;
      ImsResult::~ImsResult(&v29);
      if (*(a2 + 71) >= 0)
      {
        v13 = a2 + 48;
      }

      else
      {
        v13 = *(a2 + 6);
      }

      v26 = xpc_string_create(v13);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kRemoteUri";
      xpc::dict::object_proxy::operator=(&v29, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v14 = v41;
      v25 = v40;
      v26 = 0;
      if (v40)
      {
        xpc_retain(v40);
      }

      else
      {
        v25 = xpc_null_create();
      }

      (*(*v14 + 128))(v14, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v40);
LABEL_37:
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      goto LABEL_39;
    }

    v11 = xpc_null_create();
LABEL_18:
    v40 = v11;
    goto LABEL_19;
  }

LABEL_39:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_40:
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (!v15)
  {
    goto LABEL_45;
  }

  v17 = v15[5];
  v16 = v15[6];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
LABEL_45:
    v21 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "conversation for INFO request not found, queueing: ", 51);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a2 + 72);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    v22 = this + 352;
    v23 = *(this + 44);
    if (v23)
    {
      while (1)
      {
        while (1)
        {
          v24 = v23;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 9, v23 + 32) & 0x80) == 0)
          {
            break;
          }

          v23 = *v24;
          v22 = v24;
          if (!*v24)
          {
            goto LABEL_51;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24 + 4, a2 + 72) & 0x80) == 0)
        {
          break;
        }

        v22 = v24 + 8;
        v23 = *(v24 + 1);
        if (!v23)
        {
          goto LABEL_51;
        }
      }

      if (*v22)
      {
        operator new();
      }
    }

LABEL_51:
    operator new();
  }

  v19 = *(this + 4);
  v18 = this + 32;
  v20 = (*(v19 + 64))(v18);
  (*(*v18 + 16))(v18, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "INFO request ", 13);
  *(v20 + 17) = 0;
  (*(v43[0] + 40))(v43, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " to group ", 10);
  *(v20 + 17) = 0;
  (*(*v20 + 32))(v20, a2 + 48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " trx ", 5);
  *(v20 + 17) = 0;
  (*(*v20 + 32))(v20, a2 + 24);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  MessageSession::sendInfoRequest(v17, a2);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  SipUri::~SipUri(v43);
}

void sub_1E4C68FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  SipUri::~SipUri(&a38);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t xpc::array::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void SipLazuliManager::logPrefix(SipLazuliManager *this, ImsOutStream *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipLazuliManager[", 17);
        *(a2 + 17) = 0;
        if (*(v6 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v6 + 4432), *(v6 + 4440));
        }

        else
        {
          __p = *(v6 + 4432);
        }

        (*(*a2 + 32))(a2, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipLazuliManager: ", 18);
  *(a2 + 17) = 0;
  if (v5)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void SipLazuliManager::createMessageSession(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a1 + 32;
  v8 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v7 + 16))(v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SipLazuliManager::createMessageSession for id: ", 47);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  ++*(v7 + 232);
  v9 = *(v7 + 160);
  if (v9)
  {
    v10 = *(v7 + 152);
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v14 = 0;
      v15 = 0;
      v12 = v10;
      v13 = v11;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      std::__shared_weak_count::lock(*(*a4 + 232));
      std::allocate_shared[abi:ne200100]<MessageSession,std::allocator<MessageSession>,std::weak_ptr<SipLazuliManager> &,ClientConfig const&,0>();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4C6A204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, char a53, int a54, __int16 __p, char __p_2, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::createPowerAssertion(uint64_t a1, uint64_t ***a2, int a3)
{
  v6 = *(a1 + 232);
  if (v6 && (v7 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v8 = v7;
    v9 = *(a1 + 224);
    if (v9)
    {
      isWifi = ims::AccessNetwork::isWifi((v9 + 3432));
    }

    else
    {
      isWifi = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    isWifi = 0;
  }

  memset(&__str, 0, sizeof(__str));
  SipLazuliManager::getPowerAssertionTag(&__str, a3, isWifi);
  p_str = &__str;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 840, &__str, &std::piecewise_construct, &p_str, &v15);
  AssertionCounter::initialize(*(v11 + 56), 15.0, !isWifi, v13);
  ImsResult::~ImsResult(v13);
  p_str = a2;
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 864), a2, &std::piecewise_construct, &p_str, &v15);
  std::string::operator=((v12 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C6A534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::releasePowerAssertion(uint64_t a1, char *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 864, a2);
  if (a1 + 872 != v3)
  {
    v4 = v3;
    PowerAssertionLock::deinitialize((a1 + 840), v3 + 56);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 864), v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v4 + 4));

    operator delete(v4);
  }
}

void SipLazuliManager::terminateMessageSession(uint64_t a1, uint64_t a2, uint64_t a3, const ImsResult *a4, int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 800), a2);
    if (v8)
    {
      v9 = v8;
      v10 = (*(*(a1 + 32) + 64))(a1 + 32);
      (*(*(a1 + 32) + 16))(a1 + 32, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Terminating store-and-forward session ", 38);
      *(v10 + 17) = 0;
      (*(*v10 + 32))(v10, a2);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      v11 = v9[5];
      v12 = v9[6];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageSession::terminate(v11, a3);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>((a1 + 800), a2);
      if (v12)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    return;
  }

  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 760), a2);
  if (v14)
  {
    v16 = v14[5];
    v15 = v14[6];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v16 || (v17 = a1 + 32, v18 = (*(*(a1 + 32) + 64))(a1 + 32), (*(*(a1 + 32) + 16))(a1 + 32, v18), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Terminating Normal session ", 27), *(v18 + 17) = 0, (*(*v18 + 32))(v18, a2), (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>), *(v18 + 17) = 0, MessageSession::terminate(v16, a3), std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>((a1 + 760), a2), *(a1 + 500) != 1) || !*(a1 + 384))
    {
      v29 = 1;
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v19 = *(a1 + 232);
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      v21 = v20;
      if (v20)
      {
        v22 = *(a1 + 224);
        if (v22)
        {
          v24 = *(v22 + 248);
          v23 = *(v22 + 256);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = v23;
          v50 = v20;
          if (v24)
          {
            v25 = (*(*v17 + 64))(a1 + 32);
            (*(*v17 + 16))(a1 + 32, v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Processing ", 11);
            *(v25 + 17) = 0;
            MEMORY[0x1E6923370](*(v25 + 8), *(a1 + 384));
            *(v25 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " queued messages after Large Message Mode transfer", 50);
            *(v25 + 17) = 0;
            (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v25 + 17) = 0;
            while (*(a1 + 384))
            {
              v26 = *(a1 + 376);
              if (*(v26 + 816))
              {
                v45 = *(a1 + 192);
                if (v45)
                {
                  v46 = *(a1 + 184);
                  v47 = std::__shared_weak_count::lock(v45);
                  if (v47)
                  {
                    __p[0] = v46;
                    __p[1] = v47;
                    atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                    LazuliSendParams::LazuliSendParams(&__p[2], (v26 + 16));
                    v48 = *(a1 + 192);
                    if (v48 && std::__shared_weak_count::lock(v48))
                    {
                      operator new();
                    }

                    std::__throw_bad_weak_ptr[abi:ne200100]();
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              Body = SipMessageEncodingMap::createBody((v24 + 384), (v26 + 184));
              if (Body)
              {
                memset(__p, 0, sizeof(__p));
                std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(__p, *(v26 + 160), *(v26 + 168), *(v26 + 168) - *(v26 + 160));
                if ((*(*Body + 88))(Body, __p, v24 + 384))
                {
                  SipLazuliManager::sendPager(a1, (v26 + 408), Body, (v26 + 16), *(v26 + 820));
                }

                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v28 = *(v26 + 820);
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              __p[0] = &unk_1F5EBDEF8;
              __p[1] = &_bambiDomain;
              LODWORD(__p[2]) = 1073741828;
              SipLazuliManager::generateError(a1, v28, v26 + 88, __p);
              ImsResult::~ImsResult(__p);
              std::list<SipLazuliManager::DeferredMessage>::pop_front(a1 + 368);
            }
          }

          else
          {
            v43 = *(a1 + 216);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 176) + 16))(__p);
              v44 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
              LODWORD(v58.__r_.__value_.__l.__data_) = 141558275;
              *(v58.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(v58.__r_.__value_.__r.__words[1]) = 2081;
              *(&v58.__r_.__value_.__r.__words[1] + 6) = v44;
              _os_log_error_impl(&dword_1E4C3F000, v43, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &v58, 0x16u);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          v21 = v50;
          goto LABEL_85;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v40 = *(a1 + 216);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 176) + 16))(__p);
      v41 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(v58.__r_.__value_.__l.__data_) = 141558275;
      *(v58.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(v58.__r_.__value_.__r.__words[1]) = 2081;
      *(&v58.__r_.__value_.__r.__words[1] + 6) = v41;
      _os_log_error_impl(&dword_1E4C3F000, v40, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v58, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_85:
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v29 = 0;
    if (!v15)
    {
LABEL_32:
      if (!v29)
      {
        return;
      }

      goto LABEL_33;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    goto LABEL_32;
  }

LABEL_33:
  std::__optional_copy_base<ImsResult,false>::__optional_copy_base[abi:ne200100](v51, a4);
  v30 = *(a1 + 232);
  if (!v30)
  {
    v31 = 0;
LABEL_51:
    v36 = *(a1 + 216);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 176) + 16))(__p, a1 + 176);
      v42 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(v58.__r_.__value_.__l.__data_) = 141558275;
      *(v58.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(v58.__r_.__value_.__r.__words[1]) = 2081;
      *(&v58.__r_.__value_.__r.__words[1] + 6) = v42;
      _os_log_error_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v58, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_52;
  }

  v31 = std::__shared_weak_count::lock(v30);
  if (!v31 || !*(a1 + 224))
  {
    goto LABEL_51;
  }

  v32 = *(a1 + 216);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    (*(*(a1 + 176) + 16))(&v58);
    v33 = (v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v58 : v58.__r_.__value_.__r.__words[0];
    v34 = *(a2 + 23) >= 0 ? a2 : *a2;
    LODWORD(__p[0]) = 141558531;
    *(__p + 4) = 1752392040;
    WORD2(__p[1]) = 2081;
    *(&__p[1] + 6) = v33;
    HIWORD(__p[2]) = 2080;
    *&v54 = v34;
    _os_log_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sCleaning up queues for conv %s", __p, 0x20u);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }
  }

  v35 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 296, a2);
  if (a1 + 304 == v35 || !*(v35 + 72))
  {
    v38 = *(a1 + 32);
    v37 = a1 + 32;
    v39 = (*(v38 + 64))(v37);
    (*(*v37 + 16))(v37, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "No pending messages", 19);
    *(v39 + 17) = 0;
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v39 + 17) = 0;
    goto LABEL_55;
  }

  v52[0] = v52;
  v52[1] = v52;
  v52[2] = 0;
  if (*(v35 + 64) != v35 + 56)
  {
    operator new();
  }

  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__erase_unique<std::string>((a1 + 296), a2);
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__erase_unique<std::string>((a1 + 320), a2);
  std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::__erase_unique<std::string>((a1 + 344), a2);
  std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear(v52);
LABEL_52:
  if (v31)
  {
LABEL_55:
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v51[88] == 1)
  {
    ImsResult::~ImsResult(v51);
  }
}

void sub_1E4C6B708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, xpc_object_t object, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, std::__shared_weak_count *a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::handleOptionsReceived(void *a1, SipMessage **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a1[29];
  if (!v6)
  {
    v11 = 0;
LABEL_61:
    v36 = a1[27];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      (*(a1[22] + 16))(__p, a1 + 22);
      v37 = (SBYTE7(v48[0]) & 0x80u) == 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v37;
      _os_log_error_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (SBYTE7(v48[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_62:
    if (!v11)
    {
      return;
    }

    goto LABEL_63;
  }

  v8 = a4;
  v9 = a3;
  v11 = std::__shared_weak_count::lock(v6);
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = a1[28];
  if (!v12)
  {
    goto LABEL_61;
  }

  v13 = a1[31];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      if (!a1[30])
      {
LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        goto LABEL_62;
      }

      v42 = a1[30];
      v43 = v14;
      memset(&v50, 0, sizeof(v50));
      SipMessage::transactionId(&v50, *a2);
      memset(v49, 0, sizeof(v49));
      SipMessage::assertedIdentityList(v49, *a2);
      v15 = SipMessage::header<SipContactHeader>(*a2);
      if (!v15 || (v16 = v15[9], v16 == v15[10]))
      {
        v17 = a1 + 4;
      }

      else
      {
        v17 = a1 + 4;
        if (v16)
        {
          v18 = (*(*v17 + 64))(a1 + 4);
          (*(*v17 + 16))(a1 + 4, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Processing options exchange: txn-id=", 36);
          *(v18 + 17) = 0;
          (*(*v18 + 32))(v18, &v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " for ", 5);
          *(v18 + 17) = 0;
          SipUri::asString(a5, 2, __p);
          (*(*v18 + 32))(v18, __p);
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v18 + 17) = 0;
          if (SBYTE7(v48[0]) < 0)
          {
            operator delete(__p[0]);
          }

          SipLazuliManager::logSipOptionsEvent(a1, v9, v16, 0, v8);
          HIDWORD(v41) = *(v16 + 456);
          memset(buf, 0, sizeof(buf));
          memset(v46, 0, sizeof(v46));
          v19 = (*(*v17 + 64))(a1 + 4);
          (*(*v17 + 16))(a1 + 4, v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Supported options: size=", 24);
          *(v19 + 17) = 0;
          MEMORY[0x1E6923370](*(v19 + 8), *(v16 + 440));
          *(v19 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " {", 2);
          *(v19 + 17) = 0;
          (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v19 + 17) = 0;
          v20 = *(v16 + 424);
          if (v20 != (v16 + 432))
          {
            while (1)
            {
              memset(v48, 0, 32);
              *__p = 0u;
              std::pair<std::string const,std::string>::pair[abi:ne200100](__p, v20 + 2);
              v21 = (*(*v17 + 64))(v17);
              (*(*v17 + 16))(v17, v21);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "  ", 2);
              *(v21 + 17) = 0;
              (*(*v21 + 32))(v21, __p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " = ", 3);
              *(v21 + 17) = 0;
              (*(*v21 + 32))(v21, v48 + 8);
              (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v21 + 17) = 0;
              if (SBYTE7(v48[0]) < 0)
              {
                break;
              }

              if (SBYTE7(v48[0]) == 19)
              {
                v22 = __p;
                goto LABEL_18;
              }

LABEL_44:
              if (SHIBYTE(v48[1]) < 0)
              {
                operator delete(*(&v48[0] + 1));
              }

              if (SBYTE7(v48[0]) < 0)
              {
                operator delete(__p[0]);
              }

              v32 = *(v20 + 1);
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
                  v33 = *(v20 + 2);
                  v27 = *v33 == v20;
                  v20 = v33;
                }

                while (!v27);
              }

              v20 = v33;
              if (v33 == (v16 + 432))
              {
                goto LABEL_54;
              }
            }

            v23 = __p[1];
            if (__p[1] == 19)
            {
              v22 = __p[0];
LABEL_18:
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 11);
              v27 = v24 == 0x2E616D73672E672BLL && v25 == 0x6D6970632E736372;
              if (v27 && v26 == 0x7478656D6970632ELL)
              {
                v31 = buf;
LABEL_38:
                if (v31[1].__r_.__value_.__s.__data_[0] == 1)
                {
                  std::string::operator=(v31, (v48 + 8));
                }

                else
                {
                  if (SHIBYTE(v48[1]) < 0)
                  {
                    std::string::__init_copy_ctor_external(v31, *(&v48[0] + 1), *&v48[1]);
                  }

                  else
                  {
                    *&v31->__r_.__value_.__l.__data_ = *(v48 + 8);
                    v31->__r_.__value_.__r.__words[2] = *(&v48[1] + 1);
                  }

                  v31[1].__r_.__value_.__s.__data_[0] = 1;
                }

                goto LABEL_44;
              }

              v23 = __p[1];
            }

            if ((SBYTE7(v48[0]) & 0x80000000) == 0 || v23 != 23)
            {
              goto LABEL_44;
            }

            v29 = *__p[0] == 0x2E616D73672E672BLL && *(__p[0] + 1) == 0x2E736C6D2E736372;
            if (!v29 || *(__p[0] + 15) != 0x73646B2D736C6D2ELL)
            {
              goto LABEL_44;
            }

            v31 = v46;
            goto LABEL_38;
          }

LABEL_54:
          v34 = (*(*v17 + 64))(v17);
          (*(*v17 + 16))(v17, v34);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "}", 1);
          *(v34 + 17) = 0;
          (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v34 + 17) = 0;
          v35 = (*(*v17 + 64))(v17);
          (*(*v17 + 16))(v17, v35);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "Remote serviceMask=", 19);
          *(v35 + 17) = 0;
          std::string::basic_string[abi:ne200100]<0>(&v44, ",");
          BambiServices::namesForServiceMask(SHIDWORD(v41), __p);
          (*(*v35 + 32))(v35, __p);
          (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v35 + 17) = 0;
          if (SBYTE7(v48[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          if (*(v12 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v12 + 4432), *(v12 + 4440));
          }

          else
          {
            *__p = *(v12 + 4432);
            *&v48[0] = *(v12 + 4448);
          }

          LODWORD(v41) = v9;
          (*(*v42 + 40))(v42, __p, a5, v49, &v50, HIDWORD(v41), buf, v46, v41);
          if (SBYTE7(v48[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (LOBYTE(v46[3]) == 1 && SHIBYTE(v46[2]) < 0)
          {
            operator delete(v46[0]);
          }

          if (buf[24] != 1)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }
      }

      v38 = (*(*v17 + 56))(v17);
      (*(*v17 + 16))(v17, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Contact header is missing.  Propagating error using asserted ID ", 64);
      *(v38 + 17) = 0;
      v39 = SipMessage::assertedIdentity(*a2, 1);
      (*(*v39 + 40))(v39, v38);
      (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v38 + 17) = 0;
      if (*(v12 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(buf, *(v12 + 4432), *(v12 + 4440));
      }

      else
      {
        *buf = *(v12 + 4432);
        *&buf[16] = *(v12 + 4448);
      }

      *(&v48[2] + 8) = 0u;
      *(&v48[3] + 8) = 0u;
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      LODWORD(v48[0]) = 0;
      memset(v48 + 8, 0, 32);
      v40 = SipMessage::assertedIdentity(*a2, 1);
      (*(*v42 + 48))(v42, buf, __p, &v50, v40, v49);
      ImsResult::~ImsResult(__p);
LABEL_75:
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_77:
      __p[0] = v49;
      std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](__p);
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      v14 = v43;
      goto LABEL_80;
    }
  }

LABEL_63:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

void sub_1E4C6C4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 120) == 1 && *(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  a25 = &a40;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (*(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::logSipOptionsEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 224);
      if (v13)
      {
        v89 = 0u;
        v90 = 0u;
        v91 = 0;
        v87 = 0u;
        *v88 = 0u;
        HIDWORD(v89) = a2;
        LODWORD(v90) = a5;
        BYTE4(v90) = a2 == 0;
        BYTE7(v90) = *(v13 + 2849);
        HIDWORD(v90) = a4;
        LOBYTE(v91) = BYTE4(a4);
        BYTE8(v90) = *(v13 + 240);
        if (a2 && a2 != 200)
        {
          pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v82 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global();
          }

          v83 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          (*(**(v82 + 184) + 216))(*(v82 + 184), &v87);
        }

        else
        {
          if (a3)
          {
            v14 = *(a3 + 424);
            if (v14 != (a3 + 432))
            {
              while (1)
              {
                memset(v86, 0, sizeof(v86));
                std::pair<std::string const,std::string>::pair[abi:ne200100](v86, v14 + 2);
                if (SHIBYTE(v86[0].__r_.__value_.__r.__words[2]) < 0 && v86[0].__r_.__value_.__l.__size_ == 27)
                {
                  v15 = *v86[0].__r_.__value_.__l.__data_ == 0x2E616D73672E672BLL && *(v86[0].__r_.__value_.__r.__words[0] + 8) == 0x2E6D70632E736372;
                  if (v15 && *(v86[0].__r_.__value_.__r.__words[0] + 16) == 0x616C2D7265676170 && *(v86[0].__r_.__value_.__r.__words[0] + 19) == 0x656772616C2D7265)
                  {
                    BYTE3(v87) = 1;
                  }

                  goto LABEL_199;
                }

                if ((*(&v86[0].__r_.__value_.__s + 23) & 0x80) == 0)
                {
                  break;
                }

                if (v86[0].__r_.__value_.__l.__size_ <= 18)
                {
                  if (v86[0].__r_.__value_.__l.__size_ != 16)
                  {
                    if (v86[0].__r_.__value_.__l.__size_ != 17)
                    {
                      goto LABEL_199;
                    }

                    v18 = v86[0].__r_.__value_.__r.__words[0];
                    goto LABEL_46;
                  }

LABEL_100:
                  v35 = v86[0].__r_.__value_.__r.__words[0];
                  if (*v86[0].__r_.__value_.__l.__data_ == 0x2E707067332E672BLL && *(v86[0].__r_.__value_.__r.__words[0] + 8) == 0x6665722D69736369)
                  {
LABEL_109:
                    memset(&v85, 0, sizeof(v85));
                    if (SHIBYTE(v86[1].__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v85, v86[1].__r_.__value_.__l.__data_, v86[1].__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v85 = v86[1];
                    }

                    ims::removePercentEscapes(&v85);
                    v40 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
                    __p = v85.__r_.__value_.__r.__words[0];
                    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v41 = &v85;
                    }

                    else
                    {
                      v41 = v85.__r_.__value_.__r.__words[0];
                    }

                    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v85.__r_.__value_.__l.__size_;
                    }

                    if (size >= 43)
                    {
                      v43 = v41 + size;
                      v44 = size;
                      v45 = v41;
                      do
                      {
                        v46 = memchr(v45, 117, v44 - 42);
                        if (!v46)
                        {
                          break;
                        }

                        v47 = v46;
                        if (!memcmp(v46, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg", 0x2BuLL))
                        {
                          if (v47 != v43 && v47 - v41 != -1)
                          {
                            LOBYTE(v87) = 1;
                          }

                          break;
                        }

                        v45 = (v47 + 1);
                        v44 = v43 - (v47 + 1);
                      }

                      while (v44 >= 43);
                      if (size > 47)
                      {
                        v48 = size;
                        v49 = v41;
                        do
                        {
                          v50 = memchr(v49, 117, v48 - 47);
                          if (!v50)
                          {
                            break;
                          }

                          v51 = v50;
                          if (!memcmp(v50, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.largemsg", 0x30uLL))
                          {
                            if (v51 != v43 && v51 - v41 != -1)
                            {
                              BYTE1(v87) = 1;
                            }

                            break;
                          }

                          v49 = (v51 + 1);
                          v48 = v43 - (v51 + 1);
                        }

                        while (v48 >= 48);
                        v52 = size;
                        v53 = v41;
                        do
                        {
                          v54 = memchr(v53, 117, v52 - 47);
                          if (!v54)
                          {
                            break;
                          }

                          v55 = v54;
                          if (!memcmp(v54, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.deferred", 0x30uLL))
                          {
                            if (v55 != v43 && v55 - v41 != -1)
                            {
                              BYTE2(v87) = 1;
                            }

                            break;
                          }

                          v53 = (v55 + 1);
                          v52 = v43 - (v55 + 1);
                        }

                        while (v52 >= 48);
                      }

                      if (size > 46)
                      {
                        v56 = size;
                        v57 = v41;
                        do
                        {
                          v58 = memchr(v57, 117, v56 - 46);
                          if (!v58)
                          {
                            break;
                          }

                          v59 = v58;
                          if (!memcmp(v58, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session", 0x2FuLL))
                          {
                            if (v59 != v43 && v59 - v41 != -1)
                            {
                              BYTE4(v87) = 1;
                            }

                            break;
                          }

                          v57 = (v59 + 1);
                          v56 = v43 - (v59 + 1);
                        }

                        while (v56 > 46);
                      }

                      if (size >= 46)
                      {
                        v60 = size;
                        v61 = v41;
                        do
                        {
                          v62 = memchr(v61, 117, v60 - 45);
                          if (!v62)
                          {
                            break;
                          }

                          v63 = v62;
                          if (!memcmp(v62, "urn:urn-7:3gpp-application.ims.iari.rcs.fthttp", 0x2EuLL))
                          {
                            if (v63 != v43 && v63 - v41 != -1)
                            {
                              BYTE6(v87) = 1;
                            }

                            break;
                          }

                          v61 = (v63 + 1);
                          v60 = v43 - (v63 + 1);
                        }

                        while (v60 >= 46);
                        if (size > 46)
                        {
                          v64 = size;
                          v65 = v41;
                          do
                          {
                            v66 = memchr(v65, 117, v64 - 46);
                            if (!v66)
                            {
                              break;
                            }

                            v67 = v66;
                            if (!memcmp(v66, "urn:urn-7:3gpp-application.ims.iari.rcs.geopush", 0x2FuLL))
                            {
                              if (v67 != v43 && v67 - v41 != -1)
                              {
                                BYTE7(v87) = 1;
                              }

                              break;
                            }

                            v65 = (v67 + 1);
                            v64 = v43 - (v67 + 1);
                          }

                          while (v64 >= 47);
                        }

                        v68 = size;
                        v69 = v41;
                        do
                        {
                          v70 = memchr(v69, 117, v68 - 45);
                          if (!v70)
                          {
                            break;
                          }

                          v71 = v70;
                          if (!memcmp(v70, "urn:urn-7:3gpp-application.ims.iari.rcs.geosms", 0x2EuLL))
                          {
                            if (v71 != v43 && v71 - v41 != -1)
                            {
                              BYTE8(v87) = 1;
                            }

                            break;
                          }

                          v69 = (v71 + 1);
                          v68 = v43 - (v71 + 1);
                        }

                        while (v68 >= 46);
                        if (size > 46)
                        {
                          v72 = size;
                          v73 = v41;
                          do
                          {
                            v74 = memchr(v73, 117, v72 - 46);
                            if (!v74)
                            {
                              break;
                            }

                            v75 = v74;
                            if (!memcmp(v74, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot", 0x2FuLL))
                            {
                              if (v75 != v43 && v75 - v41 != -1)
                              {
                                BYTE10(v87) = 1;
                              }

                              break;
                            }

                            v73 = (v75 + 1);
                            v72 = v43 - (v75 + 1);
                          }

                          while (v72 >= 47);
                          if (size >= 50)
                          {
                            v76 = v41;
                            do
                            {
                              v77 = memchr(v76, 117, size - 49);
                              if (!v77)
                              {
                                break;
                              }

                              v78 = v77;
                              if (!memcmp(v77, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa", 0x32uLL))
                              {
                                if (v78 != v43 && v78 - v41 != -1)
                                {
                                  BYTE11(v87) = 1;
                                }

                                break;
                              }

                              v76 = (v78 + 1);
                              size = v43 - (v78 + 1);
                            }

                            while (size >= 50);
                          }
                        }
                      }
                    }

                    if (v40 < 0)
                    {
                      operator delete(__p);
                    }

                    goto LABEL_199;
                  }

                  goto LABEL_104;
                }

                switch(v86[0].__r_.__value_.__l.__size_)
                {
                  case 0x13uLL:
                    if (*v86[0].__r_.__value_.__l.__data_ != 0x2E616D73672E672BLL || *(v86[0].__r_.__value_.__r.__words[0] + 8) != 0x6D6970632E736372 || *(v86[0].__r_.__value_.__r.__words[0] + 11) != 0x7478656D6970632ELL)
                    {
                      break;
                    }

LABEL_82:
                    BYTE12(v87) = 1;
                    break;
                  case 0x16uLL:
                    if (*v86[0].__r_.__value_.__l.__data_ != 0x2E616D73672E672BLL || *(v86[0].__r_.__value_.__r.__words[0] + 8) != 0x76746F622E736372 || *(v86[0].__r_.__value_.__r.__words[0] + 14) != 0x6E6F697372657674)
                    {
                      break;
                    }

LABEL_91:
                    std::string::operator=(v88, &v86[1]);
                    break;
                  case 0x17uLL:
                    goto LABEL_55;
                }

LABEL_199:
                if (SHIBYTE(v86[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v86[1].__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v86[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v86[0].__r_.__value_.__l.__data_);
                }

                v79 = *(v14 + 1);
                if (v79)
                {
                  do
                  {
                    v80 = v79;
                    v79 = *v79;
                  }

                  while (v79);
                }

                else
                {
                  do
                  {
                    v80 = *(v14 + 2);
                    v15 = *v80 == v14;
                    v14 = v80;
                  }

                  while (!v15);
                }

                v14 = v80;
                if (v80 == (a3 + 432))
                {
                  goto LABEL_209;
                }
              }

              if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) > 0x12u)
              {
                if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) != 19)
                {
                  if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) != 22)
                  {
                    goto LABEL_199;
                  }

                  v19 = v86[0].__r_.__value_.__r.__words[0] == 0x2E616D73672E672BLL && v86[0].__r_.__value_.__l.__size_ == 0x76746F622E736372;
                  if (!v19 || *(&v86[0].__r_.__value_.__r.__words[1] + 6) != 0x6E6F697372657674)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_91;
                }

                if (v86[0].__r_.__value_.__r.__words[0] != 0x2E616D73672E672BLL || v86[0].__r_.__value_.__l.__size_ != 0x6D6970632E736372 || *(&v86[0].__r_.__value_.__r.__words[1] + 3) != 0x7478656D6970632ELL)
                {
                  goto LABEL_199;
                }

                goto LABEL_82;
              }

              if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) != 16)
              {
                if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) != 17)
                {
                  goto LABEL_199;
                }

                v18 = v86;
LABEL_46:
                v21 = v18->__r_.__value_.__r.__words[0];
                v22 = v18->__r_.__value_.__l.__size_;
                v23 = v18->__r_.__value_.__s.__data_[16];
                if (v21 == 0x2E616D73672E672BLL && v22 == 0x6F6273692E736372 && v23 == 116)
                {
                  BYTE5(v90) = 1;
                  goto LABEL_199;
                }

                if ((*(&v86[0].__r_.__value_.__s + 23) & 0x80) != 0 && v86[0].__r_.__value_.__l.__size_ == 23)
                {
LABEL_55:
                  if (*v86[0].__r_.__value_.__l.__data_ == 0x2E616D73672E672BLL && *(v86[0].__r_.__value_.__r.__words[0] + 8) == 0x2E736C6D2E736372 && *(v86[0].__r_.__value_.__r.__words[0] + 15) == 0x73646B2D736C6D2ELL)
                  {
                    BYTE6(v90) = 1;
                  }

                  goto LABEL_199;
                }

                if ((*(&v86[0].__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  if (v86[0].__r_.__value_.__l.__size_ != 16)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_100;
                }

                if (HIBYTE(v86[0].__r_.__value_.__r.__words[2]) != 16)
                {
                  goto LABEL_199;
                }
              }

              if (v86[0].__r_.__value_.__r.__words[0] == 0x2E707067332E672BLL && v86[0].__r_.__value_.__l.__size_ == 0x6665722D69736369)
              {
                goto LABEL_109;
              }

              v35 = v86;
LABEL_104:
              v38 = v35->__r_.__value_.__r.__words[0];
              v37 = v35->__r_.__value_.__l.__size_;
              if (v38 == 0x2E707067332E672BLL && v37 == 0x6665722D69726169)
              {
                goto LABEL_109;
              }

              goto LABEL_199;
            }
          }

LABEL_209:
          BYTE9(v89) = 1;
          pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v81 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global();
          }

          v83 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          (*(**(v81 + 184) + 216))(*(v81 + 184), &v87);
        }

        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (SBYTE7(v89) < 0)
        {
          operator delete(v88[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E4C6CFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void SipLazuliManager::handleOptionsError(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a1[29];
  if (v9)
  {
    v17 = std::__shared_weak_count::lock(v9);
    if (v17)
    {
      v18 = a1[28];
      if (v18)
      {
        v33 = a8;
        v19 = a1[31];
        if (v19)
        {
          v20 = std::__shared_weak_count::lock(v19);
          if (v20)
          {
            v21 = a1[30];
            if (v21)
            {
              v32 = v20;
              if (*(v18 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(v18 + 4432), *(v18 + 4440));
              }

              else
              {
                __p = *(v18 + 4432);
              }

              (*(*v21 + 48))(v21, &__p, a4, a5, a6, a7);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = v32;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }

        if (a3 == 504 || a3 == 403)
        {
          v24 = a1[29];
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = a1[28];
              if (v27)
              {
                v28 = (*(a1[4] + 64))(a1 + 4);
                (*(a1[4] + 16))(a1 + 4, v28);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "SIP OPTIONS response ", 21);
                *(v28 + 17) = 0;
                MEMORY[0x1E6923350](*(v28 + 8), a3);
                *(v28 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": Triggering lazuli registration termination", 44);
                *(v28 + 17) = 0;
                (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v28 + 17) = 0;
                SipStack::terminateLazuliRegistration(v27, 5);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }
        }

        v29 = *(a4 + 16);
        v30 = SipMessage::header<SipContactHeader>(*a2);
        if (v30)
        {
          if (v30[9] == v30[10])
          {
            v31 = 0;
          }

          else
          {
            v31 = v30[9];
          }
        }

        else
        {
          v31 = 0;
        }

        SipLazuliManager::logSipOptionsEvent(a1, v29, v31, 0, v33);
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        return;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = a1[27];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    (*(a1[22] + 16))(&__p, a1 + 22);
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v36 = 1752392040;
    v37 = 2081;
    v38 = v23;
    _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v17)
  {
    goto LABEL_36;
  }
}

void sub_1E4C6D400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void SipLazuliManager::getPowerAssertionTag(std::string *__return_ptr a1@<X8>, int a2@<W1>, int a3@<W2>)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  std::string::basic_string[abi:ne200100]<0>(v17, "com.apple.ipTelephony");
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  if (a2)
  {
    v6 = ".msrpIncoming";
  }

  else
  {
    v6 = ".msrpOutgoing";
  }

  std::string::basic_string[abi:ne200100]<0>(v15, v6);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a3)
  {
    v7 = ".wifi";
  }

  else
  {
    v7 = ".cell";
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, v7);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, v15, &__p);
  if (v14 >= 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12;
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = v13;
  }

  v10 = std::string::append(&__p, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1E4C6D5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 1;
  return a1;
}

void std::__list_imp<SipLazuliManager::DeferredMessage>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        SipUri::~SipUri((v2 + 51));
        LazuliSendParams::~LazuliSendParams(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6D970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::~SipUri(SipUri *this)
{
  *this = &unk_1F5EC6940;
  *(this + 46) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 376, *(this + 48));
  *(this + 41) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 336, *(this + 43));
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  SipHop::~SipHop(this);
}

{
  SipUri::~SipUri(this);

  JUMPOUT(0x1E69235B0);
}

void SipHop::~SipHop(SipHop *this)
{
  *this = &unk_1F5EBEF00;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHost::~SipHost((this + 8));
}

ImsOutStream *SipHop::toStream(SipHop *this, ImsOutStream *a2)
{
  SipHost::ipAddress(&v4, (this + 8));
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a2;
}

void sub_1E4C6DBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void LazuliReceiveParams::~LazuliReceiveParams(LazuliReceiveParams *this)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 968);
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  if (*(this + 935) < 0)
  {
    operator delete(*(this + 114));
  }

  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  SipUri::~SipUri((this + 432));
  SipUri::~SipUri((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void LazuliSendParams::LazuliSendParams(std::string *this, const LazuliSendParams *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[6], *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v10;
  }

  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[8], *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v11 = *(a2 + 14);
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v12 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v13 = *(a2 + 17);
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external((this + 296), *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v14 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&this[12].__r_.__value_.__r.__words[1] = v14;
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v15 = *(a2 + 20);
    this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
    *&this[13].__r_.__value_.__r.__words[1] = v15;
  }

  this[14].__r_.__value_.__l.__size_ = 0;
  this[14].__r_.__value_.__r.__words[2] = 0;
  this[15].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[14].__r_.__value_.__l.__size_, *(a2 + 43), *(a2 + 44), *(a2 + 44) - *(a2 + 43));
  if (*(a2 + 391) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = *(a2 + 23);
    this[16].__r_.__value_.__r.__words[0] = *(a2 + 48);
    *&this[15].__r_.__value_.__r.__words[1] = v16;
  }
}

void sub_1E4C6E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *(v3 + 344);
  if (v7)
  {
    *(v3 + 352) = v7;
    operator delete(v7);
  }

  if (*(v3 + 343) < 0)
  {
    operator delete(*(v3 + 320));
  }

  if (*(v3 + 319) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 295) < 0)
  {
    operator delete(*(v3 + 272));
  }

  if (*(v3 + 271) < 0)
  {
    operator delete(*(v3 + 248));
  }

  if (*(v3 + 247) < 0)
  {
    operator delete(*(v3 + 224));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 191) < 0)
  {
    operator delete(*(v3 + 168));
  }

  v8 = *v4;
  if (*v4)
  {
    *(v3 + 152) = v8;
    operator delete(v8);
  }

  if (*(v3 + 143) < 0)
  {
    operator delete(*(v3 + 120));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  if (*(v3 + 95) < 0)
  {
    operator delete(*(v3 + 72));
  }

  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6E22C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void LazuliSendParams::~LazuliSendParams(void **this)
{
  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  v2 = this[43];
  if (v2)
  {
    this[44] = v2;
    operator delete(v2);
  }

  if (*(this + 343) < 0)
  {
    operator delete(this[40]);
  }

  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  v4 = this + 24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<SipUri>::__emplace_back_slow_path<SipUri const&>(uint64_t a1, const SipUri *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  SipUri::SipUri((408 * v2), a2);
  v15 = 408 * v2 + 408;
  v7 = *(a1 + 8);
  v8 = (408 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SipUri>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4C6E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SipUri>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(int a1, SipUri *a2, SipUri *a3, SipUri *this)
{
  if (a2 != a3)
  {
    v4 = this;
    v6 = a2;
    v7 = 0;
    v8 = this - 408;
    v9 = a2;
    do
    {
      SipUri::SipUri(v4, v9);
      v9 = (v9 + 408);
      v4 = (v4 + 408);
      v7 -= 408;
      v8 += 408;
    }

    while (v9 != a3);
    v10 = v6;
    do
    {
      result = (**v6)(v6);
      v6 = (v6 + 408);
      v10 = (v10 + 408);
    }

    while (v6 != a3);
  }

  return result;
}

void sub_1E4C6E8F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 408);
    do
    {
      (**v5)(v5);
      v5 -= 51;
      v3 -= 408;
      v2 += 408;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SipUri>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    (**(i - 408))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 51;
      v7 = v4 - 51;
      do
      {
        (**v7)(v7);
        v6 -= 51;
        v8 = v7 == v2;
        v7 -= 51;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **xpc::array::iterator::iterator(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void ims::CFMutableDictionary::~CFMutableDictionary(ims::CFMutableDictionary *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::vector<SipUri>::__emplace_back_slow_path<SipUri>(uint64_t a1, const SipUri *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  SipUri::SipUri((408 * v2), a2);
  v15 = 408 * v2 + 408;
  v7 = *(a1 + 8);
  v8 = (408 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SipUri>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4C6EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SipUri>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

ImsResult *std::__optional_copy_base<ImsResult,false>::__optional_copy_base[abi:ne200100](ImsResult *this, const ImsResult *a2)
{
  *this = 0;
  *(this + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    ImsResult::ImsResult(this, a2);
    *(this + 88) = 1;
  }

  return this;
}

void sub_1E4C6ECC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    ImsResult::~ImsResult(v1);
  }

  _Unwind_Resume(exception_object);
}

void **std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear(void **result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 1);
    v3 = *result;
    v3[1] = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        std::__list_imp<SipLazuliManager::OutgoingMsrp>::__delete_node[abi:ne200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__list_imp<SipLazuliManager::OutgoingMsrp>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1E4C6EE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1E4C6EEB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ims::analytics::RCSSendReceiveInfo::~RCSSendReceiveInfo(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t ims::SharedLoggable<SipLazuliManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipLazuliManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>(uint64_t a1)
{
  std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(void **a1)
{
  if (a1[5])
  {
    v2 = a1 + 3;
    v3 = a1[4];
    v4 = *(a1[3] + 1);
    v5 = *v3;
    v5[1] = v4;
    *v4 = v5;
    a1[5] = 0;
    if (v3 != a1 + 3)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[13];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v9 = v3 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v3 + 63) < 0)
        {
          operator delete(v3[5]);
        }

        if (*(v3 + 39) < 0)
        {
          operator delete(v3[2]);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    v8 = *a1;

    operator delete(v8);
  }
}

void std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(void **a1)
{
  if (a1[5])
  {
    v2 = a1 + 3;
    v3 = a1[4];
    v4 = *(a1[3] + 1);
    v5 = *v3;
    v5[1] = v4;
    *v4 = v5;
    a1[5] = 0;
    if (v3 != a1 + 3)
    {
      do
      {
        v6 = v3[1];
        LazuliSendParams::~LazuliSendParams(v3 + 2);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    v7 = *a1;

    operator delete(v7);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>(void *a1, const void **a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1E4C6F900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>(void *a1, const void **a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1E4C6FD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::__function::__func<SipLazuliManager::handleRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipLazuliManager::handleRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t *std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E69235B0](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>)::{lambda(void *)#1}::__invoke(char **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(&v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "UserTriggered");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0>(SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0,std::default_delete<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(char **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(&v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "UserTriggered");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0>(SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0,std::default_delete<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0>>)::{lambda(void *)#1}::__invoke(char **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(&v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "MediaTimeout");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SipLazuliManager::OutgoingPager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBEBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipLazuliManager::OutgoingPager>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 160))
  {
    ImsPowerAssertion::deinitialize(a1 + 136);
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(v2 + 344);
    *(v2 + 336) = 0;
    *(v2 + 344) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  ImsPowerAssertion::~ImsPowerAssertion((a1 + 136));
  v4 = *(a1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void LazuliSendParams::LazuliSendParams(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[6], *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v10;
  }

  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[8], *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v11 = a2[14];
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v12 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v13 = a2[17];
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external((this + 296), *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v14 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&this[12].__r_.__value_.__r.__words[1] = v14;
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v15 = a2[20];
    this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
    *&this[13].__r_.__value_.__r.__words[1] = v15;
  }

  this[14].__r_.__value_.__l.__size_ = 0;
  this[14].__r_.__value_.__r.__words[2] = 0;
  this[15].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[14].__r_.__value_.__l.__size_, *(a2 + 43), *(a2 + 44), *(a2 + 44) - *(a2 + 43));
  if (*(a2 + 391) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = a2[23];
    this[16].__r_.__value_.__r.__words[0] = *(a2 + 48);
    *&this[15].__r_.__value_.__r.__words[1] = v16;
  }
}

void sub_1E4C707A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *(v3 + 344);
  if (v7)
  {
    *(v3 + 352) = v7;
    operator delete(v7);
  }

  if (*(v3 + 343) < 0)
  {
    operator delete(*(v3 + 320));
  }

  if (*(v3 + 319) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 295) < 0)
  {
    operator delete(*(v3 + 272));
  }

  if (*(v3 + 271) < 0)
  {
    operator delete(*(v3 + 248));
  }

  if (*(v3 + 247) < 0)
  {
    operator delete(*(v3 + 224));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 191) < 0)
  {
    operator delete(*(v3 + 168));
  }

  v8 = *v4;
  if (*v4)
  {
    *(v3 + 152) = v8;
    operator delete(v8);
  }

  if (*(v3 + 143) < 0)
  {
    operator delete(*(v3 + 120));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  if (*(v3 + 95) < 0)
  {
    operator delete(*(v3 + 72));
  }

  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::processLargeMsgQueue(void)::$_0>(SipLazuliManager::processLargeMsgQueue(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *v1)
    {
      IPTelephonyManager::getCallManager(&v9);
      IMSCallManager::initializeMOLazuliSession(v9, (v1 + 2), 0, 0);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = std::string::basic_string[abi:ne200100]<0>(&v14, "laz.mgr");
  LOBYTE(v9) = 0;
  v13 = 0;
  v5 = ims::error(v4, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Instance lost. Stack teardown?", 30);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v3)
  {
    goto LABEL_13;
  }

LABEL_14:
  std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](&v8);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_1E4C70A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LazuliSendParams::~LazuliSendParams((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E69235B0](v2, 0x1032C408BDCE2A7);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, __int128 **a3)
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

void sub_1E4C70C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBEC38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBEC38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EBEC38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        if (*(a2 + 23) < 0 && *(a2 + 8) == 23 && (**a2 == 0x3330357265676150 ? (v8 = *(*a2 + 8) == 0x7466417972746552) : (v8 = 0), v8 ? (v9 = *(*a2 + 15) == 0x72656D6954726574) : (v9 = 0), v9))
        {
          v14 = v5 + 32;
          v13 = *(v5 + 32);
          if (*(v5 + 432))
          {
            v15 = (*(v13 + 64))(v5 + 32);
            (*(*v14 + 16))(v5 + 32, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Retrying pager MESSAGE again as recommended by Server", 53);
            *(v15 + 17) = 0;
            (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v15 + 17) = 0;
            v17 = *(v5 + 432);
            v16 = *(v5 + 440);
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v18 = *(v5 + 424);
            *(v5 + 416) = v17;
            *(v5 + 424) = v16;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v19 = *(v5 + 440);
            *(v5 + 432) = 0;
            *(v5 + 440) = 0;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            SipLazuliManager::OutgoingPager::send(*(v5 + 416));
          }

          else
          {
            v20 = (*(v13 + 48))(v5 + 32);
            (*(*v14 + 16))(v5 + 32, v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Lost track of previous throttled pager MESSAGE. Processing send queue...", 72);
            *(v20 + 17) = 0;
            (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v20 + 17) = 0;
            SipLazuliManager::processSendQueue(v5);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          v10 = v5 + 32;
          v12 = (*(v11 + 48))(v10);
          (*(*v10 + 16))(v10, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Timer fired for unknown id ", 27);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2);
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>(SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  IPTelephonyManager::getCallManager(&v5);
  IMSCallManager::initializeMOLazuliSession(v5, v1, 0, *(v1 + 392));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1E4C712A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LazuliSendParams::~LazuliSendParams(v2);
    MEMORY[0x1E69235B0]();
  }

  return a1;
}

void sub_1E4C713A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBECB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C714A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, __int128 **a3)
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

void sub_1E4C71618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1E4C71774(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<LazuliSendParams>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<LazuliSendParams>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1E4C71C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__erase_unique<std::string>(uint64_t **a1, char *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    a1[2] = (a1[2] - 1);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>((v4 + 4));

    operator delete(v4);
  }
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__erase_unique<std::string>(void *a1, char *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(v4 + 4);

    operator delete(v4);
  }
}

void std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::__erase_unique<std::string>(void *a1, char *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(v4 + 4);

    operator delete(v4);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 1);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v13);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t SipStringHeader::SipStringHeader(uint64_t a1, const std::string *a2, const std::string *a3)
{
  v5 = SipHeader::SipHeader(a1, a2);
  *v5 = &unk_1F5EBEF98;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  std::string::operator=((v5 + 64), a3);
  return a1;
}

void sub_1E4C722D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  SipHeader::~SipHeader(v1);
  _Unwind_Resume(a1);
}

void SipHeader::~SipHeader(void **this)
{
  *this = &unk_1F5EC4F20;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void SipStringHeader::SipStringHeader(SipStringHeader *this, const SipStringHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v4 = &unk_1F5EBEF98;
  v5 = (v4 + 8);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 10);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 88) = 0;
}

uint64_t SipStringHeader::encodeValue(SipStringHeader *this, ImsOutStream *a2)
{
  if (*(this + 88) == 1)
  {
    ObfuscatedString::ObfuscatedString(v4, (this + 64));
    (*(*a2 + 56))(a2, v4);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    (*(*a2 + 32))(a2, this + 64);
  }

  return 1;
}

void SipStringHeader::~SipStringHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipPrivateTokenAuthScheme::~SipPrivateTokenAuthScheme(SipPrivateTokenAuthScheme *this)
{
  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);

  JUMPOUT(0x1E69235B0);
}

char *SipPrivateTokenAuthScheme::name(SipPrivateTokenAuthScheme *this)
{
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], SipPrivateTokenAuthScheme::name(void)const::scheme, &dword_1E4C3F000);
  }

  return SipPrivateTokenAuthScheme::name(void)const::scheme;
}

BOOL SipPrivateTokenAuthScheme::isValid(SipPrivateTokenAuthScheme *this)
{
  std::string::basic_string[abi:ne200100]<0>(v8, "token-key");
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, v8))
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "challenge");
    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, v6))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "extensions");
      v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p) != 0;
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v2 = 0;
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return v2;
}

void sub_1E4C729B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::patKey(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "token-key");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::patChallenge(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "challenge");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::extensions(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "extensions");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t XmlParserGenericItem::XmlParserGenericItem(uint64_t a1, std::string *a2)
{
  *a1 = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(a1 + 8, a2, 0);
  *a1 = &unk_1F5EBF0B0;
  *(a1 + 8) = &unk_1F5EBF130;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::string::operator=((a1 + 64), a2);
  return a1;
}

void sub_1E4C72D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v9 = *v7;
  if (*v7)
  {
    *(v4 + 168) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v6, *(v4 + 144));
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v4 + 111) < 0)
  {
    operator delete(*(v4 + 88));
  }

  if (*(v4 + 87) < 0)
  {
    operator delete(*v5);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v3);
  _Unwind_Resume(a1);
}

void XmlParserGenericItem::XmlParserGenericItem(XmlParserGenericItem *this, const XmlParserGenericItem *a2)
{
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, a2 + 4, 0);
  *this = &unk_1F5EBF0B0;
  *(this + 1) = &unk_1F5EBF130;
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 20) = 0;
  *(this + 19) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::string::operator=((this + 64), (a2 + 64));
  std::string::operator=((this + 88), (a2 + 88));
  if (this != a2)
  {
    std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(this + 14, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 4));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 17, *(a2 + 17), a2 + 18);
  }

  if (*(a2 + 20) != *(a2 + 21))
  {
    operator new();
  }
}

void sub_1E4C72F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12)
{
  v17 = *v15;
  if (*v15)
  {
    *(v12 + 168) = v17;
    operator delete(v17);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14, *(v12 + 144));
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v12 + 111) < 0)
  {
    operator delete(*(v12 + 88));
  }

  if (*(v12 + 87) < 0)
  {
    operator delete(*v13);
  }

  bambi::XmlTreeItem::~XmlTreeItem(a10);
  _Unwind_Resume(a1);
}

void XmlParserGenericItem::~XmlParserGenericItem(XmlParserGenericItem *this)
{
  *this = &unk_1F5EBF0B0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EBF130;
  v3 = *(this + 20);
  v4 = *(this + 21);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 20);
  }

  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 136, *(this + 18));
  v5 = (this + 112);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  XmlParserGenericItem::~XmlParserGenericItem(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXmlParserGenericItem::~XmlParserGenericItem(XmlParserGenericItem *this)
{
  XmlParserGenericItem::~XmlParserGenericItem((this - 8));
}

{
  XmlParserGenericItem::~XmlParserGenericItem((this - 8));

  JUMPOUT(0x1E69235B0);
}

std::string *XmlParserGenericItem::setAttribute(uint64_t a1, uint64_t ***a2, const std::string *a3)
{
  v7 = a2;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 136), a2, &std::piecewise_construct, &v7, &v6);
  return std::string::operator=((v4 + 7), a3);
}

BOOL XmlParserGenericItem::getAttribute(uint64_t a1, char *a2, std::string *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 136, a2);
  v6 = v5;
  v7 = a1 + 144;
  if (v7 != v5)
  {
    std::string::operator=(a3, (v5 + 56));
  }

  return v7 != v6;
}

void XmlParserGenericItem::setNamespace(uint64_t a1, std::string **a2)
{
  v2 = (a1 + 112);
  if (v2 != a2)
  {
    std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }
}

void std::vector<XmlParserGenericItem *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t XmlParserGenericItem::firstChildAtPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::find(a2, 47, 0);
  if (v6 == -1)
  {

    return XmlParserGenericItem::firstChildWithName(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    memset(&v13, 0, sizeof(v13));
    std::string::basic_string(&v13, a2, 0, v6, &v12);
    ChildWithName = XmlParserGenericItem::firstChildWithName(a1, &v13, a3);
    ChildAtPath = ChildWithName;
    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v7 < v10 - 1)
    {
      if (ChildWithName)
      {
        std::string::basic_string(&v12, a2, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
        ChildAtPath = XmlParserGenericItem::firstChildAtPath(ChildAtPath, &v12, a3);
        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (a3)
        {
          operator new();
        }

        ChildAtPath = 0;
      }
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return ChildAtPath;
  }
}

void sub_1E4C73544(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1E69235B0](v21, 0x10B3C403C8F4F1BLL, a3, a4, a5, a6, a7, a8);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XmlParserGenericItem::addChildWithName(uint64_t a1, const std::string *a2)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  XmlParserGenericItem::addChildWithNameAndText(a1, a2, &__p);
}

void sub_1E4C735E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XmlParserGenericItem::firstChildWithName(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  if (v6 == v7)
  {
LABEL_16:
    if (a3)
    {

      XmlParserGenericItem::addChildWithName(a1, a2);
    }

    return 0;
  }

  else
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *v6;
      v12 = *(*v6 + 87);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(*v6 + 72);
      }

      if (v12 == v9)
      {
        v14 = v13 >= 0 ? (v11 + 64) : *(v11 + 64);
        if (!memcmp(v14, v10, v9))
        {
          break;
        }
      }

      if (++v6 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  return v11;
}

void XmlParserGenericItem::constructTree(xmlNodePtr **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  bambi::XmlTreeItem::makeNode(a2);
}

void sub_1E4C73C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v30 = *(v28 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 48;
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x555555555555555)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(a1, v14);
      }
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v15 >> 4) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(__str, a3, v9);
    for (i = a1[1]; i != v16; std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(i))
    {
      i -= 48;
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(__str, (__str + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(__str + v15, a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v7->__r_.__value_.__l.__data_ = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v6 += 48;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1E4C73FF4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<bambi::XmlTreeNs>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 += 48;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t bambi::XmlTreeNs::XmlTreeNs(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_1E4C742D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(v5);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
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

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(uint64_t **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
}

void sub_1E4C74628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseAMRFormatParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = parseAMRFormatParametersHelper(a1, v3, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1E4C74734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t parseAMRFormatParametersHelper(uint64_t a1, __int16 a2, BOOL a3, std::string *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v31, a2, a3);
  std::string::basic_string[abi:ne200100]<0>(&__str, "\t ;");
  ims::tokenize(a4, &v35, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = v35;
  v7 = v36;
  if (v35 == v36)
  {
    goto LABEL_35;
  }

  v8 = 1;
  do
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v6, *(v6 + 1));
    }

    else
    {
      v9 = *v6;
      __str.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__str.__r_.__value_.__l.__data_ = v9;
    }

    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v12 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v13 = memchr(v12, 61, size);
      v14 = v13 - v12;
      if (v13 && v14 != -1)
      {
        memset(&v30, 0, sizeof(v30));
        std::string::basic_string(&v30, &__str, 0, v14, &v29);
        memset(&v29, 0, sizeof(v29));
        std::string::basic_string(&v29, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v39);
        ims::chomp(&v29, "\r\n\t ;", 3);
        v16 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::amrFormatParameters, &v30);
        v17 = (v16 == &qword_1EE2BD050) & v8;
        if (v16 != &qword_1EE2BD050 && ((v8 ^ 1) & 1) == 0)
        {
          v39 = &v30;
          v18 = std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::amrFormatParameters, &v30, &std::piecewise_construct, &v39, &v38)[7];
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v28, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
          }

          else
          {
            v28 = v29;
          }

          v17 = v18(&v31, &v28);
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v8 = v17;
      }
    }

    if (v10 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v6 = (v6 + 24);
  }

  while (v6 != v7);
  if (v8)
  {
LABEL_35:
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&__str, &v31);
    v41 = 1;
    SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &__str);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__str);
    v19 = 1;
  }

  else
  {
    v20 = std::string::basic_string[abi:ne200100]<0>(&__str, "sdp.parser");
    v24[0] = 0;
    v27 = 0;
    v21 = ims::error(v20, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Failed to parse AMR codec with format parameters '", 50);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a4);
    v22 = *(v21 + 8);
    v30.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v30, 1);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v19 = 0;
  }

  *&v31 = &unk_1F5EF5FB8;
  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }

  __str.__r_.__value_.__r.__words[0] = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  return v19;
}

void sub_1E4C74B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  *(v53 - 240) = &a53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v53 - 240));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseAMRWBFormatParameters(uint64_t a1, __int16 a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = parseAMRFormatParametersHelper(a1, a2, 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1E4C74CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseEVSFormatParameters(uint64_t a1, __int16 a2, std::string *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__p = 0u;
  v25 = 0u;
  v23 = 0u;
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v23, a2);
  std::string::basic_string[abi:ne200100]<0>(&__str, "\t ;");
  ims::tokenize(a3, &v31, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v19 = a1;
  v5 = v31;
  v6 = v32;
  for (i = 1; v5 != v6; v5 = (v5 + 24))
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v5, *(v5 + 1));
    }

    else
    {
      v8 = *v5;
      __str.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&__str.__r_.__value_.__l.__data_ = v8;
    }

    v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v11 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v12 = memchr(v11, 61, size);
      v13 = v12 - v11;
      if (v12 && v13 != -1)
      {
        memset(&v22, 0, sizeof(v22));
        std::string::basic_string(&v22, &__str, 0, v13, &v21);
        memset(&v21, 0, sizeof(v21));
        std::string::basic_string(&v21, &__str, v13 + 1, 0xFFFFFFFFFFFFFFFFLL, &v35);
        ims::chomp(&v21, "\r\n\t ;", 3);
        v15 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::evsFormatParameters, &v22);
        v16 = (v15 == &qword_1EE2BD038) & i;
        if (v15 != &qword_1EE2BD038 && ((i ^ 1) & 1) == 0)
        {
          v35 = &v22;
          v17 = std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::evsFormatParameters, &v22, &std::piecewise_construct, &v35, &v34)[7];
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v20, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
          }

          else
          {
            v20 = v21;
          }

          v16 = v17(&v23, &v20);
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        i = v16;
      }
    }

    if (v9 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&__str, &v23);
  v37 = 2;
  SDPMediaFormatInfo::setSDPMediaFormatParams(v19, &__str);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__str);
  *&v23 = &unk_1F5EF5FB8;
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  __str.__r_.__value_.__r.__words[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  return i & 1;
}

void sub_1E4C74FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v48 - 224));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 224) = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 224));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseDTMFFormatParameters(uint64_t a1, __int16 a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  SDPMediaFormatParams::SDPMediaFormatParams(&v13, a2);
  v13 = &unk_1F5EBF210;
  LOBYTE(v18) = v14;
  v17 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = __p;
  }

  v20 = v16;
  v17 = &unk_1F5EBF210;
  v21 = 3;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v17);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
  v13 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ims::chomp(&v17, "\r\n\t ", a3, 3);
  if ((v19.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if (v19.__r_.__value_.__s.__data_[7] != 4 || v17 != 892415280)
    {
      goto LABEL_14;
    }

    return 1;
  }

  if (v18 == 4)
  {
    v5 = *v17;
    operator delete(v17);
    if (v5 == 892415280)
    {
      return 1;
    }
  }

  else
  {
    operator delete(v17);
  }

LABEL_14:
  std::string::basic_string[abi:ne200100]<0>(&v17, "sdp.parser");
  v9[0] = 0;
  v12 = 0;
  v7 = ims::warn(&v17, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "DTMF with unexpected format parameters parsed: '", 48);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a3);
  v8 = *(v7 + 8);
  LOBYTE(v13) = 39;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v13, 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }

  if (v19.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v17);
  }

  return 0;
}

void sub_1E4C75364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaFormatDTMFParams::~SDPMediaFormatDTMFParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPParser::parseTTYFormatParameters(uint64_t a1, __int16 a2, const std::string *__s)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 0;
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v7 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = __s;
  }

  if (size >= 3)
  {
    v8 = v7 + size;
    v9 = v7;
    do
    {
      v10 = memchr(v9, 99, size - 2);
      if (!v10)
      {
        break;
      }

      if (*v10 == 28771 && v10[2] == 115)
      {
        v12 = 0;
        if (v10 != v8 && v10 - v7 != -1)
        {
          memset(v28, 0, sizeof(v28));
          *v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          std::string::basic_string(&v14, __s, v10 - v7 + 4, 0xFFFFFFFFFFFFFFFFLL, &v20);
          std::istringstream::basic_istringstream[abi:ne200100](&v21, &v14);
          if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v14.__r_.__value_.__l.__data_);
          }

          MEMORY[0x1E6923290](&v21, &v19);
          *&v21 = *MEMORY[0x1E69E54E0];
          *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E0] + 24);
          *&v22 = MEMORY[0x1E69E5548] + 16;
          if (SBYTE7(v27) < 0)
          {
            operator delete(v26[0]);
          }

          *&v22 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v22 + 1);
          std::istream::~istream();
          MEMORY[0x1E6923510](v28 + 8);
          v12 = v19;
        }

        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 >= 3);
  }

  v12 = 0;
LABEL_13:
  SDPMediaFormatParams::SDPMediaFormatParams(&v14, a2);
  v14.__r_.__value_.__r.__words[0] = &unk_1F5EF24A0;
  v17 = v12;
  v18 = 0;
  SDPMediaFormatParams::SDPMediaFormatParams(&v21, v16);
  *&v21 = &unk_1F5EF24A0;
  HIDWORD(v23) = v17;
  *&v24 = v18;
  DWORD2(v28[0]) = 4;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v21);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  v14.__r_.__value_.__r.__words[0] = &unk_1F5EF5FB8;
  if (v15 < 0)
  {
    operator delete(v14.__r_.__value_.__r.__words[2]);
  }

  return 1;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  a1[21] = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v5 = *(MEMORY[0x1E69E54E0] + 16);
  v6 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5568] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[15] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, 8);
  return a1;
}

void sub_1E4C75920(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1E6923510](a1 + 120);
  return a1;
}

uint64_t SDPParser::parseTTYRedFormatParameters(uint64_t a1, __int16 a2, std::string *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = 255;
  v13 = 255;
  v7 = std::string::find(this, 47, 0);
  if (v7 != -1)
  {
    memset(v22, 0, 160);
    __p = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    std::string::basic_string(&v9, this, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
    std::istringstream::basic_istringstream[abi:ne200100](&v15, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    MEMORY[0x1E69232A0](&v15, &v13);
    *&v15 = *MEMORY[0x1E69E54E0];
    *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E0] + 24);
    *&v16 = MEMORY[0x1E69E5548] + 16;
    if (SBYTE7(v21) < 0)
    {
      operator delete(__p);
    }

    *&v16 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v16 + 1);
    std::istream::~istream();
    MEMORY[0x1E6923510](&v22[2]);
    v6 = v13;
  }

  SDPMediaFormatParams::SDPMediaFormatParams(&v9, a2);
  v9.__r_.__value_.__r.__words[0] = &unk_1F5EF2518;
  v12 = v6;
  SDPMediaFormatParams::SDPMediaFormatParams(&v15, v11);
  *&v15 = &unk_1F5EF2518;
  WORD5(v17) = v12;
  v22[2] = 5;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v15);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
  v9.__r_.__value_.__r.__words[0] = &unk_1F5EF5FB8;
  if (v10 < 0)
  {
    operator delete(v9.__r_.__value_.__r.__words[2]);
  }

  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4C75ED0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(SDPMediaFormatAMRParams *this, const SDPMediaFormatAMRParams *a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, *(a2 + 20));
  *v3 = &unk_1F5EF2350;
  *(v3 + 42) = *(a2 + 42);
  *(v3 + 43) = *(a2 + 43);
  *(v3 + 46) = *(a2 + 46);
  *(v3 + 50) = *(a2 + 50);
  *(v3 + 52) = *(a2 + 26);
  *(v3 + 54) = *(a2 + 54);
  *(v3 + 56) = *(a2 + 28);
  *(v3 + 58) = *(a2 + 58);
  *(v3 + 60) = *(a2 + 30);
  *(v3 + 62) = *(a2 + 62);
  *(v3 + 63) = *(a2 + 63);
}

void SDPMediaFormatParams::SDPMediaFormatParams(SDPMediaFormatParams *this, __int16 a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fmtp");
  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 1) = *__p;
    *(this + 4) = v5;
  }

  *this = &unk_1F5EF23B0;
  *(this + 20) = a2;
}

void sub_1E4C760A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(SDPMediaFormatEVSParams *this, __int16 a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, a2);
  *v2 = &unk_1F5EF2428;
  *(v2 + 42) = 0;
  *(v2 + 45) = 0;
  *(v2 + 50) = 220;
  *(v2 + 56) = vdupq_n_s64(0x1FFE00uLL);
  *(v2 + 72) = 2096640;
  *(v2 + 80) = 511;
  *(v2 + 84) = 0x600000006;
  *(v2 + 92) = 6;
  *(v2 + 96) = 257;
  *(v2 + 100) = 0;
  *(v2 + 102) = 131074;
  *(v2 + 110) = 0;
  *(v2 + 111) = 257;
  *(v2 + 114) = 255;
}

void SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(SDPMediaFormatEVSParams *this, const SDPMediaFormatEVSParams *a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, *(a2 + 20));
  *v3 = &unk_1F5EF2428;
  *(v3 + 42) = *(a2 + 21);
  *(v3 + 44) = *(a2 + 22);
  *(v3 + 46) = *(a2 + 23);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 50) = *(a2 + 25);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 72) = *(a2 + 9);
  *(v3 + 80) = *(a2 + 40);
  *(v3 + 84) = *(a2 + 84);
  *(v3 + 92) = *(a2 + 23);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 97) = *(a2 + 97);
  *(v3 + 98) = *(a2 + 49);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 102) = *(a2 + 51);
  *(v3 + 104) = *(a2 + 26);
  *(v3 + 108) = *(a2 + 27);
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 114) = *(a2 + 57);
}

SDPMediaFormatUnknownParams *std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](SDPMediaFormatUnknownParams *result)
{
  v1 = result;
  v2 = *(result + 30);
  if (v2 != -1)
  {
    result = (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix + v2))(&v3, result);
  }

  *(v1 + 30) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(void **this)
{
  *this = &unk_1F5EBF288;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaFormatUnknownParams::formatParameters(SDPMediaFormatUnknownParams *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *a2 = *(this + 2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4C76650(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69234C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  v6 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1E4C76714(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t ImsSocket::_createSocketWithDispatch(void *a1, int a2, dispatch_object_t *a3, uint64_t a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  *a1[8] = a2;
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v10 = a1[10];
  a1[10] = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    v12 = *v11;
    if (*v11 != -1)
    {
      *v35 = 128;
      getsockname(v12, (v11 + 8), v35);
      *(a1 + 22) = *(v11 + 9);
      IpAddress::createAddress(__p, (v11 + 8));
      v13 = a1[7];
      v14 = *__p;
      *(a1 + 3) = *__p;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (a1[6])
        {
          goto LABEL_9;
        }
      }

      else if (v14)
      {
LABEL_9:
        if (a5)
        {
          v15 = a1[10];
          object = v15;
          if (v15)
          {
            dispatch_retain(v15);
          }

          ImsSocket::attachDispatchSource(a1, &object, v34);
          ImsResult::~ImsResult(v34);
          if (object)
          {
            dispatch_release(object);
          }
        }

        memset(uu, 0, sizeof(uu));
        if (*(a4 + 23) < 0)
        {
          if (!*(a4 + 8))
          {
            goto LABEL_23;
          }

          v16 = *a4;
        }

        else
        {
          v16 = a4;
          if (!*(a4 + 23))
          {
            goto LABEL_23;
          }
        }

        if (!uuid_parse(v16, uu))
        {
          v25 = setsockopt(a2, 0xFFFF, 4360, uu, 0x10u);
          v26 = a1[5];
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (!v27)
            {
              goto LABEL_56;
            }

            (*(*a1 + 16))(v35, a1);
            if (v38 >= 0)
            {
              v28 = v35;
            }

            else
            {
              v28 = *v35;
            }

            if (*(a4 + 23) >= 0)
            {
              v29 = a4;
            }

            else
            {
              v29 = *a4;
            }

            *__p = 141559299;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v28;
            v40 = 2080;
            v41 = "Failed to Set UUID ";
            v42 = 2080;
            v43 = v29;
            v44 = 2080;
            v45 = " on socket fd=";
            v46 = 1024;
            v47 = a2;
            v22 = "%{private, mask.hash}s%s%s%s%d";
          }

          else
          {
            if (!v27)
            {
              goto LABEL_56;
            }

            (*(*a1 + 16))(v35, a1);
            if (v38 >= 0)
            {
              v31 = v35;
            }

            else
            {
              v31 = *v35;
            }

            if (*(a4 + 23) >= 0)
            {
              v32 = a4;
            }

            else
            {
              v32 = *a4;
            }

            *__p = 141559299;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v31;
            v40 = 2080;
            v41 = "Set UUID ";
            v42 = 2080;
            v43 = v32;
            v44 = 2080;
            v45 = " on socket fd=";
            v46 = 1024;
            v47 = a2;
            v22 = "%{private, mask.hash}s%s%s%s%d";
          }

          v23 = v26;
          v24 = 58;
LABEL_54:
          _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, v22, __p, v24);
          if (v38 < 0)
          {
            operator delete(*v35);
          }

          goto LABEL_56;
        }

LABEL_23:
        v19 = a1[5];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 16))(v35, a1);
          if (v38 >= 0)
          {
            v20 = v35;
          }

          else
          {
            v20 = *v35;
          }

          if (*(a4 + 23) >= 0)
          {
            v21 = a4;
          }

          else
          {
            v21 = *a4;
          }

          *__p = 141558787;
          *&__p[4] = 1752392040;
          *&__p[12] = 2081;
          *&__p[14] = v20;
          v40 = 2080;
          v41 = "Failed to parse UUID ";
          v42 = 2080;
          v43 = v21;
          v22 = "%{private, mask.hash}s%s%s";
          v23 = v19;
          v24 = 42;
          goto LABEL_54;
        }

LABEL_56:
        ImsSocket::_setDscpOnSocket(a1, a2);
        return 1;
      }
    }
  }

  v17 = a1[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(__p, a1);
    v30 = v40 >= 0 ? __p : *__p;
    *v35 = 141558275;
    *&v35[4] = 1752392040;
    v36 = 2081;
    v37 = v30;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}ssetLocalAddressFromSocket failed", v35, 0x16u);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(*__p);
    }
  }

  (*(*a1 + 32))(a1);
  return 0;
}

void sub_1E4C76C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::attachDispatchSource(uint64_t a1@<X0>, dispatch_queue_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      dispatch_retain(*(a1 + 80));
      v10 = *a2;
      *a2 = v9;
      if (v10)
      {
        dispatch_release(v10);
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    (*(*a1 + 16))(&v29, a1);
    if (v31 >= 0)
    {
      v12 = &v29;
    }

    else
    {
      v12 = v29;
    }

    *buf = 141558275;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v12;
    v13 = "#E %{private, mask.hash}sUnable to attach to NULL socket descriptor object";
LABEL_23:
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
LABEL_24:
    if (v31 < 0)
    {
      operator delete(v29);
    }

    goto LABEL_26;
  }

  if (!*a2)
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    (*(*a1 + 16))(&v29, a1);
    if (v31 >= 0)
    {
      v14 = &v29;
    }

    else
    {
      v14 = v29;
    }

    *buf = 141558275;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v14;
    v13 = "#E %{private, mask.hash}sUnable to attach to NULL dispatch queue";
    goto LABEL_23;
  }

  if (*(v6 + 136))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 16))(&v29, a1);
      if (v31 >= 0)
      {
        v8 = &v29;
      }

      else
      {
        v8 = v29;
      }

      *buf = 141558275;
      v33 = 1752392040;
      v34 = 2081;
      v35 = v8;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}ssocket already attached to dispatch queue", buf, 0x16u);
      goto LABEL_24;
    }

LABEL_26:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0x40000000;
    return;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, (a1 + 8));
  v16 = v29;
  v15 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = dispatch_source_create(MEMORY[0x1E69E96F8], **(a1 + 64), 0, *a2);
  *(*(a1 + 64) + 136) = v17;
  if (v17)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke;
    handler[3] = &__block_descriptor_tmp_30;
    handler[4] = a1;
    handler[5] = v16;
    v28 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_event_handler(v17, handler);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = v18;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *(a1 + 64);
    }

    v21 = *(v20 + 136);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1174405120;
    v22[2] = ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke_19;
    v22[3] = &__block_descriptor_tmp_22_2;
    v22[4] = a1;
    v22[5] = v18;
    v23 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v16;
    v25 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v21;
    dispatch_source_set_cancel_handler(v21, v22);
    dispatch_resume(*(*(a1 + 64) + 136));
    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void ImsSocket::_setDscpOnSocket(ImsSocket *this, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = (this + 92);
  v30 = *(this + 23);
  v5 = *(this + 22);
  if (v5 == 30)
  {
    v10 = setsockopt(a2, 41, 36, &v30, 4u);
    v7 = *(this + 5);
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      (*(*this + 16))(v28, this);
      if (v29 >= 0)
      {
        v12 = v28;
      }

      else
      {
        v12 = v28[0];
      }

      *buf = 141559299;
      v32 = 1752392040;
      v33 = 2081;
      v34 = v12;
      v35 = 2080;
      v36 = "Failed to Set IPV6_TCLASS on IPv6 socket fd=";
      v37 = 1024;
      *v38 = a2;
      *&v38[4] = 2080;
      *&v38[6] = " DSCP = 0x";
      *&v38[14] = 1024;
      *&v38[16] = v30;
      goto LABEL_15;
    }

    if (!v11)
    {
      goto LABEL_34;
    }

    (*(*this + 16))(v28, this);
    v17 = v29;
    v18 = v28[0];
    ims::toString<DscpClass>(v4, __p);
    v19 = v28;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v27 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 141559299;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v19;
    v35 = 2080;
    v36 = "Set IPV6_TCLASS to ";
    v37 = 2080;
    *v38 = v20;
    *&v38[8] = 2080;
    *&v38[10] = " on IPv6 socket fd=";
    *&v38[18] = 1024;
    v39 = a2;
LABEL_30:
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%s%s%d", buf, 0x3Au);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_34;
  }

  v6 = setsockopt(a2, 0, 3, &v30, 4u);
  v7 = *(this + 5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_34;
    }

    (*(*this + 16))(v28, this);
    v13 = v29;
    v14 = v28[0];
    ims::toString<DscpClass>(v4, __p);
    v15 = v28;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v27 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 141559299;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v15;
    v35 = 2080;
    v36 = "Set IP_TOS to ";
    v37 = 2080;
    *v38 = v16;
    *&v38[8] = 2080;
    *&v38[10] = " on IPv4 socket fd=";
    *&v38[18] = 1024;
    v39 = a2;
    goto LABEL_30;
  }

  if (!v8)
  {
    goto LABEL_34;
  }

  (*(*this + 16))(v28, this);
  if (v29 >= 0)
  {
    v9 = v28;
  }

  else
  {
    v9 = v28[0];
  }

  *buf = 141559299;
  v32 = 1752392040;
  v33 = 2081;
  v34 = v9;
  v35 = 2080;
  v36 = "Failed to Set IP_TOS on IPv4 socket fd=";
  v37 = 1024;
  *v38 = a2;
  *&v38[4] = 2080;
  *&v38[6] = " DSCP = 0x";
  *&v38[14] = 1024;
  *&v38[16] = v30;
LABEL_15:
  _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d%s%x", buf, 0x36u);
LABEL_32:
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

LABEL_34:
  LODWORD(__p[0]) = 800;
  v21 = setsockopt(a2, 0xFFFF, 4230, __p, 4u);
  v22 = *(this + 5);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (!v23)
    {
      return;
    }

    (*(*this + 16))(v28, this);
    if (v29 >= 0)
    {
      v24 = v28;
    }

    else
    {
      v24 = v28[0];
    }

    *buf = 141558787;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v24;
    v35 = 2080;
    v36 = "Failed to Set SO_TRAFFIC_CLASS on socket fd=";
    v37 = 1024;
    *v38 = a2;
  }

  else
  {
    if (!v23)
    {
      return;
    }

    (*(*this + 16))(v28, this);
    if (v29 >= 0)
    {
      v25 = v28;
    }

    else
    {
      v25 = v28[0];
    }

    *buf = 141558787;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v25;
    v35 = 2080;
    v36 = "Set SO_TRAFFIC_CLASS on socket fd=";
    v37 = 1024;
    *v38 = a2;
  }

  _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_1E4C776EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::ImsSocket(void *a1, int a2)
{
  v2 = ims::SharedLoggable<ImsSocket>::SharedLoggable(a1, "net");
  *v2 = &unk_1F5EBF300;
  v2[6] = 0;
  v2[7] = 0;
  operator new();
}

void sub_1E4C777E8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](v1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v1 + 8));
  _Unwind_Resume(a1);
}

void *ims::SharedLoggable<ImsSocket>::SharedLoggable(void *a1, NSObject *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<ImsSocket,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EBF450;
  return a1;
}

void sub_1E4C77888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::close(ImsSocket *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      v4 = *(this + 5);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      (*(*this + 16))(__p, this);
      v5 = v17 >= 0 ? __p : *__p;
      v6 = **(this + 8);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v19 = 2081;
      v20 = v5;
      v21 = 2080;
      v22 = "ImsSocket detach source for fd ";
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      v7 = *(this + 8);
      if (v7)
      {
        v3 = *(v7 + 136);
        if (v3)
        {
LABEL_11:
          dispatch_source_cancel(v3);
          *(*(this + 8) + 136) = 0;
        }
      }
    }

    else
    {
      v8 = *v2;
      v9 = *(this + 5);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8 == -1)
      {
        if (v10)
        {
          (*(*this + 16))(buf, this);
          v13 = v21 >= 0 ? buf : *buf;
          *__p = 141558275;
          *&__p[4] = 1752392040;
          v15 = 2081;
          v16 = v13;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sClosed", __p, 0x16u);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        if (v10)
        {
          (*(*this + 16))(__p, this);
          if (v17 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = **(this + 8);
          *buf = 141558787;
          *&buf[4] = 1752392040;
          v19 = 2081;
          v20 = v11;
          v21 = 2080;
          v22 = "Closing fd ";
          v23 = 1024;
          v24 = v12;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
          if (v17 < 0)
          {
            operator delete(*__p);
          }

          v8 = **(this + 8);
        }

        close(v8);
        **(this + 8) = -1;
      }
    }
  }

  operator new();
}

double ImsSocket::allowPortReuse@<D0>(ImsSocket *this@<X0>, uint64_t a3@<X8>)
{
  v3 = *(this + 8);
  if (!v3 || (v4 = *v3, v4 == -1))
  {
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741827;
  }

  else
  {
    ImsSocket::setReusePortOptionForSocket(v4, a3);
  }

  return result;
}

void ImsSocket::setReusePortOptionForSocket(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v10 = *MEMORY[0x1E69E9840];
  v7 = 1;
  if (setsockopt(this, 0xFFFF, 512, &v7, 4u) == -1)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v5 = *__error();
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_posixDomain;
    *(a2 + 16) = v5;
    ims::getStaticLoggerFor(buf, "net");
    v6 = *&v9[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ImsResult::logStr();
    }
  }

  else
  {
    ims::getStaticLoggerFor(buf, "net");
    v4 = *&v9[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v9 = "ImsSocket: reuse port enabled for fd=";
      *&v9[8] = 1024;
      *&v9[10] = v2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%s%d", buf, 0x12u);
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }
}

uint64_t ImsSocket::socketDescriptor(ImsSocket *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (!v2 || (result = *v2, result == -1))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 16))(__p, this);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 141558275;
      v9 = 1752392040;
      v10 = 2081;
      v11 = v5;
      _os_log_error_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}s_sock is empty...", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void ImsSocket::setNoTimeWaitForSocket(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v10 = *MEMORY[0x1E69E9840];
  v7 = 1;
  if (setsockopt(this, 6, 520, &v7, 4u) == -1)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v5 = *__error();
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_posixDomain;
    *(a2 + 16) = v5;
    ims::getStaticLoggerFor(buf, "net");
    v6 = *&v9[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ImsResult::logStr();
    }
  }

  else
  {
    ims::getStaticLoggerFor(buf, "net");
    v4 = *&v9[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v9 = "ImsSocket: no-time-wait enabled for socket ";
      *&v9[8] = 1024;
      *&v9[10] = v2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%s%d", buf, 0x12u);
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }
}