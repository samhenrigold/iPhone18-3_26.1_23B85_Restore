void sub_25EAD95C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::PBSLockFailed(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "PBSLockFailed";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 52) = 2;
  *(this + 213) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD97EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::PBSLockSucceeded(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "PBSLockSucceeded";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 52) = 1;
  *(this + 213) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD9A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::needToSendWanted(PSSG::Resource *this)
{
  v2 = *(this + 195) == 1 && *(this + 194) == 1 && *(this + 49) == *(this + 51);
  v3 = 0;
  if (*(this + 200) == 1 && !v2)
  {
    if (PSSG::Client::isUserInactive(*(this + 3)))
    {
      if (PSSG::Client::isUserInactive(*(this + 3)))
      {
        v3 = *(this + 215) ^ 1;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

uint64_t PSSG::Resource::needToSendSetup(PSSG::Resource *this)
{
  if (*(this + 200) == 1 && PSSG::Client::isUserInactive(*(this + 3)) && *(this + 215) == 1 && *(this + 195) != 1)
  {
    return 1;
  }

  if (*(this + 200) != 1 || *(this + 195) != 1 || (*(this + 194) & 1) != 0)
  {
    return 0;
  }

  result = PSSG::Client::isUserInactive(*(this + 3));
  if (result)
  {
    if (*(this + 215) == 1)
    {
      return *(this + 49) != *(this + 51);
    }

    return 0;
  }

  return result;
}

uint64_t PSSG::Resource::logState(PSSG::Resource *this)
{
  v69 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v57);
  v2 = *(this + 23);
  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  if (v2 >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ":", 1);
  v7 = *(this + 3);
  if (v7)
  {
    if (*(v7 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v52 = *(v7 + 24);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v52, "?");
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v52;
  }

  else
  {
    v8 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, size);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v52);
  if ((*(this + 195) & 1) == 0)
  {
    v12 = "U";
LABEL_32:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], v12, 1);
    goto LABEL_33;
  }

  if ((*(this + 194) & 1) == 0)
  {
    v12 = "X";
    goto LABEL_32;
  }

  PSSG::Resource::describe(&__p, *(this + 49));
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
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], p_p, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_33:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], "/", 1);
  v13 = *(this + 200);
  if (v13 == 1)
  {
    v14 = &v51;
    PSSG::Resource::describe(&v51, *(this + 51));
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v51.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v14 = "X";
  }

  v15 = strlen(v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "/", 1);
  if (v13 && SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (*(this + 12))
  {
    v17 = *(this + 11);
    if (v17)
    {
      v18 = 1;
      do
      {
        v19 = v17[2];
        if ((v18 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], ",", 1);
        }

        if (*(v19 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v19 + 24), *(v19 + 32));
        }

        else
        {
          __p = *(v19 + 24);
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52.__r_.__value_.__r.__words[2], v20, v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v18 = 0;
        v17 = *v17;
      }

      while (v17);
    }
  }

  v22 = *(this + 52);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  v23 = 0x46594Eu >> (8 * v22);
  if (v22 >= 3)
  {
    LOBYTE(v23) = 0;
  }

  buf[0] = v23;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], buf, 1);
  if (*(this + 213) | *(this + 212))
  {
    v24 = 89;
  }

  else
  {
    v24 = 78;
  }

  buf[0] = v24;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], buf, 1);
  v25 = *(this + 3);
  if (v25)
  {
    if (PSSG::Client::isAcceptingRequests(v25))
    {
      v26 = 89;
    }

    else
    {
      v26 = 78;
    }
  }

  else
  {
    v26 = 78;
  }

  buf[0] = v26;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], buf, 1);
  v27 = *(this + 3);
  if (v27)
  {
    if (PSSG::Client::isUserInactive(v27))
    {
      v28 = 89;
    }

    else
    {
      v28 = 78;
    }
  }

  else
  {
    v28 = 78;
  }

  buf[0] = v28;
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], buf, 1);
  v31 = __PSSGLogSharedInstance(v29, v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = &v44;
    std::stringbuf::str();
    if (v45 < 0)
    {
      v32 = v44;
    }

    std::stringbuf::str();
    std::stringbuf::str();
    v33 = &v42;
    if (v43 < 0)
    {
      v33 = v42;
    }

    if (v41 >= 0)
    {
      v34 = &v40;
    }

    else
    {
      v34 = v40;
    }

    *buf = 136315650;
    v64 = v32;
    v65 = 2080;
    v66 = v33;
    v67 = 2080;
    v68 = v34;
    _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "[%s] [Produced@/Wanted@/Pending: %s] [Buffer lock/Pending request/Provider accepting request/Paused: %s]", buf, 0x20u);
    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (v45 < 0)
    {
      operator delete(v44);
    }
  }

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v35 = __p.__r_.__value_.__r.__words[0];
  v36 = *(MEMORY[0x277D82818] + 72);
  v37 = *(MEMORY[0x277D82818] + 64);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = v37;
  v38 = v36;
  __p.__r_.__value_.__r.__words[2] = v36;
  v47 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(v48[7].__locale_);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  MEMORY[0x25F8C7BD0](&v50);
  v52.__r_.__value_.__r.__words[0] = v35;
  *(v52.__r_.__value_.__r.__words + *(v35 - 24)) = v37;
  v52.__r_.__value_.__r.__words[2] = v38;
  v53 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  MEMORY[0x25F8C7BD0](&v56);
  v57[0] = v35;
  *(v57 + *(v35 - 24)) = v37;
  v58 = v38;
  v59 = MEMORY[0x277D82878] + 16;
  if (v61 < 0)
  {
    operator delete(v60[7].__locale_);
  }

  v59 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v60);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v62);
}

void sub_25EADA308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a60);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x298]);
  _Unwind_Resume(a1);
}

uint64_t PSSG::Resource::computeDesiredStride(PSSG::Resource *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    if (!*(this + 30))
    {
      LOBYTE(v5) = 0;
      v20 = 0;
LABEL_39:
      v1 = 0x100000000;
      return v1 | v20 | v5;
    }

    v3 = *(this + 31);
    v4 = this + 256;
    v5 = *(v3 + 8);
    if (v3 != this + 256)
    {
      do
      {
        v5 = std::__gcd<unsigned int>(v5, *(v3 + 8));
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

      while (v7 != v4);
    }

    v9 = (this + 232);
    for (i = *(this + 29); i; i = *(i + 8 * (v5 >= *(i + 28))))
    {
      if (v5 < *(i + 28))
      {
        v9 = i;
      }
    }

    v11 = *(this + 28);
    if (v9 != v11)
    {
      while (1)
      {
        v12 = *v9;
        v13 = *v9;
        v14 = v9;
        if (*v9)
        {
          do
          {
            v15 = v13;
            v13 = v13[1];
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v8 = *v15 == v14;
            v14 = v15;
          }

          while (v8);
        }

        if (*(v15 + 7) == v5)
        {
          break;
        }

        v16 = *v9;
        v17 = v9;
        if (v12)
        {
          do
          {
            v18 = v16;
            v16 = *(v16 + 8);
          }

          while (v16);
        }

        else
        {
          do
          {
            v18 = v17[2];
            v8 = *v18 == v17;
            v17 = v18;
          }

          while (v8);
        }

        if (!(v5 % *(v18 + 28)))
        {
          if (v12)
          {
            do
            {
              v21 = v12;
              v12 = v12[1];
            }

            while (v12);
          }

          else
          {
            do
            {
              v21 = v9[2];
              v8 = *v21 == v9;
              v9 = v21;
            }

            while (v8);
          }

          LODWORD(v5) = *(v21 + 7);
          break;
        }

        if (v12)
        {
          do
          {
            v19 = v12;
            v12 = v12[1];
          }

          while (v12);
        }

        else
        {
          do
          {
            v19 = v9[2];
            v8 = *v19 == v9;
            v9 = v19;
          }

          while (v8);
        }

        v9 = v19;
        if (v19 == v11)
        {
          goto LABEL_30;
        }
      }

      v20 = v5 & 0xFFFFFF00;
      goto LABEL_39;
    }

LABEL_30:
    v1 = 0;
    LOBYTE(v5) = 0;
    v20 = 0;
  }

  else
  {
    LOBYTE(v5) = 0;
    v20 = 0;
  }

  return v1 | v20 | v5;
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
  std::iostream::~basic_iostream();
  MEMORY[0x25F8C7BD0](a1 + 128);
  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int> const&>(uint64_t a1, unsigned int *a2, void *a3)
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

uint64_t *std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__equal_range_multi<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 32);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    v3 += 8;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
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

      else
      {
        v17 = v7;
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
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
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
    goto LABEL_68;
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

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
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
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

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
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void PSSG::ResourceFactoryConnector::flushResponses(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, i[2], i[3]);
    }

    else
    {
      v6 = *(i + 2);
    }

    v7 = *(i + 10);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v6;
    }

    (*(a2 + 16))(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(a1);
}

void sub_25EADADE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **PSSG::ResourceFactoryConnector::lockResource(PSSG::ResourceFactoryConnector *this, PSSG::Resource *a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, a2, &std::piecewise_construct, &v4, &v3);
  *(result + 10) = 0;
  return result;
}

const void **PSSG::ResourceFactoryConnector::unlockResource(PSSG::ResourceFactoryConnector *this, PSSG::Resource *a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, a2, &std::piecewise_construct, &v4, &v3);
  *(result + 10) = 1;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::pssg_send_resource_factory_type>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EADB0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EADB1A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *PSSG::Server::resourcesForKeys@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    do
    {
      v8 = v4 + 2;
      v6 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 6, v4 + 2, &std::piecewise_construct, &v8, &v7)[5];
      if (!v6)
      {
        operator new();
      }

      result = std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a3, &v6, &v6);
      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

void sub_25EADB2F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x25F8C7C50](v15, 0x10B2C40B15D8DB9, a3, a4, a5, a6, a7, a8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void PSSG::Server::resourcesForKeys(uint64_t a1@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v21 = v3;
      v7 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), v3, &std::piecewise_construct, &v21, &v20)[5];
      if (!v7)
      {
        operator new();
      }

      v9 = a3[1];
      v8 = a3[2];
      if (v9 >= v8)
      {
        v11 = *a3;
        v12 = v9 - *a3;
        v13 = v12 >> 4;
        v14 = (v12 >> 4) + 1;
        if (v14 >> 60)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<PSSG::Resource *,unsigned int>>>(a3, v16);
        }

        v17 = 16 * v13;
        *v17 = v7;
        *(v17 + 8) = *(v3 + 24);
        v10 = (16 * v13 + 16);
        v18 = (v17 - 16 * (v12 >> 4));
        memcpy(v18, v11, v12);
        v19 = *a3;
        *a3 = v18;
        a3[1] = v10;
        a3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v9 = v7;
        *(v9 + 2) = *(v3 + 24);
        v10 = v9 + 16;
      }

      a3[1] = v10;
      v3 += 56;
    }

    while (v3 != v4);
  }
}

void sub_25EADB524(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x25F8C7C50](v15, 0x10B2C40B15D8DB9, a3, a4, a5, a6, a7, a8);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void PSSG::Server::~Server(PSSG::Server *this)
{
  for (i = *(this + 3); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  for (j = *(this + 8); j; j = *j)
  {
    v5 = j[5];
    if (v5)
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v5 + 248, *(v5 + 256));
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v5 + 224, *(v5 + 232));
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v5 + 152);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v5 + 112);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v5 + 72);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v5 + 32);
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      MEMORY[0x25F8C7C50](v5, 0x10B2C40B15D8DB9);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 18);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 12);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 6);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 1);
}

double PSSG::Server::handleMessageRegister(PSSG::Server *this, const PSSG::MessageRegister *a2)
{
  v6 = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v6, &v5)[5];
  if (!v3)
  {
    operator new();
  }

  return PSSG::Client::remoteHasRegistered(v3, *(a2 + 124));
}

uint64_t PSSG::Server::handleMessageDeRegister(PSSG::Server *this, const PSSG::MessageDeRegister *a2)
{
  v7 = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v7, &v6);
  v4 = v3[5];
  if (!v4)
  {
    PSSG::Server::handleMessageDeRegister();
  }

  PSSG::Client::remoteHasDied(v3[5], *(a2 + 124));
  return PSSG::Client::remoteHasDeRegistered(v4);
}

