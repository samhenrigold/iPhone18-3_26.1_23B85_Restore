void SLAM::SLAM::PerformScript(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::SLAM::PerformScriptWithResult(a1, v7, v6);
}

void sub_2980E1DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  SLAM::ScriptResult::~ScriptResult(va);
  _Unwind_Resume(a1);
}

void SLAM::ScriptResult::~ScriptResult(SLAM::ScriptResult *this)
{
  if (*(this + 64) == 1)
  {
    v3 = (this + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 32) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      *(this + 2) = v2;
      operator delete(v2);
    }
  }
}

void SLAM::SLAMPrivateInterface::PerformScriptWithResult()
{
  v5 = *MEMORY[0x29EDCA608];
  std::allocate_shared[abi:ne200100]<SLAM::Logger,std::allocator<SLAM::Logger>,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,0>();
}

{
  v5 = *MEMORY[0x29EDCA608];
  std::allocate_shared[abi:ne200100]<SLAM::Logger,std::allocator<SLAM::Logger>,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,0>();
}

void sub_2980E2364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 144);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a19);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SLAM::ScriptResult::~ScriptResult(v28);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t SLAM::ScriptResult::Failure@<X0>(_BYTE *a1@<X8>, std::string **a2@<X0>)
{
  *a1 = 2;
  a1[8] = 0;
  a1[32] = 0;
  a1[40] = 0;
  a1[64] = 0;
  return std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>((a1 + 40), a2);
}

SLAM::Error *SLAM::Error::Error(SLAM::Error *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  va_copy(v21, va);
  v22.__first_ = 0;
  vasprintf(&v22, a2, va);
  if (v22.__first_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v22.__first_);
    free(v22.__first_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v22.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v10 = 24 * v6;
    v11 = *__p;
    *(v10 + 16) = v20;
    *v10 = v11;
    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    v12 = 24 * v6 + 24;
    v13 = *(this + 1) - *this;
    v14 = 24 * v6 - v13;
    memcpy((v10 - v13), *this, v13);
    v15 = *this;
    *this = v14;
    *(this + 1) = v12;
    v16 = *(this + 2);
    *(this + 2) = 0;
    v22.__end_ = v15;
    v22.__end_cap_.__value_ = v16;
    v22.__first_ = v15;
    v22.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v22);
    v17 = SHIBYTE(v20);
    *(this + 1) = v12;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v20;
    *v4 = v5;
    *(this + 1) = v4 + 24;
  }

  return this;
}

void sub_2980E26BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SLAM::SLAM::PerformScript(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a1, *(a1 + 8));
  }

  else
  {
    v12 = *a1;
  }

  v6 = *a2;
  v7 = a2[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v9 = a3[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::SLAM::PerformScriptWithResult(&v12, v11, v10);
}

void SLAM::SLAMPrivateInterface::PerformRecovery(void *a1, uint64_t *a2, void *a3)
{
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::SLAMPrivateInterface::PerformRecoveryWithResult();
}

void sub_2980E3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  SLAM::ScriptResult::~ScriptResult(va);
  _Unwind_Resume(a1);
}

uint64_t *SLAM::Impl::PerformScriptWithResult@<X0>(uint64_t *__return_ptr a1@<X8>, SLAM::Impl *this@<X0>)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 8))(v16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if ((v19 & 1) == 0)
  {
    SLAM::ScriptResult::Failure(a1, v16);
    return caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(v16);
  }

  SLAM::Impl::GetChipId(v11, this);
  if (v12)
  {
    v6 = *caulk::expected<unsigned char,SLAM::Error>::value(v11);
    v7 = 1;
    if (v6 > 0xC7)
    {
      if (v6 != 200 && v6 != 210)
      {
        goto LABEL_15;
      }
    }

    else if (v6 != 100 && v6 != 115)
    {
LABEL_15:
      v7 = 2;
    }

    if (v18 == 1 && (v17 & ~v7) != 0)
    {
      SLAM::Error::Error(v14, "HW Mismatch! Platform HW is %d but script platform is %d", v17, v7);
      SLAM::ScriptResult::Failure(a1, v14);
      v13 = v14;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    }

    else
    {
      SLAM::Impl::QueryMigrationInfo(v14, this);
      if (v15)
      {
        v8 = caulk::expected<SLAM::Script,SLAM::Error>::value(v16);
        v9 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v14);
        SLAM::Impl::PerformScriptWithResult(this, v8, v9, a1);
      }

      else
      {
        SLAM::ScriptResult::Failure(a1, v14);
      }

      caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v14);
    }

    goto LABEL_23;
  }

  SLAM::ScriptResult::Failure(a1, v11);
LABEL_23:
  if ((v12 & 1) == 0)
  {
    v14[0] = v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  return caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(v16);
}

void sub_2980E3698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void **);
  va_copy(va3, va2);
  v13 = va_arg(va3, void **);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va1);
  if ((v10 & 1) == 0)
  {
    va_copy(v13, va);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va2);
  }

  caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(va3);
  _Unwind_Resume(a1);
}

void sub_2980E3700()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x2980E36F8);
}

SLAM::Error *SLAM::Error::Add(SLAM::Error *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(v21, va);
  v22.__first_ = 0;
  vasprintf(&v22, a2, va);
  if (v22.__first_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v22.__first_);
    free(v22.__first_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v22.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v10 = 24 * v6;
    v11 = *__p;
    *(v10 + 16) = v20;
    *v10 = v11;
    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    v12 = 24 * v6 + 24;
    v13 = *(this + 1) - *this;
    v14 = 24 * v6 - v13;
    memcpy((v10 - v13), *this, v13);
    v15 = *this;
    *this = v14;
    *(this + 1) = v12;
    v16 = *(this + 2);
    *(this + 2) = 0;
    v22.__end_ = v15;
    v22.__end_cap_.__value_ = v16;
    v22.__first_ = v15;
    v22.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v22);
    v17 = SHIBYTE(v20);
    *(this + 1) = v12;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v20;
    *v4 = v5;
    *(this + 1) = v4 + 24;
  }

  return this;
}

void sub_2980E3898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::PerformScriptWithResult(void (***a1)(__int128 *__return_ptr)@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  v34 = *MEMORY[0x29EDCA608];
  SLAM::Impl::GetChipId(v27, a1);
  if ((v28 & 1) == 0)
  {
    SLAM::ScriptResult::Failure(a3, v27);
    goto LABEL_42;
  }

  v6 = *caulk::expected<unsigned char,SLAM::Error>::value(v27);
  v7 = 1;
  if (v6 > 0xC7)
  {
    if (v6 == 200 || v6 == 210)
    {
      goto LABEL_10;
    }
  }

  else if (v6 == 100 || v6 == 115)
  {
    goto LABEL_10;
  }

  v7 = 2;
LABEL_10:
  SLAM::Impl::QueryMigrationInfo(v32, a1);
  if (v33)
  {
    v8 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v32);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v24, *(v8 + 16), *(v8 + 24), *(v8 + 24) - *(v8 + 16));
    v10 = a1[6];
    v9 = a1[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 1));
    }

    else
    {
      v23 = *a2;
    }

    __p = 0;
    v21 = 0;
    v22 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v24, v25, v25 - v24);
    (**v10)(&v29, v10, &v23, &__p, v7);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v31)
    {
      v12 = a1[8];
      v11 = a1[9];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v13 = caulk::expected<SLAM::Script,SLAM::Error>::value(&v29);
      SLAM::Logger::Log(v12, 1, "PerformScriptWithResult", 314, "Executing script %s ID 0x%llX", a2, *v13);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v14 = caulk::expected<SLAM::Script,SLAM::Error>::value(&v29);
      v15 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v32);
      SLAM::Impl::PerformScriptWithResult(a1, v14, v15, a3);
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v19, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      ctu::hex();
      if (v18 >= 0)
      {
        v16 = v17;
      }

      else
      {
        v16 = v17[0];
      }

      SLAM::Error::Add(&v19, "with name %s, pkHash %s, platformCategory %d", a2, v16, v7);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      SLAM::ScriptResult::Failure(a3, &v19);
      v17[0] = &v19;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
    }

    caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(&v29);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }

  else
  {
    SLAM::ScriptResult::Failure(a3, v32);
  }

  caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v32);
LABEL_42:
  if ((v28 & 1) == 0)
  {
    v29 = v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  }
}

void sub_2980E3BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, char *a38)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v39 - 128);
  if ((a37 & 1) == 0)
  {
    a38 = &a34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  }

  _Unwind_Resume(a1);
}

