void sub_223BD8D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a26);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a16);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  std::runtime_error::~runtime_error((v33 - 80));
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &unk_28371C4A8;
  std::runtime_error::runtime_error(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a1 + 16) = &unk_28371C520;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_28371BC00;
  *(a1 + 16) = &unk_28371BC38;
  *(a1 + 56) = &unk_28371BC70;
  v10 = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    (*(*v6 + 40))(&v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v10, v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v9);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 24), v7);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
  return a1;
}

{
  *(a1 + 56) = &unk_28371C4A8;
  std::runtime_error::runtime_error(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_28371C520;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_28371BC00;
  *(a1 + 16) = &unk_28371BC38;
  *(a1 + 56) = &unk_28371BC70;
  return a1;
}

void sub_223BD9048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v10);
  _Unwind_Resume(a1);
}

void sub_223BD9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(uint64_t a1)
{
  *(a1 + 16) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x223DF43A0);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(uint64_t a1)
{
  *(a1 + 16) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x223DF43A0);
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(void *a1)
{
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(a1 + *(*a1 - 40));
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 2) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 3);

  std::runtime_error::~runtime_error(v1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(exception, a1);
}

void sub_223BD9788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v10);
  MEMORY[0x223DF43A0](v10, v11);
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void boost::shared_ptr<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>::shared_ptr<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_223BD9924(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  __cxa_rethrow();
}

void sub_223BD995C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::detail::sp_counted_impl_p<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::~error_info(void *a1)
{
  *a1 = &unk_28371C580;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::~error_info(void *a1)
{
  *a1 = &unk_28371C580;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_223BD9B5C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x223DF43A0](v1, v2);
  _Unwind_Resume(a1);
}

void std::allocator<void *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::name_value_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  boost::core::scoped_demangled_name::scoped_demangled_name(&v47, ("PN10applesauce10exceptions13tag_backtraceE" & 0x7FFFFFFFFFFFFFFFLL));
  if (v47)
  {
    v4 = v47;
  }

  else
  {
    v4 = ("PN10applesauce10exceptions13tag_backtraceE" & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::string::basic_string[abi:ne200100]<0>(&v43, v4);
  free(v47);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__i_ = &v43;
  }

  else
  {
    v5.__i_ = v43.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v43, v5, 91);
  v44 = v43;
  memset(&v43, 0, sizeof(v43));
  v6 = std::string::append(&v44, "] = ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  memset(&v52, 0, sizeof(v52));
  v8 = *(a1 + 8);
  v9 = *(a1 + 16) - v8;
  v10 = backtrace_symbols(v8, v9 >> 3);
  if ((v9 >> 3) < 1)
  {
    goto LABEL_61;
  }

  v40 = a2;
  v11 = 0;
  do
  {
    v12 = *(*(a1 + 8) + 8 * v11);
    snprintf(__str, 0x40uLL, "%-3d\t%*p\t", v11, 18, v12);
    v13 = strlen(__str);
    std::string::append(&v52, __str, v13);
    memset(&v62, 0, sizeof(v62));
    if (dladdr(v12, &v62))
    {
      v14 = v62.dli_sname == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = std::string::basic_string[abi:ne200100]<0>(&v57, v10[v11]);
      v16 = std::string::append(v15, "\n", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v60 = v16->__r_.__value_.__r.__words[2];
      v59 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v60 >= 0)
      {
        v18 = &v59;
      }

      else
      {
        v18 = v59;
      }

      if (v60 >= 0)
      {
        v19 = HIBYTE(v60);
      }

      else
      {
        v19 = *(&v59 + 1);
      }

      std::string::append(&v52, v18, v19);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v58) < 0)
      {
        v20 = v57;
LABEL_57:
        operator delete(v20);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v57, v62.dli_sname);
      applesauce::backtrace::detail::demangle_ex(&v59, &v57);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57);
      }

      v21 = v61;
      if (v61 == 1)
      {
        if (v60 >= 0)
        {
          dli_sname = &v59;
        }

        else
        {
          dli_sname = v59;
        }
      }

      else
      {
        dli_sname = v62.dli_sname;
        if (!v62.dli_sname)
        {
          dli_sname = v10[v11];
        }
      }

      dli_saddr = v62.dli_saddr;
      std::string::basic_string[abi:ne200100]<0>(&v54, dli_sname);
      v24 = std::string::append(&v54, " + ", 3uLL);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v53, v12 - dli_saddr);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v53;
      }

      else
      {
        v26 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(&v55, v26, size);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v56, "\n", 1uLL);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v58 = v30->__r_.__value_.__r.__words[2];
      v57 = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v58 >= 0)
      {
        v32 = &v57;
      }

      else
      {
        v32 = v57;
      }

      if (v58 >= 0)
      {
        v33 = HIBYTE(v58);
      }

      else
      {
        v33 = *(&v57 + 1);
      }

      std::string::append(&v52, v32, v33);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (v21 && SHIBYTE(v60) < 0)
      {
        v20 = v59;
        goto LABEL_57;
      }
    }

    ++v11;
  }

  while (((v9 >> 3) & 0x7FFFFFFF) != v11);
  a2 = v40;
  if ((v9 >> 3) == 64)
  {
    std::string::append(&v52, "[truncated?]\n", 0xDuLL);
  }

LABEL_61:
  if (v10)
  {
    free(v10);
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v52;
  }

  else
  {
    v34 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v52.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v34, v35);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  std::ostringstream::str[abi:ne200100](__dst, &v47);
  v47 = *MEMORY[0x277D82828];
  *(&v47 + *(v47 - 3)) = *(MEMORY[0x277D82828] + 24);
  v48 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v49);
  std::ostream::~ostream();
  MEMORY[0x223DF42F0](&v51);
  if ((v42 & 0x80u) == 0)
  {
    v36 = __dst;
  }

  else
  {
    v36 = __dst[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v37 = v42;
  }

  else
  {
    v37 = __dst[1];
  }

  v38 = std::string::append(&v45, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v46, 10);
  *a2 = v46;
  memset(&v46, 0, sizeof(v46));
  if (v42 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_223BDA198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void std::vector<void *>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_223BDA2F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void *>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void *>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void non-virtual thunk toboost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x223DF43A0);
}

{
  v1 = (a1 - 2);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

uint64_t adm::graph::Node::createHandlers(adm::graph::Node *this, uint64_t a2)
{
  (*(*a2 + 24))(a2);
  (*(*a2 + 32))(a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 48))(a2);
  (*(*a2 + 56))(a2);
  (*(*a2 + 64))(a2);
  (*(*a2 + 72))(a2);
  (*(*a2 + 80))(a2);
  (*(*a2 + 88))(a2);
  return (*(*a2 + 96))(a2);
}

void sub_223BDA71C(_Unwind_Exception *a1)
{
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v1 + 256);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v1 + 224);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v1 + 192);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v1 + 160);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v1 + 128);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v1 + 96);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v1 + 64);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<adm::graph::Kernel>::operator=[abi:ne200100]<adm::graph::Kernel,std::default_delete<adm::graph::Kernel>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

unint64_t *adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::operator=(unint64_t *a1, unint64_t a2)
{
  atomic_store(a2, a1 + 1);
  while (atomic_load(a1))
  {
    sched_yield();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<adm::graph::Kernel  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN3adm5graph6KernelEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<adm::graph::Kernel  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<adm::graph::Kernel  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::VoiceProcessorKernelConfiguration<adm::vp::Proxy<adm::vp::UplinkConfiguration,adm::vp::detail::UplinkProxyImplementation>>::~VoiceProcessorKernelConfiguration(adm::graph::KernelConfiguration *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  adm::graph::KernelConfiguration::~KernelConfiguration(this);
}

void *adm::graph::DSPNode::getDSP(const void **this)
{
  v3 = this[18];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v2;
}

uint64_t adm::graph::HostNode::addClientIOCallback(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = (atomic_fetch_add(&adm::graph::generateCallbackID(adm::graph::CallbackType)::gCallbackID, 0x100u) | 4) + 256;
    v11 = v4;
    v5 = a1[32];
    if (v5 >= a1[33])
    {
      result = std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__emplace_back_slow_path<unsigned int &,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(a1 + 31, &v11, a2);
      v6 = result;
    }

    else
    {
      *v5 = v4;
      v6 = (v5 + 10);
      result = std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100]((v5 + 2), a2);
    }

    a1[32] = v6;
  }

  else
  {
    v8 = (atomic_fetch_add(&adm::graph::generateCallbackID(adm::graph::CallbackType)::gCallbackID, 0x100u) | 3) + 256;
    v12 = v8;
    v9 = a1[29];
    if (v9 >= a1[30])
    {
      result = std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__emplace_back_slow_path<unsigned int &,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(a1 + 28, &v12, a2);
      v10 = result;
    }

    else
    {
      *v9 = v8;
      v10 = (v9 + 10);
      result = std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100]((v9 + 2), a2);
    }

    a1[29] = v10;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

char *std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__emplace_back_slow_path<unsigned int &,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * ((a1[1] - *a1) >> 3)) = *a2;
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](40 * v3 + 8, a3);
  v8 = *a1;
  v7 = a1[1];
  v9 = 40 * v3 - (v7 - *a1);
  if (v7 != *a1)
  {
    v10 = 40 * v3 - 8 * ((v7 - *a1) >> 3) + 8;
    v11 = *a1;
    v12 = *a1;
    do
    {
      v13 = *v12;
      v12 += 10;
      *(v10 - 8) = v13;
      v10 = std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v10, (v11 + 2)) + 40;
      v11 = v12;
    }

    while (v12 != v7);
    do
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100]((v8 + 2));
      v8 += 10;
    }

    while (v8 != v7);
  }

  v14 = *a1;
  *a1 = v9;
  *(a1 + 1) = 40 * v3 + 40;
  if (v14)
  {
    operator delete(v14);
  }

  return (40 * v3 + 40);
}

uint64_t adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 264);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(a1 + 192);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<adm::vp::SPI> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<adm::vp::ProxyFactory>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x223DF43A0);
  }

  return result;
}

uint64_t std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm5graph11NodeManagerC1ERKNS_19SystemConfigurationEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::operator()(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 199) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    v5 = *(a1 + 176);
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v5;
  }

  else
  {
    v2 = v5.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v5.__r_.__value_.__l.__size_;
    }

    if (!CFStringCreateWithBytes(0, v2, size, 0x8000100u, 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(&v5.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_13;
    }
  }

  else if ((*(&v5.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_13:
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_223BDB2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x223DF43A0](v13, 0xE0C402B90B96ALL);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void sub_223BDB30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_223BDB354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a16);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json((v26 - 128));
  v28 = &a25;
  v29 = -64;
  do
  {
    v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v28) - 32;
    v29 += 32;
  }

  while (v29);
  MEMORY[0x223DF43A0](v25, 0xE0C402B90B96ALL);
  applesauce::CF::StringRef::~StringRef(&a15);
  _Unwind_Resume(a1);
}

void sub_223BDB39C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 buf)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "unknown exception in voice processor proxy SPI - file a radar for Audio - DSP Software", &buf, 2u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown exception from voice processor proxy SPI");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  JUMPOUT(0x223BDB48CLL);
}

void sub_223BDB424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_end_catch();
  MEMORY[0x223DF43A0](v13, 0xE0C402B90B96ALL);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::destroy_deallocate(void *a1)
{
  adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0::~$_0(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28371C370;
  result = adm::SystemConfiguration::SystemConfiguration((a2 + 1), (a1 + 8));
  v5 = *(a1 + 272);
  if (v5)
  {
    result = CFRetain(*(a1 + 272));
  }

  a2[34] = v5;
  v6 = *(a1 + 280);
  if (v6)
  {
    result = CFRetain(v6);
  }

  a2[35] = v6;
  return result;
}

void std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28371C370;
  adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0::~$_0((a1 + 1));

  JUMPOUT(0x223DF43A0);
}

void *std::__function::__func<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0,std::allocator<adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0>,std::unique_ptr<adm::vp::SPI> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28371C370;
  adm::graph::NodeManager::NodeManager(adm::SystemConfiguration const&)::$_0::~$_0((a1 + 1));
  return a1;
}

void sub_223BDD560(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BDDC7CLL);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD570(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BDDC74);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD580(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  if (a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31);
    JUMPOUT(0x223BDDC84);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::runtime_error a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  *(v61 - 144) = v59;
  v62 = *(v61 - 136);
  if (v62)
  {
    *(v61 - 128) = v62;
    operator delete(v62);
  }

  if (__p)
  {
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(&STACK[0x230]);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a58);
  if (v60)
  {
    __cxa_free_exception(v58);
  }

  std::runtime_error::~runtime_error(&a51);
  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD680(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a2)
  {
    __cxa_begin_catch(a1);
    adm::vp::detail::ProxyFactoryImplementation::doCreateProxyList<adm::vp::UplinkConfiguration>(adm::vp::ImmutableDispatch<adm::vp::UplinkConfiguration>::Type const&)::{lambda(adm::vp::detail::UplinkProxyImplementation *)#1}::operator()(va, v26);
    __cxa_rethrow();
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD6A4(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x223BDDC84);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD6D8(void *a1, int a2)
{
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    __cxa_begin_catch(a1);
    LOBYTE(STACK[0x230]) = 0;
    LOBYTE(STACK[0x250]) = 0;
    __cxa_end_catch();
    JUMPOUT(0x223BDC6A8);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (a49)
  {
    (*(*a49 + 8))(a49, a2, a3, a4, a5, a6, a7, a8);
  }

  JUMPOUT(0x223BDD8DCLL);
}

void sub_223BDD764()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  adm::graph::DSPKernel::~DSPKernel(v0);
  JUMPOUT(0x223BDD8C4);
}

void sub_223BDD780(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x223BDD8C4);
}

void sub_223BDD7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, const void *a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  if (a63)
  {
    a64 = a63;
    operator delete(a63);
  }

  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  applesauce::CF::StringRef::~StringRef(&a59);
  JUMPOUT(0x223BDD8F4);
}

void sub_223BDD7F8(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x230] = v2;
    JUMPOUT(0x223BDD9A0);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD818(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BDD820);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD844(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BDD84CLL);
  }

  JUMPOUT(0x223BDDBDCLL);
}

void sub_223BDD868(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x223BDDBDCLL);
  }

  JUMPOUT(0x223BDD9A0);
}

void sub_223BDD874(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x223BDDBDCLL);
  }

  JUMPOUT(0x223BDD9F0);
}

void sub_223BDD888(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 boost::exception_detail::error_info_injector<std::system_error>::error_info_injector(std::runtime_error *a1, uint64_t a2)
{
  v3 = std::runtime_error::runtime_error(a1, a2);
  v3->n128_u64[0] = MEMORY[0x277D82840] + 16;
  result = *(a2 + 16);
  v3[1] = result;
  v3[3].n128_u64[0] = 0;
  v3[3].n128_u64[1] = 0;
  v3[4].n128_u32[0] = -1;
  v3->n128_u64[0] = &unk_28371C4D8;
  v3[2].n128_u64[0] = &unk_28371C500;
  v3[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &unk_28371C4A8;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = (MEMORY[0x277D82840] + 16);
  v4[1] = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  *(a1 + 32) = &unk_28371C520;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_28371C408;
  *(a1 + 32) = &unk_28371C440;
  *(a1 + 72) = &unk_28371C478;
  v11 = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    (*(*v7 + 40))(&v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v11, v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 40), v8);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v11);
  return a1;
}

{
  *(a1 + 72) = &unk_28371C4A8;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = (MEMORY[0x277D82840] + 16);
  v4[1] = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = &unk_28371C520;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_28371C408;
  *(a1 + 32) = &unk_28371C440;
  *(a1 + 72) = &unk_28371C478;
  return a1;
}

void sub_223BDDED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(v10);
  _Unwind_Resume(a1);
}

void sub_223BDE0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(uint64_t a1)
{
  *(a1 + 32) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x223DF43A0);
}

{
  *(a1 + 32) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(uint64_t a1)
{
  *(a1 + 32) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x223DF43A0);
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(void *a1)
{
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(a1 + *(*a1 - 40));
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 4) = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 5);

  std::runtime_error::~runtime_error(v1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(exception, a1);
}

void sub_223BDE658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(v10);
  MEMORY[0x223DF43A0](v10, v11);
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(void *a1)
{
  v1 = (a1 - 4);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void non-virtual thunk toboost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(void *a1)
{
  v1 = (a1 - 4);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x223DF43A0);
}

{
  v1 = (a1 - 4);
  *a1 = &unk_28371C520;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void adm::graph::NodeManager::createNode(uint64_t a1, void *a2, adm::graph::NodeDescription *a3, const adm::graph::TerminalDescription **a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  if (!v9)
  {
    goto LABEL_9;
  }

  v24 = (v9 + 8);
  v25 = (v9 + 32);
  v26 = (v9 + 36);
  v19 = a3;
  v20 = a3 + 24;
  v21 = a3 + 28;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>>(&v24, &v19))
  {
    goto LABEL_9;
  }

  adm::graph::Node::getTerminalDescriptions(&v17, v9);
  v10 = v17;
  v11 = v18;
  v12 = *a4;
  if (v18 - v17 != a4[1] - *a4)
  {
LABEL_8:
    v24 = &v17;
    std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v24);
LABEL_9:
    v15 = a2[2];
    a2[1] = 0;
    a2[2] = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    adm::graph::DSPNode::create(&v24, a3);
  }

  while (v10 != v11)
  {
    v24 = v10;
    v25 = v10 + 24;
    v26 = v10 + 32;
    v27 = v10 + 72;
    v13 = (v10 + 80);
    v28 = v10 + 80;
    v19 = v12;
    v20 = (v12 + 6);
    v21 = (v12 + 8);
    v22 = v12 + 18;
    v14 = v12 + 20;
    v23 = v12 + 20;
    if (!std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>>(&v24, &v19) || *v13 != *v14)
    {
      goto LABEL_8;
    }

    v10 = (v13 + 14);
    v12 = v14 + 14;
  }

  v24 = &v17;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v24);
  v16 = a2[2];
  *a1 = a2[1];
  *(a1 + 8) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 1;
}

void sub_223BDEAA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    v19 = __cxa_begin_catch(a1);
    adm_log_object = get_adm_log_object();
    v21 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v21)
      {
        v22 = (*(*v19 + 16))(v19);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught exception: %s", &buf, 0xCu);
      }
    }

    else if (v21)
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught unknown exception", &buf, 2u);
    }

    *v17 = 1970170734;
    *(v17 + 16) = 0;
    __cxa_end_catch();
    JUMPOUT(0x223BDEA44);
  }

  _Unwind_Resume(a1);
}