PSSG::Client *PSSG::Server::handleMessageNotifyClientDeath(PSSG::Server *this, const PSSG::MessageNotifyClientDeath *a2)
{
  v6 = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v6, &v5)[5];
  if (!v3)
  {
    PSSG::Server::handleMessageNotifyClientDeath();
  }

  return PSSG::Client::remoteHasDied(v3, *(a2 + 124));
}

void PSSG::Server::handleMessageRequestContextForSessions(PSSG::Server *this, const PSSG::MessageRequestContextForSessions *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v10);
  v6 = v4[5];
  if (v6)
  {
    for (i = *(a2 + 7); i; i = *i)
    {
      *buf = i + 2;
      v8 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, i + 2, &std::piecewise_construct, buf, &v10)[5];
      if (!v8)
      {
        operator new();
      }

      PSSG::Client::remoteHasRequestedContext(v6, v8);
    }
  }

  else
  {
    v9 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageRequestContextForSessions";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void PSSG::Server::handleMessageRequestContextForResourceKeys(PSSG::Server *this, const PSSG::MessageRequestContextForResourceKeys *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteHasRequestedContextForResources(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageRequestContextForResourceKeys";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADBB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessagePublishResourceKeysAndStrides *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, v9);
  v6 = v4[5];
  if (v6)
  {
    PSSG::MessagePublishResourceKeysAndStrides::resourceKeys(v9, a2);
    PSSG::Server::resourcesForKeys(this, v9, buf);
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v9);
    std::unordered_set<PSSG::Resource *>::unordered_set(v8, buf);
    PSSG::Client::remoteHasPublishedResourcesWithStrides(v6, v8, a2 + 65);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v8);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADBCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessagePublishResourceStreams(PSSG::Server *this, const PSSG::MessagePublishResourceStreams *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14.__r_.__value_.__r.__words[0] = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v14, buf);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Client::remoteHasPublishedResourceStreams(v4[5], *(a2 + 16), *(a2 + 30));
    if (*(this + 34) == 2 && *(this + 11) == v6)
    {
      PSSG::Server::changeReplayState(this, 2, 3);
      for (i = *(this + 3); i; i = *i)
      {
        if (i[5] != v6)
        {
          v10 = __PSSGLogSharedInstance(HasRequestedGraphResubmission, v8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = i[5];
            if (*(v11 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v14, *(v11 + 24), *(v11 + 32));
            }

            else
            {
              v14 = *(v11 + 24);
            }

            if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = &v14;
            }

            else
            {
              v12 = v14.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            v16 = v12;
            _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "Replay: requesting client %s to resubmit graphs", buf, 0xCu);
            if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v14.__r_.__value_.__l.__data_);
            }
          }

          HasRequestedGraphResubmission = PSSG::Client::systemHasRequestedGraphResubmission(i[5]);
        }
      }
    }
  }

  else
  {
    v13 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v14.__r_.__value_.__l.__data_) = 136380675;
      *(v14.__r_.__value_.__r.__words + 4) = "handleMessagePublishResourceStreams";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "%{private}s invalid client", &v14, 0xCu);
    }
  }
}

void PSSG::Server::changeReplayState(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v6 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *v20 = v4;
    *&v20[4] = 1024;
    *&v20[6] = a3;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "ReplayState change: %u -> %u", buf, 0xEu);
  }

  v7 = *(a1 + 136);
  if (v7 == v4)
  {
    *(a1 + 136) = a3;
  }

  else
  {
    v18 = 0;
    v8 = asprintf(&v18, "Unexpected replay state %u, expected %u", v7, v4);
    v10 = __PSSGLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 136);
      *buf = 136315906;
      *v20 = "changeReplayState";
      *&v20[8] = 1024;
      v21 = 380;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v4;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d Unexpected replay state %u, expected %u", buf, 0x1Eu);
    }

    v12 = OSLogFlushBuffers();
    if (v12)
    {
      v14 = v12;
      v15 = __PSSGLogSharedInstance(v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v20 = "changeReplayState";
        *&v20[8] = 1024;
        v21 = v14;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v16 = abort_with_reason();
    PSSG::Server::handleMessage(v16, v17);
  }
}

void PSSG::Server::handleMessage(PSSG::Server *this, __int128 **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&buf = a2 + 2;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &buf, __p);
  v6 = v4[5];
  if (v6)
  {
    if (*(this + 23))
    {
      PSSG::Server::resourcesForKeys(this, a2 + 62, &buf);
      PSSG::Client::remoteHasRequestedResources(v6, &buf);
    }

    else
    {
      PSSG::Server::resourcesForKeys(this, a2 + 62, &buf);
      PSSG::Server::resourcesForKeys(this, a2 + 65, __p);
      PSSG::Client::remoteHasRequestedResources(v6, &buf, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136380675;
      *(&buf + 4) = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", &buf, 0xCu);
    }
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  *&__p = a2 + 2;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &__p, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 62, &__p);
    PSSG::Client::setupResourcesCompleted(v6, &__p);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 136380675;
      *(&__p + 4) = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", &__p, 0xCu);
    }
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  *&__p = a2 + 2;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &__p, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 62, &__p);
    PSSG::Client::remoteIsNowProducingResources(v6, &__p);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 136380675;
      *(&__p + 4) = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", &__p, 0xCu);
    }
  }
}

{
  v10 = *MEMORY[0x277D85DE8];
  *&__p = a2 + 2;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &__p, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 62, &__p);
    PSSG::Client::remoteFailedToProcessResourceRequests(v6, &__p);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 136380675;
      *(&__p + 4) = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", &__p, 0xCu);
    }
  }
}

void sub_25EADC21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Server::handleMessage(uint64_t this, const PSSG::MessageUserActive *a2)
{
  *(this + 140) = 0;
  for (i = *(this + 24); i; i = *i)
  {
    this = PSSG::Client::requestPausedResources(i[5], a2);
  }

  return this;
}

uint64_t PSSG::Server::handleMessage(uint64_t this, const PSSG::MessageUserInactive *a2)
{
  *(this + 140) = 1;
  for (i = *(this + 24); i; i = *i)
  {
    this = PSSG::Client::systemIsPaused(i[5], a2);
  }

  return this;
}