void sub_2980E3FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 144);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a19);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SLAM::ScriptResult::~ScriptResult(v28);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t *SLAM::Impl::PerformRecoveryWithResult@<X0>(uint64_t *__return_ptr a1@<X8>, void (***this)(__int128 *__return_ptr)@<X0>)
{
  v57 = *MEMORY[0x29EDCA608];
  SLAM::Impl::QueryMigrationInfo(&v54, this);
  v47 = 0;
  LOBYTE(v48) = 0;
  v50 = 0;
  LOBYTE(v51.__begin_) = 0;
  v52 = 0;
  if (v56)
  {
    v17 = 0;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](&v18, &v48);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v21, &v51);
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    v26 = 0;
    if (v20 == 1)
    {
      v24 = v18;
      v25 = v19;
      v19 = 0;
      v18 = 0uLL;
      v26 = 1;
    }

    v27.__r_.__value_.__s.__data_[0] = 0;
    v28 = 0;
    if (v22 == 1)
    {
      v27 = v21;
      memset(&v21, 0, sizeof(v21));
      v28 = 1;
    }

    LOBYTE(v11) = v47;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v12, &v48);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v15, &v51);
    v29 = v11;
    LOBYTE(v30) = 0;
    v32 = 0;
    if (v14 == 1)
    {
      v30 = *v12;
      v31 = v13;
      v12[1] = 0;
      v13 = 0;
      v12[0] = 0;
      v32 = 1;
    }

    v33.__r_.__value_.__s.__data_[0] = 0;
    v34 = 0;
    if (v16 == 1)
    {
      v33 = v15;
      memset(&v15, 0, sizeof(v15));
      v34 = 1;
    }

    LOBYTE(v5) = v47;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v6, &v48);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v9, &v51);
    v35 = v5;
    LOBYTE(v36) = 0;
    v38 = 0;
    if (v8 == 1)
    {
      v36 = *v6;
      v37 = v7;
      v6[1] = 0;
      v7 = 0;
      v6[0] = 0;
      v38 = 1;
    }

    v39.__r_.__value_.__s.__data_[0] = 0;
    v40 = 0;
    if (v10 == 1)
    {
      v39 = v9;
      memset(&v9, 0, sizeof(v9));
      v40 = 1;
    }

    v41 = this;
    v42 = this;
    if (v55 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v53 = &v23;
    (off_2A1EA16C0[v55])(&v43, &v53, &v54);
    v47 = v43;
    std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<SLAM::ExecutionMessage>,false>>(&v48, &__p);
    std::__optional_storage_base<SLAM::Error,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SLAM::Error,false>>(&v51, v46);
    if (v46[24] == 1)
    {
      v53 = v46;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    if (v45 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (v40 == 1)
    {
      v53 = &v39;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    if (v38 == 1 && v36)
    {
      *(&v36 + 1) = v36;
      operator delete(v36);
    }

    if (v34 == 1)
    {
      v53 = &v33;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    if (v32 == 1 && v30)
    {
      *(&v30 + 1) = v30;
      operator delete(v30);
    }

    if (v28 == 1)
    {
      v53 = &v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    if (v26 == 1 && v24)
    {
      *(&v24 + 1) = v24;
      operator delete(v24);
    }

    if (v10 == 1)
    {
      v53 = &v9;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    if (v8 == 1 && v6[0])
    {
      v6[1] = v6[0];
      operator delete(v6[0]);
    }

    if (v16 == 1)
    {
      v5 = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    }

    if (v14 == 1 && v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }

    if (v22 == 1)
    {
      v11 = &v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
    }

    if (v20 == 1 && v18)
    {
      *(&v18 + 1) = v18;
      operator delete(v18);
    }

    *a1 = v47;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    if (v50 == 1)
    {
      *(a1 + 1) = v48;
      a1[3] = v49;
      v49 = 0;
      v48 = 0uLL;
      *(a1 + 32) = 1;
    }

    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    if (v52 == 1)
    {
      *(a1 + 5) = v51;
      memset(&v51, 0, sizeof(v51));
      *(a1 + 64) = 1;
      v23 = &v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    }
  }

  else
  {
    SLAM::ScriptResult::Failure(a1, &v54);
  }

  if (v50 == 1 && v48)
  {
    *(&v48 + 1) = v48;
    operator delete(v48);
  }

  return caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(&v54);
}

void sub_2980E466C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SLAM::Impl::GetChipId@<X0>(uint64_t *__return_ptr a1@<X8>, void (***this)(__int128 *__return_ptr)@<X0>)
{
  SLAM::SelectISDCommand::SelectISDCommand(&__p);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v20);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    LODWORD(v12) = 2141178496;
    BYTE4(v12) = 0;
    v16 = 0;
    v17 = 0;
    p_p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&p_p, &v12, &v12 + 5, 5);
    SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, &__p);
    if (p_p)
    {
      v16 = p_p;
      operator delete(p_p);
    }

    if (v19)
    {
      p_p = 0;
      v16 = 0;
      v17 = 0;
      v14[0] = *caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(&__p);
      v4 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(&__p);
      v14[1] = v4[1] - *v4;
      v5 = DERDecodeItem(v14, &p_p);
      if (v5)
      {
        SLAM::Error::Unexpected(&v12, "Failed to decode CPLC data top level tag %d", v6, v5);
LABEL_20:
        *a1 = v12;
        a1[2] = v13;
        v13 = 0;
        v12 = 0uLL;
        *(a1 + 24) = 0;
        v22 = &v12;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
        goto LABEL_21;
      }

      if (p_p != 0x800000000000007FLL)
      {
        SLAM::Error::Unexpected(&v12, "Unexpected CPLC data top level tag %llu", v6, p_p);
        goto LABEL_20;
      }

      if (v17 <= 3)
      {
        SLAM::Error::Unexpected(&v12, "Unexpected length for CPLC data %zu", v6, v17);
        goto LABEL_20;
      }

      v10 = v16[3];
    }

    else
    {
      v8 = this[8];
      v9 = this[9];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SLAM::Logger::Log(v8, 1, "GetChipId", 670, "Failed to read CPLC data; defaulting to SN210V");
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v10 = -46;
    }

    *a1 = v10;
    *(a1 + 24) = 1;
LABEL_21:
    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&__p);
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v20);
  }

  v7 = SLAM::Error::Add(v20, "Failed to select ISD");
  SLAM::Error::Unexpected(&__p, v7);
  *a1 = __p;
  memset(&__p, 0, sizeof(__p));
  *(a1 + 24) = 0;
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v20);
}

void sub_2980E499C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(va);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v18 - 56);
  _Unwind_Resume(a1);
}

void sub_2980E4A00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2980E49F8);
}

uint64_t caulk::expected<unsigned char,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980E4ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t *SLAM::Impl::QueryMigrationInfo@<X0>(uint64_t *__return_ptr a1@<X8>, void (***this)(__int128 *__return_ptr)@<X0>)
{
  v78 = *MEMORY[0x29EDCA608];
  SLAM::SelectISDCommand::SelectISDCommand(&__p);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v72);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v73)
  {
    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v72);
    LODWORD(v76.__r_.__value_.__l.__data_) = 240256;
    v76.__r_.__value_.__s.__data_[4] = 0;
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v76, &v76.__r_.__value_.__s.__data_[5], 5);
    SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v72);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v73)
    {
      v4 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v72);
      v76.__r_.__value_.__r.__words[0] = 0xC000000000000000;
      SLAM::DERParseSequenceToMap(v4, &v76, 1, &__p);
      if ((v71 & 1) == 0)
      {
        v36 = SLAM::Error::Add(&__p, "While parsing migration state");
        memset(&v76, 0, sizeof(v76));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v76, *v36, v36[1], 0xAAAAAAAAAAAAAAABLL * ((v36[1] - *v36) >> 3));
        SLAM::Error::Unexpected(&v68, &v76);
        *a1 = v68;
        memset(&v68, 0, sizeof(v68));
        *(a1 + 48) = 0;
        v75.__r_.__value_.__r.__words[0] = &v68;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
        v68.__r_.__value_.__r.__words[0] = &v76;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
LABEL_50:
        caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&__p);
        return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v72);
      }

      v75.__r_.__value_.__r.__words[0] = 0x53DF02FE00CA80;
      memset(&v68, 0, sizeof(v68));
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v68, &v75, &v75.__r_.__value_.__s.__data_[8], 8);
      SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, &v76);
      if (v68.__r_.__value_.__r.__words[0])
      {
        v68.__r_.__value_.__l.__size_ = v68.__r_.__value_.__r.__words[0];
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if ((v77 & 1) == 0)
      {
        v37 = SLAM::Error::Add(&v76, "While querying SLAM state");
        SLAM::Error::Unexpected(&v68, v37);
        *a1 = v68;
        memset(&v68, 0, sizeof(v68));
        *(a1 + 48) = 0;
        v75.__r_.__value_.__r.__words[0] = &v68;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
LABEL_49:
        caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v76);
        goto LABEL_50;
      }

      v5 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(&v76);
      *&v75.__r_.__value_.__l.__data_ = xmmword_2980F5C00;
      SLAM::DERParseSequenceToMap(v5, &v75, 2, &v68);
      if (v69)
      {
        v6 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&v68);
        v10 = *(v6 + 8);
        v8 = (v6 + 8);
        v9 = v10;
        if (v10)
        {
          v11 = v8;
          do
          {
            v12 = v9[4];
            v13 = v12 >= 0x8000000000000003;
            v14 = v12 < 0x8000000000000003;
            if (v13)
            {
              v11 = v9;
            }

            v9 = v9[v14];
          }

          while (v9);
          if (v11 != v8 && v11[4] <= 0x8000000000000003 && v11[6] == 32)
          {
            v15 = v11[5];
            memset(&v75, 0, sizeof(v75));
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v75, v15, v15 + 32, 32);
            v16 = *&v75.__r_.__value_.__l.__data_;
            v17 = v75.__r_.__value_.__r.__words[2];
            v18 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&v68);
            v22 = *(v18 + 8);
            v20 = v18 + 8;
            v21 = v22;
            if (!v22)
            {
              goto LABEL_52;
            }

            v23 = v20;
            do
            {
              v24 = *(v21 + 32);
              if (v24 < 0)
              {
                v23 = v21;
              }

              v21 = *(v21 + (~(v24 >> 60) & 8));
            }

            while (v21);
            if (v23 == v20 || *(v23 + 32) > 0x8000000000000000 || *(v23 + 48) != 1)
            {
LABEL_52:
              SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v19, 0x8000000000000000);
              goto LABEL_53;
            }

            if (**(v23 + 40) < 2u)
            {
              v33 = 0;
            }

            else
            {
              v25 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&v68);
              v29 = *(v25 + 8);
              v27 = v25 + 8;
              v28 = v29;
              if (!v29)
              {
                goto LABEL_69;
              }

              v30 = v27;
              do
              {
                v31 = *(v28 + 32);
                v13 = v31 >= 0x8000000000000004;
                v32 = v31 < 0x8000000000000004;
                if (v13)
                {
                  v30 = v28;
                }

                v28 = *(v28 + 8 * v32);
              }

              while (v28);
              if (v30 == v27 || *(v30 + 32) > 0x8000000000000004 || *(v30 + 48) != 2)
              {
LABEL_69:
                SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v26, 0x8000000000000004);
                goto LABEL_53;
              }

              v33 = bswap32(**(v30 + 40)) >> 16;
            }

            v40 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&__p);
            v44 = *(v40 + 8);
            v42 = v40 + 8;
            v43 = v44;
            if (!v44)
            {
              goto LABEL_68;
            }

            v45 = v42;
            do
            {
              v46 = *(v43 + 32);
              v13 = v46 >= 0xC000000000000009;
              v47 = v46 < 0xC000000000000009;
              if (v13)
              {
                v45 = v43;
              }

              v43 = *(v43 + 8 * v47);
            }

            while (v43);
            if (v45 != v42 && *(v45 + 32) <= 0xC000000000000009 && *(v45 + 48) == 2)
            {
              if (**(v45 + 40) == 23130)
              {
                *a1 = 0;
                a1[1] = 1;
LABEL_67:
                *(a1 + 1) = v16;
                a1[4] = v17;
                *(a1 + 10) = v33;
                *(a1 + 48) = 1;
                goto LABEL_48;
              }

              v48 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&__p);
              v52 = *(v48 + 8);
              v50 = v48 + 8;
              v51 = v52;
              if (!v52)
              {
                goto LABEL_83;
              }

              v53 = v50;
              do
              {
                v54 = *(v51 + 32);
                v13 = v54 >= 0xC00000000000000BLL;
                v55 = v54 < 0xC00000000000000BLL;
                if (v13)
                {
                  v53 = v51;
                }

                v51 = *(v51 + 8 * v55);
              }

              while (v51);
              if (v53 != v50 && *(v53 + 32) <= 0xC00000000000000BLL && *(v53 + 48) == 2)
              {
                v56 = bswap32(**(v53 + 40)) >> 16;
                if (v56 != 13260)
                {
                  if (v56 == 52275)
                  {
                    v57 = 0;
                    v58 = 3;
                  }

                  else if (v56 == 42405)
                  {
                    v57 = 0;
                    v58 = 2;
                  }

                  else
                  {
                    v58 = 0;
                    v57 = 0;
                  }

                  goto LABEL_96;
                }

                v59 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(&v68);
                v63 = *(v59 + 8);
                v61 = v59 + 8;
                v62 = v63;
                if (v63)
                {
                  v64 = v61;
                  do
                  {
                    v65 = *(v62 + 32);
                    v13 = v65 >= 0x8000000000000002;
                    v66 = v65 < 0x8000000000000002;
                    if (v13)
                    {
                      v64 = v62;
                    }

                    v62 = *(v62 + 8 * v66);
                  }

                  while (v62);
                  if (v64 != v61 && *(v64 + 32) <= 0x8000000000000002 && *(v64 + 48) == 8)
                  {
                    v57 = bswap64(**(v64 + 40));
                    v58 = 4;
LABEL_96:
                    *a1 = v57;
                    *(a1 + 2) = v58;
                    *(a1 + 3) = 0;
                    goto LABEL_67;
                  }
                }

                SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v60, 0x8000000000000002);
              }

              else
              {
LABEL_83:
                SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v49, 0xC00000000000000BLL);
              }
            }

            else
            {
LABEL_68:
              SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v41, 0xC000000000000009);
            }