BOOL std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>>(const void ***a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 == v5 && (v3 >= 0 ? (v9 = *a1) : (v9 = **a1), v6 >= 0 ? (v10 = *a2) : (v10 = *v2), !memcmp(v9, v10, v4) && *a1[1] == **(a2 + 8)))
  {
    return *a1[2] == **(a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>>(const void ***a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 == v5 && (v3 >= 0 ? (v9 = *a1) : (v9 = **a1), v6 >= 0 ? (v10 = *a2) : (v10 = *v2), !memcmp(v9, v10, v4) && *a1[1] == **(a2 + 8) && (v11 = a1[2], v12 = *(a2 + 16), *v11 == *v12) && *(v11 + 2) == *(v12 + 8) && *(v11 + 3) == *(v12 + 12) && *(v11 + 4) == *(v12 + 16) && *(v11 + 5) == *(v12 + 20) && *(v11 + 6) == *(v12 + 24) && *(v11 + 7) == *(v12 + 28) && *(v11 + 8) == *(v12 + 32)))
  {
    return *a1[3] == **(a2 + 24);
  }

  else
  {
    return 0;
  }
}

void sub_223BDEF7C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x223DF43A0](v1, v2);
  _Unwind_Resume(a1);
}

void adm::graph::anonymous namespace::ErrorCategory::message(int a1@<W1>, void *a2@<X8>)
{
  if (a1 == 1685287015)
  {
    v4 = "dspgraph error";
    goto LABEL_5;
  }

  if (a1 == 1970170734)
  {
    v4 = "unknown error";
LABEL_5:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, "!! Invalid error code: ");
  std::to_string(&__p, a1);
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

  v7 = std::string::append(&v12, p_p, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v13, " !!", 3uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  a2[2] = *(&v9->__r_.__value_.__l + 2);
  *a2 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_223BDF120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void adm::graph::anonymous namespace::ErrorCategory::~ErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x223DF43A0);
}

uint64_t std::__shared_ptr_pointer<adm::graph::DSPNode *,std::shared_ptr<adm::graph::DSPNode>::__shared_ptr_default_delete<adm::graph::DSPNode,adm::graph::DSPNode>,std::allocator<adm::graph::DSPNode>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN3adm5graph7DSPNodeEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<adm::graph::DSPNode *,std::shared_ptr<adm::graph::DSPNode>::__shared_ptr_default_delete<adm::graph::DSPNode,adm::graph::DSPNode>,std::allocator<adm::graph::DSPNode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<adm::graph::DSPNode *,std::shared_ptr<adm::graph::DSPNode>::__shared_ptr_default_delete<adm::graph::DSPNode,adm::graph::DSPNode>,std::allocator<adm::graph::DSPNode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void non-virtual thunk toadm::graph::DSPNode::~DSPNode(adm::graph::DSPNode *this)
{
  adm::graph::HostNode::~HostNode((this - 128));

  JUMPOUT(0x223DF43A0);
}

{
  adm::graph::HostNode::~HostNode((this - 128));
}

void adm::graph::DSPNode::~DSPNode(adm::graph::DSPNode *this)
{
  adm::graph::HostNode::~HostNode(this);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::NodeManager::createNode(uint64_t a1, uint64_t a2, adm::graph::NodeDescription *a3, const adm::graph::TerminalDescription **a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  cf[0] = (v9 + 8);
  cf[1] = (v9 + 32);
  v22 = v9 + 36;
  v17[0] = a3;
  v17[1] = a3 + 24;
  v18 = a3 + 28;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>>(cf, v17))
  {
    goto LABEL_9;
  }

  adm::graph::Node::getTerminalDescriptions(&v25, v9);
  v10 = v25;
  v11 = v26;
  v12 = *a4;
  if (v26 - v25 != a4[1] - *a4)
  {
LABEL_8:
    cf[0] = &v25;
    std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](cf);
LABEL_9:
    v15 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    adm::graph::DSPNode::create(&v25, a3);
  }

  while (v10 != v11)
  {
    cf[0] = v10;
    cf[1] = (v10 + 24);
    v22 = v10 + 32;
    v23 = v10 + 72;
    v13 = (v10 + 80);
    v24[0] = (v10 + 80);
    v17[0] = v12;
    v17[1] = v12 + 6;
    v18 = (v12 + 8);
    v19 = v12 + 18;
    v14 = v12 + 20;
    v20[0] = v12 + 20;
    if (!std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>>(cf, v17) || *v13 != *v14)
    {
      goto LABEL_8;
    }

    v10 = (v13 + 14);
    v12 = v14 + 14;
  }

  cf[0] = &v25;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](cf);
  v16 = *(a2 + 16);
  *a1 = *(a2 + 8);
  *(a1 + 8) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 1;
}

{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  cf[0] = (v9 + 8);
  cf[1] = (v9 + 32);
  v23 = v9 + 36;
  v18[0] = a3;
  v18[1] = a3 + 24;
  v19 = a3 + 28;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::NodeType const&,unsigned int const&>>(cf, v18))
  {
    goto LABEL_9;
  }

  adm::graph::Node::getTerminalDescriptions(buf, v9);
  v10 = *buf;
  v11 = *&buf[8];
  v12 = *a4;
  if (*&buf[8] - *buf != a4[1] - *a4)
  {
LABEL_8:
    cf[0] = buf;
    std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](cf);
LABEL_9:
    v15 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    adm::graph::DSPNode::create(&v17, a3);
  }

  while (v10 != v11)
  {
    cf[0] = v10;
    cf[1] = v10 + 6;
    v23 = (v10 + 8);
    v24 = v10 + 18;
    v13 = v10 + 20;
    v25[0] = v10 + 20;
    v18[0] = v12;
    v18[1] = v12 + 6;
    v19 = (v12 + 8);
    v20 = v12 + 18;
    v14 = v12 + 20;
    v21[0] = v12 + 20;
    if (!std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>,std::tuple<std::string const&,adm::graph::TerminalDirection const&,CA::StreamDescription const&,adm::graph::SemanticSet const&,unsigned int const&>>(cf, v18) || *v13 != *v14)
    {
      goto LABEL_8;
    }

    v10 = v13 + 14;
    v12 = v14 + 14;
  }

  cf[0] = buf;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](cf);
  v16 = *(a2 + 16);
  *a1 = *(a2 + 8);
  *(a1 + 8) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 1;
}

void sub_223BDFB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a2)
  {
    __cxa_free_exception(v31);
    adm::graph::DSPGraphKernelConfiguration::~DSPGraphKernelConfiguration(&a31);
    adm::graph::KernelConfiguration::~KernelConfiguration(&a11);
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    v35 = *(v32 - 120);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v36 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v38 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v38)
      {
        v39 = (*(*v36 + 16))(v36);
        *(v32 - 128) = 136315138;
        *(v32 - 124) = v39;
        _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught exception: %s", (v32 - 128), 0xCu);
      }
    }

    else if (v38)
    {
      *(v32 - 128) = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught unknown exception", (v32 - 128), 2u);
    }

    *a9 = 1970170734;
    *(a9 + 16) = 0;
    __cxa_end_catch();
    JUMPOUT(0x223BDF9A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_223BE0CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 buf)
{
  if (a2)
  {
    __cxa_free_exception(v39);
    adm::graph::ExclaveKernelConfiguration::~ExclaveKernelConfiguration(v41);
    adm::graph::DSPKernel::~DSPKernel(v40);
    MEMORY[0x223DF43A0](v40, 0x10E1C40BA9C3C83);
    adm::graph::ExclaveKernelConfiguration::~ExclaveKernelConfiguration(&buf);
    adm::graph::KernelConfiguration::~KernelConfiguration(&a11);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    v44 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v46 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v46)
      {
        v47 = (*(*v44 + 16))(v44);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v47;
        _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught exception: %s", &buf, 0xCu);
      }
    }

    else if (v46)
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "caught unknown exception", &buf, 2u);
    }

    *v37 = 1970170734;
    *(v37 + 16) = 0;
    __cxa_end_catch();
    JUMPOUT(0x223BE0978);
  }

  _Unwind_Resume(exception_object);
}

BOOL adm::config_policy::isExclaveUseCase(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v18, "isolated audio muted talker detection");
  v2 = std::__tree<std::string>::find<std::string>(a1, v18);
  if (a1 + 8 == v2)
  {
    v4 = v2;
    std::string::basic_string[abi:ne200100]<0>(v16, "isolated audio siri");
    if (v4 == std::__tree<std::string>::find<std::string>(a1, v16))
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "isolated audio sound analysis");
      if (v4 == std::__tree<std::string>::find<std::string>(a1, v14))
      {
        std::string::basic_string[abi:ne200100]<0>(v12, "isolated audio perception");
        if (v4 == std::__tree<std::string>::find<std::string>(a1, v12))
        {
          std::string::basic_string[abi:ne200100]<0>(v10, "isolated audio shared DSP");
          if (v4 == std::__tree<std::string>::find<std::string>(a1, v10))
          {
            std::string::basic_string[abi:ne200100]<0>(v8, "isolated audio historical audio");
            if (v4 == std::__tree<std::string>::find<std::string>(a1, v8))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "isolated audio audio pairing");
              v3 = v4 != std::__tree<std::string>::find<std::string>(a1, __p);
              if (v7 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v3 = 1;
            }

            if (v9 < 0)
            {
              operator delete(v8[0]);
            }
          }

          else
          {
            v3 = 1;
          }

          if (v11 < 0)
          {
            operator delete(v10[0]);
          }
        }

        else
        {
          v3 = 1;
        }

        if (v13 < 0)
        {
          operator delete(v12[0]);
        }
      }

      else
      {
        v3 = 1;
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    else
    {
      v3 = 1;
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  else
  {
    v3 = 1;
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v3;
}

void sub_223BE11CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (*(v30 - 17) < 0)
  {
    operator delete(*(v30 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL adm::config_policy::exclaveUseCaseRequiresRefStream(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "isolated audio audio pairing");
  v2 = std::__tree<std::string>::find<std::string>(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 8 == v2;
}

BOOL adm::config_policy::isAirPodsMicOffloadUseCase(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v10, "airpods noise suppression");
  v2 = std::__tree<std::string>::find<std::string>(a1, v10);
  if (a1 + 8 == v2)
  {
    v4 = v2;
    std::string::basic_string[abi:ne200100]<0>(v8, "airpods noise suppression studio");
    if (v4 == std::__tree<std::string>::find<std::string>(a1, v8))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "airpods content creation recording");
      v3 = v4 != std::__tree<std::string>::find<std::string>(a1, __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v3 = 1;
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    v3 = 1;
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  return v3;
}

void sub_223BE13A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t adm::config_policy::contentCreationRequiresEC(adm::config_policy *this, const DeviceDescription *a2, DeviceDescription *a3, const DeviceDescription *a4)
{
  v4 = a3;
  v5 = a2;
  v23 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    goto LABEL_33;
  }

  if (*(a3 + 16) != 1651274862)
  {
    goto LABEL_23;
  }

  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v8 = "contentCreationRequiresEC true, isBuiltInSpeakerDevice";
LABEL_26:
      _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, v8, &v19, 2u);
      return 1;
    }

    return 1;
  }

  if ((v4[23] & 0x80000000) == 0)
  {
    v9 = v4[23];
    v10 = v4;
    if (v9 != 5)
    {
      if (v9 == 8)
      {
        v11 = *v4;
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_19:
    v13 = *v10;
    v14 = v10[4];
    if (v13 == 1701080899 && v14 == 99)
    {
      adm_log_object = get_adm_log_object();
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      LOWORD(v19) = 0;
      v8 = "contentCreationRequiresEC true, output is Codec";
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v12 = *(v4 + 1);
  if (v12 == 5)
  {
    v10 = *v4;
    goto LABEL_19;
  }

  if (v12 == 8)
  {
    v11 = **v4;
LABEL_15:
    if (v11 == 0x7265766965636552)
    {
      adm_log_object = get_adm_log_object();
      if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        v8 = "contentCreationRequiresEC true, output is Receiver";
        goto LABEL_26;
      }

      return 1;
    }
  }

LABEL_23:
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v8 = "contentCreationRequiresEC true, output is Studio Display";
      goto LABEL_26;
    }

    return 1;
  }

  if (*(this + 232) == 1 && *(this + 224) == 1 && *(this + 49) == 1886745455)
  {
    adm_log_object = get_adm_log_object();
    if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    LOWORD(v19) = 0;
    v8 = "contentCreationRequiresEC true, output is USB speaker";
    goto LABEL_26;
  }

LABEL_33:
  v17 = get_adm_log_object();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (!v18)
  {
    return result;
  }

  if (v5)
  {
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    if (v4)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v5 = "";
    if (v4)
    {
LABEL_38:
      if (v4[23] < 0)
      {
        v4 = *v4;
      }

      goto LABEL_42;
    }
  }

  v4 = "";
LABEL_42:
  v19 = 136315394;
  v20 = v5;
  v21 = 2080;
  v22 = v4;
  _os_log_impl(&dword_223B4A000, v17, OS_LOG_TYPE_DEFAULT, "contentCreationRequiresEC false, mic=%s, ref=%s", &v19, 0x16u);
  return 0;
}

BOOL adm::config_policy::isBuiltInSpeakerDevice(adm::config_policy *this, const DeviceDescription *a2)
{
  if (*(this + 16) != 1651274862)
  {
    return 0;
  }

  if (*(this + 18) == 1769173099)
  {
    return 1;
  }
}

BOOL anonymous namespace::isStudioDisplay(_anonymous_namespace_ *this, const DeviceDescription *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  PortSubType = adm::utility::getPortSubType(*(this + 16), 0, 0, this + 3);
  v3 = 0;
  qmemcpy(v6, "100620063006", 12);
  do
  {
    v4 = *(v6 + v3);
    if (PortSubType == v4)
    {
      break;
    }

    v3 += 4;
  }

  while (v3 != 12);
  return PortSubType == v4;
}

uint64_t std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      if (*(v3 + 8) == v6 && !memcmp(*v3, v7, v6))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t adm::config_policy::getRequiredNotificationSubscriptions(adm::config_policy *this, const adm::ConfigurationChangeRequest *a2)
{
  DeviceDescription = adm::config_policy::getDeviceDescription(this, 1);
  v4 = adm::config_policy::getDeviceDescription(this, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "isolated audio muted talker detection");
  v5 = std::__tree<std::string>::find<std::string>(this + 8, __p);
  v6 = this + 16;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "content creation recording");
  if (v6 == std::__tree<std::string>::find<std::string>(this + 8, __p))
  {
    v8 = 0;
  }

  else if (adm::config_policy::contentCreationRequiresEC((this + 8), DeviceDescription, v4, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = 256;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8 | (v6 != v5);
}

_anonymous_namespace_ *adm::config_policy::getDeviceDescription(adm::ConfigurationChangeRequest *a1, int a2)
{
  if (*(a1 + 21) == *(a1 + 22))
  {
    return 0;
  }

  adm::config_policy::getPrimaryStreamInfo(&v15, a1);
  if (v16 == a2)
  {
    return v15;
  }

  if (!a2)
  {
    adm::config_policy::getActiveStreamInfo(&v13, a1);
    v6 = v13;
    v7 = v14;
    if (v13 == v14)
    {
LABEL_12:
      v9 = 1;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = v13;
      while (1)
      {
        if (*(v8 + 16) == 1 && std::operator==[abi:ne200100]<std::string,char [10]>(v8[1] + 32, "reference"))
        {
          v2 = *v8;
          {
            break;
          }
        }

        v8 += 3;
        if (v8 == v7)
        {
          goto LABEL_12;
        }
      }

      v9 = 0;
      if (!v6)
      {
LABEL_14:
        if (!v9)
        {
          return v2;
        }

        goto LABEL_15;
      }
    }

    operator delete(v6);
    goto LABEL_14;
  }

LABEL_15:
  v11 = *(a1 + 31);
  v10 = *(a1 + 32);
  v2 = v11;
  if (v11 != v10)
  {
    v2 = v11;
    while (a2 || (*(v2 + 48) & 1) == 0)
    {
      v2 = (v2 + 216);
      if (v2 == v10)
      {
        goto LABEL_22;
      }
    }

    if (v2 != v10)
    {
      return v2;
    }

LABEL_22:
    v2 = v11;
    {
      v2 = (v2 + 216);
      if (v2 == v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (v2 == v10)
  {
LABEL_27:
    if (v11 != v10)
    {
      {
        v11 = (v11 + 216);
        if (v11 == v10)
        {
          v11 = v10;
          break;
        }
      }
    }

    if (v11 == v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return v2;
}

double adm::config_policy::getPrimaryStreamInfo(adm::config_policy *this, const adm::ConfigurationChangeRequest *a2)
{
  if ((v6 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = *&v4;
  *this = v4;
  *(this + 2) = v5;
  return result;
}

void adm::config_policy::getActiveStreamInfo(adm::config_policy *this, const adm::ConfigurationChangeRequest *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 21);
  v3 = *(a2 + 22);
  if (v2 != v3)
  {
    v6 = 0;
    do
    {
      if ((v17 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v7 = *(this + 2);
      if (v6 >= v7)
      {
        v9 = *this;
        v10 = v6 - *this;
        v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
        if (v11 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v14 = 8 * (v10 >> 3);
        *v14 = v15;
        *(v14 + 16) = v16;
        v6 = v14 + 24;
        memcpy((v14 - v10), v9, v10);
        *this = 8 * (v10 >> 3) - v10;
        *(this + 1) = v6;
        *(this + 2) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        v8 = v15;
        *(v6 + 16) = v16;
        *v6 = v8;
        v6 += 24;
      }

      *(this + 1) = v6;
      v2 += 3;
    }

    while (v2 != v3);
  }
}

void sub_223BE1CD4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::getDeviceDirection(_anonymous_namespace_ *this, const DeviceDescription *a2)
{
  {
    return 0;
  }

  v3 = *(this + 21);
  v4 = *(this + 22);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += std::operator!=[abi:ne200100]<std::string,char [10]>((v3 + 32));
    v3 += 136;
  }

  while (v3 != v4);
  if (!v5)
  {
    return 0;
  }

  v7 = *(this + 24);
  v6 = *(this + 25);
  if (v7 == v6)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    v8 += std::operator!=[abi:ne200100]<std::string,char [10]>((v7 + 32));
    v7 += 136;
  }

  while (v7 != v6);
  if (!v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL std::operator!=[abi:ne200100]<std::string,char [10]>(uint64_t *a1)
{
  if (*(a1 + 24) != 1)
  {
    return 1;
  }

  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (a1[1] != 9)
    {
      return 1;
    }

    a1 = *a1;
  }

  else if (v1 != 9)
  {
    return 1;
  }

  return *a1 != 0x636E657265666572 || *(a1 + 8) != 101;
}

void anonymous namespace::findStreamByID(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v7 = a2;
    while (2)
    {
      v8 = v7[21];
      v9 = v7[22];
      while (v8 != v9)
      {
        if (std::operator==[abi:ne200100]<std::string,std::string>(v8, a4))
        {
          *a1 = v7;
          *(a1 + 8) = v8;
          v13 = 1;
          *(a1 + 16) = 1;
          goto LABEL_16;
        }

        v8 += 136;
      }

      v10 = v7[24];
      v11 = v7[25];
      while (v10 != v11)
      {
        if (std::operator==[abi:ne200100]<std::string,std::string>(v10, a4))
        {
          *a1 = v7;
          *(a1 + 8) = v10;
          v13 = 1;
          *(a1 + 16) = 0;
          goto LABEL_16;
        }

        v10 += 136;
      }

      v7 += 27;
      if (v7 != a3)
      {
        continue;
      }

      break;
    }
  }

  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    v15 = 136315138;
    v16 = v14;
    _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "Requested stream ID %s not found (this shouldn't happen)", &v15, 0xCu);
  }

  v13 = 0;
  *a1 = 0;
LABEL_16:
  *(a1 + 24) = v13;
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(char *a1, void *a2)
{
  if (a1[24] != 1)
  {
    return 0;
  }

  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t anonymous namespace::validateStreamUsage(std::string::size_type *this, const adm::ConfigurationChangeRequest *a2)
{
  v2 = a2;
  v102[3] = *MEMORY[0x277D85DE8];
  if (*this != 1 || (v4 = this[3], v4 == 1))
  {
LABEL_3:
    adm::config_policy::getActiveStreamInfo(&v81, this);
    if (*this)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "voice isolation");
      v5 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = v81;
      v7 = v82;
      if (this + 2 != v5 && v81 != v82 && *(*v81 + 64) == 1986622068)
      {
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "don't perform VI on virtual device input streams", &__p, 2u);
        }

        v9 = get_adm_log_object();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_187;
        }

        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        v10 = "unsupported configChangeRequest - devices";
        goto LABEL_144;
      }
    }

    else
    {
      v6 = v81;
      v7 = v82;
    }

    if (v6 != v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v6;
      while (1)
      {
        v14 = *(*(v13 + 1) + 64);
        if (v11)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14;
        }

        if (v14 != v15)
        {
          v9 = get_adm_log_object();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_187;
          }

          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          v10 = "inconsistent stream sample rates";
          goto LABEL_144;
        }

        if (v14 != *(*v13 + 56))
        {
          break;
        }

        v13 += 24;
        v11 = 1;
        v12 = v14;
        if (v13 == v7)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
          if (v2)
          {
            goto LABEL_28;
          }

          v17 = 0;
          v18 = v6;
          do
          {
            v17 += std::operator==[abi:ne200100]<std::string,char [10]>(*(v18 + 1) + 32, "reference");
            v18 += 24;
          }

          while (v18 != v7);
          goto LABEL_27;
        }
      }

      v9 = get_adm_log_object();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_187;
      }

      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v10 = "inconsistent device sample rates";
      goto LABEL_144;
    }

    v16 = 0;
    v17 = 0;
    if ((v2 & 1) == 0)
    {
LABEL_27:
      v16 -= v17;
    }

LABEL_28:
    isExclaveUseCase = adm::config_policy::isExclaveUseCase((this + 1));
    if (adm::config_policy::isAirPodsMicOffloadUseCase((this + 1)))
    {
      if (v16 == 1)
      {
        if (v6[16] == 1)
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__p.__r_.__value_.__l.__size_ != 7)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              goto LABEL_142;
            }

            v51 = *__p.__r_.__value_.__l.__data_ != 1701733735 || *(__p.__r_.__value_.__r.__words[0] + 3) != 1818325605;
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v51)
            {
LABEL_142:
              v9 = get_adm_log_object();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not general semantic";
                goto LABEL_144;
              }

LABEL_187:
              v41 = 0;
              goto LABEL_188;
            }
          }

          else
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
            {
              goto LABEL_142;
            }

            v20 = LODWORD(__p.__r_.__value_.__l.__data_) == 1701733735 && *(__p.__r_.__value_.__r.__words + 3) == 1818325605;
            if (!v20)
            {
              goto LABEL_142;
            }
          }