void sub_25EADC3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageSetupFailed *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::setupResourcesFailed(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADC4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessagePauseCompleted *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::pauseResourcesCompleted(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADC618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessagePauseFailed *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::pauseResourcesFailed(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADC734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_25EADC858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageResourcesNoLongerWantedProcessed *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteProcessedNotificationsOfResourcesNoLongerWanted(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADC97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessageRequestCurrentGraphsForAllSessions(PSSG::Server *this, const PSSG::MessageRequestCurrentGraphsForAllSessions *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v5 = v3[5];
  if (v5)
  {
    PSSG::Server::allAliveClients(v7, this);
    PSSG::Client::remoteHasRequestedCurrentGraphsForAllSessions(v5, v7);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v7);
  }

  else
  {
    v6 = __PSSGLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageRequestCurrentGraphsForAllSessions";
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

uint64_t *PSSG::Server::allAliveClients@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  for (i = this[3]; i; i = *i)
  {
    if (*(i[5] + 1072))
    {
      this = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(a1, i + 5, i + 5);
    }
  }

  return this;
}

void PSSG::Server::handleMessageFlushCurrentGraphsForAllSessions(PSSG::Server *this, const PSSG::MessageFlushCurrentGraphsForAllSessions *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v2 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v5)[5];
  if (v2)
  {
    PSSG::Client::remoteHasFlushedCurrentGraphsForAllSessions(v2);
  }

  else
  {
    v4 = __PSSGLogSharedInstance(0, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageFlushCurrentGraphsForAllSessions";
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void PSSG::Server::handleMessagePublishCurrentGraphs(PSSG::Server *this, const PSSG::MessagePublishCurrentGraphs *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v6)[5];
  if (v3)
  {
    PSSG::Client::remoteHasPublishedCurrentGraphs(v3, *(a2 + 16), *(a2 + 30));
  }

  else
  {
    v5 = __PSSGLogSharedInstance(0, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessagePublishCurrentGraphs";
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageSystemReplayStarting *a2)
{
  *(this + 34) = 0;
  *(this + 11) = 0;
  v8 = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v8, &v7)[5];
  for (i = *(this + 3); i; i = *i)
  {
    v5 = i[5];
    if (v3 != v5)
    {
      PSSG::Client::clientStartingSystemReplay(v5, v3);
    }
  }

  *(this + 11) = v3;
  PSSG::Server::changeReplayState(this, 0, 1);
  PSSG::Server::checkAndStartReplay(this, v6);
}

void PSSG::Server::checkAndStartReplay(PSSG::Server *this, uint64_t a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    while (1)
    {
      v4 = v3[5];
      if (*(v4 + 192) == 1 && (*(v4 + 194) & 1) != 0)
      {
        break;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v6 = __PSSGLogSharedInstance(this, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "Replay: system streams still in use, not starting replay", v7, 2u);
    }
  }

  else
  {
LABEL_5:
    v5 = __PSSGLogSharedInstance(this, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Replay: hiding existing system resources from context", buf, 2u);
    }

    PSSG::Server::hideSystemResourcesForReplay(this);
    PSSG::Client::systemHasRequestedReplayResources(*(this + 11));
    PSSG::Server::changeReplayState(this, 1, 2);
  }
}

void PSSG::Server::handleMessage(PSSG::Client **this, const PSSG::MessageSystemReplayEnding *a2)
{
  v12 = a2 + 16;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, &v12, &v11);
  v5 = v3[5];
  if (this[11] != v5)
  {
    v6 = __PSSGLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Replay stopped/start providers don't match", v10, 2u);
    }
  }

  for (i = this[3]; i; i = *i)
  {
    v8 = *(i + 5);
    if (v5 != v8)
    {
      PSSG::Client::clientEndingSystemReplay(v8, v5);
    }
  }

  PSSG::Server::changeReplayState(this, 3, 5);
  PSSG::Server::checkAndEndReplay(this, v9);
}

void PSSG::Server::checkAndEndReplay(PSSG::Server *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  if (v3)
  {
    while (1)
    {
      v4 = v3[5];
      if (*(v4 + 192) == 1 && (*(v4 + 194) & 1) != 0)
      {
        break;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v12 = __PSSGLogSharedInstance(this, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Replay: replay streams still in use, not ending replay", &buf, 2u);
    }
  }

  else
  {
LABEL_5:
    v5 = __PSSGLogSharedInstance(this, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Replay: unhiding existing system resources from context after replay", &buf, 2u);
    }

    HasRequestedGraphResubmission = PSSG::Server::unhideSystemResourcesAfterReplay(this);
    for (i = *(this + 3); i; i = *i)
    {
      if (i[5] != *(this + 11))
      {
        v9 = __PSSGLogSharedInstance(HasRequestedGraphResubmission, v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = i[5];
          if (*(v10 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, *(v10 + 24), *(v10 + 32));
          }

          else
          {
            buf = *(v10 + 24);
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v14 = 136315138;
          v15 = p_buf;
          _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "Replay: requesting client %s to resubmit graphs", v14, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        HasRequestedGraphResubmission = PSSG::Client::systemHasRequestedGraphResubmission(i[5]);
      }
    }

    PSSG::Server::changeReplayState(this, 5, 0);
    *(this + 11) = 0;
  }
}

void PSSG::Server::flushResponses(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = MEMORY[0x277D85DD0];
    do
    {
      v5 = v2[5];
      v6[0] = v4;
      v6[1] = 0x40000000;
      v6[2] = ___ZN4PSSG6Server14flushResponsesEU13block_pointerFvRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERNS_7MessageEE_block_invoke;
      v6[3] = &unk_279A48DD8;
      v6[4] = a2;
      v6[5] = v2 + 2;
      PSSG::Client::flushResponses(v5, v6);
      v2 = *v2;
    }

    while (v2);
  }
}

void PSSG::Server::flushPBSResponses(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 8) != 0)
  {
    PSSG::ResourceFactoryConnector::flushResponses((a1 + 144), a2);
  }
}

const void **PSSG::Server::resourceNeedsToBeLocked(PSSG::Server *this, PSSG::Resource *a2)
{
  if ((*this & 8) != 0)
  {
    return PSSG::ResourceFactoryConnector::lockResource((this + 144), a2);
  }

  else
  {
    return PSSG::Resource::PBSLockSucceeded(a2, a2);
  }
}

_BYTE *PSSG::Server::resourceNeedsToBeUnlocked(_BYTE *this, PSSG::Resource *a2)
{
  if ((*this & 8) != 0)
  {
    return PSSG::ResourceFactoryConnector::unlockResource((this + 144), a2);
  }

  return this;
}

uint64_t PSSG::Server::hideSystemResourcesForReplay(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    do
    {
      while (1)
      {
        v3 = v1[5];
        if (v3[192] != 1)
        {
          break;
        }

        v5 = v1 + 2;
        std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v2 + 96), v1 + 2, &std::piecewise_construct, &v5, &v4)[5] = v3;
        this = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::erase((v2 + 48), v1);
        v1 = this;
        if (!this)
        {
          return this;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

uint64_t *PSSG::Server::unhideSystemResourcesAfterReplay(PSSG::Server *this)
{
  for (i = *(this + 8); i; i = *i)
  {
    while (*(i[5] + 192) == 1)
    {
      i = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::erase(this + 6, i);
      if (!i)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:

  return std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_handle_merge_unique[abi:ne200100]<std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>>(this + 6, this + 12);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageEnteringSleep *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v2 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v5)[5];
  if (v2)
  {
    PSSG::Client::remoteHasEnteredSleep(v2);
  }

  else
  {
    v4 = __PSSGLogSharedInstance(0, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageExitingSleep *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v2 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v5)[5];
  if (v2)
  {
    PSSG::Client::remoteHasExitedSleep(v2, v3);
  }

  else
  {
    v4 = __PSSGLogSharedInstance(0, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADD5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageResourcesNoLongerWantedFailed *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteFailedToProcessNotificationsOfResourcesNoLongerWanted(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADD6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageStoppedResources *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteHasStoppedProducingResources(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessage";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADD814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

const void **PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessagePBSLockSuccess *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(this + 6, a2 + 2);
  if (result)
  {
    v4 = result[5];

    return PSSG::Resource::PBSLockSucceeded(v4, v3);
  }

  return result;
}

const void **PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessagePBSLockFailure *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(this + 6, a2 + 2);
  if (result)
  {
    v4 = result[5];

    return PSSG::Resource::PBSLockFailed(v4, v3);
  }

  return result;
}

void PSSG::Server::handleMessageSetResourceAvailability(PSSG::Server *this, const PSSG::MessageSetResourceAvailability *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, v9);
  v6 = v4[5];
  if (v6)
  {
    PSSG::MessageSetResourceAvailability::resourceKeys(v9, a2);
    PSSG::Server::resourcesForKeys(this, v9, buf);
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v9);
    std::unordered_set<PSSG::Resource *>::unordered_set(v8, buf);
    PSSG::Client::remoteHasSetResourceAvailability(v6, v8, a2 + 65);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v8);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageSetResourceAvailability";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADD9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a9);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessageRequestResourceAvailabilityUpdates(PSSG::Server *this, const PSSG::MessageRequestResourceAvailabilityUpdates *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteHasRequestedResourceAvailabilityUpdates(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageRequestResourceAvailabilityUpdates";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADDB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessageStopResourceAvailabilityUpdates(PSSG::Server *this, const PSSG::MessageStopResourceAvailabilityUpdates *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buf = a2 + 16;
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1, a2 + 2, &std::piecewise_construct, buf, &v8);
  v6 = v4[5];
  if (v6)
  {
    PSSG::Server::resourcesForKeys(this, a2 + 40, buf);
    PSSG::Client::remoteHasRequestedToStopResourceAvailabilityUpdates(v6, buf);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(buf);
  }

  else
  {
    v7 = __PSSGLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "handleMessageStopResourceAvailabilityUpdates";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%{private}s invalid client", buf, 0xCu);
    }
  }
}

void sub_25EADDC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PSSG::Client::Client(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_2870BA6E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0x3F80000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 1065353216;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1065353216;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 1065353216;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 1065353216;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 1065353216;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 1065353216;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 1065353216;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 1065353216;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 1065353216;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 1065353216;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 1065353216;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 1065353216;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 1065353216;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 1065353216;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 1065353216;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0x100000000;
  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EADE038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EADE100(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<PSSG::Resource *,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSG::Client *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Client *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Client *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EADE3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EADE480(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_handle_merge_unique[abi:ne200100]<std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>>(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = std::__string_hash<char>::operator()[abi:ne200100](v4, v2 + 2);
      result = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_insert_unique_prepare[abi:ne200100](v4, v5, v2 + 2);
      v6 = *v2;
      if (!result)
      {
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::remove(a2, v2, v7);
        v2[1] = v5;
        result = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_insert_unique_perform[abi:ne200100](v4, v2);
      }

      v2 = v6;
    }

    while (v6);
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void PSSG::ServerComms::ServerComms(PSSG::ServerComms *this, PSCommsServer **a2, PSSG::Server *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  v6 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "ServerComms";
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Starting system graph server", &v7, 0xCu);
  }

  *this = *a2;
  *(this + 10) = a3;
  ps_create_comms_client();
  operator new();
}

void sub_25EADE914(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table((v1 + 8));
  _Unwind_Resume(a1);
}

void PSSG::death_notification_handler(PSSG *this, uint64_t a2, char *a3, const char *a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = a3;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Received death notification for session: %s pid: %llu", buf, 0x16u);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  PSSG::MessageBase::MessageBase(buf, 48, __p);
  *buf = &unk_2870BB5A8;
  v13 = a2;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  PSSG::MessageNotifyClientDeath::serialize(buf);
  ps_comms_client_send();
  PSSG::MessageBase::~MessageBase(buf);
}

void sub_25EADEA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::ServerComms::~ServerComms(PSSG::ServerComms *this)
{
  ps_death_notifier_unregister_callback_for_death_notification();
  v3 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 10) = 0;
  v5 = __PSSGLogSharedInstance(v4, v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Done deleting system graph server", v8, 2u);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 1);
}

uint64_t PSSG::ServerComms::setupServerReceiverThread(PSSG::Server **this)
{
  v2 = *this;
  v3 = PSSG::Server::checkEntitlements(this[10]);

  return MEMORY[0x28219F348](v2, 3, this, PSSG::sys_graph_notify, "com.apple.polaris.systemgraph", v3, 0, 0);
}

uint64_t PSSG::sys_graph_notify(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke;
  block[3] = &__block_descriptor_tmp_30_0;
  block[4] = v2;
  block[5] = a2;
  block[6] = a1;
  v3 = *(a1 + 80);
  *(v2 + 311) = 0;
  v7 = v3;
  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke(block);
  }

  return 0;
}

void PSSG::ServerComms::flushResponses(PSSG::ServerComms *this)
{
  v2 = *(this + 10);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSG11ServerComms14flushResponsesEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_21;
  v5[4] = this;
  PSSG::Server::flushResponses(v2, v5);
  v3 = *(this + 10);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4PSSG11ServerComms14flushResponsesEv_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_4_0;
  v4[4] = this;
  PSSG::Server::flushPBSResponses(v3, v4);
}

uint64_t PSSG::ServerComms::sendResponse(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  __p[0] = a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2, &std::piecewise_construct, __p, buf);
  v5 = (*(*a3 + 16))(a3);
  v7 = __PSSGLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    (*(*a3 + 24))(__p, a3);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v13 = v4;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return ps_comms_server_reply_ool();
}

void PSSG::ServerComms::sendPBSResponse(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v5 = **(a1 + 64);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    MEMORY[0x28219F278](v5, a2, &__block_literal_global_22);
  }

  else if (a3)
  {
    v6 = __PSSGLogSharedInstance(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/SystemGraph/Server/PSSGServerComms.cpp";
      v9 = 2080;
      v10 = "sendPBSResponse";
      v11 = 1024;
      v12 = a3;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s:%s: Unexpected value found during switch: %d", buf, 0x1Cu);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ps_buffer_group_operation_async_lock();
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_25EADF0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
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

void sub_25EADF228(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x25F8C7C50](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c55_ZTSNSt3__110shared_ptrIN4PSSG20PSCommsClientWrapperEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c55_ZTSNSt3__110shared_ptrIN4PSSG20PSCommsClientWrapperEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void PSSG::ServerComms::deallocateOOLMemory(uint64_t result)
{
  if (*(result + 28))
  {
    v3 = HIBYTE(*(result + 36));
    if (v3 == 2)
    {

      JUMPOUT(0x25F8C8EB0);
    }

    if (v3 == 1)
    {

      JUMPOUT(0x25F8C8EA0);
    }

    if (v3 <= 4)
    {
      v5[1] = v1;
      v5[2] = v2;
      PSSG::ServerComms::deallocateOOLMemory(v5, v3);
      PSSG::ServerComms::sendUserIsActiveNotification(v4);
    }
  }
}

void PSSG::ServerComms::sendUserIsActiveNotification(PSSG::ServerComms *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1[1] = 46;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 1065353216;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v1[0] = &unk_2870BB110;
  PSSG::MessageBase::serialize(v1);
  ps_comms_client_send();
  PSSG::MessageBase::~MessageBase(v1);
}

void sub_25EADF3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::ServerComms::sendUserIsInactiveNotification(PSSG::ServerComms *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1[1] = 47;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 1065353216;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v1[0] = &unk_2870BB158;
  PSSG::MessageBase::serialize(v1);
  ps_comms_client_send();
  PSSG::MessageBase::~MessageBase(v1);
}

void sub_25EADF4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke(uint64_t a1)
{
  v258 = *MEMORY[0x277D85DE8];
  memset(&v245, 0, sizeof(v245));
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = 1;
  v5 = 1;
  switch(*(v2 + 48))
  {
    case 0:
      v6 = PSSG::MessageRegister::MessageRegister(v246, v2, *(*(a1 + 40) + 40));
      v8 = __PSSGLogSharedInstance(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        PSSG::MessageRegister::description(v246);
        v10 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v9 + 56;
        v254 = 2080;
        v255 = v10;
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      v11 = *(*(a1 + 40) + 32);
      if (v11)
      {
        v12 = *v11;
        v13 = *(v11 + 12) != 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v216 = *(a1 + 48);
      __p[0].__r_.__value_.__r.__words[0] = &v246[16];
      v217 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v216 + 8), &v246[16], &std::piecewise_construct, __p, buf);
      if (*(v217 + 40))
      {
        v219 = __PSSGLogSharedInstance(v217, v218);
        if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
        {
          if (v249 >= 0)
          {
            v220 = &v246[16];
          }

          else
          {
            v220 = *&v246[16];
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
          *(__p[0].__r_.__value_.__r.__words + 4) = v220;
          _os_log_impl(&dword_25EA3A000, v219, OS_LOG_TYPE_ERROR, "Client with execution session name  %s already registered.", __p, 0xCu);
        }

        proc_name(v250[0], __p, 0x100u);
        empty = xpc_dictionary_create_empty();
        v222 = empty;
        if (v249 >= 0)
        {
          v223 = &v246[16];
        }

        else
        {
          v223 = *&v246[16];
        }

        xpc_dictionary_set_string(empty, "SessionName", v223);
        xpc_dictionary_set_string(v222, "ProcessName", __p);
        std::string::basic_string[abi:ne200100]<0>(buf, "com.apple.Polaris.DuplicateExecSession");
        v244[5] = MEMORY[0x277D85DD0];
        v244[6] = 0x40000000;
        v244[7] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_17;
        v244[8] = &__block_descriptor_tmp_19;
        v244[9] = v222;
        v217 = analytics_send_event_lazy();
        if ((v217 & 1) == 0)
        {
          xpc_release(v222);
        }

        if (v256 < 0)
        {
          operator delete(*buf);
        }
      }

      if (v12 != 0 && v13)
      {
        PSSG::Server::handleMessageRegister(*(a1 + 56), v246);
        v224 = *(a1 + 48);
        v225 = *v12;
        __p[0].__r_.__value_.__r.__words[0] = &v246[16];
        *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v224 + 8), &v246[16], &std::piecewise_construct, __p, buf) + 10) = v225;
        v226 = *(a1 + 64);
        if (v226)
        {
          PSSH::SysHealthServer::handleMessageRegister(v226, v246);
        }

        ps_death_notifier_register_mach_port_for_death_notification();
      }

      else
      {
        v227 = __PSSGLogSharedInstance(v217, v218);
        if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
        {
          if (v249 >= 0)
          {
            v228 = &v246[16];
          }

          else
          {
            v228 = *&v246[16];
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
          *(__p[0].__r_.__value_.__r.__words + 4) = v228;
          _os_log_impl(&dword_25EA3A000, v227, OS_LOG_TYPE_ERROR, "Client %s tried to register without a reply port. Failed to register client.", __p, 0xCu);
        }
      }

      PSSG::MessageBase::~MessageBase(v246);
      goto LABEL_343;
    case 1:
      v84 = PSSG::MessageDeRegister::MessageDeRegister(v246, v2, *(*(a1 + 40) + 40));
      v86 = __PSSGLogSharedInstance(v84, v85);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = *(a1 + 32);
        PSSG::MessageDeRegister::description(v246);
        v88 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v87 + 56;
        v254 = 2080;
        v255 = v88;
        _os_log_impl(&dword_25EA3A000, v86, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      v89 = *(a1 + 48);
      __p[0].__r_.__value_.__r.__words[0] = &v246[16];
      v3 = *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v89 + 8), &v246[16], &std::piecewise_construct, __p, buf) + 10);
      ps_death_notifier_unregister_mach_port_for_death_notification();
      PSSG::Server::handleMessageDeRegister(*(a1 + 56), v246);
      PSSG::Server::forwardMessage(*(a1 + 56), v246);
      std::string::operator=(&v245, &v246[16]);
      PSSG::MessageBase::~MessageBase(v246);
      goto LABEL_121;
    case 2:
      goto LABEL_296;
    case 3:
      v142 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BADB0;
      v144 = __PSSGLogSharedInstance(v142, v143);
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        v145 = *(a1 + 32);
        PSSG::MessageRequestContextForSessions::description(__p, v246);
        v146 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v145 + 56;
        v254 = 2080;
        v255 = v146;
        _os_log_impl(&dword_25EA3A000, v144, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageRequestContextForSessions(*(a1 + 56), v246);
      goto LABEL_293;
    case 4:
      v147 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BADF8;
      v149 = __PSSGLogSharedInstance(v147, v148);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        v150 = *(a1 + 32);
        PSSG::MessageRequestContextForResourceKeys::description(__p, v246);
        v151 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v150 + 56;
        v254 = 2080;
        v255 = v151;
        _os_log_impl(&dword_25EA3A000, v149, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageRequestContextForResourceKeys(*(a1 + 56), v246);
      goto LABEL_293;
    case 5:
      if (*(a1 + 64))
      {
        v100 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BB770;
        v102 = __PSSGLogSharedInstance(v100, v101);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = *(a1 + 32);
          PSSG::MessageSHUpdateGraphs::description(__p, v246);
          v104 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v103 + 56;
          v254 = 2080;
          v255 = v104;
          _os_log_impl(&dword_25EA3A000, v102, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        PSSH::SysHealthServer::handleUpdateGraphs(*(a1 + 64), v246);
        goto LABEL_293;
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_294;
      }

      goto LABEL_318;
    case 6:
      if (*(a1 + 64))
      {
        v115 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BAE40;
        v117 = __PSSGLogSharedInstance(v115, v116);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          v118 = *(a1 + 32);
          PSSG::MessageSHRequestAllGraphs::description(__p, v246);
          v119 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v118 + 56;
          v254 = 2080;
          v255 = v119;
          _os_log_impl(&dword_25EA3A000, v117, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        v120 = *(a1 + 64);
        v244[0] = MEMORY[0x277D85DD0];
        v244[1] = 0x40000000;
        v244[2] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_21;
        v244[3] = &__block_descriptor_tmp_22;
        v244[4] = *(a1 + 48);
        PSSH::SysHealthServer::handleRequestAllGraphs(v120, v246, v244);
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_318;
      }

      goto LABEL_294;
    case 7:
      if (*(a1 + 64))
      {
        v121 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BAE88;
        v123 = __PSSGLogSharedInstance(v121, v122);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          v124 = *(a1 + 32);
          std::string::basic_string[abi:ne200100]<0>(__p, "Request Process Monitor statistics");
          v125 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v124 + 56;
          v254 = 2080;
          v255 = v125;
          _os_log_impl(&dword_25EA3A000, v123, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        v126 = *(a1 + 64);
        v243[0] = MEMORY[0x277D85DD0];
        v243[1] = 0x40000000;
        v243[2] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_23;
        v243[3] = &__block_descriptor_tmp_24;
        v243[4] = *(a1 + 48);
        PSSH::SysHealthServer::handleRequestProcessMonitorStats(v126, v246, v243);
        goto LABEL_293;
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_294;
      }

      goto LABEL_318;
    case 8:
      if (*(a1 + 64))
      {
        v163 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BAED0;
        v165 = __PSSGLogSharedInstance(v163, v164);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
        {
          v166 = *(a1 + 32);
          std::string::basic_string[abi:ne200100]<0>(__p, "Request System Action statistics");
          v167 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v166 + 56;
          v254 = 2080;
          v255 = v167;
          _os_log_impl(&dword_25EA3A000, v165, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        v168 = *(a1 + 64);
        v242[0] = MEMORY[0x277D85DD0];
        v242[1] = 0x40000000;
        v242[2] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_25;
        v242[3] = &__block_descriptor_tmp_26;
        v242[4] = *(a1 + 48);
        PSSH::SysHealthServer::handleRequestSystemActionStats(v168, v246, v242);
        goto LABEL_293;
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_294;
      }

      goto LABEL_318;
    case 9:
      if (*(a1 + 64))
      {
        v157 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BAF18;
        v159 = __PSSGLogSharedInstance(v157, v158);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          v160 = *(a1 + 32);
          std::string::basic_string[abi:ne200100]<0>(__p, "Request Process Monitor event log");
          v161 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v160 + 56;
          v254 = 2080;
          v255 = v161;
          _os_log_impl(&dword_25EA3A000, v159, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        v162 = *(a1 + 64);
        v241[0] = MEMORY[0x277D85DD0];
        v241[1] = 0x40000000;
        v241[2] = ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_27;
        v241[3] = &__block_descriptor_tmp_28;
        v241[4] = *(a1 + 48);
        PSSH::SysHealthServer::handleRequestProcessMonitorEventLog(v162, v246, v241);
        goto LABEL_293;
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_294;
      }

      goto LABEL_318;
    case 0xALL:
      v56 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BAF60;
      v58 = __PSSGLogSharedInstance(v56, v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "Request current graphs for all sessions");
        v60 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v59 + 56;
        v254 = 2080;
        v255 = v60;
        _os_log_impl(&dword_25EA3A000, v58, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageRequestCurrentGraphsForAllSessions(*(a1 + 56), v246);
      goto LABEL_293;
    case 0xBLL:
      v105 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BAFA8;
      v107 = __PSSGLogSharedInstance(v105, v106);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v108 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "Flush current graphs for all sessions");
        v109 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v108 + 56;
        v254 = 2080;
        v255 = v109;
        _os_log_impl(&dword_25EA3A000, v107, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageFlushCurrentGraphsForAllSessions(*(a1 + 56), v246);
      goto LABEL_293;
    case 0xCLL:
      if (*(a1 + 64))
      {
        v74 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BB800;
        v76 = __PSSGLogSharedInstance(v74, v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = *(a1 + 32);
          PSSG::MessageSHTriggerHealthUpdate::description(v246, __p);
          v78 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v77 + 56;
          v254 = 2080;
          v255 = v78;
          _os_log_impl(&dword_25EA3A000, v76, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        PSSH::SysHealthServer::handleSystemHealthUpdate(*(a1 + 64), v246);
        goto LABEL_293;
      }

      v212 = __PSSGLogSharedInstance(a1, v2);
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_294;
      }

      goto LABEL_318;
    case 0xDLL:
      v41 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BAFF0;
      v43 = __PSSGLogSharedInstance(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "Entering sleep");
        v45 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v44 + 56;
        v254 = 2080;
        v255 = v45;
        _os_log_impl(&dword_25EA3A000, v43, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0xELL:
      v127 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB038;
      v129 = __PSSGLogSharedInstance(v127, v128);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "Exiting sleep");
        v131 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v130 + 56;
        v254 = 2080;
        v255 = v131;
        _os_log_impl(&dword_25EA3A000, v129, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0xFLL:
      v132 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB0C8;
      v134 = __PSSGLogSharedInstance(v132, v133);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        v135 = *(a1 + 32);
        PSSG::MessageStoppedResources::description(__p, v246);
        v136 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v135 + 56;
        v254 = 2080;
        v255 = v136;
        _os_log_impl(&dword_25EA3A000, v134, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x10:
      v178 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB278;
      v180 = __PSSGLogSharedInstance(v178, v179);
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
      {
        v181 = *(a1 + 32);
        PSSG::MessageResourcesNoLongerWantedProcessed::description(__p, v246);
        v182 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v181 + 56;
        v254 = 2080;
        v255 = v182;
        _os_log_impl(&dword_25EA3A000, v180, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x11:
      v169 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB080;
      v171 = __PSSGLogSharedInstance(v169, v170);
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        v172 = *(a1 + 32);
        PSSG::MessageResourcesNoLongerWantedFailed::description(__p, v246);
        v173 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v172 + 56;
        v254 = 2080;
        v255 = v173;
        _os_log_impl(&dword_25EA3A000, v171, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x12:
      v31 = PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v246, v2);
      *v246 = &unk_2870BB728;
      v33 = __PSSGLogSharedInstance(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        PSSG::MessageSetupCompleted::description(__p, v246);
        v35 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v34 + 56;
        v254 = 2080;
        v255 = v35;
        _os_log_impl(&dword_25EA3A000, v33, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      PSSG::Server::forwardMessage(*(a1 + 56), v246);
      goto LABEL_276;
    case 0x13:
      v79 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB1A0;
      v81 = __PSSGLogSharedInstance(v79, v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(a1 + 32);
        PSSG::MessageSetupFailed::description(__p, v246);
        v83 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v82 + 56;
        v254 = 2080;
        v255 = v83;
        _os_log_impl(&dword_25EA3A000, v81, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x14:
      v183 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB1E8;
      v185 = __PSSGLogSharedInstance(v183, v184);
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        v186 = *(a1 + 32);
        PSSG::MessagePauseCompleted::description(__p, v246);
        v187 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v186 + 56;
        v254 = 2080;
        v255 = v187;
        _os_log_impl(&dword_25EA3A000, v185, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x15:
      v36 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB230;
      v38 = __PSSGLogSharedInstance(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        PSSG::MessagePauseFailed::description(__p, v246);
        v40 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v39 + 56;
        v254 = 2080;
        v255 = v40;
        _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x16:
      v69 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB398;
      v71 = __PSSGLogSharedInstance(v69, v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(a1 + 32);
        PSSG::MessageRequestResourceAvailabilityUpdates::description(__p, v246);
        v73 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v72 + 56;
        v254 = 2080;
        v255 = v73;
        _os_log_impl(&dword_25EA3A000, v71, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageRequestResourceAvailabilityUpdates(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x17:
      v51 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB3E0;
      v53 = __PSSGLogSharedInstance(v51, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(a1 + 32);
        PSSG::MessageStopResourceAvailabilityUpdates::description(__p, v246);
        v55 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v54 + 56;
        v254 = 2080;
        v255 = v55;
        _os_log_impl(&dword_25EA3A000, v53, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageStopResourceAvailabilityUpdates(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x18:
      v110 = PSSG::MessagePublishResourceKeysAndStrides::MessagePublishResourceKeysAndStrides(v246, v2);
      v112 = __PSSGLogSharedInstance(v110, v111);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        v113 = *(a1 + 32);
        PSSG::MessagePublishResourceKeysAndStrides::description(__p, v246);
        v114 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v113 + 56;
        v254 = 2080;
        v255 = v114;
        _os_log_impl(&dword_25EA3A000, v112, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      PSSG::Server::forwardMessage(*(a1 + 56), v246);
      *v246 = &unk_2870BB4A8;
      std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v251);
      goto LABEL_195;
    case 0x19:
      v46 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = off_2870BA7A8;
      v48 = __PSSGLogSharedInstance(v46, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(a1 + 32);
        PSSG::MessagePublishResourceStreams::description(v246, __p);
        v50 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v49 + 56;
        v254 = 2080;
        v255 = v50;
        _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessagePublishResourceStreams(*(a1 + 56), v246);
      goto LABEL_91;
    case 0x1ALL:
      v193 = PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v246, v2);
      *v246 = &unk_2870BB608;
      v195 = __PSSGLogSharedInstance(v193, v194);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        v196 = *(a1 + 32);
        PSSG::MessageRequestResourcesWithStrides::description(__p, v246);
        v197 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v196 + 56;
        v254 = 2080;
        v255 = v197;
        _os_log_impl(&dword_25EA3A000, v195, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_276;
    case 0x1BLL:
      v188 = PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v246, v2);
      *v246 = &unk_2870BB6E0;
      v190 = __PSSGLogSharedInstance(v188, v189);
      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
      {
        v191 = *(a1 + 32);
        PSSG::MessageCompletedResourceRequestWithStrides::description(__p, v246);
        v192 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v191 + 56;
        v254 = 2080;
        v255 = v192;
        _os_log_impl(&dword_25EA3A000, v190, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      PSSG::Server::forwardMessage(*(a1 + 56), v246);
      goto LABEL_276;
    case 0x1CLL:
      v64 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = off_2870BA880;
      v66 = __PSSGLogSharedInstance(v64, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(a1 + 32);
        PSSG::MessagePublishCurrentGraphs::description(v246, __p);
        v68 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v67 + 56;
        v254 = 2080;
        v255 = v68;
        _os_log_impl(&dword_25EA3A000, v66, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessagePublishCurrentGraphs(*(a1 + 56), v246);
LABEL_91:
      PSSG::MessageBase::~MessageBase(v246);
      v3 = 0;
      v4 = 0;
      goto LABEL_295;
    case 0x1DLL:
      v90 = PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v246, v2);
      *v246 = &unk_2870BB650;
      v92 = __PSSGLogSharedInstance(v90, v91);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(a1 + 32);
        PSSG::MessageResourceRequestsFailed::description(__p, v246);
        v94 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v93 + 56;
        v254 = 2080;
        v255 = v94;
        _os_log_impl(&dword_25EA3A000, v92, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
LABEL_276:
      v198 = v252;
      *v246 = &unk_2870BB508;
      v252 = 0;
      if (v198)
      {
        MEMORY[0x25F8C7C30](v198, 0x1000C80B3D5DE44);
      }

      __p[0].__r_.__value_.__r.__words[0] = v251;
      std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0].__r_.__value_.__r.__words[0] = v250;
      std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_293;
    case 0x1ELL:
      v137 = PSSG::MessageSetResourceAvailability::MessageSetResourceAvailability(v246, v2);
      v139 = __PSSGLogSharedInstance(v137, v138);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        v140 = *(a1 + 32);
        PSSG::MessageSetResourceAvailability::description(__p, v246);
        v141 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v140 + 56;
        v254 = 2080;
        v255 = v141;
        _os_log_impl(&dword_25EA3A000, v139, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessageSetResourceAvailability(*(a1 + 56), v246);
      *v246 = &unk_2870BB4D8;
      std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v251);
LABEL_195:
      if (v250[0])
      {
        v250[1] = v250[0];
        operator delete(v250[0]);
      }

      goto LABEL_293;
    case 0x27:
      v95 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BA910;
      v97 = __PSSGLogSharedInstance(v95, v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "System replay starting");
        v99 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v98 + 56;
        v254 = 2080;
        v255 = v99;
        _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x28:
      v203 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BA958;
      v205 = __PSSGLogSharedInstance(v203, v204);
      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        v206 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "System replay ending");
        v207 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v206 + 56;
        v254 = 2080;
        v255 = v207;
        _os_log_impl(&dword_25EA3A000, v205, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x2DLL:
      v61 = *(v2 + 312);
      *v246 = &unk_2870BB538;
      *&v246[8] = v61;
      v62 = __PSSGLogSharedInstance(a1, v2);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Orchestrator notification");
        v63 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315138;
        *&buf[4] = v63;
        _os_log_impl(&dword_25EA3A000, v62, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_294;
    case 0x2ELL:
      v174 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB110;
      v176 = __PSSGLogSharedInstance(v174, v175);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "User Active");
        v177 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315138;
        *&buf[4] = v177;
        _os_log_impl(&dword_25EA3A000, v176, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x2FLL:
      v199 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB158;
      v201 = __PSSGLogSharedInstance(v199, v200);
      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "User Inactive");
        v202 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315138;
        *&buf[4] = v202;
        _os_log_impl(&dword_25EA3A000, v201, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x30:
      v24 = *(*(a1 + 40) + 40);
      if (v24 == getpid())
      {
        v25 = PSSG::MessageNotifyClientDeath::MessageNotifyClientDeath(v246, *(a1 + 32));
        v27 = __PSSGLogSharedInstance(v25, v26);
        if (os_signpost_enabled(v27))
        {
          v28 = *(a1 + 32);
          PSSG::MessageNotifyClientDeath::description(v246);
          v29 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v28 + 56;
          v254 = 2080;
          v255 = v29;
          _os_signpost_emit_unreliably_with_name_impl(&dword_25EA3A000, v27, 0, 0xEEEEB0B5B2B2EEEELL, "PSSG Log", "%s --> %s", v239, v240);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        PSSG::Server::handleMessageNotifyClientDeath(*(a1 + 56), v246);
        PSSG::Server::forwardMessage(*(a1 + 56), v246);
        v30 = *(a1 + 64);
        if (v30)
        {
          PSSH::SysHealthServer::handleMessageNotifyClientDeath(v30, v246);
        }

        std::string::operator=(&v245, &v246[16]);
        PSSG::MessageBase::~MessageBase(v246);
        v3 = 0;
LABEL_121:
        v5 = 1;
LABEL_296:
        PSSG::ServerComms::flushResponses(*(a1 + 48));
        if (v5)
        {
          MEMORY[0x25F8C8F00](2, v3);
        }

        if (v4)
        {
          PSSG::ServerComms::deallocateOOLMemory(*(a1 + 32));
        }

        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>((*(a1 + 48) + 8), &v245);
        if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v245.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __p[0].__r_.__value_.__r.__words[0] = 0;
        v229 = *(*(a1 + 40) + 40);
        v230 = getpid();
        v231 = asprintf(&__p[0].__r_.__value_.__l.__data_, "Sender PID: %d does not match polarisd pid: %d. Ignoring.", v229, v230);
        v233 = __PSSGLogSharedInstance(v231, v232);
        if (os_log_type_enabled(v233, OS_LOG_TYPE_FAULT))
        {
          v234 = *(*(a1 + 40) + 40);
          *v246 = 136315906;
          *&v246[4] = "sys_graph_notify_block_invoke";
          *&v246[12] = 1024;
          *&v246[14] = 113;
          *&v246[18] = 1024;
          *&v246[20] = v234;
          v247 = 1024;
          v248 = getpid();
          _os_log_impl(&dword_25EA3A000, v233, OS_LOG_TYPE_FAULT, "%s:%d Sender PID: %d does not match polarisd pid: %d. Ignoring.", v246, 0x1Eu);
        }

        v235 = OSLogFlushBuffers();
        v237 = v235;
        if (v235)
        {
          v238 = __PSSGLogSharedInstance(v235, v236);
          ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_cold_1(v238, v237);
        }

        else
        {
          usleep(0x1E8480u);
        }

        abort_with_reason();
        __break(1u);
      }

      return;
    case 0x31:
      v152 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB2C0;
      v154 = __PSSGLogSharedInstance(v152, v153);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        v155 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "PBS Lock Success");
        v156 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v155 + 56;
        v254 = 2080;
        v255 = v156;
        _os_log_impl(&dword_25EA3A000, v154, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x32:
      v19 = PSSG::MessageBase::MessageBase(v246, v2);
      *v246 = &unk_2870BB308;
      v21 = __PSSGLogSharedInstance(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        std::string::basic_string[abi:ne200100]<0>(__p, "PBS Lock Failure");
        v23 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315394;
        *&buf[4] = v22 + 56;
        v254 = 2080;
        v255 = v23;
        _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      PSSG::Server::handleMessage(*(a1 + 56), v246);
      goto LABEL_293;
    case 0x33:
      if (*(a1 + 64))
      {
        v14 = PSSG::MessageBase::MessageBase(v246, v2);
        *v246 = &unk_2870BB350;
        v16 = __PSSGLogSharedInstance(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          PSSG::MessageCollectDPTailspin::description(__p, v246);
          v18 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136315394;
          *&buf[4] = v17 + 56;
          v254 = 2080;
          v255 = v18;
          _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, "%s --> %s", buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        PSSH::SysHealthServer::handleCollectDPTailspin(*(a1 + 64), v246);
LABEL_293:
        PSSG::MessageBase::~MessageBase(v246);
      }

      else
      {
        v212 = __PSSGLogSharedInstance(a1, v2);
        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
        {
LABEL_318:
          v213 = *(a1 + 32);
          v214 = v213 + 56;
          v215 = *(v213 + 48);
          *v246 = 136315394;
          *&v246[4] = v214;
          *&v246[12] = 2048;
          *&v246[14] = v215;
          _os_log_impl(&dword_25EA3A000, v212, OS_LOG_TYPE_DEFAULT, "%s --> DROPPED (%llu)", v246, 0x16u);
        }
      }

LABEL_294:
      v3 = 0;
LABEL_295:
      v5 = 0;
      goto LABEL_296;
    default:
      v208 = __PSSGLogSharedInstance(a1, v2);
      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
      {
        v209 = *(a1 + 32);
        v210 = v209 + 56;
        v211 = *(v209 + 48);
        *v246 = 136315394;
        *&v246[4] = v210;
        *&v246[12] = 2048;
        *&v246[14] = v211;
        _os_log_impl(&dword_25EA3A000, v208, OS_LOG_TYPE_DEFAULT, "%s --> UNKNOWN (%llu)", v246, 0x16u);
      }

LABEL_343:
      v3 = 0;
      v5 = 0;
      v4 = 1;
      goto LABEL_296;
  }
}

uint64_t *PSSG::MessageRegister::description(PSSG::MessageRegister *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Register [pid: ", 15);
  v4 = MEMORY[0x25F8C7AF0](v3, *(this + 124));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " (", 2);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "0x", 2);
  v7 = MEMORY[0x25F8C7AF0](v6, *(this + 124));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")]", 2);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v15);
}

void sub_25EAE2288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *PSSG::MessageDeRegister::description(PSSG::MessageDeRegister *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "DeRegister [pid: ", 17);
  v4 = MEMORY[0x25F8C7AF0](v3, *(this + 124));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " (", 2);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "0x", 2);
  v7 = MEMORY[0x25F8C7AF0](v6, *(this + 124));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")]", 2);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v15);
}

void sub_25EAE24AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *PSSG::MessageNotifyClientDeath::description(PSSG::MessageNotifyClientDeath *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Client died [pid: ", 18);
  v4 = MEMORY[0x25F8C7AF0](v3, *(this + 124));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " (", 2);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "0x", 2);
  v7 = MEMORY[0x25F8C7AF0](v6, *(this + 124));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")]", 2);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v15);
}

void sub_25EAE26C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void PSSG::MessageRequestContextForSessions::description(std::string *__return_ptr a1@<X8>, PSSG::MessageRequestContextForSessions *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Request context for sessions: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestContextForResourceKeys::description(std::string *__return_ptr a1@<X8>, PSSG::MessageRequestContextForResourceKeys *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Request context for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE286C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSHRequestAllGraphs::description(std::string *__return_ptr a1@<X8>, PSSG::MessageSHRequestAllGraphs *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Filter: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageResourcesNoLongerWantedFailed::description(std::string *__return_ptr a1@<X8>, PSSG::MessageResourcesNoLongerWantedFailed *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Resources no longer wanted failed for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageStoppedResources::description(std::string *__return_ptr a1@<X8>, PSSG::MessageStoppedResources *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Stopped producing resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSetupFailed::description(std::string *__return_ptr a1@<X8>, PSSG::MessageSetupFailed *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Setup failed for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessagePauseCompleted::description(std::string *__return_ptr a1@<X8>, PSSG::MessagePauseCompleted *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Pause completed for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessagePauseFailed::description(std::string *__return_ptr a1@<X8>, PSSG::MessagePauseFailed *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Pause failed for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageResourcesNoLongerWantedProcessed::description(std::string *__return_ptr a1@<X8>, PSSG::MessageResourcesNoLongerWantedProcessed *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Resources no longer wanted processed for resources: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE2F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageCollectDPTailspin::description(std::string *__return_ptr a1@<X8>, PSSG::MessageCollectDPTailspin *this@<X0>)
{
  v3 = *(this + 7);
  if (*(v3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 16), *(v3 + 24));
  }

  else
  {
    __p = *(v3 + 16);
  }

  v4 = std::string::insert(&__p, 0, "Diagnostic Pipeline tailspin request. Reason: ");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE3064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestResourceAvailabilityUpdates::description(std::string *__return_ptr a1@<X8>, PSSG::MessageRequestResourceAvailabilityUpdates *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Request resource updates for: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE3130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageStopResourceAvailabilityUpdates::description(std::string *__return_ptr a1@<X8>, PSSG::MessageStopResourceAvailabilityUpdates *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, "Stop resource updates for: ");
  PSSG::setDescription(this + 40, __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE3214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::MessageRegister::MessageRegister(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 48);
  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 56));
  PSSG::MessageBase::MessageBase(a1, v5, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_2870BAD20;
  *(a1 + 496) = a3;
  return a1;
}

void sub_25EAE32D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRegister::~MessageRegister(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PSSG::MessageDeRegister::MessageDeRegister(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 48);
  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 56));
  PSSG::MessageBase::MessageBase(a1, v5, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_2870BAD68;
  *(a1 + 496) = a3;
  return a1;
}

void sub_25EAE33B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageDeRegister::~MessageDeRegister(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PSSG::MessageNotifyClientDeath::MessageNotifyClientDeath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 56));
  PSSG::MessageBase::MessageBase(a1, v4, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_2870BB5A8;
  *(a1 + 496) = *(a2 + 312);
  return a1;
}

void sub_25EAE3490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestContextForSessions::~MessageRequestContextForSessions(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::setDescription(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v49, "[");
    v7 = *(a1 + 16);
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v14 = std::string::append(v6, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "]");
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

    v18 = std::string::append(&v50, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    a2[2] = *(&v18->__r_.__value_.__l + 2);
    *a2 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v49.__r_.__value_.__r.__words[0];
LABEL_62:
      operator delete(v20);
    }
  }

  else
  {
    if (!v4)
    {

      std::string::basic_string[abi:ne200100]<0>(a2, "[]");
      return;
    }

    std::string::basic_string[abi:ne200100]<0>(&v47, "[");
    v21 = *(a1 + 16);
    v24 = *(v21 + 16);
    v22 = v21 + 16;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v28 = std::string::append(&v47, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v45, " +");
    if ((v46 & 0x80u) == 0)
    {
      v30 = v45;
    }

    else
    {
      v30 = v45[0];
    }

    if ((v46 & 0x80u) == 0)
    {
      v31 = v46;
    }

    else
    {
      v31 = v45[1];
    }

    v32 = std::string::append(&__p, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v44, v5);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v44;
    }

    else
    {
      v34 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v44.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v49, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v42, " more]");
    if ((v43 & 0x80u) == 0)
    {
      v38 = v42;
    }

    else
    {
      v38 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v39 = v43;
    }

    else
    {
      v39 = v42[1];
    }

    v40 = std::string::append(&v50, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a2[2] = *(&v40->__r_.__value_.__l + 2);
    *a2 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v47.__r_.__value_.__r.__words[0];
      goto LABEL_62;
    }
  }
}

void sub_25EAE37C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestContextForResourceKeys::~MessageRequestContextForResourceKeys(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHRequestAllGraphs::~MessageSHRequestAllGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHRequestProcessMonitorStats::~MessageSHRequestProcessMonitorStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHRequestSystemActionStats::~MessageSHRequestSystemActionStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHRequestProcessMonitorEventLog::~MessageSHRequestProcessMonitorEventLog(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageRequestCurrentGraphsForAllSessions::~MessageRequestCurrentGraphsForAllSessions(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageFlushCurrentGraphsForAllSessions::~MessageFlushCurrentGraphsForAllSessions(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageEnteringSleep::~MessageEnteringSleep(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageExitingSleep::~MessageExitingSleep(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageResourcesNoLongerWantedFailed::~MessageResourcesNoLongerWantedFailed(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageStoppedResources::~MessageStoppedResources(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageUserActive::~MessageUserActive(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageUserInactive::~MessageUserInactive(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSetupFailed::~MessageSetupFailed(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePauseCompleted::~MessagePauseCompleted(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePauseFailed::~MessagePauseFailed(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageResourcesNoLongerWantedProcessed::~MessageResourcesNoLongerWantedProcessed(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePBSLockSuccess::~MessagePBSLockSuccess(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePBSLockFailure::~MessagePBSLockFailure(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageCollectDPTailspin::~MessageCollectDPTailspin(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageRequestResourceAvailabilityUpdates::~MessageRequestResourceAvailabilityUpdates(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageStopResourceAvailabilityUpdates::~MessageStopResourceAvailabilityUpdates(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void std::__shared_ptr_emplace<PSSG::PSCommsClientWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870BB428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PSSG::MessageResourceStateUpdate::serialize(PSSG::MessageResourceStateUpdate *this)
{
  *(this + 1) = 0u;
  result = this + 16;
  *(result + 320) = 0u;
  *(result + 336) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *(result + 48) = 45;
  *(result + 312) = *(result - 8);
  return result;
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = *(a2 + 48);
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), (a2 + 56));
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 488) = 0;
  if ((*a2 & 0x80000000) != 0 && *(a2 + 24) == 1 && *(a2 + 39) == 1)
  {
    v4 = *(a2 + 312);
    v5 = *(a2 + 320);
    if (*(a2 + 312) == 0)
    {
      v6 = *(a2 + 28);
LABEL_19:
      *(a1 + 120) = *(a2 + 328);
      *(a1 + 128) = v6;
      return a1;
    }

    v7 = v5 + v4;
    if ((v5 + v4) << 8 < 0x8C1 || *(a2 + 328) <= 0x8C0uLL)
    {
      v6 = *(a2 + 28);
      if (v4)
      {
        v8 = *(a2 + 312);
        v9 = *(a2 + 28);
        do
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((a1 + 40), __p, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v9 += 256;
          --v8;
        }

        while (v8);
      }

      if (v5 && v7 > v4)
      {
        v4 = v4;
        v10 = (v6 + (v4 << 8));
        do
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v10);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((a1 + 80), __p, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          ++v4;
          v10 += 256;
        }

        while (v7 > v4);
      }

      goto LABEL_19;
    }
  }

  return a1;
}

void sub_25EAE4008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v16);
  if (*(v15 + 39) < 0)
  {
    operator delete(*(v15 + 16));
  }

  _Unwind_Resume(a1);
}

void PSSG::MessageBase::~MessageBase(void **this)
{
  *this = &unk_2870BB478;
  free(this[61]);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 10);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 5);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

_OWORD *PSSG::MessageBase::serialize(PSSG::MessageBase *this)
{
  v1 = (this + 136);
  if (!*(this + 61))
  {
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 296) = 0u;
    *(this + 312) = 0u;
    *(this + 264) = 0u;
    *(this + 280) = 0u;
    *(this + 232) = 0u;
    *(this + 248) = 0u;
    *(this + 200) = 0u;
    *(this + 216) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *v1 = 0u;
    *(this + 152) = 0u;
    *(this + 23) = *(this + 1);
    v3 = this + 16;
    if (*(this + 39) < 0)
    {
      v3 = *v3;
    }

    strlcpy(this + 192, v3, 0x100uLL);
    v4 = *(this + 8);
    v5 = *(this + 13);
    *(this + 56) = v4;
    *(this + 57) = v5;
    v6 = *(this + 30);
    *(this + 58) = v6;
    v7 = v5 + v4;
    if (v5 + v4)
    {
      v8 = malloc_type_calloc((v5 + v4), 0x100uLL, 0x1000040104B78CFuLL);
      *(this + 61) = v8;
      if (!v8)
      {
        ps_handle_create_cold_1();
      }

      v9 = *(this + 7);
      if (v9)
      {
        v10 = 0;
        do
        {
          if (*(v9 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v9[2], v9[3]);
          }

          else
          {
            __p = *(v9 + 2);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          strlcpy((*(this + 61) + (v10 << 8)), p_p, 0x100uLL);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = *v9;
          ++v10;
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      for (i = *(this + 12); i; ++v10)
      {
        if (*(i + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
        }

        else
        {
          __p = *(i + 2);
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

        strlcpy((*(this + 61) + (v10 << 8)), v13, 0x100uLL);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        i = *i;
      }

      *(this + 60) = *(this + 61);
      LODWORD(v6) = v7 << 8;
    }

    else
    {
      *(this + 60) = *(this + 16);
    }

    *(this + 119) = v6;
  }

  return v1;
}

void sub_25EAE42F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *PSSG::MessagePublishResourceKeysAndStrides::MessagePublishResourceKeysAndStrides(void *a1, uint64_t a2)
{
  v3 = PSSG::MessageBase::MessageBase(a1, a2);
  *v3 = &unk_2870BB4A8;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;
  *(v3 + 544) = 0;
  *(v3 + 552) = 1065353216;
  v4 = *(v3 + 120);
  if (v4)
  {
    v5 = a1[16];
    v23 = v5 + v4;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v28, v5);
      LODWORD(v24) = 0;
      v26 = 0;
      v27 = 0;
      __p = 0;
      v6 = std::unordered_map<std::string,PSSG::ResourceOptions>::insert_or_assign[abi:ne200100]<PSSG::ResourceOptions>(a1 + 65, v28, &v24);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      v7 = *(v5 + 256);
      if (v7)
      {
        std::vector<std::pair<unsigned int,unsigned int>>::reserve(v6 + 6, v7);
        if (*(v5 + 256))
        {
          v8 = 0;
          v9 = v6[7];
          v10 = (v5 + 276);
          do
          {
            v11 = v6[8];
            if (v9 >= v11)
            {
              v12 = v6[6];
              v13 = v9 - v12;
              v14 = (v9 - v12) >> 3;
              v15 = v14 + 1;
              if ((v14 + 1) >> 61)
              {
                std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
              }

              v16 = v11 - v12;
              if (v16 >> 2 > v15)
              {
                v15 = v16 >> 2;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF8)
              {
                v17 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              if (v17)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>((v6 + 6), v17);
              }

              v18 = (v9 - v12) >> 3;
              v19 = (8 * v14);
              *v19 = *(v10 - 1);
              v19[1] = *v10;
              v9 = (8 * v14 + 8);
              v20 = 8 * v14 - 8 * v18;
              memcpy(&v19[-2 * v18], v12, v13);
              v21 = v6[6];
              v6[6] = v20;
              v6[7] = v9;
              v6[8] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *v9 = *(v10 - 1);
              *(v9 + 1) = *v10;
              v9 += 8;
            }

            v6[7] = v9;
            ++v8;
            v10 += 2;
          }

          while (v8 < *(v5 + 256));
        }

        *(v6 + 10) = *(v5 + 260);
      }

      *(v6 + 19) = *(v5 + 264);
      *(v6 + 72) = *(v5 + 268);
      std::string::basic_string[abi:ne200100]<0>(&v24, v5);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 5, &v24, &v24);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      v5 += 8 * *(v5 + 256) + 272;
    }

    while (v5 < v23);
  }

  return a1;
}

void sub_25EAE455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v21 + 520);
  v23 = *(v21 + 496);
  if (v23)
  {
    *(v21 + 504) = v23;
    operator delete(v23);
  }

  PSSG::MessageBase::~MessageBase(v21);
  _Unwind_Resume(a1);
}

const void **std::unordered_map<std::string,PSSG::ResourceOptions>::insert_or_assign[abi:ne200100]<PSSG::ResourceOptions>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::string,PSSG::ResourceOptions>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    *(v4 + 10) = *a3;
    std::vector<std::pair<unsigned int,unsigned int>>::__move_assign((v4 + 6), (a3 + 8));
    v5[9] = *(a3 + 32);
  }

  return v5;
}

void std::vector<std::pair<unsigned int,unsigned int>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t PSSG::MessagePublishResourceKeysAndStrides::MessagePublishResourceKeysAndStrides(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = PSSG::MessageBase::MessageBase(a1, 24, a2);
  *v5 = &unk_2870BB4A8;
  v5[63] = 0;
  v5[64] = 0;
  v5[62] = 0;
  std::unordered_map<std::string,PSSG::ResourceOptions>::unordered_map((v5 + 65), a3);
  for (i = *(a3 + 16); i; i = *i)
  {
    v7 = (i + 2);
    __p = 0;
    v14 = 0;
    v15 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
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
    *__dst = 0u;
    if (*(i + 39) < 0)
    {
      v7 = *v7;
    }

    strlcpy(__dst, v7, 0x100uLL);
    LODWORD(v32) = (i[7] - i[6]) >> 3;
    DWORD1(v32) = *(i + 10);
    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v14, __dst, v33, 272);
    v8 = i[6];
    v9 = i[7];
    while (v8 != v9)
    {
      v12 = 0;
      v12 = *v8;
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v14, &v12, &__p, 8);
      ++v8;
    }

    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1 + 496, *(a1 + 504), __p, v14, v14 - __p);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  v10 = *(a1 + 496);
  *(a1 + 120) = *(a1 + 504) - v10;
  *(a1 + 128) = v10;
  return a1;
}

void sub_25EAE4890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 496);
  if (v13)
  {
    *(v11 + 504) = v13;
    operator delete(v13);
  }

  PSSG::MessageBase::~MessageBase(v11);
  _Unwind_Resume(a1);
}

void PSSG::MessagePublishResourceKeysAndStrides::resourceKeys(uint64_t *__return_ptr a1@<X8>, PSSG::MessagePublishResourceKeysAndStrides *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  for (i = *(this + 67); i; i = *i)
  {
    std::pair<std::string const,PSSG::ResourceOptions>::pair[abi:ne200100](&v4, i + 1);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, &v4, &v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }
}

void *PSSG::MessageSetResourceAvailability::MessageSetResourceAvailability(void *a1, uint64_t a2)
{
  v3 = PSSG::MessageBase::MessageBase(a1, a2);
  *v3 = &unk_2870BB4D8;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;
  *(v3 + 544) = 0;
  *(v3 + 552) = 1065353216;
  v4 = *(v3 + 120);
  if (v4)
  {
    v5 = a1[16];
    v6 = v5 + v4;
    v7 = (v5 + 256);
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v7 - 256);
      v8 = std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::string,unsigned char &>(a1 + 65, __p, __p, v7);
      if ((v9 & 1) == 0)
      {
        *(v8 + 40) = *v7;
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v7 - 256);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 5, __p, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = v7 + 1;
      v7 += 257;
    }

    while (v10 < v6);
  }

  return a1;
}

void sub_25EAE4A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table((v15 + 520));
  v17 = *(v15 + 496);
  if (v17)
  {
    *(v15 + 504) = v17;
    operator delete(v17);
  }

  PSSG::MessageBase::~MessageBase(v15);
  _Unwind_Resume(a1);
}

uint64_t PSSG::MessageSetResourceAvailability::MessageSetResourceAvailability(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = PSSG::MessageBase::MessageBase(a1, 30, a2);
  *v5 = &unk_2870BB4D8;
  v5[63] = 0;
  v5[64] = 0;
  v5[62] = 0;
  std::unordered_map<std::string,unsigned char>::unordered_map((v5 + 65), a3);
  for (i = *(a3 + 16); i; i = *i)
  {
    v7 = (i + 2);
    __p = 0;
    v11 = 0;
    v12 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *__dst = 0u;
    if (*(i + 39) < 0)
    {
      v7 = *v7;
    }

    strlcpy(__dst, v7, 0x100uLL);
    v29 = *(i + 40);
    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v11, __dst, v30, 257);
    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1 + 496, *(a1 + 504), __p, v11, v11 - __p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  v8 = *(a1 + 496);
  *(a1 + 120) = *(a1 + 504) - v8;
  *(a1 + 128) = v8;
  return a1;
}

void sub_25EAE4C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 496);
  if (v13)
  {
    *(v11 + 504) = v13;
    operator delete(v13);
  }

  PSSG::MessageBase::~MessageBase(v11);
  _Unwind_Resume(a1);
}

void PSSG::MessageSetResourceAvailability::resourceKeys(uint64_t *__return_ptr a1@<X8>, PSSG::MessageSetResourceAvailability *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  for (i = *(this + 67); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v5 = *(i + 40);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, &__p, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void PSSG::MessagePublishResourceKeysAndStrides::description(std::string *__return_ptr a1@<X8>, PSSG::MessagePublishResourceKeysAndStrides *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v81, "Publish resource keys+strides [");
  v4 = *(this + 39);
  if (v4 >= 0)
  {
    v5 = this + 16;
  }

  else
  {
    v5 = *(this + 2);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 39);
  }

  else
  {
    v6 = *(this + 3);
  }

  v7 = std::string::append(&v81, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v82.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v82.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v79, "]: ");
  if ((v80 & 0x80u) == 0)
  {
    v9 = v79;
  }

  else
  {
    v9 = v79[0];
  }

  if ((v80 & 0x80u) == 0)
  {
    v10 = v80;
  }

  else
  {
    v10 = v79[1];
  }

  v11 = std::string::append(&v82, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = *(this + 68);
  if (!v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v77, "[]");
    goto LABEL_131;
  }

  v14 = *(this + 67);
  if (*(v14 + 39) >= 0)
  {
    v15 = *(v14 + 39);
  }

  else
  {
    v15 = *(v14 + 24);
  }

  v16 = &v90;
  std::string::basic_string[abi:ne200100](&v90, v15 + 1);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v90.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (*(v14 + 39) >= 0)
    {
      v17 = (v14 + 16);
    }

    else
    {
      v17 = *(v14 + 16);
    }

    memmove(v16, v17, v15);
  }

  *(&v16->__r_.__value_.__l.__data_ + v15) = 40;
  PSSG::Resource::describe(&v89, *(v14 + 40));
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v89;
  }

  else
  {
    v18 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v89.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v90, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v91.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v91.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v91, ")@");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(&v84, *(v14 + 48), *(v14 + 56), (*(v14 + 56) - *(v14 + 48)) >> 3);
  v24 = v84;
  v25 = v85 - v84;
  if (v85 == v84)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "[]");
    goto LABEL_69;
  }

  PSSG::Resource::describe(&v100, *v84);
  v26 = std::string::insert(&v100, 0, "(stride=");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v101.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v101.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v101, ",offset=");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v99, v24[1]);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v99;
  }

  else
  {
    v30 = v99.__r_.__value_.__r.__words[0];
  }

  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v99.__r_.__value_.__l.__size_;
  }

  v32 = std::string::append(&v102, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v103, ")");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v104.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v104.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (v25 == 8)
  {
    std::operator+<char>();
    v36 = std::string::append(&v103, "]");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v88 = v36->__r_.__value_.__r.__words[2];
    *__p = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    v38 = v103.__r_.__value_.__r.__words[0];
  }

  else
  {
    std::operator+<char>();
    v39 = std::string::append(&v101, " +");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v102.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v102.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v100, (v25 >> 3) - 1);
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v100;
    }

    else
    {
      v41 = v100.__r_.__value_.__r.__words[0];
    }

    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v100.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v102, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = std::string::append(&v103, " more]");
    v46 = *&v45->__r_.__value_.__l.__data_;
    v88 = v45->__r_.__value_.__r.__words[2];
    *__p = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    v38 = v101.__r_.__value_.__r.__words[0];
  }

  operator delete(v38);
LABEL_67:
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

LABEL_69:
  if (v88 >= 0)
  {
    v47 = __p;
  }

  else
  {
    v47 = __p[0];
  }

  if (v88 >= 0)
  {
    v48 = HIBYTE(v88);
  }

  else
  {
    v48 = __p[1];
  }

  v49 = std::string::append(&v92, v47, v48);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v93, "Setupcapability");
  v52 = *&v51->__r_.__value_.__l.__data_;
  v94.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
  *&v94.__r_.__value_.__l.__data_ = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  PSSG::Resource::describe(&v104, *(v14 + 72));
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = &v104;
  }

  else
  {
    v53 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v104.__r_.__value_.__l.__size_;
  }

  v55 = std::string::append(&v94, v53, v54);
  v56 = *&v55->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v95, "MSGID");
  v58 = *&v57->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  PSSG::Resource::describe(&v103, *(v14 + 76));
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v103;
  }

  else
  {
    v59 = v103.__r_.__value_.__r.__words[0];
  }

  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v103.__r_.__value_.__l.__size_;
  }

  v61 = std::string::append(&v96, v59, v60);
  v62 = *&v61->__r_.__value_.__l.__data_;
  v98 = v61->__r_.__value_.__r.__words[2];
  v97 = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(__p[0]);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v13 == 1)
  {
    std::operator+<char>();
    v63 = std::string::append(&v104, "]");
    v64 = *&v63->__r_.__value_.__l.__data_;
    v78 = v63->__r_.__value_.__r.__words[2];
    *v77 = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    v65 = v104.__r_.__value_.__r.__words[0];
  }

  else
  {
    std::operator+<char>();
    v66 = std::string::append(&v102, " +");
    v67 = *&v66->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v101, v13 - 1);
    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v101;
    }

    else
    {
      v68 = v101.__r_.__value_.__r.__words[0];
    }

    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v101.__r_.__value_.__l.__size_;
    }

    v70 = std::string::append(&v103, v68, v69);
    v71 = *&v70->__r_.__value_.__l.__data_;
    v104.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v104.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v104, " more]");
    v73 = *&v72->__r_.__value_.__l.__data_;
    v78 = v72->__r_.__value_.__r.__words[2];
    *v77 = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    v65 = v102.__r_.__value_.__r.__words[0];
  }

  operator delete(v65);
LABEL_129:
  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

LABEL_131:
  if (v78 >= 0)
  {
    v74 = v77;
  }

  else
  {
    v74 = v77[0];
  }

  if (v78 >= 0)
  {
    v75 = HIBYTE(v78);
  }

  else
  {
    v75 = v77[1];
  }

  v76 = std::string::append(&v83, v74, v75);
  *a1 = *v76;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE5588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  if (*(v65 - 177) < 0)
  {
    operator delete(*(v65 - 200));
  }

  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  if (*(v65 - 153) < 0)
  {
    operator delete(*(v65 - 176));
  }

  if (*(v65 - 57) < 0)
  {
    operator delete(*(v65 - 80));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_25EAE5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x25EAE5804);
  }

  JUMPOUT(0x25EAE5808);
}

void PSSG::MessageSetResourceAvailability::description(std::string *__return_ptr a1@<X8>, PSSG::MessageSetResourceAvailability *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v29, "Set resource availability [");
  v4 = *(this + 39);
  if (v4 >= 0)
  {
    v5 = this + 16;
  }

  else
  {
    v5 = *(this + 2);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 39);
  }

  else
  {
    v6 = *(this + 3);
  }

  v7 = std::string::append(&v29, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "]: ");
  if ((v28 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v10 = v28;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v30, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 68))
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "[");
    for (i = *(this + 67); i; i = *i)
    {
      std::to_string(&v32, *(i + 40));
      v14 = *(i + 39);
      if (v14 >= 0)
      {
        v15 = (i + 2);
      }

      else
      {
        v15 = i[2];
      }

      if (v14 >= 0)
      {
        v16 = *(i + 39);
      }

      else
      {
        v16 = i[3];
      }

      v17 = std::string::insert(&v32, 0, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v33, ",");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v35 = v19->__r_.__value_.__r.__words[2];
      v34 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (v35 >= 0)
      {
        v21 = &v34;
      }

      else
      {
        v21 = v34;
      }

      if (v35 >= 0)
      {
        v22 = HIBYTE(v35);
      }

      else
      {
        v22 = *(&v34 + 1);
      }

      std::string::append(&v26, v21, v22);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    std::string::append(&v26, "]");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "[]");
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v26;
  }

  else
  {
    v23 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v31, v23, size);
  *a1 = *v25;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE5B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 56));
  PSSG::MessageBase::MessageBase(a1, v4, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_2870BB508;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  if ((*a2 & 0x80000000) != 0 && *(a2 + 24) == 1 && *(a2 + 39) == 1)
  {
    v5 = *(a2 + 312);
    v6 = *(a2 + 320);
    v7 = *(a2 + 28);
    if (v5)
    {
      v8 = 0;
      v9 = *(a2 + 312);
      v10 = *(a2 + 28);
      do
      {
        if (v8 >= *(a1 + 512))
        {
          v8 = std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<char (&)[256],unsigned int &,char (&)[256]>(a1 + 496, v10, (v10 + 256), (v10 + 260));
        }

        else
        {
          std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(a1 + 496, v8, v10, (v10 + 256), (v10 + 260));
          v8 = (v8 + 56);
          *(a1 + 504) = v8;
        }

        *(a1 + 504) = v8;
        v10 += 516;
        --v9;
      }

      while (v9);
    }

    if (v6)
    {
      v11 = v6 + v5;
      if (v11 > v5)
      {
        v5 = v5;
        v12 = *(a1 + 528);
        v13 = v7 + 516 * v5;
        do
        {
          if (v12 >= *(a1 + 536))
          {
            v12 = std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<char (&)[256],unsigned int &,char (&)[256]>(a1 + 520, v13, (v13 + 256), (v13 + 260));
          }

          else
          {
            std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(a1 + 520, v12, v13, (v13 + 256), (v13 + 260));
            v12 = (v12 + 56);
            *(a1 + 528) = v12;
          }

          *(a1 + 528) = v12;
          ++v5;
          v13 += 516;
        }

        while (v11 > v5);
      }
    }

    *(a1 + 120) = *(a2 + 328);
    *(a1 + 128) = v7;
  }

  return a1;
}

void sub_25EAE5DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 544);
  *(v3 + 544) = 0;
  if (v5)
  {
    MEMORY[0x25F8C7C30](v5, 0x1000C80B3D5DE44);
  }

  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  PSSG::MessageBase::~MessageBase(v3);
  _Unwind_Resume(a1);
}

void sub_25EAE5E30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25EAE5E28);
}

uint64_t *PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(uint64_t *a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v8 = PSSG::MessageBase::MessageBase(a1, a2, a3);
  *v8 = &unk_2870BB508;
  v8[63] = 0;
  v8[64] = 0;
  v8[62] = 0;
  std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(v8 + 62, *a4, a4[1], 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 3));
  a1[67] = 0;
  *(a1 + 65) = 0u;
  std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(a1 + 65, *a5, a5[1], 0x6DB6DB6DB6DB6DB7 * ((a5[1] - *a5) >> 3));
  a1[68] = 0;
  return a1;
}

void sub_25EAE5F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  PSSG::MessageBase::~MessageBase(v3);
  _Unwind_Resume(a1);
}

char *PSSG::MessageRequestResourcesBase::serialize(PSSG::MessageRequestResourcesBase *this)
{
  *(this + 136) = 0u;
  v2 = this + 136;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 152) = 0u;
  *(this + 23) = *(this + 1);
  v3 = this + 16;
  if (*(this + 39) < 0)
  {
    v3 = *v3;
  }

  strlcpy(this + 192, v3, 0x100uLL);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 63) - *(this + 62)) >> 3);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 66) - *(this + 65)) >> 3);
  *(this + 56) = v4;
  *(this + 57) = v5;
  if (v5 + v4)
  {
    is_mul_ok(v5 + v4, 0x204uLL);
    operator new[]();
  }

  return v2;
}