LABEL_53:
            *a1 = v75;
            memset(&v75, 0, sizeof(v75));
            *(a1 + 48) = 0;
            v67.__r_.__value_.__r.__words[0] = &v75;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v67);
            if (v16)
            {
              operator delete(v16);
            }

            goto LABEL_48;
          }
        }

        SLAM::Error::Unexpected(&v75, "Missing or wrong length tag 0x%llx", v7, 0x8000000000000003);
        *a1 = v75;
        memset(&v75, 0, sizeof(v75));
        *(a1 + 48) = 0;
      }

      else
      {
        v38 = SLAM::Error::Add(&v68, "While parsing the respons from SLAM state");
        memset(&v75, 0, sizeof(v75));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v75, *v38, v38[1], 0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 3));
        SLAM::Error::Unexpected(&v67, &v75);
        *a1 = v67;
        memset(&v67, 0, sizeof(v67));
        *(a1 + 48) = 0;
        v74 = &v67;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v74);
      }

      v67.__r_.__value_.__r.__words[0] = &v75;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v67);
LABEL_48:
      caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&v68);
      goto LABEL_49;
    }

    v35 = SLAM::Error::Add(v72, "While querying migration state");
    SLAM::Error::Unexpected(&__p, v35);
  }

  else
  {
    v34 = SLAM::Error::Add(v72, "While selecting ISD");
    SLAM::Error::Unexpected(&__p, v34);
  }

  *a1 = __p;
  memset(&__p, 0, sizeof(__p));
  *(a1 + 48) = 0;
  v76.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v76);
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v72);
}

void sub_2980E52A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (v23)
  {
    operator delete(v23);
  }

  caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&__p);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v24 - 88);
  caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&a19);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(va);
  _Unwind_Resume(a1);
}

void SLAM::Impl::PerformScriptWithResult(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a2;
  v17.__r_.__value_.__r.__words[0] = a1;
  v17.__r_.__value_.__l.__size_ = a1;
  v17.__r_.__value_.__r.__words[2] = v5;
  v6 = *(a3 + 8);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21[0] = &v17;
  (off_2A1EA1698[v6])(v23, v21, a3);
  if (v24 == 1)
  {
    SLAM::ScriptResult::Failure(a4, v23);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24) - v10;
    v12 = a2[1];
    if (v11 == a2[2] - v12 && !memcmp(v10, v12, v11))
    {
      SLAM::Impl::ExecuteScript(&v17, a1, a2 + 5);
      if (v18 == 1)
      {
        SLAM::ScriptResult::Failure(a4, &v17);
        if (v18 == 1)
        {
          v21[0] = &v17;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
        }
      }

      else
      {
        *a4 = 0;
        a4[8] = 0;
        a4[32] = 0;
        a4[40] = 0;
        a4[64] = 0;
      }
    }

    else
    {
      ctu::hex();
      v13 = v22;
      v14 = v21[0];
      ctu::hex();
      v15 = v21;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v20 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      SLAM::Error::Error(&v17, "Mismatched signing keys device %s script %s", v15, p_p);
      SLAM::ScriptResult::Failure(a4, &v17);
      v25 = &v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }
  }

  if (v24 == 1)
  {
    v17.__r_.__value_.__r.__words[0] = v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  }
}