LABEL_219:
          v41 = 1;
LABEL_188:
          if (v81)
          {
            operator delete(v81);
          }

          return v41;
        }

        v9 = get_adm_log_object();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_187;
        }

        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        v10 = "mic stream not input stream";
LABEL_144:
        v53 = v9;
        v54 = 2;
LABEL_186:
        _os_log_error_impl(&dword_223B4A000, v53, OS_LOG_TYPE_ERROR, v10, &__p, v54);
        goto LABEL_187;
      }

      v26 = get_adm_log_object();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_187;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v16;
      v10 = "expected 1 stream but got %lu";
    }

    else if (isExclaveUseCase)
    {
      if (adm::config_policy::exclaveUseCaseRequiresRefStream((this + 1)))
      {
        if (v16 - 4 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v46 = *v6;
          {
            if (v6[16] == 1)
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
              v47 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v47)
              {
                v48 = v16 >= 2 && *(v7 - 8) == 1 && std::operator==[abi:ne200100]<std::string,char [10]>(*(v7 - 2) + 32, "reference");
                v41 = 1;
                if (!v2 || v48)
                {
                  goto LABEL_188;
                }

                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "this route requires a ref stream";
              }

              else
              {
                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not general semantic";
              }

              goto LABEL_144;
            }

            v9 = get_adm_log_object();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__p.__r_.__value_.__l.__data_) = 0;
              v10 = "mic stream not input stream ";
              goto LABEL_144;
            }

            goto LABEL_187;
          }

          v9 = get_adm_log_object();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_187;
          }

          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          v10 = "exclave use-cases can only operate on built-in mic";
          goto LABEL_144;
        }

        v26 = get_adm_log_object();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_187;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        v10 = "unexpected stream count: %lu";
      }

      else
      {
        if (v16 == 1)
        {
          if (adm::config_policy::isBuiltInSpeakerDevice(*v6, v25))
          {
            if (!v6[16])
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
              v59 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (!v59)
              {
                v9 = get_adm_log_object();
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v10 = "spk stream not general semantic";
                  goto LABEL_144;
                }

                goto LABEL_187;
              }

              goto LABEL_219;
            }

            v9 = get_adm_log_object();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v10 = "spk stream not output stream ";
          }

          else
          {
            v9 = get_adm_log_object();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v10 = "this exclave use-case can only operate on built-in speaker";
          }

          goto LABEL_144;
        }

        v26 = get_adm_log_object();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_187;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        v10 = "unexpected stream count: %lu";
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "voice activity detection");
      v42 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
      v43 = this + 2;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v43 == v42)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "voice isolation");
        v44 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v43 == v44)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "spatial playback");
          if (v43 == std::__tree<std::string>::find<std::string>((this + 1), &__p))
          {
            std::string::basic_string[abi:ne200100]<0>(v100, "spatial channel virtualization only");
            v52 = v43 != std::__tree<std::string>::find<std::string>((this + 1), v100);
            if (v101 < 0)
            {
              operator delete(v100[0]);
            }
          }

          else
          {
            v52 = 1;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v52)
          {
            if (v16 == 1)
            {
              if (v6[16])
              {
                v9 = get_adm_log_object();
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v10 = "stream not output stream";
                  goto LABEL_144;
                }

                goto LABEL_187;
              }

              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
              v66 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (!v66)
              {
                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "stream not general semantic";
                goto LABEL_144;
              }

              goto LABEL_219;
            }

            v26 = get_adm_log_object();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
            *(__p.__r_.__value_.__r.__words + 4) = v16;
            v10 = "expected 1 stream but got %lu";
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "voice isolation conferencing");
            v55 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v43 != v55)
            {
              if (v2)
              {
                v56 = 2;
              }

              else
              {
                v56 = 1;
              }

              if (v16 < v56)
              {
                v57 = get_adm_log_object();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(__p.__r_.__value_.__l.__data_) = 134218240;
                  *(__p.__r_.__value_.__r.__words + 4) = v56;
                  WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
                  *(&__p.__r_.__value_.__r.__words[1] + 6) = v16;
                  v10 = "expected at least %lu stream(s) but got %lu";
                  v53 = v57;
                  v54 = 22;
                  goto LABEL_186;
                }

                goto LABEL_187;
              }

              if (v6[16] != 1)
              {
                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not input stream";
                goto LABEL_144;
              }

              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
              v62 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (!v62)
              {
                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not general semantic";
                goto LABEL_144;
              }

              v63 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
              if (v63 >= 2)
              {
                v64 = v6 + 40;
                v65 = v63 - 1;
                while (1)
                {
                  if (*v64 != 1)
                  {
                    v9 = get_adm_log_object();
                    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_187;
                    }

                    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v10 = "ref stream is not input stream";
                    goto LABEL_144;
                  }

                  if (std::operator!=[abi:ne200100]<std::string,char [10]>((*(v64 - 1) + 32)))
                  {
                    break;
                  }

                  v64 += 24;
                  v41 = 1;
                  if (!--v65)
                  {
                    goto LABEL_188;
                  }
                }

                v9 = get_adm_log_object();
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_187;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "ref stream is not ref semantic";
                goto LABEL_144;
              }

              goto LABEL_219;
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "content creation recording");
            v61 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v43 == v61)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "general");
              v67 = std::__tree<std::string>::find<std::string>((this + 1), &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v41 = 1;
              if (v43 == v67 || v16 == 1)
              {
                goto LABEL_188;
              }

              v26 = get_adm_log_object();
              if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_187;
              }

              LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
              *(__p.__r_.__value_.__r.__words + 4) = v16;
              v10 = "expected 1 stream but got %lu";
            }

            else
            {
              if (v16 - 4 > 0xFFFFFFFFFFFFFFFCLL)
              {
                if (v6[16] != 1)
                {
                  v9 = get_adm_log_object();
                  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_187;
                  }

                  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v10 = "mic stream not input stream";
                  goto LABEL_144;
                }

                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
                v68 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (!v68)
                {
                  v9 = get_adm_log_object();
                  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_187;
                  }

                  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v10 = "mic stream not general semantic";
                  goto LABEL_144;
                }

                v69 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
                if (v69 >= 2)
                {
                  v70 = v6 + 40;
                  v71 = v69 - 1;
                  while (1)
                  {
                    if (*v70 != 1)
                    {
                      v9 = get_adm_log_object();
                      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_187;
                      }

                      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                      v10 = "ref stream is not input stream";
                      goto LABEL_144;
                    }

                    if (std::operator!=[abi:ne200100]<std::string,char [10]>((*(v70 - 1) + 32)))
                    {
                      break;
                    }

                    v70 += 24;
                    v41 = 1;
                    if (!--v71)
                    {
                      goto LABEL_188;
                    }
                  }

                  v9 = get_adm_log_object();
                  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_187;
                  }

                  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                  v10 = "ref stream is not ref semantic";
                  goto LABEL_144;
                }

                goto LABEL_219;
              }

              v26 = get_adm_log_object();
              if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_187;
              }

              LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
              *(__p.__r_.__value_.__r.__words + 4) = v16;
              v10 = "unexpected stream count %lu";
            }
          }
        }

        else
        {
          if (v16 == 1)
          {
            if (v6[16] != 1)
            {
              v9 = get_adm_log_object();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not input stream";
                goto LABEL_144;
              }

              goto LABEL_187;
            }

            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
            v45 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v45)
            {
              goto LABEL_219;
            }

            v9 = get_adm_log_object();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v10 = "mic stream not general semantic";
            goto LABEL_144;
          }

          v26 = get_adm_log_object();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_187;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
          *(__p.__r_.__value_.__r.__words + 4) = v16;
          v10 = "expected 1 stream but got %lu";
        }
      }

      else
      {
        if (v16 - 3 > 0xFFFFFFFFFFFFFFFDLL)
        {
          if (v6[16] == 1)
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v6 + 1) + 32, "general");
            v49 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "general");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (!v49)
            {
              v9 = get_adm_log_object();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                v10 = "mic stream not general semantic";
                goto LABEL_144;
              }

              goto LABEL_187;
            }

            if (v16 != 2)
            {
              if (v2)
              {
                v58 = *v6;
                if (!*v6 || *(v58 + 16) != 1651275109 || *(v58 + 19) != 1 || (*(v58 + 160) & 1) == 0)
                {
                  v9 = get_adm_log_object();
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v10 = "this route requires a ref stream";
                    goto LABEL_144;
                  }

                  goto LABEL_187;
                }
              }

              goto LABEL_219;
            }

            if (v6[40] != 1)
            {
              v9 = get_adm_log_object();
              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_187;
              }

              LOWORD(__p.__r_.__value_.__l.__data_) = 0;
              v10 = "ref stream not input stream ";
              goto LABEL_144;
            }

            if (!std::operator!=[abi:ne200100]<std::string,char [10]>((*(v6 + 4) + 32)))
            {
              goto LABEL_219;
            }

            v9 = get_adm_log_object();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v10 = "ref stream not ref semantic";
          }

          else
          {
            v9 = get_adm_log_object();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_187;
            }

            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            v10 = "mic stream not input stream ";
          }

          goto LABEL_144;
        }

        v26 = get_adm_log_object();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_187;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        v10 = "unexpected stream count: %lu";
      }
    }

    v53 = v26;
    v54 = 12;
    goto LABEL_186;
  }

  if (v4 < 4)
  {
    {
      std::string::basic_string[abi:ne200100]<0>(v100, "voice activity detection");
      std::string::basic_string[abi:ne200100]<0>(v102, "voice isolation");
      std::string::basic_string[abi:ne200100]<0>(v98, "airpods noise suppression");
      std::string::basic_string[abi:ne200100]<0>(v99, "content creation recording");
      std::set<std::string>::set[abi:ne200100](qword_27D0B96A0, v98, 2);
      std::string::basic_string[abi:ne200100]<0>(v96, "airpods noise suppression studio");
      std::string::basic_string[abi:ne200100]<0>(v97, "content creation recording");
      std::set<std::string>::set[abi:ne200100](qword_27D0B96B8, v96, 2);
      std::string::basic_string[abi:ne200100]<0>(v94, "airpods noise suppression");
      std::string::basic_string[abi:ne200100]<0>(v95, "voice activity detection");
      std::set<std::string>::set[abi:ne200100](qword_27D0B96D0, v94, 2);
      std::string::basic_string[abi:ne200100]<0>(v92, "airpods noise suppression studio");
      std::string::basic_string[abi:ne200100]<0>(v93, "voice activity detection");
      std::set<std::string>::set[abi:ne200100](qword_27D0B96E8, v92, 2);
      std::string::basic_string[abi:ne200100]<0>(v90, "airpods noise suppression");
      std::string::basic_string[abi:ne200100]<0>(v91, "voice isolation");
      std::set<std::string>::set[abi:ne200100](qword_27D0B9700, v90, 2);
      std::string::basic_string[abi:ne200100]<0>(v88, "airpods noise suppression studio");
      std::string::basic_string[abi:ne200100]<0>(v89, "voice isolation");
      std::set<std::string>::set[abi:ne200100](qword_27D0B9718, v88, 2);
      std::string::basic_string[abi:ne200100]<0>(&__p, "airpods noise suppression");
      std::string::basic_string[abi:ne200100]<0>(v86, "voice activity detection");
      std::string::basic_string[abi:ne200100]<0>(v87, "voice isolation");
      std::set<std::string>::set[abi:ne200100](qword_27D0B9730, &__p, 3);
      std::string::basic_string[abi:ne200100]<0>(&v81, "airpods noise suppression studio");
      std::string::basic_string[abi:ne200100]<0>(v83, "voice activity detection");
      std::string::basic_string[abi:ne200100]<0>(v84, "voice isolation");
      std::set<std::string>::set[abi:ne200100](qword_27D0B9748, &v81, 3);
      for (i = 0; i != -9; i -= 3)
      {
        if (SHIBYTE(v84[i + 2]) < 0)
        {
          operator delete(v84[i]);
        }
      }

      for (j = 0; j != -9; j -= 3)
      {
        if (SHIBYTE(v87[j + 2]) < 0)
        {
          operator delete(v87[j]);
        }
      }

      for (k = 0; k != -6; k -= 3)
      {
        if (SHIBYTE(v89[k + 2]) < 0)
        {
          operator delete(v88[k + 3]);
        }
      }

      for (m = 0; m != -6; m -= 3)
      {
        if (SHIBYTE(v91[m + 2]) < 0)
        {
          operator delete(v90[m + 3]);
        }
      }

      for (n = 0; n != -6; n -= 3)
      {
        if (SHIBYTE(v93[n + 2]) < 0)
        {
          operator delete(v92[n + 3]);
        }
      }

      for (ii = 0; ii != -6; ii -= 3)
      {
        if (SHIBYTE(v95[ii + 2]) < 0)
        {
          operator delete(v94[ii + 3]);
        }
      }

      for (jj = 0; jj != -6; jj -= 3)
      {
        if (SHIBYTE(v97[jj + 2]) < 0)
        {
          operator delete(v96[jj + 3]);
        }
      }

      for (kk = 0; kk != -6; kk -= 3)
      {
        if (SHIBYTE(v99[kk + 2]) < 0)
        {
          operator delete(v98[kk + 3]);
        }
      }

      for (mm = 0; mm != -6; mm -= 3)
      {
        if (SHIBYTE(v102[mm + 2]) < 0)
        {
          operator delete(v102[mm]);
        }
      }
    }

    v27 = 0;
    v28 = this[3];
    v29 = this[1];
    do
    {
      {
        v33 = *v30;
        v31 = v30 + 1;
        v32 = v33;
        if (v33 == v31)
        {
          goto LABEL_3;
        }

        v34 = v29;
        while (std::equal_to<std::string>::operator()[abi:ne200100](v32 + 4, v34 + 4))
        {
          v35 = v32[1];
          v36 = v32;
          if (v35)
          {
            do
            {
              v32 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v32 = v36[2];
              v20 = *v32 == v36;
              v36 = v32;
            }

            while (!v20);
          }

          v37 = v34[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v34[2];
              v20 = *v38 == v34;
              v34 = v38;
            }

            while (!v20);
          }

          v34 = v38;
          if (v32 == v31)
          {
            goto LABEL_3;
          }
        }
      }

      v27 += 3;
    }

    while (v27 != 27);
    v39 = get_adm_log_object();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v22 = "Unsupported IOContext semantic combination.";
    v23 = v39;
    v24 = 2;
    goto LABEL_170;
  }

  v21 = get_adm_log_object();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
    *(__p.__r_.__value_.__r.__words + 4) = v4;
    v22 = "Unsupported IOContext semantic count: %lu";
    v23 = v21;
    v24 = 12;
LABEL_170:
    _os_log_error_impl(&dword_223B4A000, v23, OS_LOG_TYPE_ERROR, v22, &__p, v24);
  }

LABEL_73:
  v40 = get_adm_log_object();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_223B4A000, v40, OS_LOG_TYPE_ERROR, "invalid configChangeRequest - semantics", &__p, 2u);
  }

  return 0;
}