void PSSG::MessageRequestResourcesWithStrides::description(std::string *__return_ptr a1@<X8>, const void ***this@<X0>)
{
  PSSG::describe(this + 62, &v12);
  v4 = std::string::insert(&v12, 0, "Request resources/strides: ++: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, " --: ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  PSSG::describe(this + 65, &__p);
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

  v10 = std::string::append(&v14, p_p, size);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE627C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

std::string *PSSG::describe@<X0>(const void ***a1@<X0>, std::string *a2@<X8>)
{
  if (a1[1] == *a1)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "[]");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "[");
    v4 = *a1;
    v5 = a1[1];
    if (*a1 != v5)
    {
      do
      {
        if (*(v4 + 6))
        {
          if (*(v4 + 23) >= 0)
          {
            v6 = *(v4 + 23);
          }

          else
          {
            v6 = v4[1];
          }

          std::string::basic_string[abi:ne200100](&v37, v6 + 1);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v7 = &v37;
          }

          else
          {
            v7 = v37.__r_.__value_.__r.__words[0];
          }

          if (v6)
          {
            if (*(v4 + 23) >= 0)
            {
              v8 = v4;
            }

            else
            {
              v8 = *v4;
            }

            memmove(v7, v8, v6);
          }

          *(&v7->__r_.__value_.__l.__data_ + v6) = 64;
          PSSG::Resource::describe(&v36, *(v4 + 6));
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v9 = &v36;
          }

          else
          {
            v9 = v36.__r_.__value_.__r.__words[0];
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v36.__r_.__value_.__l.__size_;
          }

          v11 = std::string::append(&v37, v9, size);
          v12 = *&v11->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v12;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          if (*(v4 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v33, v4[4], v4[5]);
          }

          else
          {
            v33 = *(v4 + 4);
          }

          PSSG::describeGraphName(&v33, __p);
          if ((v35 & 0x80u) == 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if ((v35 & 0x80u) == 0)
          {
            v14 = v35;
          }

          else
          {
            v14 = __p[1];
          }

          v15 = std::string::append(&v38, v13, v14);
          v16 = *&v15->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v39, ",");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v41 = v17->__r_.__value_.__r.__words[2];
          v40 = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (v41 >= 0)
          {
            v19 = &v40;
          }

          else
          {
            v19 = v40;
          }

          if (v41 >= 0)
          {
            v20 = HIBYTE(v41);
          }

          else
          {
            v20 = *(&v40 + 1);
          }

          std::string::append(a2, v19, v20);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_74;
          }

          v21 = v37.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (*(v4 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v32, v4[4], v4[5]);
          }

          else
          {
            v32 = *(v4 + 4);
          }

          PSSG::describeGraphName(&v32, &v38);
          v22 = *(v4 + 23);
          if (v22 >= 0)
          {
            v23 = v4;
          }

          else
          {
            v23 = *v4;
          }

          if (v22 >= 0)
          {
            v24 = *(v4 + 23);
          }

          else
          {
            v24 = v4[1];
          }

          v25 = std::string::insert(&v38, 0, v23, v24);
          v26 = *&v25->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          v27 = std::string::append(&v39, ",");
          v28 = *&v27->__r_.__value_.__l.__data_;
          v41 = v27->__r_.__value_.__r.__words[2];
          v40 = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if (v41 >= 0)
          {
            v29 = &v40;
          }

          else
          {
            v29 = v40;
          }

          if (v41 >= 0)
          {
            v30 = HIBYTE(v41);
          }

          else
          {
            v30 = *(&v40 + 1);
          }

          std::string::append(a2, v29, v30);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_74;
          }

          v21 = v32.__r_.__value_.__r.__words[0];
        }

        operator delete(v21);