void sub_2980E5574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 == 1)
  {
    a22 = &a12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  }

  if (*(v27 - 64) == 1)
  {
    a12 = v27 - 88;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::expected<SLAM::Script,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 96) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980E56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980E5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::Logger::Log(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  va_start(va, a5);
  va_copy(v16, va);
  __s.__r_.__value_.__r.__words[0] = 0;
  vasprintf(&__s.__r_.__value_.__l.__data_, a5, va);
  if (__s.__r_.__value_.__r.__words[0])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s.__r_.__value_.__l.__data_);
    free(__s.__r_.__value_.__l.__data_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v10 = __p;
  if (v15 < 0)
  {
    v10 = __p[0];
  }

  SLAM::StringUtil::Format(&__s, "%s/%d : %s", v9, a3, a4, v10);
  boost::circular_buffer<std::string,std::allocator<std::string>>::push_back_impl<std::string const&>(a1 + 16, &__s);
  if (a2 == 1)
  {
    v11 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (**v11)(v11, &__s);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2980E5900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::PerformScript(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  SLAM::Impl::PerformScriptWithResult(a1, a2, a3, v5);
  if (v5[0] == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a4, v9);
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    a4[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (v9[24] == 1)
  {
    v10 = v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  if (v8 == 1)
  {
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void SLAM::Impl::ExecuteScript(std::string *a1@<X8>, void *a2@<X0>, uint64_t *a3@<X1>)
{
  SLAM::Impl::ExecuteScriptWithResult(a2, a3, &v4);
  if (v4 == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a1, v8);
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (v8[24] == 1)
  {
    v9 = v8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  if (v7 == 1)
  {
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void SLAM::Impl::PerformRecovery(void (***this)(__int128 *__return_ptr)@<X0>, std::string *a2@<X8>)
{
  SLAM::Impl::PerformRecoveryWithResult(&v3, this);
  if (v3 == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a2, v7);
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (v7[24] == 1)
  {
    v8 = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  if (v6 == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

uint64_t SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>::~overloaded(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v6 = (a1 + 184);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 176) == 1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      *(a1 + 160) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 136) == 1)
  {
    v6 = (a1 + 112);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      *(a1 + 88) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v6 = (a1 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void SLAM::Impl::ExecuteScriptWithResult(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v24[0] = 0;
  LOBYTE(v25[0]) = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v30 = 0;
  if (v4 == v5)
  {
    goto LABEL_20;
  }

  LODWORD(v8) = 0;
  v9 = (v4 - v5) >> 3;
  while (2)
  {
    v10 = 0;
    while (1)
    {
      SLAM::TransceiverWrapper::Transceive(a1 + 1, v5, v22);
      if ((v23 & 1) == 0)
      {
        SLAM::Error::Error(__p, "While executing APDU %d", v10);
        SLAM::ScriptResult::Failure(a3, __p);
        v31[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
        goto LABEL_31;
      }

      v11 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v22);
      v12 = v11[1];
      if ((v12 - *v11) < 2)
      {
        LOWORD(v14) = -16468;
        v18 = 49068;
LABEL_27:
        LOWORD(v19) = v14;
        HIDWORD(v19) = v10;
        SLAM::ScriptResult::addMessage(v24, &v19);
        SLAM::Error::Error(__p, "Failed SW 0x%hX at idx %d", v18, v10);
        v24[0] = 2;
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>(&v28, __p);
        v31[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
        *a3 = v24[0];
        *(a3 + 8) = 0;
        *(a3 + 32) = 0;
        if (v27 == 1)
        {
          *(a3 + 8) = *v25;
          *(a3 + 24) = v26;
          v25[1] = 0;
          v26 = 0;
          v25[0] = 0;
          *(a3 + 32) = 1;
        }

        *(a3 + 40) = 0;
        *(a3 + 64) = 0;
        if (v30 == 1)
        {
          *(a3 + 40) = v28;
          *(a3 + 56) = v29;
          v29 = 0;
          v28 = 0uLL;
          *(a3 + 64) = 1;
        }

LABEL_31:
        caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v22);
        if ((v30 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v13 = *(v12 - 2);
      v14 = __rev16(v13);
      if ((v14 & 0xFFF0) == 0x63C0)
      {
        v8 = (v8 + 1);
        if (v9 > v8)
        {
          break;
        }
      }

      if (v13 != 144)
      {
        v18 = v14;
        goto LABEL_27;
      }

      caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v22);
      v5 += 24;
      ++v10;
      if (v5 == v4)
      {
        goto LABEL_20;
      }
    }

    LOWORD(v31[0]) = v14;
    HIDWORD(v31[0]) = v10;
    SLAM::ScriptResult::addMessage(v24, v31);
    v24[0] = 1;
    v16 = a1[8];
    v15 = a1[9];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v22);
    ctu::hex();
    v17 = __p;
    if (v21 < 0)
    {
      v17 = __p[0];
    }

    SLAM::Logger::Log(v16, 1, "ExecuteScriptWithResult", 482, "Warning APDU: %s idx %d replaying %d", v17, v10, v8);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v22);
    v5 = *a2;
    v4 = a2[1];
    if (*a2 != v4)
    {
      continue;
    }

    break;
  }

LABEL_20:
  *a3 = v24[0];
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  if (v27)
  {
    *(a3 + 8) = *v25;
    *(a3 + 24) = v26;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    *(a3 + 32) = 1;
  }

  *(a3 + 40) = 0;
  *(a3 + 64) = 0;
  if (v30 == 1)
  {
    *(a3 + 40) = v28;
    *(a3 + 56) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(a3 + 64) = 1;
LABEL_32:
    v22[0] = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v22);
  }

LABEL_33:
  if (v27 == 1)
  {
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }
  }
}

void sub_2980E5F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&a19);
  SLAM::ScriptResult::~ScriptResult(&a23);
  _Unwind_Resume(a1);
}

void SLAM::TransceiverWrapper::Transceive(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v6 = a1[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::hex();
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  SLAM::Logger::Log(v7, 0, "Transceive", 49, "> %s", v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v9 = a1[1];
  v10 = a1[2];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v9)(v9, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(a3 + 24))
  {
    v12 = a1[3];
    v11 = a1[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(a3);
    ctu::hex();
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    SLAM::Logger::Log(v12, 0, "Transceive", 54, "< %s", v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_2980E6168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v15);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980E6274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::ScriptResult::addMessage(void *a1, void *a2)
{
  if ((a1[4] & 1) == 0)
  {
    __p = 0uLL;
    v18 = 0;
    std::optional<std::vector<SLAM::ExecutionMessage>>::operator=[abi:ne200100]<std::vector<SLAM::ExecutionMessage>,void>((a1 + 1), &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[2] = v6;
}

void sub_2980E63BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLAM::Impl::PerformTermination@<X0>(void (***this)(__int128 *__return_ptr)@<X0>, std::string *a2@<X8>)
{
  v12 = 371328;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v12, &v13, 4);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v10);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v4 = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v5 = SLAM::Error::Add(v10, "While terminating");
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
    v4 = 1;
  }

  a2[1].__r_.__value_.__s.__data_[0] = v4;
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v10);
}

void sub_2980E64AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(va);
  _Unwind_Resume(a1);
}

uint64_t SLAM::TransceiverWrapper::TransceiveAndCheckSW@<X0>(void (***a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  (**a1)(&v13);
  if ((v15 & 1) == 0)
  {
    *(a2 + 24) = v15;
    *a2 = v13;
    *(a2 + 16) = v14;
    v13 = 0uLL;
    v14 = 0;
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v13);
  }

  v3 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(&v13);
  v5 = v3[1];
  if ((v5 - *v3) < 2)
  {
    v9 = 49068;
LABEL_9:
    SLAM::Error::Unexpected(&v11, "Unexpected SW 0x%hX", v4, v9);
    *a2 = v11;
    *(a2 + 16) = v12;
    v12 = 0;
    v11 = 0uLL;
    *(a2 + 24) = 0;
    v16 = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v13);
  }

  v6 = *(v5 - 2);
  if (v6 != 144)
  {
    v9 = __rev16(v6);
    goto LABEL_9;
  }

  v7 = v13;
  if (*(&v13 + 1) - v13 > 1uLL)
  {
    v8 = *(&v13 + 1) - 2;
    *(&v13 + 1) -= 2;
  }

  else
  {
    std::vector<unsigned char>::__append(&v13, 0xFFFFFFFFFFFFFFFELL);
    v8 = *(&v13 + 1);
    v7 = v13;
  }

  *(a2 + 24) = v15;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  v14 = 0;
  v13 = 0uLL;
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v13);
}

void sub_2980E6618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(va);
  _Unwind_Resume(a1);
}

void SLAM::Error::Unexpected(std::string *__return_ptr a1@<X8>, __int128 **a2@<X0>)
{
  memset(&v3, 0, sizeof(v3));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *a1 = v3;
  memset(&v3, 0, sizeof(v3));
  v4 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void SLAM::DERParseSequenceToMap(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1] - *a1;
  v22[0] = *a1;
  v22[1] = v5;
  if (a3)
  {
    v7 = 8 * a3;
    while (1)
    {
      v14 = 0;
      v15 = 0uLL;
      v8 = DERDecodeItem(v22, &v14);
      v10 = *a2;
      if (v8 || v14 != v10)
      {
        break;
      }

      *v22 = v15;
      ++a2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    SLAM::Error::Unexpected(&v20, "Failed to decode ret %d tag 0x%llx exoected 0x%llx", v9, v8, v14, v10);
    *a4 = v20;
    *(a4 + 16) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 24) = 0;
    v23 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  else
  {
LABEL_6:
    v14 = 0;
    *&v15 = &v14;
    *(&v15 + 1) = 0x4002000000;
    v16 = __Block_byref_object_copy_;
    v19[0] = 0;
    v19[1] = 0;
    v17 = __Block_byref_object_dispose_;
    v18 = v19;
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___ZN4SLAML21DERParseSequenceToMapERNSt3__16vectorIhNS0_9allocatorIhEEEESt16initializer_listIyE_block_invoke;
    v13[3] = &unk_29EE8A2A8;
    v13[4] = &v14;
    v11 = DERDecodeSequenceContentWithBlock(v22, v13);
    if (v11)
    {
      SLAM::Error::Unexpected(&v20, "DecodeSequenceContent returned %d", v12, v11);
      *a4 = v20;
      *(a4 + 16) = v21;
      v21 = 0;
      v20 = 0uLL;
      *(a4 + 24) = 0;
      v23 = &v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    }

    else
    {
      std::map<unsigned long long,DERItem>::map[abi:ne200100](a4, v15 + 40);
      *(a4 + 24) = 1;
    }

    _Block_object_dispose(&v14, 8);
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(&v18, v19[0]);
  }
}

void sub_2980E688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a17, 8);
  std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(v23 + 40, a23);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980E6958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::Error::Unexpected(uint64_t *__return_ptr a1@<X8>, SLAM::Error *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  va_copy(v8, va);
  __s[0] = 0;
  vasprintf(__s, this, va);
  if (__s[0])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s[0]);
    free(__s[0]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  SLAM::Error::Error(__s, __p);
  *a1 = *__s;
  a1[2] = v5;
  __s[1] = 0;
  v5 = 0;
  __s[0] = 0;
  v9 = __s;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2980E6A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::~Impl(SLAM::Impl *this)
{
  SLAM::Impl::~Impl(this);

  JUMPOUT(0x29C281740);
}

{
  *this = &unk_2A1EA1570;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 1) = &unk_2A1EA15F8;
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

std::string *std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<SLAM::Error,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<SLAM::Error,false> const&>(a1, a2);
  return a1;
}

void sub_2980E6B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_storage_base<SLAM::Error,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<SLAM::Error,false> const&>(std::string *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    result->__r_.__value_.__r.__words[0] = 0;
    result->__r_.__value_.__l.__size_ = 0;
    result->__r_.__value_.__r.__words[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    v2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

uint64_t std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
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

  v10 = 1;
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

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
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

void *SLAM::Impl::Impl(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *a1 = &unk_2A1EA1570;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = &unk_2A1EA15F8;
  a1[2] = v7;
  a1[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[4] = v10;
  a1[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11 = a4[1];
  a1[6] = *a4;
  a1[7] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  a1[8] = *a3;
  a1[9] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void SLAM::TransceiverWrapper::~TransceiverWrapper(SLAM::TransceiverWrapper *this)
{
  *this = &unk_2A1EA15F8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1EA15F8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x29C281740);
}

__n128 std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<SLAM::ExecutionMessage>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<SLAM::ExecutionMessage>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 std::vector<SLAM::ExecutionMessage>::__move_assign(uint64_t a1, __n128 *a2)
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

__n128 std::__optional_storage_base<SLAM::Error,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SLAM::Error,false>>(std::vector<std::string> *this, uint64_t a2)
{
  if (LOBYTE(this[1].__begin_) == *(a2 + 24))
  {
    if (LOBYTE(this[1].__begin_))
    {
      std::vector<std::string>::__vdeallocate(this);
      result = *a2;
      *&this->__begin_ = *a2;
      this->__end_cap_.__value_ = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (LOBYTE(this[1].__begin_))
  {
    v5 = this;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    LOBYTE(this[1].__begin_) = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    result = *a2;
    *this = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return result;
}

std::string *ctu::join<std::__wrap_iter<std::string const*>>@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>, std::string *a3@<X1>, const void *a4@<X2>, size_t a5@<X3>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (__str != a3)
  {
    v8 = __str;
    __str = std::string::operator=(a1, __str);
    for (i = v8 + 1; i != a3; ++i)
    {
      if (a4)
      {
        if (a5 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a5 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v21) = a5;
        if (a5)
        {
          memmove(&__dst, a4, a5);
        }

        *(&__dst + a5) = 0;
        v13 = HIBYTE(v21);
        v12 = __dst;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        __dst = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v12;
      }

      if ((v13 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      std::string::append(a1, p_dst, v15);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__dst);
      }

      v16 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = i->__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a1, v17, size);
    }
  }

  return __str;
}

void sub_2980E7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::for_each[abi:ne200100]<boost::cb_details::iterator<boost::circular_buffer<std::string,std::allocator<std::string>>,boost::cb_details::const_traits<std::allocator<std::string>>>,std::function<void ()(std::string const&)>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 != a3)
  {
    v8 = a2;
    do
    {
      v10 = *(a4 + 24);
      if (!v10)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v10 + 48))(v10, v8);
      v11 = v8 + 24;
      if (v8 + 24 == a1[1])
      {
        v11 = *a1;
      }

      if (v11 == a1[3])
      {
        v8 = 0;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v8 != a3);
  }

  return std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a5, a4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

void caulk::bad_expected_access<SLAM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2A1EA1668;
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::exception::~exception(a1);
}

void *caulk::bad_expected_access<SLAM::Error>::bad_expected_access(void *a1, __int128 **a2)
{
  *a1 = &unk_2A1EA1668;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

uint64_t caulk::bad_expected_access<SLAM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2A1EA1668;
  v3 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::exception::~exception(a1);
  return MEMORY[0x29C281740]();
}

uint64_t caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

uint64_t caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    caulk::__expected_detail::destroy<SLAM::Script,(void *)0>(a1);
  }

  else
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void caulk::__expected_detail::destroy<SLAM::Script,(void *)0>(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned char>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned char>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2980E7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void SLAM::StringUtil::Format(uint64_t *__return_ptr a1@<X8>, SLAM::StringUtil *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  __s = 0;
  vasprintf(&__s, this, va);
  if (__s)
  {
    std::string::basic_string[abi:ne200100]<0>(a1, __s);
    free(__s);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "<FAILED TO VASPRINTF>");
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::push_back_impl<std::string const&>(uint64_t a1, const std::string *a2)
{
  v3 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3) == *(a1 + 32))
  {
    if (v3 != *a1)
    {
      std::string::operator=(*(a1 + 24), a2);
      v4 = *(a1 + 24) + 24;
      *(a1 + 24) = v4;
      if (v4 == *(a1 + 8))
      {
        v4 = *a1;
        *(a1 + 24) = *a1;
      }

      *(a1 + 16) = v4;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v5, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&a2->__r_.__value_.__l.__data_;
      v5->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    v7 = *(a1 + 24) + 24;
    *(a1 + 24) = v7;
    if (v7 == *(a1 + 8))
    {
      *(a1 + 24) = *a1;
    }

    ++*(a1 + 32);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in OSU state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in SC state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>@<X0>(SLAM::Impl ***a1@<X0>, std::string *a2@<X8>)
{
  v3 = **a1;
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Log(v4, 1, "operator()", 344, "Recovering incomplete termination");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return SLAM::Impl::PerformTermination(v3, a2);
}

void sub_2980E8124(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v7 = *a2;
  v8 = *(v6 + 64);
  v9 = *(v6 + 72);
  if (v5 == *a2)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(v4 + 16);
    }

    SLAM::Logger::Log(v8, 1, "operator()", 357, "Resuming interrupted script 0x%llx", v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_11:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
    v5 = *(v4 + 16);
  }

  SLAM::Logger::Log(v8, 1, "operator()", 352, "Recover interrupted script 0x%llx before running 0x%llx", v7, v5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SLAM::Impl::PerformRecovery(v6, a3);
  if ((a3[1].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_2980E8228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(*a1 + 72);
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](a2 + 1, v3 + 80);
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v3 + 112);
}

void sub_2980E8294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 + 40;
  *a2 = **a1;
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](a2 + 1, (v3 + 8));
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v4);
}

void sub_2980E8310(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(*a1 + 144);
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](a2 + 1, v3 + 152);
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v3 + 184);
}

void sub_2980E8388(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 216);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Log(v4, 1, "operator()", 412, "Recovering incomplete termination");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SLAM::Impl::PerformTermination(v3, &v6);
  if (v7 == 1)
  {
    SLAM::ScriptResult::Failure(a2, &v6);
    if (v7)
    {
      v8 = &v6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
    }
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    a2[32] = 0;
    a2[40] = 0;
    a2[64] = 0;
  }
}

void sub_2980E8478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14)
{
  if (a13 == 1)
  {
    a14 = &a10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *(*a1 + 224);
  v6 = v5[6];
  v7 = v5[7];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 1))(v23);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v25)
  {
    SLAM::Impl::ExecuteScriptWithResult(v5, v24, &v17);
    if (v21 == 1)
    {
      v9 = v5[8];
      v8 = v5[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *a2;
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v20[0], v20[1], ", ", 2uLL);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      SLAM::Logger::Log(v9, 1, "operator()", 436, "Failed recovery with scriptID 0x%llx, error was %s", v10, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      SLAM::Impl::PerformTermination(v5, &__p);
      if (v16 == 1)
      {
        SLAM::ScriptResult::Failure(a3, &__p);
        if (v16)
        {
          v22 = &__p;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 64) = 0;
      }

      if (v21)
      {
        __p.__r_.__value_.__r.__words[0] = v20;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }

    else
    {
      *a3 = v17.__r_.__value_.__s.__data_[0];
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      if (v19 == 1)
      {
        *(a3 + 8) = *&v17.__r_.__value_.__r.__words[1];
        *(a3 + 24) = v18;
        v18 = 0;
        *&v17.__r_.__value_.__r.__words[1] = 0uLL;
        *(a3 + 32) = 1;
      }

      *(a3 + 40) = 0;
      *(a3 + 64) = 0;
    }

    if (v19 == 1 && v17.__r_.__value_.__l.__size_)
    {
      v17.__r_.__value_.__r.__words[2] = v17.__r_.__value_.__l.__size_;
      operator delete(v17.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v12 = v5[8];
    v13 = v5[9];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SLAM::Logger::Log(v12, 1, "operator()", 424, "Recovery script 0x%llx not found, terminating!", *a2);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    SLAM::Impl::PerformTermination(v5, &v17);
    if (v18 == 1)
    {
      SLAM::ScriptResult::Failure(a3, &v17);
      if (v18)
      {
        __p.__r_.__value_.__r.__words[0] = &v17;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 64) = 0;
    }
  }

  return caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(v23);
}

void sub_2980E879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **p_p, char a31)
{
  if (a17 == 1)
  {
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  SLAM::ScriptResult::~ScriptResult(&a19);
  caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(&a31);
  _Unwind_Resume(a1);
}

void sub_2980E884C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x2980E8844);
}

uint64_t *std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false> const&>(a1, a2);
  return a1;
}

void sub_2980E8890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false> const&>(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<SLAM::ExecutionMessage>::__init_with_size[abi:ne200100]<SLAM::ExecutionMessage*,SLAM::ExecutionMessage*>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *std::vector<SLAM::ExecutionMessage>::__init_with_size[abi:ne200100]<SLAM::ExecutionMessage*,SLAM::ExecutionMessage*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SLAM::ExecutionMessage>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2980E8964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SLAM::ExecutionMessage>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::optional<std::vector<SLAM::ExecutionMessage>>::operator=[abi:ne200100]<std::vector<SLAM::ExecutionMessage>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<SLAM::ExecutionMessage>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2980E8C50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

SLAM::SelectISDCommand *SLAM::SelectISDCommand::SelectISDCommand(SLAM::SelectISDCommand *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = 0xA0080004A400;
  v4 = 20737;
  v5 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this, &v3, v6, 14);
  return this;
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t ___ZN4SLAML21DERParseSequenceToMapERNSt3__16vectorIhNS0_9allocatorIhEEEESt16initializer_listIyE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2;
  *(std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v2 + 40, a2, &std::piecewise_construct, &v4) + 5) = *(a2 + 8);
  return 0;
}

void std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::map<unsigned long long,DERItem>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long long,DERItem>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,DERItem>,std::__tree_node<std::__value_type<unsigned long long,DERItem>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long long,DERItem>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,DERItem>,std::__tree_node<std::__value_type<unsigned long long,DERItem>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,DERItem> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,DERItem> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__find_equal<unsigned long long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *SLAM::Error::Error(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v5, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2980E956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, *(a1 + 8));
  }

  else
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNSt3__120__shared_ptr_emplaceIN4SLAM21DefaultScriptProviderENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA16F8;
  std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider>(&v3, a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SLAM::DefaultScriptProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA16F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C281740);
}