void sub_223BE3524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  v69 = (v66 + 71);
  v70 = -72;
  v71 = (v66 + 71);
  while (1)
  {
    v72 = *v71;
    v71 -= 24;
    if (v72 < 0)
    {
      operator delete(*(v69 - 23));
    }

    v69 = v71;
    v70 += 24;
    if (!v70)
    {
      v73 = qword_27D0B9748;
      v74 = &a30 + 7;
      v75 = -72;
      v76 = &a30 + 7;
      while (1)
      {
        v77 = *v76;
        v76 -= 24;
        if (v77 < 0)
        {
          operator delete(*(v74 - 23));
        }

        v74 = v76;
        v75 += 24;
        if (!v75)
        {
          v78 = &a39 + 7;
          v79 = -48;
          v80 = &a39 + 7;
          while (1)
          {
            v81 = *v80;
            v80 -= 24;
            if (v81 < 0)
            {
              operator delete(*(v78 - 23));
            }

            v78 = v80;
            v79 += 24;
            if (!v79)
            {
              v82 = &a48 + 7;
              v83 = -48;
              v84 = &a48 + 7;
              while (1)
              {
                v85 = *v84;
                v84 -= 24;
                if (v85 < 0)
                {
                  operator delete(*(v82 - 23));
                }

                v82 = v84;
                v83 += 24;
                if (!v83)
                {
                  v86 = &a57 + 7;
                  v87 = -48;
                  v88 = &a57 + 7;
                  while (1)
                  {
                    v89 = *v88;
                    v88 -= 24;
                    if (v89 < 0)
                    {
                      operator delete(*(v86 - 23));
                    }

                    v86 = v88;
                    v87 += 24;
                    if (!v87)
                    {
                      v90 = &a65;
                      v91 = -48;
                      v92 = &a65;
                      while (1)
                      {
                        v93 = *v92;
                        v92 -= 24;
                        if (v93 < 0)
                        {
                          operator delete(*(v90 - 23));
                        }

                        v90 = v92;
                        v91 += 24;
                        if (!v91)
                        {
                          v94 = (v67 - 185);
                          v95 = -48;
                          v96 = (v67 - 185);
                          while (1)
                          {
                            v97 = *v96;
                            v96 -= 24;
                            if (v97 < 0)
                            {
                              operator delete(*(v94 - 23));
                            }

                            v94 = v96;
                            v95 += 24;
                            if (!v95)
                            {
                              v98 = (v67 - 137);
                              v99 = -48;
                              v100 = (v67 - 137);
                              while (1)
                              {
                                v101 = *v100;
                                v100 -= 24;
                                if (v101 < 0)
                                {
                                  operator delete(*(v98 - 23));
                                }

                                v98 = v100;
                                v99 += 24;
                                if (!v99)
                                {
                                  v102 = 0;
                                  v103 = v67 - 136;
                                  while (1)
                                  {
                                    if (*(v103 + v102 + 47) < 0)
                                    {
                                      operator delete(*(v103 + v102 + 24));
                                    }

                                    v102 -= 24;
                                    if (v102 == -48)
                                    {
                                      if (qword_27D0B9748 != v65)
                                      {
                                        do
                                        {
                                          std::__tree<std::string>::destroy(*(v73 - 2));
                                          v73 -= 3;
                                        }

                                        while (v73 != v65);
                                      }

                                      _Unwind_Resume(a1);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = &a2[3 * a3];
    while (1)
    {
      v8 = v4;
      if (*a1 == v4)
      {
        goto LABEL_10;
      }

      v9 = v6;
      v10 = v4;
      if (v6)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, v5) & 0x80) != 0)
      {
LABEL_10:
        if (!v6)
        {
          v15 = v4;
LABEL_15:
          std::__tree<std::string>::__construct_node<std::string const&>(v14, a1, v5);
        }

        v15 = v8;
        v12 = v8 + 1;
      }

      else
      {
        v12 = std::__tree<std::string>::__find_equal<std::string>(a1, &v15, v5);
      }

      if (!*v12)
      {
        goto LABEL_15;
      }

      v5 += 3;
      if (v5 == v7)
      {
        break;
      }

      v6 = *v4;
    }
  }

  return a1;
}

void *adm::graph::Semantic::operator std::string(void *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = adm::graph::detail::gSemanticInfoTable;
  v5 = 48;
  do
  {
    if (*v4 == a2)
    {
      return std::string::basic_string[abi:ne200100]<0>(a1, *(v4 + 1));
    }

    v4 += 4;
    v5 -= 16;
  }

  while (v5);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a2;
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, "Unknown");
}

void sub_223BE3B90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t adm::graph::SemanticSetIterator::operator*(unint64_t a1)
{
  if (a1 >= 3)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return adm::graph::detail::gSemanticInfoTable[4 * a1];
}

uint64_t adm::graph::detail::getSemanticIndex(int a1)
{
  result = 0;
  v3 = 0;
  v6 = *MEMORY[0x277D85DE8];
  while (adm::graph::detail::gSemanticInfoTable[v3] != a1)
  {
    ++result;
    v3 += 4;
    if (v3 == 12)
    {
      adm_log_object = get_adm_log_object();
      if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
      {
        v5[0] = 67109120;
        v5[1] = a1;
        _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "Failed to match semantic type %d to get index. Use index 0 instead", v5, 8u);
      }

      return 0;
    }
  }

  return result;
}

void *adm::graph::SemanticSet::SemanticSet(void *a1, int *a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      SemanticIndex = adm::graph::detail::getSemanticIndex(*a2);
      if (SemanticIndex >= 0x20)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      *a1 |= 1 << SemanticIndex;
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t adm::graph::SemanticSet::contains(void *a1, int a2)
{
  SemanticIndex = adm::graph::detail::getSemanticIndex(a2);
  if (SemanticIndex >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return (*a1 >> SemanticIndex) & 1;
}

void adm::LoadSystemConfiguration(adm *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(&v20, "/Library/Audio/Tunings/");
  if (MGIsQuestionValid() && (v2 = MGGetSInt32Answer()) != 0)
  {
    v3 = get_adm_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_impl(&dword_223B4A000, v3, OS_LOG_TYPE_DEFAULT, "Found device acousticID = %d", buf, 8u);
    }

    v4 = v2 | 0x100000000;
  }

  else
  {
    v5 = get_adm_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEFAULT, "An acousticID was not found on this device", buf, 2u);
    }

    v4 = 0;
  }

  v21 = v4;
  v22 = BYTE4(v4);
  LOBYTE(v23) = 0;
  v25 = 0;
  v6 = get_adm_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223B4A000, v6, OS_LOG_TYPE_DEFAULT, "A macBoardID was not found on this device", buf, 2u);
  }

  LOBYTE(__p) = 0;
  v28 = 0;
  if (!MGIsQuestionValid())
  {
    goto LABEL_33;
  }

  v7 = MGGetStringAnswer();
  if (!v7)
  {
    goto LABEL_33;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v7);
  CFRelease(v7);
  if (CFStringHasSuffix(MutableCopy, @"AP"))
  {
    v9 = @"AP";
LABEL_21:
    CFStringTrim(MutableCopy, v9);
    goto LABEL_22;
  }

  if (CFStringHasSuffix(MutableCopy, @"DEV"))
  {
    v9 = @"DEV";
    goto LABEL_21;
  }

  if (CFStringHasSuffix(MutableCopy, @"ap"))
  {
    v9 = @"ap";
    goto LABEL_21;
  }

  if (CFStringHasSuffix(MutableCopy, @"dev"))
  {
    v9 = @"dev";
    goto LABEL_21;
  }

LABEL_22:
  v30 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_47;
  }

  v10 = CFGetTypeID(MutableCopy);
  if (v10 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!v30)
  {
LABEL_47:
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::string,0>(buf, v30);
  __p = *buf;
  v27 = v32;
  v32 = 0;
  memset(buf, 0, sizeof(buf));
  v28 = 1;
  if (v30)
  {
    CFRelease(v30);
  }

  v11 = get_adm_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v27 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    *&buf[4] = p_p;
    _os_log_impl(&dword_223B4A000, v11, OS_LOG_TYPE_DEFAULT, "Found HW Model Name = %s", buf, 0xCu);
  }

  if ((v28 & 1) == 0)
  {
LABEL_33:
    v13 = get_adm_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223B4A000, v13, OS_LOG_TYPE_DEFAULT, "A HW Model Name was not found on this device", buf, 2u);
    }
  }

  v29 = 0;
  adm::LoadSystemConfiguration(this, &v16);
  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_223BE41E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v3 - 72));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void adm::LoadSystemConfiguration(adm *this, const adm::ConfigurationContext *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v302 = *MEMORY[0x277D85DE8];
  v244 = 0;
  memset(&v245, 0, sizeof(v245));
  std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(&v246, "/Library/Audio/Tunings/");
  LOBYTE(__val[0]) = 0;
  LOBYTE(__val[1]) = 0;
  v248.__r_.__value_.__s.__data_[0] = 0;
  v249 = 0;
  v250.__r_.__value_.__s.__data_[0] = 0;
  v251 = 0;
  v252 = 0;
  LOBYTE(v253) = 0;
  BYTE4(v253) = 0;
  *v254 = 0u;
  memset(v255, 0, sizeof(v255));
  *v256 = 0u;
  v257 = 0u;
  v258 = 1065353216;
  memset(v259, 0, sizeof(v259));
  __ec.__val_ = 0;
  v6 = std::system_category();
  __ec.__cat_ = v6;
  v7 = v4 + 16;
  v237 = v5;
  if (*(v4 + 88) != 1)
  {
    goto LABEL_73;
  }

  v8 = *(v4 + 87);
  if (v8 < 0)
  {
    if (*(v4 + 9) != 20)
    {
      goto LABEL_30;
    }

    v11 = *v7;
    if (**v7 != 0x353941412D63614DLL || *(*v7 + 8) != 0x3732424144443142 || *(*v7 + 16) != 892944952)
    {
      goto LABEL_11;
    }

LABEL_29:
    v17 = 0;
    v18 = 0x100000000;
    v19 = 15;
    goto LABEL_72;
  }

  if (v8 != 20)
  {
    goto LABEL_30;
  }

  v10 = *v7 == 0x353941412D63614DLL && *(v4 + 9) == 0x3732424144443142 && v4[20] == 892944952;
  v11 = v4 + 16;
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_11:
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 4);
  if (v12 == 0x303033362D63614DLL && v13 == 0x3341374538393631 && v14 == 875640884)
  {
    v17 = 0;
    v18 = 0x100000000;
    v19 = 16;
    goto LABEL_72;
  }

LABEL_30:
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v22 = cf.__r_.__value_.__s.__data_[8];
  if (cf.__r_.__value_.__s.__data_[8] != 1)
  {
    goto LABEL_56;
  }

  v23 = cf.__r_.__value_.__r.__words[0];
  if (!cf.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v24 = *(v4 + 87);
  v25 = v24 >= 0 ? (v4 + 16) : *(v4 + 8);
  if (v25)
  {
    if (v24 >= 0)
    {
      v26 = *(v4 + 87);
    }

    else
    {
      v26 = *(v4 + 9);
    }

    v25 = CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0);
    __p[0] = v25;
    if (!v25)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
      __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    __p[0] = 0;
  }

  v28 = CFDictionaryContainsKey(v23, v25);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v28)
  {
    v29 = *(v4 + 87);
    if (v29 >= 0)
    {
      v30 = (v4 + 16);
    }

    else
    {
      v30 = *(v4 + 8);
    }

    if (v30)
    {
      if (v29 >= 0)
      {
        v31 = *(v4 + 87);
      }

      else
      {
        v31 = *(v4 + 9);
      }

      v30 = CFStringCreateWithBytes(0, v30, v31, 0x8000100u, 0);
      __p[0] = v30;
      if (!v30)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
        __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
      __p[0] = 0;
    }

    Value = CFDictionaryGetValue(v23, v30);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (Value)
    {
      v36 = applesauce::CF::convert_as<unsigned int,0>(Value);
    }

    else
    {
      v36 = 0;
    }

    v17 = v36 & 0xFFFFFF00;
    v19 = v36;
    v18 = v36 & 0xFF00000000;
  }

  else
  {
LABEL_56:
    v33 = get_adm_log_object();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = "/System/Library/Components/AudioDSP.component/Contents/Resources/Tunings/vp_platform_info.plist";
      _os_log_error_impl(&dword_223B4A000, v33, OS_LOG_TYPE_ERROR, "Device boardID not presented in vp_platform_info plist at path: %s", __p, 0xCu);
    }

    v18 = 0;
    v19 = 0;
    v17 = 0;
    v23 = cf.__r_.__value_.__r.__words[0];
    if (cf.__r_.__value_.__r.__words[0])
    {
      v34 = v22;
    }

    else
    {
      v34 = 0;
    }

    if (v34 != 1)
    {
      goto LABEL_72;
    }
  }

  CFRelease(v23);
LABEL_72:
  BYTE4(v253) = BYTE4(v18);
  LODWORD(v253) = v19 | v18 | v17;
LABEL_73:
  v38 = get_adm_log_object();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(v4 + 60);
    v40 = v4[14];
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, (v4 + 16), "");
    v41 = v39 ? v40 : 0;
    v42 = (SBYTE7(v297[0]) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(cf.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(cf.__r_.__value_.__r.__words[0]) = v41;
    LOWORD(cf.__r_.__value_.__r.__words[1]) = 2080;
    *(&cf.__r_.__value_.__r.__words[1] + 2) = v42;
    _os_log_impl(&dword_223B4A000, v38, OS_LOG_TYPE_DEFAULT, "Loading configuration file for acousticID=%d, macBoardID='%s'", &cf, 0x12u);
    if (SBYTE7(v297[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v244 = *v4;
  std::string::operator=(&v245, (v4 + 2));
  std::string::operator=(&v246, (v4 + 8));
  __val[0] = v4[14];
  LOBYTE(__val[1]) = *(v4 + 60);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v248, (v4 + 16));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v250, v4 + 4);
  v252 = *(v4 + 128);
  if ((*__val & 0x100000000) != 0)
  {
    std::to_string(__p, __val[0]);
    v44 = std::string::insert(__p, 0, "AID", 3uLL);
    v45 = v44->__r_.__value_.__r.__words[0];
    cf.__r_.__value_.__r.__words[0] = v44->__r_.__value_.__l.__size_;
    *(cf.__r_.__value_.__r.__words + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
    v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *(cf.__r_.__value_.__r.__words + 7);
    __str.__r_.__value_.__r.__words[0] = v45;
    __str.__r_.__value_.__l.__size_ = cf.__r_.__value_.__r.__words[0];
    *(&__str.__r_.__value_.__s + 23) = v46;
    v242 = 1;
    if (SBYTE7(v297[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v251)
    {
      v43 = &v250;
    }

    else
    {
      v43 = &v248;
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__str, v43);
  }

  if (v242 == 1)
  {
    std::string::operator=(v254, &__str);
  }

  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v245.__r_.__value_.__l.__data_, v245.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v245.__r_.__value_.__l.__data_;
    *&v297[0] = *(&v245.__r_.__value_.__l + 2);
  }

  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&cf, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_);
  }

  else
  {
    cf = v246;
  }

  if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = cf.__r_.__value_.__r.__words[0];
  }

  if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = cf.__r_.__value_.__l.__size_;
  }

  v49 = std::string::append(__p, p_cf, size);
  v50 = v49->__r_.__value_.__r.__words[0];
  v292.__pn_.__r_.__value_.__r.__words[0] = v49->__r_.__value_.__l.__size_;
  *(v292.__pn_.__r_.__value_.__r.__words + 7) = *(&v49->__r_.__value_.__r.__words[1] + 7);
  v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v255[3]) < 0)
  {
    operator delete(v255[1]);
  }

  v255[1] = v50;
  v255[2] = v292.__pn_.__r_.__value_.__l.__data_;
  *(&v255[2] + 7) = *(v292.__pn_.__r_.__value_.__r.__words + 7);
  HIBYTE(v255[3]) = v51;
  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::__fs::filesystem::__status(&v255[1], &__ec);
  if (!LOBYTE(__p[0]) || (__ec.__val_ = 0, __ec.__cat_ = v6, LOBYTE(__p[0]) == 255))
  {
    v52 = get_adm_log_object();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = &v255[1];
      if (SHIBYTE(v255[3]) < 0)
      {
        v53 = v255[1];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v53;
      _os_log_impl(&dword_223B4A000, v52, OS_LOG_TYPE_DEFAULT, "Root tuning directory not found: %s", __p, 0xCu);
    }

    goto LABEL_379;
  }

  v54 = get_adm_log_object();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_223B4A000, v54, OS_LOG_TYPE_DEFAULT, "Loading generic configuration file", __p, 2u);
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v297[0] = 0;
  std::string::append[abi:ne200100]<char const*,0>(__p, "Generic", "");
  std::__fs::filesystem::operator/[abi:ne200100](&v240.__pn_, &v255[1], __p);
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::__fs::filesystem::__status(&v240, &__ec);
  if (!LOBYTE(__p[0]) || (__ec.__val_ = 0, __ec.__cat_ = v6, LOBYTE(__p[0]) == 255))
  {
    v55 = get_adm_log_object();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = &v240;
      if ((v240.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v240.__pn_.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v56;
      _os_log_impl(&dword_223B4A000, v55, OS_LOG_TYPE_DEFAULT, "Generic tuning directory not found: %s", __p, 0xCu);
    }

    goto LABEL_142;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(&v292.__pn_);
  std::__fs::filesystem::operator/[abi:ne200100](&cf, &v240, &v292);
  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(v291);
  std::__fs::filesystem::operator/[abi:ne200100](__p, &cf, v291);
  if (v291[0].mContext.mResourcePath.__pn_.__rep_.__s.__data_[15] < 0)
  {
    operator delete(*&v291[0].mContext.mOS);
  }

  if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(cf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v292.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v292.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(__p, &__ec);
  if (cf.__r_.__value_.__s.__data_[0] && (__ec.__val_ = 0, __ec.__cat_ = v6, cf.__r_.__value_.__s.__data_[0] != 255))
  {
    if (v291[0].mContext.mResourcePath.__pn_.__rep_.__s.__data_[0] == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(&v292.__pn_);
      std::__fs::filesystem::operator/[abi:ne200100](&cf, &v240, &v292);
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v292.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v292.__pn_.__r_.__value_.__l.__data_);
      }

      if (*&v291[0].mContext.mOS)
      {
        CFRelease(*&v291[0].mContext.mOS);
      }

      goto LABEL_140;
    }

    v57 = get_adm_log_object();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v219 = __p;
      if (SBYTE7(v297[0]) < 0)
      {
        v219 = __p[0];
      }

      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = v219;
      _os_log_error_impl(&dword_223B4A000, v57, OS_LOG_TYPE_ERROR, "Failed to load generic config file: %s", &cf, 0xCu);
    }
  }

  else
  {
    v57 = get_adm_log_object();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = __p;
      if (SBYTE7(v297[0]) < 0)
      {
        v58 = __p[0];
      }

      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = v58;
      _os_log_impl(&dword_223B4A000, v57, OS_LOG_TYPE_DEFAULT, "Generic config file not found: %s", &cf, 0xCu);
    }
  }