LABEL_74:
        v4 += 7;
      }

      while (v4 != v5);
    }

    return std::string::append(a2, "]");
  }
}

void sub_25EAE6680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 + 23) < 0)
  {
    operator delete(*v45);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageResourceRequestsFailed::description(std::string *__return_ptr a1@<X8>, const void ***this@<X0>)
{
  PSSG::describe(this + 62, &v4);
  v3 = std::string::insert(&v4, 0, "Request resources/strides failed: ");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageCompletedResourceRequestWithStrides::description(std::string *__return_ptr a1@<X8>, const void ***this@<X0>)
{
  PSSG::describe(this + 62, &v12);
  v4 = std::string::insert(&v12, 0, "Request resources/strides completed: ++: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, " --: ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  PSSG::describe(this + 65, &__p);
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

  v10 = std::string::append(&v14, p_p, size);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSetupCompleted::description(std::string *__return_ptr a1@<X8>, const void ***this@<X0>)
{
  PSSG::describe(this + 62, &v4);
  v3 = std::string::insert(&v4, 0, "Setup resources/strides completed: ++: ");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSetupResources::description(const void ***this@<X0>, std::string *a2@<X8>)
{
  PSSG::describe(this + 62, &v4);
  v3 = std::string::insert(&v4, 0, "Setup resources/strides : ++: ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *PSSG::MessageNotifyClientDeath::serialize(PSSG::MessageNotifyClientDeath *this)
{
  result = PSSG::MessageBase::serialize(this);
  *(result + 78) = *(this + 124);
  return result;
}

void PSSG::MessageSHUpdateGraphs::description(std::string *__return_ptr a1@<X8>, PSSG::MessageSHUpdateGraphs *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Update Graphs: ");
  std::to_string(&v13, *(this + 30) / 0x178uLL);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " records");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSHRequestAllGraphs::getFilter(PSSG::MessageSHRequestAllGraphs *this@<X0>, uint64_t a2@<X8>)
{
  for (i = *(this + 7); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(a2, i[2], i[3]);
    }

    else
    {
      v4 = *(i + 1);
      *(a2 + 16) = i[4];
      *a2 = v4;
    }

    if (*(a2 + 23) < 0)
    {
      if (*(a2 + 8))
      {
        return;
      }

      operator delete(*a2);
    }

    else if (*(a2 + 23))
    {
      return;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void PSSG::MessageSHPublishAllGraphs::description(PSSG::MessageSHPublishAllGraphs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Graphs : ");
  std::to_string(&v13, *(this + 30) / 0x178uLL);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " records");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EAE6E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void **PSSG::MessageSHTriggerHealthUpdate::description@<X0>(void **this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this[16];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    this = memcpy(a2, "System Health profile update: %d", v3);
  }

  a2[v3] = 0;
  return this;
}

void PSSG::MessageNotifyClientDeath::~MessageNotifyClientDeath(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageResourceRequestsFailed::~MessageResourceRequestsFailed(PSSG::MessageResourceRequestsFailed *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

void PSSG::MessageSetupResources::~MessageSetupResources(PSSG::MessageSetupResources *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

void PSSG::MessageCompletedResourceRequestWithStrides::~MessageCompletedResourceRequestWithStrides(PSSG::MessageCompletedResourceRequestWithStrides *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

void PSSG::MessageSetupCompleted::~MessageSetupCompleted(PSSG::MessageSetupCompleted *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

void PSSG::MessageSHUpdateGraphs::~MessageSHUpdateGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHPublishAllGraphs::~MessageSHPublishAllGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHTriggerHealthUpdate::~MessageSHTriggerHealthUpdate(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

std::string *std::pair<std::string const,PSSG::ResourceOptions>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
  return this;
}

void sub_25EAE7894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,PSSG::ResourceOptions>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void PSSG::describeGraphName(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      std::operator+<char>();
      v3 = std::string::append(&v5, ")");
      v4 = *&v3->__r_.__value_.__l.__data_;
      a2[2] = *(&v3->__r_.__value_.__l + 2);
      *a2 = v4;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v5.__r_.__value_.__l.__data_);
      }

      return;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_25EAE79A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t *a2, uint64_t a3)
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

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::string,PSSG::ResourceOptions>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_25EAE7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::vector<std::pair<unsigned int,unsigned int>>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::unordered_map<std::string,PSSG::ResourceOptions>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSSG::ResourceOptions> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSSG::ResourceOptions> const&>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__construct_node_hash<std::pair<std::string const,PSSG::ResourceOptions> const&>();
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

void sub_25EAE81FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < __len)
  {
    v11 = *a1;
    v12 = v10 - *a1 + __len;
    if (v12 < 0)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if ((v10 - __dst) >= __len)
  {
    v26 = &__dst[__len];
    v27 = (v10 - __len);
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = (v10 + v17);
    if (&v18[-v6] < v10)
    {
      v21 = (a4 - &v7[v6]);
      v22 = (a4 - v7);
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::string,unsigned char &>(void *a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t std::unordered_map<std::string,unsigned char>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::pair<std::string const,unsigned char> const&>();
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