void std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider>(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "/usr/standalone/firmware/SLAM/SLAM.sefw");
  SLAM::DefaultScriptProvider::DefaultScriptProvider(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2980E997C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SLAM::DefaultScriptProvider>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<SLAM::DefaultScriptProvider>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA16F8;
  std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider,std::string const&>(&v4, a1 + 3, a2);
  return a1;
}

void std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider,std::string const&>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  SLAM::DefaultScriptProvider::DefaultScriptProvider(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2980E9AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SLAM::Logger>::__shared_ptr_emplace[abi:ne200100]<gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,std::allocator<SLAM::Logger>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA1730;
  std::allocator<SLAM::Logger>::construct[abi:ne200100]<SLAM::Logger,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&>(&v2, a1 + 3, a2);
}

void std::__shared_ptr_emplace<SLAM::Logger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA1730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C281740);
}

void std::allocator<SLAM::Logger>::construct[abi:ne200100]<SLAM::Logger,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Logger(a2, v4);
}

void sub_2980E9CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Logger::Logger(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  operator new();
}

void sub_2980E9D24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SLAM::Logger>::__on_zero_shared_impl[abi:ne200100]<std::allocator<SLAM::Logger>,0>(uint64_t a1)
{
  boost::circular_buffer<std::string,std::allocator<std::string>>::destroy((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::destroy(void **a1)
{
  boost::circular_buffer<std::string,std::allocator<std::string>>::destroy_content(a1);
  if (*a1)
  {
    operator delete(*a1);
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::destroy_content(uint64_t *a1)
{
  if (a1[4])
  {
    v2 = 0;
    v3 = a1[2];
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
        v3 = a1[2];
      }

      v3 += 24;
      a1[2] = v3;
      if (v3 == a1[1])
      {
        v3 = *a1;
        a1[2] = *a1;
      }

      ++v2;
    }

    while (v2 < a1[4]);
  }
}

void *std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1768;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1768;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA1768;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980EA068(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA17B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA17B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA17B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980EA2AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA17F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA17F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA17F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980EA4F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2980EA568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *SLAM::DefaultScriptProvider::DefaultScriptProvider(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1EA1840;
  applesauce::v1::mapped_file::mapped_file(a1 + 1, a2, 1);
  return a1;
}

uint64_t SLAM::DefaultScriptProvider::GetScriptByID@<X0>(SLAM::DefaultScriptProvider *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5[0] = &unk_2A1EA18F0;
  v5[1] = &v4;
  v5[3] = v5;
  SLAM::DefaultScriptProvider::FindScriptMatching(this, v5, a3);
  return std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v5);
}

void sub_2980EA7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SLAM::DefaultScriptProvider::FindScriptMatching(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92[4] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 < 7 || (SLAM::DefaultScriptProvider::FindScriptMatching(std::function<BOOL ()(SLAMScriptDERObj const&)>)::plist_header == *v8 ? (v9 = word_2A13A71D8 == *(v8 + 4)) : (v9 = 0), !v9))
  {
    v89[0] = *(a1 + 8);
    v89[1] = v7;
    v87 = 0u;
    v88 = 0u;
    v10 = DERParseSequence(v89, slamSEFWItemSpecLen, &slamSEFWItemSpec, &v87, 0x20uLL);
    if (v10)
    {
      SLAM::Error::Unexpected(&v77, "Failed to parse top level %d", v11, v10);
LABEL_18:
      *a3 = v77;
      memset(&v77, 0, sizeof(v77));
      *(a3 + 96) = 0;
      *&v54 = &v77;
      v16 = &v54;
      goto LABEL_19;
    }

    if (*(&v87 + 1) != 4)
    {
      SLAM::Error::Unexpected(&v77, "Unexpected SLAM version length %zu", v11, *(&v87 + 1));
      goto LABEL_18;
    }

    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v12 = bswap32(*v87);
    v86 = v12;
    if ((v12 - 1) >= 3)
    {
      SLAM::Error::Unexpected(&v77, "Unexpected SLAM SEFW version %u", v11, v12);
      *a3 = v77;
      memset(&v77, 0, sizeof(v77));
      *(a3 + 96) = 0;
      *&v54 = &v77;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
LABEL_22:
      _Block_object_dispose(&v83, 8);
      return;
    }

    v77.__r_.__value_.__r.__words[0] = 0;
    v77.__r_.__value_.__l.__size_ = &v77;
    v77.__r_.__value_.__r.__words[2] = 0xB812000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x5012000000;
    v72 = __Block_byref_object_copy__5;
    v73 = __Block_byref_object_dispose__6;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3812000000;
    v64 = __Block_byref_object_copy__7;
    v65 = __Block_byref_object_dispose__8;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v91[0] = MEMORY[0x29EDCA5F8];
    v91[1] = 3321888768;
    v91[2] = ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke;
    v91[3] = &unk_2A1EA1868;
    v91[4] = &v83;
    v91[5] = &v69;
    v91[6] = &v61;
    std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::__value_func[abi:ne200100](v92, a2);
    v91[7] = &v77;
    v13 = DERDecodeSequenceContentWithBlock(&v88, v91);
    if (v13)
    {
      SLAM::Error::Unexpected(&v54, "Failed to decode script %d", v14, v13);
      *a3 = v54;
      *(a3 + 16) = v55;
      *&v55 = 0;
      v54 = 0uLL;
      *(a3 + 96) = 0;
      *&v40 = &v54;
      p_p = &v40;
LABEL_12:
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](p_p);
LABEL_13:
      std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v92);
      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(&v69, 8);
      if (v76 == 1)
      {
        *&v54 = &v75;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
      }

      _Block_object_dispose(&v77, 8);
      goto LABEL_22;
    }

    if (*(v70 + 72) == 1)
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v70[6], v70[7], ", ", 2uLL);
      SLAM::Error::Error(&v40, &__p);
      v54 = 0uLL;
      *&v55 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v54, v40, *(&v40 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v40 + 1) - v40) >> 3));
      *a3 = v54;
      *(a3 + 16) = v55;
      *&v55 = 0;
      v54 = 0uLL;
      *(a3 + 96) = 0;
      v47.__r_.__value_.__r.__words[0] = &v54;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
      v47.__r_.__value_.__r.__words[0] = &v40;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_13;
    }

    if ((*(v77.__r_.__value_.__l.__size_ + 176) & 1) == 0)
    {
      SLAM::Error::Error(&v40, "Could not find script within SEFW");
      v54 = 0uLL;
      *&v55 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v54, v40, *(&v40 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v40 + 1) - v40) >> 3));
      *a3 = v54;
      *(a3 + 16) = v55;
      *&v55 = 0;
      v54 = 0uLL;
      *(a3 + 96) = 0;
      __p.__r_.__value_.__r.__words[0] = &v54;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v40;
      p_p = &__p;
      goto LABEL_12;
    }

    v17 = *(v77.__r_.__value_.__l.__size_ + 128);
    v58[0] = *(v77.__r_.__value_.__l.__size_ + 112);
    v58[1] = v17;
    v18 = *(v77.__r_.__value_.__l.__size_ + 160);
    v59 = *(v77.__r_.__value_.__l.__size_ + 144);
    *v60 = v18;
    v19 = *(v77.__r_.__value_.__l.__size_ + 64);
    v54 = *(v77.__r_.__value_.__l.__size_ + 48);
    v55 = v19;
    v20 = *(v77.__r_.__value_.__l.__size_ + 96);
    v56 = *(v77.__r_.__value_.__l.__size_ + 80);
    v57 = v20;
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p;
    __p.__r_.__value_.__r.__words[2] = 0x4812000000;
    v50 = __Block_byref_object_copy__14;
    v51 = __Block_byref_object_dispose__15;
    v52 = "";
    memset(v53, 0, sizeof(v53));
    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 3221225472;
    v48[2] = ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke_16;
    v48[3] = &unk_29EE8A2D0;
    v48[4] = &__p;
    v21 = DERDecodeSequenceContentWithBlock(v58, v48);
    if (v21)
    {
      SLAM::Error::Unexpected(&v40, "Failed to decode APDUs %d", v22, v21);
      *a3 = v40;
      *(a3 + 16) = v41;
      *&v41 = 0;
      v40 = 0uLL;
      *(a3 + 96) = 0;
      v47.__r_.__value_.__r.__words[0] = &v40;
      v23 = &v47;
LABEL_29:
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
LABEL_30:
      _Block_object_dispose(&__p, 8);
      *&v40 = v53;
      std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v40);
      goto LABEL_13;
    }

    v24 = *(v84 + 6) <= 2u || v60[1] == 0;
    v25 = !v24;
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      if (DERParseSequenceContent(v60, slamScriptMemoryItemSpecLen, &slamScriptMemoryItemSpec, &v40, 0x40uLL))
      {
        SLAM::Error::Error(&v45, "Could not parse memory constraints within SEFW");
        memset(&v47, 0, sizeof(v47));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v47, v45, v46, 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3));
        *a3 = v47;
        memset(&v47, 0, sizeof(v47));
        *(a3 + 96) = 0;
        v90 = &v47;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v90);
        v90 = &v45;
        v23 = &v90;
        goto LABEL_29;
      }

      v26 = v40;
      v3 = v41;
      v4 = v42;
    }

    memset(&v47, 0, sizeof(v47));
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v47, v56, v56 + *(&v56 + 1), *(&v56 + 1));
    v29 = v59;
    if (v59)
    {
      v29 = bswap32(*v59);
    }

    if (v25)
    {
      v30 = bswap32(*v26);
      v27 = bswap32(*v3);
      v28 = bswap32(*v4);
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v32 = bswap64(*v54);
    v33 = v47.__r_.__value_.__r.__words[2];
    v34 = *&v47.__r_.__value_.__l.__data_;
    memset(&v47, 0, sizeof(v47));
    size = __p.__r_.__value_.__l.__size_;
    v36 = *(__p.__r_.__value_.__l.__size_ + 48);
    v37 = *(__p.__r_.__value_.__l.__size_ + 56);
    v38 = 0xAAAAAAAAAAAAAAABLL * ((*(__p.__r_.__value_.__l.__size_ + 56) - v36) >> 3);
    *(__p.__r_.__value_.__l.__size_ + 56) = 0;
    *(size + 64) = 0;
    *(size + 48) = 0;
    *v44 = v29;
    LOBYTE(size) = *(v62 + 52);
    *&v44[4] = *(v62 + 12);
    v44[8] = size;
    *&v44[12] = v30;
    *&v44[16] = v27;
    *&v44[20] = v28;
    v44[24] = v31;
    *a3 = v32;
    *(a3 + 8) = v34;
    v40 = v32;
    v41 = 0uLL;
    *(a3 + 24) = v33;
    *(a3 + 32) = v38;
    *(a3 + 40) = v36;
    v43 = 0uLL;
    v42 = v38;
    *(a3 + 73) = *&v44[9];
    v39 = *v44;
    *(a3 + 48) = v37;
    *(a3 + 64) = v39;
    *(a3 + 96) = 1;
    SLAM::Script::~Script(&v40);
    if (v47.__r_.__value_.__r.__words[0])
    {
      v47.__r_.__value_.__l.__size_ = v47.__r_.__value_.__r.__words[0];
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  SLAM::Error::Error(&v54, "Legacy (plist) SLAM SEFW path is no longer supported");
  memset(&v77, 0, sizeof(v77));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v77, v54, *(&v54 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v54 + 1) - v54) >> 3));
  *a3 = v77;
  memset(&v77, 0, sizeof(v77));
  *(a3 + 96) = 0;
  *&v40 = &v77;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  *&v40 = &v54;
  v16 = &v40;