LABEL_140:
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_142:
  if (v242 != 1)
  {
    goto LABEL_377;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(__p, v254);
  std::__fs::filesystem::operator/[abi:ne200100](&v239.__pn_, &v255[1], __p);
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::__fs::filesystem::__status(&v239, &__ec);
  if (LOBYTE(__p[0]))
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v6;
    if (LOBYTE(__p[0]) != 255)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(&v292.__pn_);
      std::__fs::filesystem::operator/[abi:ne200100](&cf, &v239, &v292);
      std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(v291);
      std::__fs::filesystem::operator/[abi:ne200100](__p, &cf, v291);
      if (v291[0].mContext.mResourcePath.__pn_.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&v291[0].mContext.mOS);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v292.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v292.__pn_.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::__status(__p, &__ec);
      if (cf.__r_.__value_.__s.__data_[0] && (__ec.__val_ = 0, __ec.__cat_ = v6, cf.__r_.__value_.__s.__data_[0] != 255))
      {
        if (v291[0].mContext.mResourcePath.__pn_.__rep_.__s.__data_[0] == 1)
        {
          std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(&v292.__pn_);
          std::__fs::filesystem::operator/[abi:ne200100](&cf, &v239, &v292);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v292.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v292.__pn_.__r_.__value_.__l.__data_);
          }

          if (*&v291[0].mContext.mOS)
          {
            CFRelease(*&v291[0].mContext.mOS);
          }

          goto LABEL_165;
        }

        v61 = get_adm_log_object();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v220 = __p;
          if (SBYTE7(v297[0]) < 0)
          {
            v220 = __p[0];
          }

          LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
          *(cf.__r_.__value_.__r.__words + 4) = v220;
          _os_log_error_impl(&dword_223B4A000, v61, OS_LOG_TYPE_ERROR, "Failed to load device specific config file: %s", &cf, 0xCu);
        }
      }

      else
      {
        v61 = get_adm_log_object();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = __p;
          if (SBYTE7(v297[0]) < 0)
          {
            v62 = __p[0];
          }

          LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
          *(cf.__r_.__value_.__r.__words + 4) = v62;
          _os_log_impl(&dword_223B4A000, v61, OS_LOG_TYPE_DEFAULT, "Device specific config file not found: %s", &cf, 0xCu);
        }
      }

LABEL_165:
      if (SBYTE7(v297[0]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_167;
    }
  }

  v59 = get_adm_log_object();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = &v239;
    if ((v239.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v60 = v239.__pn_.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v60;
    _os_log_impl(&dword_223B4A000, v59, OS_LOG_TYPE_DEFAULT, "Device tuning directory not found: %s", __p, 0xCu);
  }

LABEL_167:
  v63 = MEMORY[0x277CCACA8];
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v245.__r_.__value_.__l.__data_, v245.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v245.__r_.__value_.__l.__data_;
    *&v297[0] = *(&v245.__r_.__value_.__l + 2);
  }

  v64 = SBYTE7(v297[0]);
  v65 = __p[0];
  v66 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v64 >= 0)
  {
    v67 = __p;
  }

  else
  {
    v67 = v65;
  }

  v68 = [v63 stringWithCString:v67 encoding:v66];
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v69 = MEMORY[0x277CCACA8];
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v246.__r_.__value_.__l.__data_;
    *&v297[0] = *(&v246.__r_.__value_.__l + 2);
  }

  v70 = SBYTE7(v297[0]);
  v71 = __p[0];
  v72 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v70 >= 0)
  {
    v73 = __p;
  }

  else
  {
    v73 = v71;
  }

  v74 = [v69 stringWithCString:v73 encoding:v72];
  if (SBYTE7(v297[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v75 = MEMORY[0x277CCACA8];
  v76 = SHIBYTE(v255[0]);
  v77 = v254[0];
  v78 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v76 >= 0)
  {
    v79 = v254;
  }

  else
  {
    v79 = v77;
  }

  v80 = [v75 stringWithCString:v79 encoding:v78];
  v81 = *v4;
  v82 = [_TtC20AudioDSPManagerSwift36InteropLayerSystemConfigurationQuery alloc];
  if (v81 - 1 >= 3)
  {
    v83 = 0;
  }

  else
  {
    v83 = v81;
  }

  v233 = [(InteropLayerSystemConfigurationQuery *)v82 initWithResourcePath:v68 tuningBasePath:v74 hardwareIdentifier:v80 os:v83];

  v84 = [_TtC20AudioDSPManagerSwift12InteropLayer loadSystemConfigurationAssetsWithQuery:v233];
  v279 = 0u;
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v85 = v84;
  v86 = [v85 countByEnumeratingWithState:&v279 objects:&v292 count:16];
  if (!v86)
  {
LABEL_350:

    LOBYTE(v294) = 1;
    goto LABEL_370;
  }

  v87 = *v280;
  v226 = *v280;
LABEL_191:
  v88 = 0;
  v227 = v86;
LABEL_192:
  if (*v280 != v87)
  {
    objc_enumerationMutation(v85);
  }

  v228 = v88;
  v89 = *(*(&v279 + 1) + 8 * v88);
  v90 = [v89 getIOSemantic];
  v91 = v90;
  std::string::basic_string[abi:ne200100]<0>(v277, [v90 UTF8String]);

  v92 = [v89 getDSPSelection];
  v93 = v92;
  std::string::basic_string[abi:ne200100]<0>(v275, [v92 UTF8String]);

  __src[0] = 0;
  __src[1] = 0;
  v301 = 0;
  *__p = 0u;
  memset(v297, 0, sizeof(v297));
  memset(v298, 0, sizeof(v298));
  memset(v299, 0, sizeof(v299));
  std::string::operator=(v299, &v245);
  v230 = [v89 getGraphFilePath];
  if ([v230 isFound])
  {
    v94 = [v230 getPath];
    v95 = v94;
    std::string::basic_string[abi:ne200100]<0>(&cf, [v94 UTF8String]);
    if (SHIBYTE(v298[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v298[1].__r_.__value_.__l.__data_);
    }

    v298[1] = cf;
    *(&cf.__r_.__value_.__s + 23) = 0;
    cf.__r_.__value_.__s.__data_[0] = 0;

    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v96 = [v89 getPropStripFilePaths];
    v97 = [v96 countByEnumeratingWithState:&v271 objects:v291 count:16];
    if (v97)
    {
      v98 = *v272;
LABEL_199:
      v99 = 0;
      while (1)
      {
        if (*v272 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v100 = *(*(&v271 + 1) + 8 * v99);
        if (![v100 isFound])
        {
          goto LABEL_359;
        }

        v101 = [v100 getPath];
        v102 = v101;
        std::string::basic_string[abi:ne200100]<0>(v283, [v101 UTF8String]);
        cf = *v283;
        memset(v283, 0, 24);
        v103 = *&v297[1];
        if (*&v297[1] >= *(&v297[1] + 1))
        {
          *&v297[1] = std::vector<std::__fs::filesystem::path>::__emplace_back_slow_path<std::__fs::filesystem::path>(v297 + 1, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          **&v297[1] = *&cf.__r_.__value_.__l.__data_;
          *(v103 + 16) = *(&cf.__r_.__value_.__l + 2);
          *&v297[1] = v103 + 24;
        }

        if ((v283[23] & 0x80000000) != 0)
        {
          operator delete(*v283);
        }

        if (v97 == ++v99)
        {
          v97 = [v96 countByEnumeratingWithState:&v271 objects:v291 count:16];
          if (v97)
          {
            goto LABEL_199;
          }

          break;
        }
      }
    }

    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v96 = [v89 getTuningStripFilePaths];
    v104 = [v96 countByEnumeratingWithState:&v267 objects:v290 count:16];
    if (v104)
    {
      v105 = *v268;
LABEL_213:
      v106 = 0;
      while (1)
      {
        if (*v268 != v105)
        {
          objc_enumerationMutation(v96);
        }

        v100 = *(*(&v267 + 1) + 8 * v106);
        if (![v100 isFound])
        {
          break;
        }

        v107 = [v100 getPath];
        v108 = v107;
        std::string::basic_string[abi:ne200100]<0>(v283, [v107 UTF8String]);
        cf = *v283;
        memset(v283, 0, 24);
        v109 = __p[1];
        if (__p[1] >= *&v297[0])
        {
          __p[1] = std::vector<std::__fs::filesystem::path>::__emplace_back_slow_path<std::__fs::filesystem::path>(__p, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *__p[1] = *&cf.__r_.__value_.__l.__data_;
          v109[2] = *(&cf.__r_.__value_.__l + 2);
          __p[1] = v109 + 3;
        }

        if ((v283[23] & 0x80000000) != 0)
        {
          operator delete(*v283);
        }

        if (v104 == ++v106)
        {
          v104 = [v96 countByEnumeratingWithState:&v267 objects:v290 count:16];
          if (v104)
          {
            goto LABEL_213;
          }

          goto LABEL_225;
        }
      }

LABEL_359:
      v162 = [v100 getError];
      v163 = v162;
      std::string::basic_string[abi:ne200100]<0>(v283, [v162 UTF8String]);
      v164 = *v283;
      cf.__r_.__value_.__l.__size_ = *&v283[8];
      *(&cf.__r_.__value_.__r.__words[1] + 7) = *&v283[15];
      v165 = v283[23];
      memset(v283, 0, 24);
      cf.__r_.__value_.__r.__words[0] = v164;
      *(&cf.__r_.__value_.__s + 23) = v165;
      LOBYTE(v294) = 0;

      goto LABEL_360;
    }

LABEL_225:

    v110 = [v89 getGraphFlavor];
    v111 = [v110 isAudioDSPManager];

    if (v111)
    {
      v112 = 0;
    }

    else
    {
      v113 = [v89 getGraphFlavor];
      v114 = [v113 isVirtualAudio];

      if (v114)
      {
        v112 = 1;
      }

      else
      {
        v115 = [v89 getGraphFlavor];
        v116 = [v115 isMacDriver];

        if ((v116 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&cf, "Unhandled case");
          LOBYTE(v294) = 0;
          goto LABEL_360;
        }

        v112 = 2;
      }
    }

    *&v299[24] = v112;
    v117 = [v89 getPropertyOverrides];
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v118 = v117;
    v231 = [v118 countByEnumeratingWithState:&v263 objects:v289 count:16];
    if (!v231)
    {
      goto LABEL_336;
    }

    v229 = *v264;
LABEL_233:
    v235 = 0;
    while (1)
    {
      if (*v264 != v229)
      {
        objc_enumerationMutation(v118);
      }

      v119 = *(*(&v263 + 1) + 8 * v235);
      v120 = [v118 objectForKey:v119];
      v121 = v119;
      v122 = v121;
      if (v121)
      {
        CFRetain(v121);
        v260 = v122;
        v123 = CFGetTypeID(v122);
        if (v123 != CFNumberGetTypeID())
        {
          v223 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v223, "Could not construct");
          __cxa_throw(v223, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        v260 = 0;
      }

      v124 = v120;
      v125 = v260;
      if (v260)
      {
        CFRetain(v260);
      }

      v286[1] = v125;
      if (CFNumberGetType(v125) == kCFNumberSInt64Type)
      {
        break;
      }

      std::string::basic_string[abi:ne200100]<0>(&__sz, "Unexpected carrier type for property ID");
      v288 = 0;
      if (!v125)
      {
        goto LABEL_296;
      }

LABEL_288:
      CFRelease(v125);
      if ((v288 & 1) == 0)
      {
LABEL_296:
        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&cf, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          cf = __sz;
        }

        v261 = cf;
        goto LABEL_300;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v139 = v124;
        v140 = [v139 getValue];
        applesauce::CF::DictionaryRef::from_get(v286, v140);

        v141 = v286[0];
        if (!v286[0])
        {
          v225 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v225, "Could not construct");
          __cxa_throw(v225, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v142 = CFStringCreateWithBytes(0, "value", 5, 0x8000100u, 0);
        *v283 = v142;
        if (!v142)
        {
          v147 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v147, "Could not construct");
          __cxa_throw(v147, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v143 = CFDictionaryGetValue(v141, v142);
        if (*v283)
        {
          CFRelease(*v283);
        }

        if (v143)
        {
          CFRetain(v143);
          cf.__r_.__value_.__r.__words[0] = v143;
          cf.__r_.__value_.__s.__data_[8] = 1;
          operator new();
        }

        cf.__r_.__value_.__s.__data_[0] = 0;
        cf.__r_.__value_.__s.__data_[8] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v261, "Failed to extract property value");
        v262 = 0;
        if (v286[0])
        {
          CFRelease(v286[0]);
        }

        goto LABEL_313;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v144 = [v124 getValue];
        v145 = [v144 count];
        if (v145)
        {
          if (!(v145 >> 62))
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v145);
          }

          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v284 = 0u;
        v285 = 0u;
        memset(v283, 0, sizeof(v283));
        v146 = v144;
        if ([v146 countByEnumeratingWithState:v283 objects:&cf count:16])
        {
          [**&v283[8] unsignedIntValue];
          std::allocator<float>::allocate_at_least[abi:ne200100](1uLL);
        }

        operator new();
      }

      std::string::basic_string[abi:ne200100]<0>(&v261, "Unhandled property type");
LABEL_300:
      v262 = 0;
LABEL_313:
      if ((v288 & 1) == 0 && SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__sz.__r_.__value_.__l.__data_);
      }

      if (v260)
      {
        CFRelease(v260);
      }

      if ((v262 & 1) == 0)
      {
        if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v283, v261.__r_.__value_.__l.__data_, v261.__r_.__value_.__l.__size_);
        }

        else
        {
          *v283 = v261;
        }

        cf = *v283;
        LOBYTE(v294) = 0;
        std::__expected_base<std::shared_ptr<adm::graph::KernelProperty>,std::string>::__repr::__destroy_union_member[abi:ne200100](&v261);

        adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(__p);
        goto LABEL_365;
      }

      v148 = __src[1];
      if (__src[1] >= v301)
      {
        v151 = (__src[1] - __src[0]) >> 4;
        v152 = v151 + 1;
        if ((v151 + 1) >> 60)
        {
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v153 = v301 - __src[0];
        if ((v301 - __src[0]) >> 3 > v152)
        {
          v152 = v153 >> 3;
        }

        if (v153 >= 0x7FFFFFFFFFFFFFF0)
        {
          v154 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v154 = v152;
        }

        v295 = __src;
        if (v154)
        {
          std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](v154);
        }

        v155 = 16 * v151;
        v156 = v261.__r_.__value_.__l.__size_;
        *(16 * v151) = *&v261.__r_.__value_.__l.__data_;
        if (v156)
        {
          atomic_fetch_add_explicit((v156 + 8), 1uLL, memory_order_relaxed);
        }

        v150 = (v155 + 16);
        v157 = (v155 - (__src[1] - __src[0]));
        memcpy(v157, __src[0], __src[1] - __src[0]);
        v158 = __src[0];
        v159 = v301;
        __src[0] = v157;
        __src[1] = v150;
        v301 = 0;
        cf.__r_.__value_.__r.__words[2] = v158;
        v294 = v159;
        cf.__r_.__value_.__l.__size_ = v158;
        cf.__r_.__value_.__r.__words[0] = v158;
        std::__split_buffer<std::shared_ptr<adm::graph::KernelProperty>>::~__split_buffer(&cf);
      }

      else
      {
        *__src[1] = v261.__r_.__value_.__r.__words[0];
        v149 = v261.__r_.__value_.__l.__size_;
        v148[1] = v261.__r_.__value_.__l.__size_;
        if (v149)
        {
          atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
        }

        v150 = v148 + 2;
      }

      __src[1] = v150;
      std::__expected_base<std::shared_ptr<adm::graph::KernelProperty>,std::string>::__repr::__destroy_union_member[abi:ne200100](&v261);

      if (++v235 == v231)
      {
        v231 = [v118 countByEnumeratingWithState:&v263 objects:v289 count:16];
        if (v231)
        {
          goto LABEL_233;
        }

LABEL_336:

        cf.__r_.__value_.__r.__words[0] = v277;
        v160 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v256, v277, &cf);
        cf.__r_.__value_.__r.__words[0] = v275;
        v161 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v160 + 5, v275, &cf);
        std::vector<std::__fs::filesystem::path>::__vdeallocate((v161 + 5));
        *(v161 + 5) = *__p;
        v161[7] = *&v297[0];
        *&v297[0] = 0;
        __p[1] = 0;
        __p[0] = 0;
        std::vector<std::__fs::filesystem::path>::__vdeallocate((v161 + 8));
        *(v161 + 4) = *(v297 + 8);
        v161[10] = *(&v297[1] + 1);
        memset(v297 + 8, 0, 24);
        std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vdeallocate(v161 + 11);
        *(v161 + 11) = v298[0];
        memset(v298, 0, 24);
        if (*(v161 + 135) < 0)
        {
          operator delete(v161[14]);
        }

        *(v161 + 14) = v298[1];
        *(&v298[1].__r_.__value_.__s + 23) = 0;
        v298[1].__r_.__value_.__s.__data_[0] = 0;
        if (*(v161 + 159) < 0)
        {
          operator delete(v161[17]);
        }

        *(v161 + 17) = *v299;
        v161[19] = *&v299[16];
        v299[23] = 0;
        v299[0] = 0;
        *(v161 + 40) = *&v299[24];
        std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vdeallocate(v161 + 21);
        *(v161 + 21) = *__src;
        v161[23] = v301;
        __src[1] = 0;
        v301 = 0;
        __src[0] = 0;

        cf.__r_.__value_.__r.__words[0] = __src;
        std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&cf);
        v87 = v226;
        if ((v299[23] & 0x80000000) != 0)
        {
          operator delete(*v299);
        }

        if (SHIBYTE(v298[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v298[1].__r_.__value_.__l.__data_);
        }

        cf.__r_.__value_.__r.__words[0] = v298;
        std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&cf);
        cf.__r_.__value_.__r.__words[0] = v297 + 8;
        std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&cf);
        cf.__r_.__value_.__r.__words[0] = __p;
        std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&cf);
        if (v276 < 0)
        {
          operator delete(v275[0]);
        }

        if (v278 < 0)
        {
          operator delete(v277[0]);
        }

        v88 = v228 + 1;
        if (v228 + 1 == v227)
        {
          v86 = [v85 countByEnumeratingWithState:&v279 objects:&v292 count:16];
          if (!v86)
          {
            goto LABEL_350;
          }

          goto LABEL_191;
        }

        goto LABEL_192;
      }
    }

    if (!v125)
    {
      v224 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v224, "Could not construct");
      __cxa_throw(v224, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v125))
    {
      switch(CFNumberGetType(v125))
      {
        case kCFNumberSInt8Type:
          cf.__r_.__value_.__s.__data_[0] = 0;
          v127 = CFNumberGetValue(v125, kCFNumberSInt8Type, &cf);
          goto LABEL_267;
        case kCFNumberSInt16Type:
          LOWORD(cf.__r_.__value_.__l.__data_) = 0;
          v131 = CFNumberGetValue(v125, kCFNumberSInt16Type, &cf);
          goto LABEL_262;
        case kCFNumberSInt32Type:
          LODWORD(cf.__r_.__value_.__l.__data_) = 0;
          v131 = CFNumberGetValue(v125, kCFNumberSInt32Type, &cf);
          goto LABEL_280;
        case kCFNumberSInt64Type:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberSInt64Type, &cf);
          goto LABEL_275;
        case kCFNumberFloat32Type:
          LODWORD(cf.__r_.__value_.__l.__data_) = 0;
          v130 = CFNumberGetValue(v125, kCFNumberFloat32Type, &cf);
          goto LABEL_254;
        case kCFNumberFloat64Type:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberFloat64Type, &cf);
          goto LABEL_264;
        case kCFNumberCharType:
          cf.__r_.__value_.__s.__data_[0] = 0;
          v127 = CFNumberGetValue(v125, kCFNumberCharType, &cf);