LABEL_19:
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v16);
}

void sub_2980EB02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 - 192) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v66 - 192));
  _Block_object_dispose(&__p, 8);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v65 + 64);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a65, 8);
  if (LOBYTE(STACK[0x228]) == 1)
  {
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a45);
  }

  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

void SLAM::DefaultScriptProvider::GetScript(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a4;
  operator new();
}

void sub_2980EB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (a2[4].n128_u8[8] == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    result = a2[3];
    *(a1 + 48) = result;
    *(a1 + 64) = a2[4].n128_u64[0];
    a2[3] = 0uLL;
    a2[4].n128_u64[0] = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3[1] = v1;
    v3[2] = v2;
    v3[0] = (a1 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

unint64_t *___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = DERParseSequenceContent((a2 + 8), slamScriptItemSpecLen, &slamScriptItemSpec, &v24, 0x80uLL);
  if (!v5)
  {
    if (*(*(a1[4] + 8) + 24) >= 2u)
    {
      if (*(&v29 + 1) != 4)
      {
        std::string::basic_string[abi:ne200100](__p, v25, *(&v25 + 1));
        if (v22 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        SLAM::Error::Error(&v23, "Platform Category absent for a script with name %s", v6);
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), &v23);
        v32 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        *a3 = 1;
      }

      v7 = bswap32(*v29);
      if (v7 >= 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(a1[6] + 8);
      *(v9 + 48) = v8;
      *(v9 + 52) = v7 < 3;
      if ((*(*(a1[6] + 8) + 52) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100](__p, v25, *(&v25 + 1));
        if (v22 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        SLAM::Error::Error(&v23, "Platform Category %d is unknown in script with name %s", v7, v10);
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), &v23);
        v32 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        *a3 = 1;
      }
    }

    v11 = a1[11];
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v11 + 48))(v11, &v24))
    {
      v12 = *(a1[7] + 8);
      v13 = v25;
      v15 = v26;
      v14 = v27;
      *(v12 + 48) = v24;
      v16 = v28;
      v18 = v30;
      v17 = v31;
      *(v12 + 128) = v29;
      *(v12 + 144) = v18;
      *(v12 + 160) = v17;
      v19 = *(v12 + 176);
      *(v12 + 64) = v13;
      *(v12 + 80) = v15;
      *(v12 + 96) = v14;
      *(v12 + 112) = v16;
      if ((v19 & 1) == 0)
      {
        *(v12 + 176) = 1;
      }

      *a3 = 1;
    }
  }

  return v5;
}

void sub_2980EB534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v17 - 56) = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

std::vector<std::string> *std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>(std::vector<std::string> *this, std::vector<std::string> *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<std::string>::__vdeallocate(this);
    *&this->__begin_ = *&a2->__begin_;
    this->__end_cap_.__value_ = a2->__end_cap_.__value_;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

__n128 __Block_byref_object_copy__14(__n128 *a1, __n128 *a2)
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

uint64_t ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke_16(uint64_t a1, void *a2)
{
  if (*a2 != 4)
  {
    return 2;
  }

  v2 = *(*(a1 + 32) + 8);
  v5 = a2[1];
  v4 = a2[2];
  v3 = (a2 + 1);
  v9 = v5 + v4;
  v6 = *(v2 + 56);
  if (v6 >= *(v2 + 64))
  {
    v7 = std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<unsigned char *&,unsigned char *>((v2 + 48), v3, &v9);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6, v5, v5 + v4, v4);
    v7 = v6 + 3;
    *(v2 + 56) = v6 + 3;
  }

  result = 0;
  *(v2 + 56) = v7;
  return result;
}

void SLAM::Script::~Script(SLAM::Script *this)
{
  v3 = (this + 40);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void SLAM::DefaultScriptProvider::~DefaultScriptProvider(SLAM::DefaultScriptProvider *this)
{
  *this = &unk_2A1EA1840;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;
}

{
  *this = &unk_2A1EA1840;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;

  JUMPOUT(0x29C281740);
}

void *applesauce::v1::mapped_file::mapped_file(void *a1, uint64_t a2, __int16 a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = open(v6, 0);
  if (v7 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, "open()");
    v15 = __error();
  }

  v8 = v7;
  if (fstat(v7, &v22) < 0)
  {
    v16 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "fstat()");
    v17 = __error();
  }

  st_size = v22.st_size;
  a1[1] = v22.st_size;
  if (a3)
  {
    v10 = 0x7FFFFFFF;
    if (st_size < 0x7FFFFFFF)
    {
      v10 = st_size;
    }

    v21 = v10;
    v20 = 0;
    fcntl(v8, 44, &v20);
    st_size = a1[1];
  }

  if ((a3 & 0x100) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 1025;
  }

  v12 = mmap(0, st_size, 1, v11, v8, 0);
  *a1 = v12;
  if (v12 == -1)
  {
    v18 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "mmap()");
    v19 = __error();
  }

  close(v8);
  return a1;
}

void sub_2980EBAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      close(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void applesauce::v1::anonymous namespace::io_failure_exception(const void **a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, std::ios_base::failure *a4@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = &v19;
  std::string::basic_string[abi:ne200100](&v19, v8 + 13);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v19.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, " failed for '");
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v19, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v20, "'");
  v17 = *&v16->__r_.__value_.__l.__data_;
  __msg.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__msg.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  *&__ec.__val_ = a3;
  __ec.__cat_ = std::generic_category();
  std::ios_base::failure::failure(a4, &__msg, &__ec);
  if (SHIBYTE(__msg.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__msg.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_2980EBCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
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

uint64_t std::__function::__func<SLAM::DefaultScriptProvider::GetScriptByID(unsigned long long)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScriptByID(unsigned long long)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EA18F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA1938;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 4)
  {
    v4 = bswap32(**(a2 + 80));
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a2 + 24);
  v6 = *(a1 + 8);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (v5 != v6[1])
    {
      return 0;
    }

    v6 = *v6;
  }

  else if (v5 != v7)
  {
    return 0;
  }

  if (memcmp(v6, *(a2 + 16), v5))
  {
    return 0;
  }

  v8 = *(a2 + 40);
  v9 = *(a1 + 16);
  if (v8 != *(v9 + 8) - *v9 || memcmp(*v9, *(a2 + 32), v8))
  {
    return 0;
  }

  return !v4 || **(a1 + 24) == v4;
}

uint64_t std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<unsigned char *&,unsigned char *>(char **a1, const void **a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, v8);
  }

  v9 = 24 * v3;
  v19 = 0;
  v20 = v9;
  v21 = 24 * v3;
  v22 = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = *a3 - *a2;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((24 * v3), v10, v11, v12);
  v13 = v21 + 24;
  v14 = a1[1] - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  a1[1] = v13;
  v17 = a1[2];
  a1[2] = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(&v19);
  return v13;
}

void sub_2980EC1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned char>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned char>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_2980EC6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    __p = &a23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a36);
  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);

  _Unwind_Resume(a1);
}

uint64_t caulk::expected<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(&v3, 0, sizeof(v3));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, &v3);
  }

  return result;
}

void sub_2980EC8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_2980ECCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(v39 - 152);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);

  _Unwind_Resume(a1);
}

void sub_2980ED1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a34 == 1)
  {
    __p = &a28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a41);
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);

  _Unwind_Resume(a1);
}

void sub_2980ED704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(v44 - 152);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  std::__shared_weak_count::__release_shared[abi:ne200100](v42);

  _Unwind_Resume(a1);
}

void sub_2980EDC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 == 1)
  {
    __p = &a21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a34);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);

  _Unwind_Resume(a1);
}

void sub_2980EE0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a34);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);

  _Unwind_Resume(a1);
}

void sub_2980EE4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((a21 & 1) == 0)
  {
    __p = &a15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a28);

  _Unwind_Resume(a1);
}

void sub_2980EE894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((a22 & 1) == 0)
  {
    __p = &a16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(&a30);

  _Unwind_Resume(a1);
}

void sub_2980EEF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    __p = &a26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);

  _Unwind_Resume(a1);
}

void sub_2980EF2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 == 1)
  {
    __p = &a21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);

  _Unwind_Resume(a1);
}

uint64_t caulk::__expected_detail::base<gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<SLAM::ObjC::SEHandleShim>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA1980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C281740);
}

void SLAM::ObjC::SEHandleShim::Transceive(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x29EDB8DA0] dataWithCXXVector:a2];
  v8 = *(a1 + 8);
  v22 = 0;
  v9 = [v8 transceive:v7 error:&v22];
  v10 = v22;
  v12 = v10;
  if (v9)
  {
    objc_msgSend_asCXXVector(v9);
    *a3 = v23;
    *(a3 + 16) = v24;
    *(a3 + 24) = 1;
  }

  else if (v10)
  {
    v13 = [v10 description];
    v14 = v13;
    if (v13)
    {
      objc_msgSend_asCXXString(v13);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
    }

    SLAM::Error::Error(&v19, __p);
    v15 = v20;
    v16 = v19;
    v20 = 0;
    v19 = 0uLL;
    v24 = 0;
    v23 = 0uLL;
    v25 = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
    *a3 = v16;
    *(a3 + 16) = v15;
    memset(v21, 0, sizeof(v21));
    *(a3 + 24) = 0;
    *&v23 = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    *&v23 = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    SLAM::Error::Unexpected(&v23, "%s", v11, "Transceive return nil and no error?");
    *a3 = v23;
    *(a3 + 16) = v24;
    v24 = 0;
    v23 = 0uLL;
    *(a3 + 24) = 0;
    v21[0] = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
  }

  objc_autoreleasePoolPop(v6);
}

void SLAM::ObjC::SEHandleShim::~SEHandleShim(id *this)
{
}

{

  JUMPOUT(0x29C281740);
}

void std::__shared_ptr_emplace<SLAM::ObjC::LogSinkShim>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA19E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C281740);
}

void SLAM::ObjC::LogSinkShim::Log(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 8);
  v6 = [MEMORY[0x29EDBA0F8] stringWithCXXString:a2];
  [v5 log:v6];

  objc_autoreleasePoolPop(v4);
}

void SLAM::ObjC::LogSinkShim::~LogSinkShim(id *this)
{
}

{

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__value_func<BOOL ()(ScriptInfo *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void SCLM::SCLMPrivateInterface::PerformScript(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  SCLM::SCLMPrivateInterface::PerformScriptWithResult();
}

void sub_2980EFD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  SLAM::ScriptResult::~ScriptResult(va);
  _Unwind_Resume(a1);
}

void SCLM::SCLMPrivateInterface::PerformScriptWithResult()
{
  v5 = *MEMORY[0x29EDCA608];
  std::allocate_shared[abi:ne200100]<SLAM::Logger,std::allocator<SLAM::Logger>,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,0>();
}

{
  v5 = *MEMORY[0x29EDCA608];
  std::allocate_shared[abi:ne200100]<SLAM::Logger,std::allocator<SLAM::Logger>,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,0>();
}

void sub_2980F0060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 144);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a19);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SLAM::ScriptResult::~ScriptResult(v28);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void SCLM::SCLMPrivateInterface::PerformScript(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  SCLM::SCLMPrivateInterface::PerformScriptWithResult();
}

void SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFW(void *a1, uint64_t *a2, void *a3)
{
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult();
}

void sub_2980F0964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  SLAM::ScriptResult::~ScriptResult(va);
  _Unwind_Resume(a1);
}

void sub_2980F0C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 144);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a19);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SLAM::ScriptResult::~ScriptResult(v28);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t *SCLM::SCLMImpl::PerformScriptWithResult@<X0>(uint64_t *__return_ptr a1@<X8>, SCLM::SCLMImpl *this@<X0>)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(this + 10);
  v5 = *(this + 11);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SCLM::DefaultSCLMScriptProvider::GetScript(v14, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v15)
  {
    SLAM::Impl::QueryMigrationInfo(v12, this);
    if (v13)
    {
      v7 = *(this + 8);
      v6 = *(this + 9);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = caulk::expected<SLAM::Script,SLAM::Error>::value(v14);
      SLAM::Logger::Log(v7, 1, "PerformScriptWithResult", 236, "Executing script with ID 0x%llX", *v8);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v9 = caulk::expected<SLAM::Script,SLAM::Error>::value(v14);
      v10 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v12);
      (*(*this + 24))(this, v9, v10);
    }

    else
    {
      SLAM::ScriptResult::Failure(a1, v12);
    }

    caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v12);
  }

  else
  {
    SLAM::ScriptResult::Failure(a1, v14);
  }

  return caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(v14);
}

void sub_2980F0F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(va);
  caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(va1);
  _Unwind_Resume(a1);
}

void sub_2980F0FB8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x2980F0FB0);
}

void SCLM::SCLMImpl::PerformScript(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 24))(&v3);
  if (v3 == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a2, v7);
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (v7[24] == 1)
  {
    v8 = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  if (v6 == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void SCLM::SCLMImpl::PerformScriptWithResult(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a2;
  v21[0] = a1;
  v21[1] = a1;
  v21[2] = v5;
  v6 = *(a3 + 8);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v19[0] = v21;
  (off_2A1EA1AF0[v6])(v22, v19, a3);
  if (v23 == 1)
  {
    SLAM::ScriptResult::Failure(a4, v22);
  }

  else if (*(a2 + 64) == 1 || (v10 = *(a3 + 16), v11 = *(a3 + 24) - v10, v12 = *(a2 + 8), v11 == *(a2 + 16) - v12) && !memcmp(v10, v12, v11))
  {
    SLAM::Impl::ExecuteScriptWithResult(a1, (a2 + 40), a4);
  }

  else
  {
    ctu::hex();
    v13 = v20;
    v14 = v19[0];
    ctu::hex();
    v15 = v19;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v18 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    SLAM::Error::Error(v21, "Mismatched signing keys device %s script %s", v15, p_p);
    SLAM::ScriptResult::Failure(a4, v21);
    v24 = v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  if (v23 == 1)
  {
    v21[0] = v22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
  }
}

void sub_2980F1224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v30 - 56) = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 56));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 == 1)
  {
    a23 = &a26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  }

  _Unwind_Resume(a1);
}

void SCLM::SCLMImpl::~SCLMImpl(SCLM::SCLMImpl *this)
{
  SCLM::SCLMImpl::~SCLMImpl(this);

  JUMPOUT(0x29C281740);
}

{
  *this = &unk_2A1EA1AD0;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SLAM::Impl::~Impl(this);
}