LABEL_267:
          v134 = cf.__r_.__value_.__s.__data_[0];
          if (!v127)
          {
            v134 = 0;
          }

          v135 = cf.__r_.__value_.__s.__data_[0] < 0 && v127 != 0;
          if (!v127)
          {
            goto LABEL_285;
          }

          v129 = v134 | (v135 << 63 >> 63 << 8);
          goto LABEL_277;
        case kCFNumberShortType:
          LOWORD(cf.__r_.__value_.__l.__data_) = 0;
          v131 = CFNumberGetValue(v125, kCFNumberShortType, &cf);
LABEL_262:
          v132 = cf.__r_.__value_.__s.__data_[0];
          data_low = SLOWORD(cf.__r_.__value_.__l.__data_);
          goto LABEL_281;
        case kCFNumberIntType:
          LODWORD(cf.__r_.__value_.__l.__data_) = 0;
          v131 = CFNumberGetValue(v125, kCFNumberIntType, &cf);
LABEL_280:
          v132 = cf.__r_.__value_.__s.__data_[0];
          data_low = SLODWORD(cf.__r_.__value_.__l.__data_);
LABEL_281:
          v138 = data_low & 0xFFFFFFFFFFFFFF00 | v132;
          if (v131)
          {
            v129 = v138;
          }

          else
          {
            v129 = 0;
          }

          if (!v131)
          {
            goto LABEL_285;
          }

          goto LABEL_277;
        case kCFNumberLongType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberLongType, &cf);
          goto LABEL_275;
        case kCFNumberLongLongType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberLongLongType, &cf);
          goto LABEL_275;
        case kCFNumberFloatType:
          LODWORD(cf.__r_.__value_.__l.__data_) = 0;
          v130 = CFNumberGetValue(v125, kCFNumberFloatType, &cf);
LABEL_254:
          v129 = *&cf.__r_.__value_.__l.__data_;
          break;
        case kCFNumberDoubleType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberDoubleType, &cf);
          goto LABEL_264;
        case kCFNumberCFIndexType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberCFIndexType, &cf);
          goto LABEL_275;
        case kCFNumberNSIntegerType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberNSIntegerType, &cf);
LABEL_275:
          v129 = cf.__r_.__value_.__r.__words[0];
          break;
        case kCFNumberCGFloatType:
          cf.__r_.__value_.__r.__words[0] = 0;
          v130 = CFNumberGetValue(v125, kCFNumberCGFloatType, &cf);
LABEL_264:
          v129 = *&cf.__r_.__value_.__l.__data_;
          break;
        default:
          goto LABEL_285;
      }

      if (v130)
      {
LABEL_277:
        v136 = "Out-of-range value for property ID";
        if (!HIDWORD(v129))
        {
          goto LABEL_278;
        }

LABEL_286:
        std::string::basic_string[abi:ne200100]<0>(&__sz, v136);
        v137 = 0;
        goto LABEL_287;
      }
    }

    else
    {
      v128 = CFBooleanGetTypeID();
      if (v128 == CFGetTypeID(v125))
      {
        LODWORD(v129) = CFBooleanGetValue(v125);
LABEL_278:
        LODWORD(__sz.__r_.__value_.__l.__data_) = v129;
        v137 = 1;
LABEL_287:
        v288 = v137;
        goto LABEL_288;
      }
    }

LABEL_285:
    v136 = "Unexpected conversion error for property ID";
    goto LABEL_286;
  }

  v215 = [v230 getError];
  v216 = v215;
  std::string::basic_string[abi:ne200100]<0>(v283, [v215 UTF8String]);
  v217 = *v283;
  cf.__r_.__value_.__l.__size_ = *&v283[8];
  *(&cf.__r_.__value_.__r.__words[1] + 7) = *&v283[15];
  v218 = v283[23];
  memset(v283, 0, 24);
  cf.__r_.__value_.__r.__words[0] = v217;
  *(&cf.__r_.__value_.__s + 23) = v218;
  LOBYTE(v294) = 0;

LABEL_360:
  *v283 = __src;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](v283);
  if ((v299[23] & 0x80000000) != 0)
  {
    operator delete(*v299);
  }

  if (SHIBYTE(v298[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298[1].__r_.__value_.__l.__data_);
  }

  *v283 = v298;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](v283);
  *v283 = v297 + 8;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](v283);
  *v283 = __p;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](v283);
LABEL_365:
  if (v276 < 0)
  {
    operator delete(v275[0]);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

LABEL_370:
  if ((v294 & 1) == 0)
  {
    v166 = get_adm_log_object();
    if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
    {
      v214 = &cf;
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v214 = cf.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v214;
      _os_log_error_impl(&dword_223B4A000, v166, OS_LOG_TYPE_ERROR, "Failed to import parsing results. Reason: %s", __p, 0xCu);
    }

    if ((v294 & 1) == 0 && SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v239.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_377:
  if (SHIBYTE(v240.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_379:
  bzero(__p, 0x1000uLL);
  v167 = getpid();
  proc_name(v167, __p, 0x1000u);
  std::string::basic_string[abi:ne200100]<0>(&cf, __p);
  if ((v259[23] & 0x80000000) != 0)
  {
    operator delete(*v259);
  }

  *v259 = cf;
  v168 = 0x277CBE000uLL;
  v169 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coreaudio"];
  v170 = [v169 objectForKey:@"adm_debug_capture_level"];
  v171 = v170 == 0;

  if (v171)
  {
    v178 = 0;
  }

  else
  {
    v172 = [v169 arrayForKey:@"adm_debug_capture_level"];
    v173 = v172;
    if (v172)
    {
      v174 = v172;
      CFRetain(v174);
      cf.__r_.__value_.__r.__words[0] = v174;
      v175 = CFGetTypeID(v174);
      if (v175 != CFArrayGetTypeID())
      {
        v222 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v222, "Could not construct");
        __cxa_throw(v222, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v176 = cf.__r_.__value_.__r.__words[0];
      if (cf.__r_.__value_.__r.__words[0])
      {
        v234 = v173;
        Count = CFArrayGetCount(cf.__r_.__value_.__l.__data_);
        v177 = cf.__r_.__value_.__r.__words[0];
        if (cf.__r_.__value_.__r.__words[0])
        {
          v236 = CFArrayGetCount(cf.__r_.__value_.__l.__data_);
        }

        else
        {
          v236 = 0;
        }

        v232 = v169;
        if (Count)
        {
          v178 = 0;
          for (i = 0; i != Count; ++i)
          {
            if (v176 == v177 && i == v236)
            {
              break;
            }

            if (CFArrayGetCount(v176) <= i || (ValueAtIndex = CFArrayGetValueAtIndex(v176, i)) == 0)
            {
              v221 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v221, "Could not find item");
              __cxa_throw(v221, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            applesauce::CF::convert_to<std::string,0>(__p, ValueAtIndex);
            v183 = SBYTE7(v297[0]);
            v184 = __p[0];
            v185 = (SBYTE7(v297[0]) & 0x80u) == 0 ? BYTE7(v297[0]) : __p[1];
            v186 = (SBYTE7(v297[0]) & 0x80u) == 0 ? __p : __p[0];
            v187 = &adm::utility::readDefaultsDebugAudioCaptureOptions(void)::skKeyMappings;
            v188 = 384;
            while (v187[1] != v185 || memcmp(*v187, v186, v185))
            {
              v187 += 3;
              v188 -= 24;
              if (!v188)
              {
                if ((v183 & 0x80000000) == 0)
                {
                  goto LABEL_412;
                }

                goto LABEL_415;
              }
            }

            v178 |= *(v187 + 4);
            if ((v183 & 0x80000000) == 0)
            {
              continue;
            }

LABEL_415:
            operator delete(v184);
LABEL_412:
            ;
          }
        }

        else
        {
          v178 = 0;
        }

        if (cf.__r_.__value_.__r.__words[0])
        {
          CFRelease(cf.__r_.__value_.__l.__data_);
        }

        v169 = v232;
        v173 = v234;
        v168 = 0x277CBE000;
      }

      else
      {
LABEL_393:
        v178 = 0;
      }
    }

    else
    {
      v179 = [v169 integerForKey:@"adm_debug_capture_level"];
      v180 = 0;
      while (v179 != *(&adm::utility::readDefaultsDebugAudioCaptureOptions(void)::skLevelMappings + v180))
      {
        v180 += 8;
        if (v180 == 56)
        {
          goto LABEL_393;
        }
      }

      v178 = *(&adm::utility::readDefaultsDebugAudioCaptureOptions(void)::skLevelMappings + v180 + 4);
    }
  }

  *&v259[24] = v178;
  v189 = [objc_alloc(*(v168 + 3024)) initWithSuiteName:@"com.apple.coreaudio"];
  v190 = [v189 objectForKey:@"adm_enable_dsp_bypass"];
  v191 = v190 == 0;

  if (v191)
  {
    v192 = 0;
  }

  else
  {
    v192 = [v189 BOOLForKey:@"adm_enable_dsp_bypass"];
  }

  v259[28] = v192;
  v193 = get_adm_log_object();
  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_223B4A000, v193, OS_LOG_TYPE_DEFAULT, "SystemConfiguration:", __p, 2u);
  }

  v194 = get_adm_log_object();
  if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
  {
    if (LOBYTE(__val[1]) == 1)
    {
      std::to_string(__p, __val[0]);
      if ((SBYTE7(v297[0]) & 0x80u) == 0)
      {
        v195 = __p;
      }

      else
      {
        v195 = __p[0];
      }

      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = v195;
      _os_log_impl(&dword_223B4A000, v194, OS_LOG_TYPE_DEFAULT, "- AcousticID: %s", &cf, 0xCu);
      if (SBYTE7(v297[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = "";
      _os_log_impl(&dword_223B4A000, v194, OS_LOG_TYPE_DEFAULT, "- AcousticID: %s", &cf, 0xCu);
    }
  }

  v196 = get_adm_log_object();
  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
  {
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, &v248, "");
    v197 = (SBYTE7(v297[0]) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
    *(cf.__r_.__value_.__r.__words + 4) = v197;
    _os_log_impl(&dword_223B4A000, v196, OS_LOG_TYPE_DEFAULT, "- MacBoardID: %s", &cf, 0xCu);
    if (SBYTE7(v297[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v198 = get_adm_log_object();
  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
  {
    v199 = v254;
    if (SHIBYTE(v255[0]) < 0)
    {
      v199 = v254[0];
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v199;
    _os_log_impl(&dword_223B4A000, v198, OS_LOG_TYPE_DEFAULT, "- HWIdentifier: %s", __p, 0xCu);
  }

  v200 = get_adm_log_object();
  if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
  {
    v201 = &v255[1];
    if (SHIBYTE(v255[3]) < 0)
    {
      v201 = v255[1];
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v201;
    _os_log_impl(&dword_223B4A000, v200, OS_LOG_TYPE_DEFAULT, "- TuningRootDirectory: %s", __p, 0xCu);
  }

  v202 = get_adm_log_object();
  if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
  {
    if (v259[23] >= 0)
    {
      v203 = v259;
    }

    else
    {
      v203 = *v259;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v203;
    _os_log_impl(&dword_223B4A000, v202, OS_LOG_TYPE_DEFAULT, "- Process Name: %s", __p, 0xCu);
  }

  v204 = get_adm_log_object();
  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = *&v259[24];
    _os_log_impl(&dword_223B4A000, v204, OS_LOG_TYPE_DEFAULT, "- DebugAudioCapturePoints: 0x%x", __p, 8u);
  }

  *v237 = v244;
  *(v237 + 8) = v245;
  *&v245.__r_.__value_.__l.__data_ = 0uLL;
  *(v237 + 32) = *&v246.__r_.__value_.__l.__data_;
  v205 = v246.__r_.__value_.__r.__words[2];
  v245.__r_.__value_.__r.__words[2] = 0;
  memset(&v246, 0, sizeof(v246));
  v206 = *__val;
  *(v237 + 48) = v205;
  *(v237 + 56) = v206;
  *(v237 + 64) = 0;
  *(v237 + 88) = 0;
  if (v249 == 1)
  {
    *(v237 + 64) = v248;
    memset(&v248, 0, sizeof(v248));
    *(v237 + 88) = 1;
  }

  *(v237 + 96) = 0;
  *(v237 + 120) = 0;
  if (v251 == 1)
  {
    *(v237 + 96) = v250;
    memset(&v250, 0, sizeof(v250));
    *(v237 + 120) = 1;
  }

  *(v237 + 128) = v252;
  v207 = v256[0];
  *(v237 + 136) = v253;
  *(v237 + 144) = *v254;
  *(v237 + 160) = v255[0];
  v254[0] = 0;
  v254[1] = 0;
  v255[0] = 0;
  *(v237 + 168) = *&v255[1];
  v208 = v255[3];
  memset(&v255[1], 0, 24);
  *(v237 + 184) = v208;
  *(v237 + 192) = v207;
  v209 = v256[1];
  v210 = v257;
  *(v237 + 200) = v256[1];
  v256[0] = 0;
  v256[1] = 0;
  v211 = *(&v257 + 1);
  *(v237 + 208) = v210;
  *(v237 + 216) = v211;
  *(v237 + 224) = v258;
  if (v211)
  {
    v212 = *(v210 + 8);
    if ((v209 & (v209 - 1)) != 0)
    {
      if (v212 >= v209)
      {
        v212 %= v209;
      }
    }

    else
    {
      v212 &= v209 - 1;
    }

    v207[v212] = v237 + 208;
    v257 = 0uLL;
  }

  *(v237 + 232) = *v259;
  *(v237 + 248) = *&v259[16];
  memset(v259, 0, 24);
  *(v237 + 256) = *&v259[24];
  *(v237 + 260) = v259[28];
  *(v237 + 264) = 1;
  if (v242 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((v259[23] & 0x80000000) != 0)
    {
      operator delete(*v259);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(v257);
  v213 = v256[0];
  v256[0] = 0;
  if (v213)
  {
    operator delete(v213);
  }

  if (SHIBYTE(v255[3]) < 0)
  {
    operator delete(v255[1]);
  }

  if (SHIBYTE(v255[0]) < 0)
  {
    operator delete(v254[0]);
  }

  if (v251 == 1 && SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  if (v249 == 1 && SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }
}

void sub_223BE6EE4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2)
  {

    adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(&STACK[0x660]);
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      operator delete(STACK[0x300]);
    }

    if (SLOBYTE(STACK[0x32F]) < 0)
    {
      operator delete(STACK[0x318]);
    }

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE717C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(&STACK[0x660]);
    std::optional<applesauce::CF::DictionaryRef>::~optional(&v2);
    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE71C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&STACK[0x5E0]);

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE71D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BE71DCLL);
  }

  _Unwind_Resume(a1);
}

void sub_223BE71E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a2)
  {

    adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(&STACK[0x660]);
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      operator delete(STACK[0x300]);
    }

    if (SLOBYTE(STACK[0x32F]) < 0)
    {
      operator delete(STACK[0x318]);
    }

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE71F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7448);
  }

  _Unwind_Resume(a1);
}

void sub_223BE7208(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7458);
  }

  _Unwind_Resume(a1);
}

void sub_223BE721C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE7250(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(&STACK[0x660]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  JUMPOUT(0x223BE7474);
}

void sub_223BE725C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE727C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x677]) < 0)
    {
      operator delete(STACK[0x660]);
    }

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE72B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x5F7]) < 0)
    {
      operator delete(STACK[0x5E0]);
    }

    if (SLOBYTE(STACK[0x387]) < 0)
    {
      operator delete(STACK[0x370]);
    }

    JUMPOUT(0x223BE73ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_223BE72EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE72FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x677]) < 0)
    {
      operator delete(STACK[0x660]);
    }

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE7314(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BE731CLL);
  }

  _Unwind_Resume(a1);
}

void sub_223BE7334(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x223BE7400);
}

void sub_223BE7378(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a2)
  {
    if (a49 < 0)
    {
      JUMPOUT(0x223BE738CLL);
    }

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE73A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BE73A8);
  }

  _Unwind_Resume(a1);
}

void sub_223BE73B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7474);
  }

  _Unwind_Resume(a1);
}

void sub_223BE73C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    applesauce::CF::ArrayRef::~ArrayRef(&STACK[0x5E0]);
    JUMPOUT(0x223BE73F4);
  }

  _Unwind_Resume(a1);
}

void sub_223BE740C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x223BE7428);
  }

  _Unwind_Resume(a1);
}

void sub_223BE7418(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x223BE7420);
  }

  _Unwind_Resume(a1);
}

void sub_223BE746C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_223BE747C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a2)
  {

    if (v14)
    {
      operator delete(v14);
    }

    if ((STACK[0x3D8] & 1) == 0 && SLOBYTE(STACK[0x3D7]) < 0)
    {
      operator delete(STACK[0x3C0]);
    }

    applesauce::CF::NumberRef::~NumberRef(&STACK[0x218]);
    JUMPOUT(0x223BE74D4);
  }

  _Unwind_Resume(a1);
}

void adm::anonymous namespace::LoadPlist(adm::_anonymous_namespace_ *this, const std::__fs::filesystem::path *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = a2->__pn_;
  }

  applesauce::CF::make_DataRef(&v4, &pn);
  applesauce::CF::make_DictionaryRef(&v5, v4);
  v3 = v4;
  *this = v5;
  v5 = 0;
  *(this + 8) = 1;
  if (v3)
  {
    CFRelease(v3);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }
}

void sub_223BE75C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v14 = __cxa_begin_catch(a1);
  v15 = get_adm_log_object();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (a2 == 2)
  {
    if (v16)
    {
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      v17 = (*(*v14 + 16))(v14);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = v12;
      WORD6(buf) = 2080;
      *(&buf + 14) = v17;
      v18 = "failed to load plist %s: %s";
      v19 = v15;
      v20 = 22;
      goto LABEL_14;
    }
  }

  else if (v16)
  {
    if (*(v12 + 23) >= 0)
    {
      v21 = v12;
    }

    else
    {
      v21 = *v12;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v21;
    v18 = "failed to load plist %s";
    v19 = v15;
    v20 = 12;
LABEL_14:
    _os_log_error_impl(&dword_223B4A000, v19, OS_LOG_TYPE_ERROR, v18, &buf, v20);
  }

  __cxa_end_catch();
  *v11 = 0;
  v11[8] = 0;
  JUMPOUT(0x223BE7594);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_223BE7818(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [4],void>(std::string *a1)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, "ADM", "");
  return a1;
}

void sub_223BE7870(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(std::string *a1)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, "config.plist", "");
  return a1;
}

void sub_223BE78C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void adm::anonymous namespace::AddDSPConfiguration(adm::_anonymous_namespace_ *this, SystemConfiguration *a2, const std::string::value_type **a3, std::__fs::filesystem::path *a4, const std::__fs::filesystem::path *a5)
{
  v114 = a5;
  v153 = *MEMORY[0x277D85DE8];
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>::DictionaryRef_iterator(&v144, *&a2->mContext.mOS);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>::DictionaryRef_iterator(&v138, *&a2->mContext.mOS);
  v139 = (v141 - v140) >> 3;
  v113 = a3;
  while (1)
  {
    if (v144 && (v8 = v145, v145 != v147 - v146))
    {
      v9 = v138;
    }

    else
    {
      v9 = v138;
      if (!v138 || v139 == (v141 - v140) >> 3)
      {
        break;
      }

      v8 = v145;
    }

    if (v144 == v9 && v8 == v139)
    {
      break;
    }

    if ((v8 & 0x8000000000000000) != 0 || v8 >= v147 - v146)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "DictionaryRef_iterator iterator out of range.");
      exception->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(exception, off_2784F01E8, MEMORY[0x277D825F8]);
    }

    applesauce::CF::StringRef::from_get(&v131, v146[v8]);
    applesauce::CF::DictionaryRef::from_get(&v125, v148[v145]);
    v11 = v131.__r_.__value_.__r.__words[0];
    v12 = v125;
    v116 = v125;
    if (!v131.__r_.__value_.__r.__words[0])
    {
      v108 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v108, "Could not construct");
      __cxa_throw(v108, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::convert_to<std::string,0>(v136, v131.__r_.__value_.__l.__data_);
    v115 = v11;
    if (!v12)
    {
      v107 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v107, "Could not construct");
      __cxa_throw(v107, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v13 = applesauce::CF::details::at_key<char const* const&>(v12, "DSPConfigurations");
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    CFRetain(v13);
    cf = v14;
    v15 = CFGetTypeID(v14);
    if (v15 != CFDictionaryGetTypeID())
    {
      CFRelease(cf);
LABEL_19:
      cf = 0;
    }

    std::__fs::filesystem::operator/[abi:ne200100](&__p, a3, a4);
    if (!cf)
    {
      v106 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v106, "Could not construct");
      __cxa_throw(v106, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v16 = CFStringCreateWithBytes(0, "FilePathBase", 12, 0x8000100u, 0);
    v131.__r_.__value_.__r.__words[0] = v16;
    if (!v16)
    {
      v109 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v109, "Could not construct");
      __cxa_throw(v109, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = CFDictionaryContainsKey(cf, v16);
    if (v131.__r_.__value_.__r.__words[0])
    {
      CFRelease(v131.__r_.__value_.__l.__data_);
    }

    if (v17)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v131, *a3, a3[1]);
      }

      else
      {
        v131 = *a3;
      }

      applesauce::CF::details::find_at_key<std::string,char const* const&>(&v125, cf, "FilePathBase");
      if (SHIBYTE(v127) >= 0)
      {
        v18 = &v125;
      }

      else
      {
        v18 = v125;
      }

      if (SHIBYTE(v127) >= 0)
      {
        v19 = HIBYTE(v127);
      }

      else
      {
        v19 = v126;
      }

      v20 = std::string::append(&v131, v18, v19);
      v21 = v20->__r_.__value_.__r.__words[0];
      v150.__r_.__value_.__r.__words[0] = v20->__r_.__value_.__l.__size_;
      *(v150.__r_.__value_.__r.__words + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
      v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v21;
      __p.__r_.__value_.__l.__size_ = v150.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v150.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v22;
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v125);
      }

      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v131, cf);
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v125, cf);
    v126 = (v128 - v127) >> 3;
    while (1)
    {
      if (v131.__r_.__value_.__r.__words[0])
      {
        size = v131.__r_.__value_.__l.__size_;
        v24 = v125;
        if (v131.__r_.__value_.__l.__size_ != (v132 - v131.__r_.__value_.__r.__words[2]) >> 3)
        {
          goto LABEL_48;
        }

        if (!v125)
        {
          break;
        }
      }

      else
      {
        v24 = v125;
        if (!v125)
        {
          break;
        }
      }

      if (v126 == (v128 - v127) >> 3)
      {
        break;
      }

      size = v131.__r_.__value_.__l.__size_;
LABEL_48:
      if (v131.__r_.__value_.__l.__data_ == v24 && size == v126)
      {
        break;
      }

      if ((size & 0x8000000000000000) != 0 || size >= (v132 - v131.__r_.__value_.__r.__words[2]) >> 3)
      {
        v98 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v98, "DictionaryRef_iterator iterator out of range.");
        v98->__vftable = (MEMORY[0x277D828E8] + 16);
        __cxa_throw(v98, off_2784F01E8, MEMORY[0x277D825F8]);
      }

      v118 = *(v131.__r_.__value_.__r.__words[2] + 8 * size);
      if (v118)
      {
        CFRetain(v118);
        size = v131.__r_.__value_.__l.__size_;
      }

      v26 = *(v133 + size);
      if (v26)
      {
        CFRetain(*(v133 + size));
      }

      v117 = v26;
      if (!v118)
      {
        v99 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v99, "Could not construct");
        __cxa_throw(v99, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      applesauce::CF::convert_to<std::string,0>(&__s, v118);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_ == 12)
        {
          v28 = __s.__r_.__value_.__r.__words[0];
          if (*__s.__r_.__value_.__l.__data_ == 0x68746150656C6946 && *(__s.__r_.__value_.__r.__words[0] + 8) == 1702060354)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v28 = __s.__r_.__value_.__r.__words[0];
        }

        std::string::__init_copy_ctor_external(&v123, v28, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) == 12 && __s.__r_.__value_.__r.__words[0] == 0x68746150656C6946 && LODWORD(__s.__r_.__value_.__r.__words[1]) == 1702060354)
        {
          goto LABEL_143;
        }

        v123 = __s;
      }

      if (v26)
      {
        v30 = CFGetTypeID(v26);
        TypeID = CFDictionaryGetTypeID();
        v32 = v117;
        if (v30 != TypeID)
        {
          v104 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v104, "Could not construct");
          __cxa_throw(v104, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        v32 = 0;
      }

      applesauce::CF::DictionaryRef::from_get(&v122, v32);
      v150.__r_.__value_.__r.__words[0] = v136;
      v33 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &v150);
      v150.__r_.__value_.__r.__words[0] = &v123;
      v34 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33 + 5, &v123, &v150);
      std::string::operator=((v34 + 17), (this + 8));
      if (!v122)
      {
        v100 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v100, "Could not construct");
        __cxa_throw(v100, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v35 = applesauce::CF::details::at_key<char const* const&>(v122, "DSPGraphFileName");
      if (!v35)
      {
        v150.__r_.__value_.__s.__data_[0] = 0;
        v151.__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_93;
      }

      applesauce::CF::convert_as<std::string,0>(&v150, v35);
      if (v151.__r_.__value_.__s.__data_[0])
      {
        if (v114)
        {
          v120.__r_.__value_.__r.__words[0] = v136;
          v36 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &v120);
          v120.__r_.__value_.__r.__words[0] = &v123;
          v37 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v36 + 5, &v123, &v120);
          if ((*(v37 + 135) & 0x8000000000000000) != 0)
          {
            if (v37[15])
            {
LABEL_85:
              v38 = get_adm_log_object();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v120.__r_.__value_.__r.__words[0] = v136;
                v92 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &v120);
                v120.__r_.__value_.__r.__words[0] = &v123;
                v93 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v92 + 5, &v123, &v120);
                v94 = v93 + 14;
                if (*(v93 + 135) < 0)
                {
                  v94 = *v94;
                }

                if (!v122)
                {
                  v110 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v110, "Could not construct");
                  __cxa_throw(v110, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                applesauce::CF::details::find_at_key<std::string,char const* const&>(&v120, v122, "DSPGraphFileName");
                v95 = &v120;
                if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v95 = v120.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                *(buf.__r_.__value_.__r.__words + 4) = v94;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v95;
                _os_log_error_impl(&dword_223B4A000, v38, OS_LOG_TYPE_ERROR, "DSPGraphFilePath %s is already in the SystemConfiguration and can't be added to. Ignore the new value %s", &buf, 0x16u);
                if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v120.__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_93;
            }
          }

          else if (*(v37 + 135))
          {
            goto LABEL_85;
          }
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&buf, &v150);
        std::__fs::filesystem::operator/[abi:ne200100](&v120, &__p, &buf);
        v119.__r_.__value_.__r.__words[0] = v136;
        v39 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &v119);
        v119.__r_.__value_.__r.__words[0] = &v123;
        v40 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v39 + 5, &v123, &v119);
        v41 = v40;
        if (*(v40 + 135) < 0)
        {
          operator delete(v40[14]);
        }

        *(v41 + 14) = v120;
        *(&v120.__r_.__value_.__s + 23) = 0;
        v120.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

LABEL_93:
      if (v151.__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if (!v122)
      {
        v102 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v102, "Could not construct");
        __cxa_throw(v102, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      applesauce::CF::details::find_at_key_or_optional<std::vector<std::string>,char const* const&>(&v150, v122, "TuningStripFileNames");
      if (v151.__r_.__value_.__s.__data_[0] == 1)
      {
        if ((v114 & 1) == 0)
        {
          buf.__r_.__value_.__r.__words[0] = v136;
          v42 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
          buf.__r_.__value_.__r.__words[0] = &v123;
          v43 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v42 + 5, &v123, &buf);
          std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](v43 + 5);
        }

        v44 = v150.__r_.__value_.__l.__size_;
        for (i = v150.__r_.__value_.__r.__words[0]; i != v44; ++i)
        {
          buf.__r_.__value_.__r.__words[0] = v136;
          v46 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
          buf.__r_.__value_.__r.__words[0] = &v123;
          v47 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v46 + 5, &v123, &buf);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&buf, i);
          std::__fs::filesystem::operator/[abi:ne200100](&v120, &__p, &buf);
          v48 = v47[6];
          if (v48 >= v47[7])
          {
            v50 = std::vector<std::__fs::filesystem::path>::__emplace_back_slow_path<std::__fs::filesystem::path>(v47 + 5, &v120);
            v51 = SHIBYTE(v120.__r_.__value_.__r.__words[2]);
            v47[6] = v50;
            if (v51 < 0)
            {
              operator delete(v120.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v49 = *&v120.__r_.__value_.__l.__data_;
            *(v48 + 16) = *(&v120.__r_.__value_.__l + 2);
            *v48 = v49;
            memset(&v120, 0, sizeof(v120));
            v47[6] = v48 + 24;
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v151.__r_.__value_.__s.__data_[0] == 1)
      {
        v120.__r_.__value_.__r.__words[0] = &v150;
        std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v120);
      }

      if (!v122)
      {
        v101 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v101, "Could not construct");
        __cxa_throw(v101, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      applesauce::CF::details::find_at_key_or_optional<std::vector<std::string>,char const* const&>(&v150, v122, "PropStripFileNames");
      if (v151.__r_.__value_.__s.__data_[0] == 1)
      {
        if ((v114 & 1) == 0)
        {
          buf.__r_.__value_.__r.__words[0] = v136;
          v52 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
          buf.__r_.__value_.__r.__words[0] = &v123;
          v53 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v52 + 5, &v123, &buf);
          std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](v53 + 8);
        }

        v54 = v150.__r_.__value_.__l.__size_;
        for (j = v150.__r_.__value_.__r.__words[0]; j != v54; ++j)
        {
          buf.__r_.__value_.__r.__words[0] = v136;
          v56 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
          buf.__r_.__value_.__r.__words[0] = &v123;
          v57 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v56 + 5, &v123, &buf);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&buf, j);
          std::__fs::filesystem::operator/[abi:ne200100](&v120, &__p, &buf);
          v58 = v57[9];
          if (v58 >= v57[10])
          {
            v60 = std::vector<std::__fs::filesystem::path>::__emplace_back_slow_path<std::__fs::filesystem::path>(v57 + 8, &v120);
            v61 = SHIBYTE(v120.__r_.__value_.__r.__words[2]);
            v57[9] = v60;
            if (v61 < 0)
            {
              operator delete(v120.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v59 = *&v120.__r_.__value_.__l.__data_;
            *(v58 + 16) = *(&v120.__r_.__value_.__l + 2);
            *v58 = v59;
            memset(&v120, 0, sizeof(v120));
            v57[9] = v58 + 24;
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v151.__r_.__value_.__s.__data_[0] == 1)
      {
        v120.__r_.__value_.__r.__words[0] = &v150;
        std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v120);
      }

      if (!v122)
      {
        v103 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v103, "Could not construct");
        __cxa_throw(v103, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v62 = applesauce::CF::details::at_key<char const* const&>(v122, "AUPresetOverrides");
      if (v62)
      {
        applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(&v120, v62);
        if (v121)
        {
          if ((v114 & 1) == 0)
          {
            buf.__r_.__value_.__r.__words[0] = v136;
            v63 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
            buf.__r_.__value_.__r.__words[0] = &v123;
            v64 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v63 + 5, &v123, &buf);
            v65 = v64[11];
            for (k = v64[12]; k != v65; std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(k))
            {
              k -= 48;
            }

            v64[12] = v65;
          }

          v67 = v120.__r_.__value_.__l.__size_;
          for (m = v120.__r_.__value_.__r.__words[0]; m != v67; ++m)
          {
            buf.__r_.__value_.__r.__words[0] = v136;
            v69 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v136, &buf);
            buf.__r_.__value_.__r.__words[0] = &v123;
            v70 = std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v69 + 5, &v123, &buf);
            if (!*m)
            {
              v97 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v97, "Could not construct");
              __cxa_throw(v97, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v71 = v70;
            applesauce::CF::details::find_at_key<std::string,char const* const&>(&v150, *m, "BoxName");
            if (!*m)
            {
              v96 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v96, "Could not construct");
              __cxa_throw(v96, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            applesauce::CF::details::find_at_key<std::string,char const* const&>(&v119, *m, "FileName");
            buf = v119;
            memset(&v119, 0, sizeof(v119));
            std::__fs::filesystem::operator/[abi:ne200100](&v151, &__p, &buf);
            v72 = v71[12];
            v73 = v71[13];
            if (v72 >= v73)
            {
              v76 = v71[11];
              v77 = 0xAAAAAAAAAAAAAAABLL * ((v72 - v76) >> 4);
              v78 = v77 + 1;
              if (v77 + 1 > 0x555555555555555)
              {
                std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
              }

              v79 = 0xAAAAAAAAAAAAAAABLL * ((v73 - v76) >> 4);
              if (2 * v79 > v78)
              {
                v78 = 2 * v79;
              }

              if (v79 >= 0x2AAAAAAAAAAAAAALL)
              {
                v80 = 0x555555555555555;
              }

              else
              {
                v80 = v78;
              }

              if (v80)
              {
                std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::allocate_at_least[abi:ne200100](v80);
              }

              v81 = 48 * v77;
              v82 = *&v150.__r_.__value_.__l.__data_;
              *(v81 + 16) = *(&v150.__r_.__value_.__l + 2);
              *v81 = v82;
              memset(&v150, 0, sizeof(v150));
              v83 = *&v151.__r_.__value_.__l.__data_;
              *(v81 + 40) = *(&v151.__r_.__value_.__l + 2);
              *(v81 + 24) = v83;
              memset(&v151, 0, sizeof(v151));
              v84 = v71[11];
              v85 = v71[12];
              v86 = (v81 + v84 - v85);
              if (v84 != v85)
              {
                v87 = v71[11];
                v88 = (v81 + v84 - v85);
                do
                {
                  v89 = *v87;
                  *(v88 + 2) = *(v87 + 2);
                  *v88 = v89;
                  *(v87 + 1) = 0;
                  *(v87 + 2) = 0;
                  *v87 = 0;
                  v90 = *(v87 + 24);
                  *(v88 + 5) = *(v87 + 5);
                  *(v88 + 24) = v90;
                  *(v87 + 4) = 0;
                  *(v87 + 5) = 0;
                  *(v87 + 3) = 0;
                  v87 += 48;
                  v88 += 48;
                }

                while (v87 != v85);
                do
                {
                  std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v84);
                  v84 += 48;
                }

                while (v84 != v85);
                v84 = v71[11];
              }

              v71[11] = v86;
              v71[12] = v81 + 48;
              v71[13] = 0;
              v11 = v115;
              if (v84)
              {
                operator delete(v84);
              }

              v91 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
              v71[12] = v81 + 48;
              v12 = v116;
              if (v91 < 0)
              {
                operator delete(v151.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v74 = *&v150.__r_.__value_.__l.__data_;
              *(v72 + 16) = *(&v150.__r_.__value_.__l + 2);
              *v72 = v74;
              memset(&v150, 0, sizeof(v150));
              v75 = v151.__r_.__value_.__r.__words[2];
              *(v72 + 24) = *&v151.__r_.__value_.__l.__data_;
              *(v72 + 40) = v75;
              memset(&v151, 0, sizeof(v151));
              v71[12] = v72 + 48;
            }

            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v119.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        v120.__r_.__value_.__s.__data_[0] = 0;
        v121 = 0;
      }

      if (v121 == 1)
      {
        v150.__r_.__value_.__r.__words[0] = &v120;
        std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v150);
      }

      a3 = v113;
      if (v122)
      {
        CFRelease(v122);
      }

      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        v28 = __s.__r_.__value_.__r.__words[0];
LABEL_142:
        operator delete(v28);
      }

LABEL_143:
      if (v117)
      {
        CFRelease(v117);
      }

      CFRelease(v118);
      ++v131.__r_.__value_.__l.__size_;
    }

    if (v129)
    {
      v130 = v129;
      operator delete(v129);
    }

    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v133)
    {
      v134 = v133;
      operator delete(v133);
    }

    if (v131.__r_.__value_.__r.__words[2])
    {
      v132 = v131.__r_.__value_.__r.__words[2];
      operator delete(v131.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    CFRelease(cf);
    if (v137 < 0)
    {
      operator delete(v136[0]);
    }

    CFRelease(v12);
    CFRelease(v11);
    ++v145;
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }
}