void *SCLM::SCLMImpl::SCLMImpl(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v14 = *a3;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0;
  v13 = 0;
  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v12 = *a4;
  }

  SLAM::Impl::Impl(a1, &v16, &v14, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *a1 = &unk_2A1EA1AD0;
  v10 = a4[1];
  a1[10] = *a4;
  a1[11] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2980F13CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  SCLM::SCLMImpl::SCLMImpl((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SCLM::overloaded<SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in OSU state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SCLM::overloaded<SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in SC state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SCLM::overloaded<SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>@<X0>(SLAM::Impl ***a1@<X0>, std::string *a2@<X8>)
{
  v3 = **a1;
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Log(v4, 1, "operator()", 175, "Recovering incomplete termination");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return SLAM::Impl::PerformTermination(v3, a2);
}

void sub_2980F15AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SCLM::overloaded<SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SCLM::SCLMImpl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v7 = *a2;
  v8 = *(v6 + 64);
  v9 = *(v6 + 72);
  if (v5 == *a2)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(v4 + 16);
    }

    SLAM::Logger::Log(v8, 1, "operator()", 189, "Resuming interrupted script 0x%llx", v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_11:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
    v5 = *(v4 + 16);
  }

  SLAM::Logger::Log(v8, 1, "operator()", 184, "Recover interrupted script 0x%llx before running 0x%llx", v7, v5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SLAM::Impl::PerformRecovery(v6, a3);
  if ((a3[1].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_2980F16B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1B28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1B28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA1B28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(unsigned long long,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980F18F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1B70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1B70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA1B70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980F1B3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1BB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1EA1BB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C281740);
}

uint64_t std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1EA1BB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0,std::allocator<SCLM::SCLMPrivateInterface::PerformOnlyScriptInSEFWWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SCLM::DefaultSCLMScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2980F1D80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *SCLM::DefaultSCLMScriptProvider::DefaultSCLMScriptProvider(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  SLAM::DefaultScriptProvider::DefaultScriptProvider(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2A1EA1C00;
  return a1;
}

void sub_2980F2194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SCLM::DefaultSCLMScriptProvider::GetScript@<X0>(uint64_t *__return_ptr a1@<X8>, SCLM::DefaultSCLMScriptProvider *this@<X0>)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A1EA1CA0;
  v3[3] = v3;
  SLAM::DefaultScriptProvider::FindScriptMatching(this, v3, a1);
  return std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v3);
}

void sub_2980F2234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SCLM::DefaultSCLMScriptProvider::InspectScriptsWithBlock(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v39[4] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= 7 && SCLM::DefaultSCLMScriptProvider::InspectScriptsWithBlock(std::function<BOOL ()(ScriptInfo *)>)::plist_header == *v6 && word_2A13A71DE == *(v6 + 4))
  {
    SLAM::Error::Error(&v18, "Legacy (plist) SLAM SEFW path is no longer supported");
    memset(&v26, 0, sizeof(v26));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v26, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
    *a3 = v26;
    memset(&v26, 0, sizeof(v26));
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    *&v34 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
    *&v34 = &v18;
    v13 = &v34;
LABEL_16:
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
    return;
  }

  v36[0] = *(a1 + 8);
  v36[1] = v5;
  v34 = 0u;
  v35 = 0u;
  v8 = DERParseSequence(v36, slamSEFWItemSpecLen, &slamSEFWItemSpec, &v34, 0x20uLL);
  if (v8)
  {
    SLAM::Error::Unexpected(&v26, "Failed to parse top level %d", v9, v8);
LABEL_15:
    *a3 = v26;
    memset(&v26, 0, sizeof(v26));
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    v18 = &v26;
    v13 = &v18;
    goto LABEL_16;
  }

  if (*(&v34 + 1) != 4)
  {
    SLAM::Error::Unexpected(&v26, "Unexpected SLAM version length %zu", v9, *(&v34 + 1));
    goto LABEL_15;
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v10 = bswap32(*v34);
  v33 = v10;
  if ((v10 - 1) >= 3)
  {
    SLAM::Error::Unexpected(&v26, "Unexpected SLAM SEFW version %u", v9, v10);
    *a3 = v26;
    memset(&v26, 0, sizeof(v26));
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    v18 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

  else
  {
    v26.__r_.__value_.__r.__words[0] = 0;
    v26.__r_.__value_.__l.__size_ = &v26;
    v26.__r_.__value_.__r.__words[2] = 0xB812000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x5012000000;
    v21 = __Block_byref_object_copy__5_0;
    v22 = __Block_byref_object_dispose__6_0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 3321888768;
    v38[2] = ___ZN4SCLM25DefaultSCLMScriptProvider23InspectScriptsWithBlockENSt3__18functionIFbP10ScriptInfoEEE_block_invoke;
    v38[3] = &unk_2A1EA1C28;
    v38[4] = v32;
    v38[5] = &v18;
    std::__function::__value_func<BOOL ()(ScriptInfo *)>::__value_func[abi:ne200100](v39, a2);
    v38[6] = &v26;
    v11 = DERDecodeSequenceContentWithBlock(&v35, v38);
    if (*(v19 + 72) == 1)
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v19[6], v19[7], ", ", 2uLL);
      SLAM::Error::Error(&v15, &__p);
      memset(&v17, 0, sizeof(v17));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v17, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
      *a3 = v17;
      memset(&v17, 0, sizeof(v17));
      a3[1].__r_.__value_.__s.__data_[0] = 0;
      v37 = &v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
      v37 = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (v11)
    {
      SLAM::Error::Unexpected(&v17, "Failed to decode script %d", v12, v11);
      *a3 = v17;
      memset(&v17, 0, sizeof(v17));
      a3[1].__r_.__value_.__s.__data_[0] = 0;
      v15 = &v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    }

    else
    {
      a3->__r_.__value_.__s.__data_[0] = 1;
      a3[1].__r_.__value_.__s.__data_[0] = 1;
    }

    std::__function::__value_func<BOOL ()(ScriptInfo *)>::~__value_func[abi:ne200100](v39);
    _Block_object_dispose(&v18, 8);
    if (v25 == 1)
    {
      v17.__r_.__value_.__r.__words[0] = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    _Block_object_dispose(&v26, 8);
  }

  _Block_object_dispose(v32, 8);
}

void sub_2980F26A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  std::__function::__value_func<BOOL ()(ScriptInfo *)>::~__value_func[abi:ne200100](v37 + 56);
  _Block_object_dispose(&a24, 8);
  if (a33 == 1)
  {
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  }

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

__n128 __Block_byref_object_copy__5_0(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (a2[4].n128_u8[8] == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    result = a2[3];
    *(a1 + 48) = result;
    *(a1 + 64) = a2[4].n128_u64[0];
    a2[3] = 0uLL;
    a2[4].n128_u64[0] = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void __Block_byref_object_dispose__6_0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3[1] = v1;
    v3[2] = v2;
    v3[0] = (a1 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  }
}

unint64_t *___ZN4SCLM25DefaultSCLMScriptProvider23InspectScriptsWithBlockENSt3__18functionIFbP10ScriptInfoEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v5 = DERParseSequenceContent((a2 + 8), slamScriptItemSpecLen, &slamScriptItemSpec, &v36, 0x80uLL);
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
    std::string::basic_string[abi:ne200100](__p, v37, *(&v37 + 1));
    if ((SBYTE7(v33) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [v6 initWithUTF8String:v7];
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(*(a1[4] + 8) + 24);
    if (v9 < 2)
    {
      v11 = 0;
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      if (*(&v41 + 1) != 4)
      {
        SLAM::Error::Error(__p, "Platform Category absent for a script with name %s", [v8 UTF8String]);
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), __p);
        goto LABEL_18;
      }

      v10 = bswap32(*v41);
      if (*(&v38 + 1))
      {
        if (*(&v38 + 1) <= 3uLL)
        {
          SLAM::Error::Error(__p, "Script PK Hash not correctly encoded for script %s", [v8 UTF8String]);
          std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), __p);
          goto LABEL_18;
        }

        v11 = *v38 == 1937223229;
      }

      else
      {
        v11 = 0;
      }
    }

    if ((*(&v42 + 1) & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      if (v42)
      {
        v12 = bswap32(*v42);
      }

      else
      {
        v12 = 0;
      }

      if (v9 < 3 || *(&v43 + 1) == 0)
      {
        v30 = v12;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        *__p = 0u;
        v33 = 0u;
        v29 = DERParseSequenceContent(&v43, slamScriptMemoryItemSpecLen, &slamScriptMemoryItemSpec, __p, 0x40uLL);
        v5 = v29;
        if (v29)
        {
          SLAM::Error::Error(&v31, "Could not parse memory constraints within SEFW");
          std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), &v31);
          v44 = &v31;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
          goto LABEL_19;
        }

        if (__p[1] != 4 || *(&v33 + 1) != 4 || *(&v34 + 1) != 4 || *(&v35 + 1) != 4)
        {
          SLAM::Error::Error(__p, "Memory Constrains are not correctly encoded on 4 bytes for script %s", [v8 UTF8String]);
          std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), __p);
          goto LABEL_18;
        }

        v30 = v12;
        v15 = bswap32(*__p[0]);
        v16 = bswap32(*v33);
        v17 = bswap32(*v34);
        v18 = bswap32(*v35);
      }

      v19 = [ScriptInfo alloc];
      v20 = [(ScriptInfo *)v19 initWithScriptID:bswap64(*v36) scriptName:v8 apduCount:bswap32(*v39) scriptType:v30 platformCategory:v10 isProductionSigned:v11 nvmRequired:__PAIR64__(v16 corRequired:v15) codRequired:__PAIR64__(v18 indicesRequired:v17)];
      if (std::function<BOOL ()(ScriptInfo *)>::operator()((a1 + 7), v20))
      {
        v21 = *(a1[6] + 8);
        v22 = v39;
        v23 = v37;
        *(v21 + 48) = v36;
        v24 = v40;
        v26 = v42;
        v25 = v43;
        *(v21 + 128) = v41;
        *(v21 + 144) = v26;
        v27 = *(v21 + 176);
        *(v21 + 160) = v25;
        v28 = v38;
        *(v21 + 64) = v23;
        *(v21 + 80) = v28;
        *(v21 + 96) = v22;
        *(v21 + 112) = v24;
        if ((v27 & 1) == 0)
        {
          *(v21 + 176) = 1;
        }

        *a3 = 1;
      }

      v5 = 0;
      goto LABEL_20;
    }

    SLAM::Error::Error(__p, "Unexpected script type length %zu", *(&v42 + 1));
    std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), __p);
LABEL_18:
    v31.__begin_ = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
    v5 = 0;
LABEL_19:
    *a3 = 1;
LABEL_20:
  }

  return v5;
}

void sub_2980F2C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2980F2C8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2980F2C84);
}

uint64_t std::function<BOOL ()(ScriptInfo *)>::operator()(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = (*(*v3 + 48))(v3, &v6);

  return v4;
}

void SCLM::DefaultSCLMScriptProvider::~DefaultSCLMScriptProvider(SCLM::DefaultSCLMScriptProvider *this)
{
  *this = &unk_2A1EA1840;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;
}

{
  *this = &unk_2A1EA1840;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;

  JUMPOUT(0x29C281740);
}

void *std::__shared_ptr_emplace<SCLM::DefaultSCLMScriptProvider>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SCLM::DefaultSCLMScriptProvider>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA1C68;
  std::allocator<SCLM::DefaultSCLMScriptProvider>::construct[abi:ne200100]<SCLM::DefaultSCLMScriptProvider,std::string &>(&v4, a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<SCLM::DefaultSCLMScriptProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA1C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C281740);
}

void std::allocator<SCLM::DefaultSCLMScriptProvider>::construct[abi:ne200100]<SCLM::DefaultSCLMScriptProvider,std::string &>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  SCLM::DefaultSCLMScriptProvider::DefaultSCLMScriptProvider(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2980F2FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(ScriptInfo *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x29EDCA608];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x29EDCA608];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x29EDCA608];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void SCLM::SCLMImpl::SCLMImpl(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}