void sub_223BE89F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, const void *a15, const void *a16, CFTypeRef a17, CFTypeRef a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, CFTypeRef a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a16)
  {
    CFRelease(a16);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a63)
  {
    operator delete(a63);
  }

  v67 = *(v65 - 200);
  if (v67)
  {
    *(v65 - 192) = v67;
    operator delete(v67);
  }

  v68 = *(v65 - 224);
  if (v68)
  {
    *(v65 - 216) = v68;
    operator delete(v68);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_223BE8F3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::__fs::filesystem::path>::__emplace_back_slow_path<std::__fs::filesystem::path>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 24 * v2;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v8 = 24 * v2 + 24;
  v10 = *a1;
  v9 = a1[1];
  v11 = 24 * v2 + *a1 - v9;
  v19 = v11;
  v20 = v11;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (v9 == v10)
  {
    v18 = 1;
  }

  else
  {
    v12 = v10;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = v12[2];
      *v13 = v14;
      v13 += 24;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      v12 += 3;
    }

    while (v12 != v9);
    v20 = v13;
    v18 = 1;
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 3;
    }

    while (v10 != v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](v17);
  v15 = *a1;
  *a1 = v11;
  *(a1 + 1) = v8;
  if (v15)
  {
    operator delete(v15);
  }

  return v8;
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_223BE91D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::TypeRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void std::__expected_base<std::shared_ptr<adm::graph::KernelProperty>,std::string>::__repr::__destroy_union_member[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_223BE9508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void adm::DSPGraphBasicConfiguration::~DSPGraphBasicConfiguration(void **this)
{
  v2 = this + 16;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CC50;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<std::vector<unsigned int>>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CC50;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CB70;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<applesauce::CF::TypeRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371CB70;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

unint64_t applesauce::CF::details::find_at_key<std::string,char const* const&>(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  Count = CFDictionaryGetCount(theDict);
  std::vector<void const*>::resize((a1 + 16), Count);
  std::vector<void const*>::resize(v3, Count);
  CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<std::vector<std::string>,char const* const&>(char *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a2, __s);
  if (v4 && (v5 = v4, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v5)))
  {
    Count = CFArrayGetCount(v5);
    v25 = 0uLL;
    v26 = 0;
    if (Count << 32)
    {
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v27.__end_cap_.__value_ = &v25;
        std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_27:
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_21:
      *a1 = v25;
      *(a1 + 2) = v26;
      v26 = 0;
      v25 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v8 = 0;
      v9 = Count & 0x7FFFFFFF;
      v20 = a1[24];
      v21 = *a1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        applesauce::CF::convert_as<std::string,0>(&v22, ValueAtIndex);
        if (v24 != 1)
        {
          break;
        }

        v11 = *(&v25 + 1);
        if (*(&v25 + 1) >= v26)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((*(&v25 + 1) - v25) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            a1[24] = v20;
            *a1 = v21;
            goto LABEL_27;
          }

          if (0x5555555555555556 * ((v26 - v25) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v26 - v25) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          v27.__end_cap_.__value_ = &v25;
          if (v15)
          {
            std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v15);
          }

          v16 = 8 * ((*(&v25 + 1) - v25) >> 3);
          *v16 = v22;
          *(v16 + 16) = v23;
          v23 = 0;
          v22 = 0uLL;
          v12 = 24 * v13 + 24;
          v17 = 24 * v13 - (*(&v25 + 1) - v25);
          memcpy((v16 - (*(&v25 + 1) - v25)), v25, *(&v25 + 1) - v25);
          v18 = v25;
          v19 = v26;
          *&v25 = v17;
          *(&v25 + 1) = v12;
          v26 = 0;
          v27.__first_ = v18;
          v27.__end_ = v18;
          v27.__end_cap_.__value_ = v19;
          v27.__begin_ = v18;
          std::__split_buffer<std::string>::~__split_buffer(&v27);
        }

        else
        {
          **(&v25 + 1) = v22;
          *(v11 + 16) = v23;
          v23 = 0;
          v22 = 0uLL;
          v12 = v11 + 24;
        }

        *(&v25 + 1) = v12;
        if (v9 == ++v8)
        {
          goto LABEL_21;
        }
      }

      a1[24] = 0;
      *a1 = 0;
    }

    v27.__first_ = &v25;
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v27);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_223BE9F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  v12[24] = a10;
  *v12 = a12;
  __clang_call_terminate(a1);
}

const void *applesauce::CF::details::at_key<char const* const&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_223BEA018(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x223BEA004);
}

void std::vector<void const*>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_223BEA1FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void adm::getMacMicDriverConfigurationKey(_BYTE *a1)
{
  v2 = [_TtC20AudioDSPManagerSwift21InteropLayerMacDriver getKeyForClientDescriptionWithKind:0 mode:0];
  applesauce::CF::StringRef::from_get(&cf, v2);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::string,0>(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_223BEA2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::StringRef::~StringRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (v2 <= 44099)
  {
    if (v2 > 23999)
    {
      if (v2 == 24000)
      {
        v3 = 0x4C7CB07FE50E5462;
        goto LABEL_22;
      }

      if (v2 == 32000)
      {
        v3 = 0x5460BCD664C6C7FALL;
        goto LABEL_22;
      }
    }

    else
    {
      if (v2 == 8000)
      {
        v3 = 0xDB58BC24D81FB94FLL;
        goto LABEL_22;
      }

      if (v2 == 16000)
      {
        v3 = 0xF3D427428C99B29;
        goto LABEL_22;
      }
    }

LABEL_27:
    v5 = 0;
    *result = 0;
    goto LABEL_28;
  }

  if (v2 <= 88199)
  {
    if (v2 == 44100)
    {
      v3 = 0xEF2093B88F8E7C91;
      goto LABEL_22;
    }

    if (v2 == 48000)
    {
      v3 = 0x4709E2ED84FF14BLL;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v2 == 88200)
  {
    v3 = 0xD64B2C69CF7E5942;
    goto LABEL_22;
  }

  if (v2 == 96000)
  {
    v3 = 0x26F9951B5B225FF3;
    goto LABEL_22;
  }

  if (v2 != 192000)
  {
    goto LABEL_27;
  }

  v3 = 0xA35EFE3E1F8EBC3ALL;
LABEL_22:
  if (*(a2 + 8) != 1819304813)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 12);
  if ((v4 & 0x20) != 0 || (v4 & 1) == 0 || *(a2 + 32) != 32)
  {
    goto LABEL_27;
  }

  *result = *(a2 + 28);
  *(result + 4) = 0;
  *(result + 8) = 0xA324521D2548FDC2;
  *(result + 16) = v3;
  v5 = 1;
LABEL_28:
  *(result + 24) = v5;
  return result;
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(int a1)
{
  if (a1 > 1885892726)
  {
    if (a1 > 1886613610)
    {
      if (a1 > 1886680174)
      {
        if (a1 == 1886680175)
        {
          return 0xDEBD14632E00370BLL;
        }

        else
        {
          v1 = 0;
          if (a1 == 1886745455)
          {
            return 0xE0BAAD14F9DBDDF0;
          }
        }
      }

      else if (a1 == 1886613611)
      {
        return 0x2F66DF9B2814CFB5;
      }

      else
      {
        v1 = 0;
        if (a1 == 1886614639)
        {
          return 0x57839668489FE6E1;
        }
      }
    }

    else if (a1 > 1886154612)
    {
      if (a1 == 1886154613)
      {
        return 0x92D97930F1887DE3;
      }

      else
      {
        v1 = 0;
        if (a1 == 1886545251)
        {
          return 0xFE52B066A3299AA1;
        }
      }
    }

    else if (a1 == 1885892727)
    {
      return 0xF8050C060D986E6BLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1886152047)
      {
        return 0xA5B814BA7E080C1ALL;
      }
    }
  }

  else if (a1 > 1885888866)
  {
    if (a1 > 1885892673)
    {
      if (a1 == 1885892674)
      {
        return 0x7E234EE52CCEAB90;
      }

      else
      {
        v1 = 0;
        if (a1 == 1885892706)
        {
          return 0xB5C617462A130B2FLL;
        }
      }
    }

    else if (a1 == 1885888867)
    {
      return 0xC355D4D55002AF8CLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1885889645)
      {
        return 0x455F57CA4B039ED9;
      }
    }
  }

  else if (a1 > 1885433974)
  {
    if (a1 == 1885433975)
    {
      return 0x5814DD695070736FLL;
    }

    else
    {
      v1 = 0;
      if (a1 == 1885631344)
      {
        return 0xD333A5300DE06CF0;
      }
    }
  }

  else if (a1 == 1885433964)
  {
    return 0xAC3D9F9FC752B77DLL;
  }

  else
  {
    v1 = 0;
    if (a1 == 1885433971)
    {
      return 0xB89E299E0626F289;
    }
  }

  return v1;
}

uint64_t adm::exclaves::utility::convert_to<std::optional<audiodsputility_parameterid_s>,adm::exclaves::ParameterID>(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_223C03A90[a1];
  }
}

uint64_t adm::exclaves::utility::convert_to<std::optional<float>,audiodsputility_parametervalue_s>(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 0.0;
  if (*a1 <= 0xE9CAC24E271E100FLL)
  {
    if (v2 > 0xBE1AC77697E53FFBLL)
    {
      if (v2 == 0xBE1AC77697E53FFCLL)
      {
        v3 = *(a1 + 8);
        goto LABEL_24;
      }

      if (v2 == 0xC83C98BC329601F9)
      {
        goto LABEL_23;
      }

      v4 = 0xE1D8FF437BB62643;
      goto LABEL_13;
    }

    if (v2 != 0x8695345E04E75645 && v2 != 0xB2A314BCFDE57EE2)
    {
      v4 = 0xBA94426FF040F022;
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if (v2 <= 0x23580A01CC35D89DLL)
  {
    if (v2 != 0xE9CAC24E271E1010 && v2 != 0xF64FC5679D8C50C8)
    {
      v4 = 0xF876E807C3E4A3E7;
LABEL_13:
      if (v2 != v4)
      {
        return v1 | LODWORD(v3);
      }
    }

LABEL_23:
    LOBYTE(v3) = *(a1 + 8);
    v3 = LODWORD(v3);
    goto LABEL_24;
  }

  if (v2 == 0x23580A01CC35D89ELL || v2 == 0x67D58230E14B515BLL)
  {
    goto LABEL_23;
  }

  if (v2 == 0x7F1E21C17219CAE8)
  {
    v5 = *(a1 + 8);
    if (v5 > 0xF7C7674340E151C7)
    {
      switch(v5)
      {
        case 0xF7C7674340E151C8:
          goto LABEL_24;
        case 0xE69699D348D1432:
          v3 = 4.0;
          goto LABEL_24;
        case 0x2C1A98D65FB58883:
          v3 = 1.0;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x8D3025BDD0206734:
          v3 = 5.0;
          goto LABEL_24;
        case 0x966DBF642921EE02:
          v3 = 3.0;
          goto LABEL_24;
        case 0xB941EFAD2C01A1F7:
          v3 = 2.0;
LABEL_24:
          v1 = 0x100000000;
          return v1 | LODWORD(v3);
      }
    }

    v7 = v5 == 0x996B795339B4732BLL;
    v8 = v5 == 0x996B795339B4732BLL;
    if (v7)
    {
      v3 = 6.0;
    }

    v1 = v8 << 32;
  }

  return v1 | LODWORD(v3);
}

uint64_t adm::exclaves::utility::convert_to<std::optional<adm::exclaves::ParameterID>,unsigned int>(int a1)
{
  if (a1 > 1886220898)
  {
    if (a1 > 1936748641)
    {
      switch(a1)
      {
        case 1936748642:
          v1 = 0x100000000;
          v2 = 4;
          return v2 | v1;
        case 1969844082:
          v2 = 0;
          v1 = 0x100000000;
          return v2 | v1;
        case 1987339878:
          v1 = 0x100000000;
          v2 = 2;
          return v2 | v1;
      }
    }

    else
    {
      switch(a1)
      {
        case 1886220899:
          v1 = 0x100000000;
          v2 = 11;
          return v2 | v1;
        case 1886609763:
          v1 = 0x100000000;
          v2 = 9;
          return v2 | v1;
        case 1886613602:
          v1 = 0x100000000;
          v2 = 8;
          return v2 | v1;
      }
    }

LABEL_28:
    v1 = 0;
    v2 = 0;
    return v2 | v1;
  }

  if (a1 > 1684628339)
  {
    switch(a1)
    {
      case 1684628340:
        v1 = 0x100000000;
        v2 = 3;
        return v2 | v1;
      case 1701015406:
        v1 = 0x100000000;
        v2 = 6;
        return v2 | v1;
      case 1885565539:
        v1 = 0x100000000;
        v2 = 10;
        return v2 | v1;
    }

    goto LABEL_28;
  }

  if (a1 == 1633969524)
  {
    v1 = 0x100000000;
    v2 = 5;
    return v2 | v1;
  }

  if (a1 == 1650811756)
  {
    v1 = 0x100000000;
    v2 = 7;
    return v2 | v1;
  }

  if (a1 != 1651797616)
  {
    goto LABEL_28;
  }

  v1 = 0x100000000;
  v2 = 1;
  return v2 | v1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = *a1;
    if (v7 > 9)
    {
      v8 = "number";
    }

    else
    {
      v8 = off_2784F0840[v7];
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "cannot use operator[] with a string argument with ", &v9);
    nlohmann::detail::type_error::create(exception, 305, &__p);
  }

  v3 = *(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = *std::__tree<std::string>::__find_equal<std::string>(v3, &v9, &__p);
  if (!v4)
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_223BEAD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::detail::to_json_fn::operator()<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,CA::StreamDescription const&>(unsigned __int8 *a1, void ****a2)
{
  v2 = a2;
  v4 = *a2;
  v55[0] = 7;
  v56 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "sample_rate");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  v6 = *v5;
  *v5 = 7;
  v55[0] = v6;
  v7 = *(v5 + 1);
  *(v5 + 1) = v4;
  v56 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v56, v6);
  v8 = v2[2];
  v53[0] = 6;
  v54 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "format_id");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  v10 = *v9;
  *v9 = 6;
  v53[0] = v10;
  v11 = *(v9 + 1);
  *(v9 + 1) = v8;
  v54 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v54, v10);
  v12 = v2[3];
  v51[0] = 6;
  v52 = v12;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "format_flags");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  v14 = *v13;
  *v13 = 6;
  v51[0] = v14;
  v15 = *(v13 + 1);
  *(v13 + 1) = v12;
  v52 = v15;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v51);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v52, v14);
  v16 = v2[4];
  v49[0] = 6;
  v50 = v16;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bytes_per_packet");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  v18 = *v17;
  *v17 = 6;
  v49[0] = v18;
  v19 = *(v17 + 1);
  *(v17 + 1) = v16;
  v50 = v19;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v50, v18);
  v20 = v2[5];
  v47[0] = 6;
  v48 = v20;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "frames_per_packet");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  v22 = *v21;
  *v21 = 6;
  v47[0] = v22;
  v23 = *(v21 + 1);
  *(v21 + 1) = v20;
  v48 = v23;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48, v22);
  v24 = v2[6];
  v45[0] = 6;
  v46 = v24;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  v25 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bytes_per_frame");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  v26 = *v25;
  *v25 = 6;
  v45[0] = v26;
  v27 = *(v25 + 1);
  *(v25 + 1) = v24;
  v46 = v27;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v46, v26);
  v28 = v2[7];
  v43[0] = 6;
  v44 = v28;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "channels_per_frame");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  v30 = *v29;
  *v29 = 6;
  v43[0] = v30;
  v31 = *(v29 + 1);
  *(v29 + 1) = v28;
  v44 = v31;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v43);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v44, v30);
  v32 = v2[8];
  v41[0] = 6;
  v42 = v32;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "bits_per_channel");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  v34 = *v33;
  *v33 = 6;
  v41[0] = v34;
  v35 = *(v33 + 1);
  *(v33 + 1) = v32;
  v42 = v35;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v42, v34);
  v36 = v2[9];
  v39[0] = 6;
  v40 = v36;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "reserved");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  LODWORD(v2) = *v37;
  *v37 = 6;
  v39[0] = v2;
  v38 = *(v37 + 1);
  *(v37 + 1) = v36;
  v40 = v38;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v40, v2);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == 1 && a3 == 2;
  if (!v5 || (v6 = *(a2 + 16), *v6 != 3))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v24, a2, a3);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(v22, v6, *(a2 + 24));
  if (v22[0] != 3 || (v7 = v23) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    if (v22[0] > 9uLL)
    {
      v15 = "number";
    }

    else
    {
      v15 = off_2784F0840[v22[0]];
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, v15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, "incompatible ReferenceType for get_ref, actual type is ", &v24);
    nlohmann::detail::type_error::create(exception, 303, &v25);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(v16, *(a2 + 48), *(a2 + 56));
  v8 = *v7;
  v19 = v7[2];
  *__p = v8;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v9 = v16[0];
  v20[0] = v16[0];
  v21 = v17;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
  v16[0] = 0;
  v17 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    v11 = __cxa_allocate_exception(0x20uLL);
    v12 = *a1;
    if (v12 > 9)
    {
      v13 = "number";
    }

    else
    {
      v13 = off_2784F0840[v12];
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, v13);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, "cannot use push_back() with ", &v24);
    nlohmann::detail::type_error::create(v11, 308, &v25);
  }

  v10 = *(a1 + 1);
  if (!*std::__tree<std::string>::__find_equal<std::string>(v10, &v24, __p))
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(&v25, v10, __p);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v9);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v17, v16[0]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v23, v22[0]);
}

void sub_223BEB714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  if (a27 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[11],char [11],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[6],char [6],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~pair(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 32), *(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[8],char [8],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[17],char [17],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void std::__shared_ptr_emplace<adm::vp::UplinkConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28371D838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void adm::vp::convert(_DWORD *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  *a1 = *a2 != 0;
  a1[1] = (v4 - v5) >> 6;
  v6 = a1 + 2;
  bzero(a1 + 2, 0x388uLL);
  a1[229] = *(a2 + 56);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) == v7;
  v9 = (*(a2 + 40) - v7) >> 2;
  a1[228] = v9;
  if (!v8)
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    memcpy(a1 + 212, v7, 4 * v9);
  }

  if (v5 != v4)
  {
    v10 = 0;
    v11 = a1 + 10;
    v12 = a1 + 5;
    v13 = a1 + 62;
    v14 = a1 + 61;
    do
    {
      if (*(v5 + 60) == 1)
      {
        v15 = *(v5 + 56);
      }

      else
      {
        v15 = 0;
      }

      v17 = *(v5 + 8);
      v16 = *(v5 + 16);
      v18 = *(v5 + 32);
      v19 = *(v5 + 40);
      v20 = &v6[70 * v10];
      *v20 = 1;
      v20[1] = v15;
      v21 = v12;
      v22 = v11;
      v20[2] = -1431655765 * ((v16 - v17) >> 4);
      *(v20 + 3) = 0uLL;
      *(v20 + 7) = 0uLL;
      *(v20 + 11) = 0uLL;
      *(v20 + 15) = 0uLL;
      *(v20 + 19) = 0uLL;
      *(v20 + 23) = 0uLL;
      *(v20 + 27) = 0uLL;
      *(v20 + 31) = 0uLL;
      *(v20 + 35) = 0uLL;
      *(v20 + 39) = 0uLL;
      *(v20 + 43) = 0uLL;
      *(v20 + 47) = 0uLL;
      *(v20 + 51) = 0uLL;
      *(v20 + 54) = 0uLL;
      *(v20 + 59) = 0uLL;
      v20 += 59;
      *(v20 - 1) = -1431655765 * ((v19 - v18) >> 4);
      *(v20 + 7) = 0uLL;
      for (*(v20 + 1) = 0uLL; v17 != v16; v22 += 10)
      {
        v23 = *v17;
        if ((*v17 - 1) >= 4)
        {
          v23 = 0;
        }

        *v21++ = v23;
        *(v22 + 4) = *(v17 + 5);
        v24 = *(v17 + 6);
        *v22 = *(v17 + 2);
        *(v22 + 1) = v24;
        v17 += 12;
      }

      v25 = v14;
      v26 = v13;
      while (v18 != v19)
      {
        *v25++ = 5;
        v27 = *(v18 + 24);
        *v26 = *(v18 + 8);
        *(v26 + 1) = v27;
        *(v26 + 4) = *(v18 + 40);
        v18 += 48;
        v26 += 10;
      }

      ++v10;
      v5 += 64;
      v11 += 70;
      v12 += 70;
      v13 += 70;
      v14 += 70;
    }

    while (v5 != v4);
  }
}