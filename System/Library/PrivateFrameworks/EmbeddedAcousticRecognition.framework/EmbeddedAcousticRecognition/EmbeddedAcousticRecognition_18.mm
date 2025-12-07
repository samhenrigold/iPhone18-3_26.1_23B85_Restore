void boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
LABEL_42:
    __p.__r_.__value_.__s.__data_[0] = 123;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    if (a4)
    {
      __p.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    }

    v22 = *(*(a2 + 24) + 8);
    v23 = *(v22 + 88);
    if (v23)
    {
      v24 = v23 - 80;
    }

    else
    {
      v24 = 0;
    }

    v41 = 4 * a3;
    if (v24 == v22)
    {
LABEL_80:
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, v41, 32);
        v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v35, v36);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 125;
      goto LABEL_90;
    }

    while (1)
    {
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, v41 + 4, 32);
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v25, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      __p.__r_.__value_.__s.__data_[0] = 34;
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      boost::property_tree::json_parser::create_escapes<char>(v24, &__p);
      v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      v42.__r_.__value_.__s.__data_[0] = 34;
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v42, 1);
      v42.__r_.__value_.__s.__data_[0] = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, &v42, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_65;
      }

LABEL_66:
      boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, v24 + 24, a3 + 1, a4);
      v32 = *(v24 + 88);
      if (v32)
      {
        v33 = v32 - 80;
      }

      else
      {
        v33 = 0;
      }

      if (v33 != *(*(a2 + 24) + 8))
      {
        __p.__r_.__value_.__s.__data_[0] = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      if (a4)
      {
        __p.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      v34 = *(v24 + 88);
      if (v34)
      {
        v24 = v34 - 80;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == *(*(a2 + 24) + 8))
      {
        goto LABEL_80;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_66;
    }

LABEL_65:
    __p.__r_.__value_.__s.__data_[0] = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    goto LABEL_66;
  }

  v8 = *(a2 + 24);
  if (*(v8 + 24))
  {
    memset(&__p, 0, sizeof(__p));
    v9 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::count<std::string>(v8 + 16, &__p.__r_.__value_.__l.__data_);
    v10 = *(*(a2 + 24) + 24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9 == v10)
    {
      __p.__r_.__value_.__s.__data_[0] = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      if (a4)
      {
        __p.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      v11 = *(*(a2 + 24) + 8);
      v12 = *(v11 + 88);
      if (v12)
      {
        v13 = v12 - 80;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != v11)
      {
        do
        {
          if (a4)
          {
            std::string::basic_string[abi:ne200100](&__p, 4 * a3 + 4, 32);
            v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v14, v15);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, v13 + 24, a3 + 1, a4);
          v16 = *(v13 + 88);
          if (v16)
          {
            v17 = v16 - 80;
          }

          else
          {
            v17 = 0;
          }

          if (v17 != *(*(a2 + 24) + 8))
          {
            __p.__r_.__value_.__s.__data_[0] = 44;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
          }

          if (a4)
          {
            __p.__r_.__value_.__s.__data_[0] = 10;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
          }

          v18 = *(v13 + 88);
          if (v18)
          {
            v13 = v18 - 80;
          }

          else
          {
            v13 = 0;
          }
        }

        while (v13 != *(*(a2 + 24) + 8));
      }

      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, (4 * a3), 32);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 93;
LABEL_90:
      __p.__r_.__value_.__s.__data_[0] = v21;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      return;
    }

    goto LABEL_42;
  }

  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(a2, &v42);
  boost::property_tree::json_parser::create_escapes<char>(&v42, &__p);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v42.__r_.__value_.__s.__data_[0] = 34;
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v42, 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = __p.__r_.__value_.__l.__size_;
  }

  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
  v42.__r_.__value_.__s.__data_[0] = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, &v42, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5153320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_1B5153434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 64) = *(a2 + 56);
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 64);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_1F2CFFAD8;
  *(a1 + 8) = &unk_1F2CFFB08;
  *(a1 + 72) = v8;
  *(a1 + 80) = &unk_1F2CFFB30;
  *(a1 + 112) = a3[1].i32[0];
  *(a1 + 96) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_1B51535FC(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::json_parser::json_parser_error::json_parser_error(uint64_t a1, uint64_t a2)
{
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F2CFFB50;
  return a1;
}

void sub_1B51536F0(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_1B515395C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  std::runtime_error::~runtime_error(v12);
  MEMORY[0x1B8C85350](v10, v11);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x78uLL);
  boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));

  boost::property_tree::file_parser_error::~file_parser_error(a1);
}

{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));
  boost::property_tree::file_parser_error::~file_parser_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  boost::property_tree::file_parser_error::~file_parser_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  boost::property_tree::file_parser_error::~file_parser_error(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::property_tree::json_parser::json_parser_error::~json_parser_error(std::runtime_error *this)
{
  boost::property_tree::file_parser_error::~file_parser_error(this);

  JUMPOUT(0x1B8C85350);
}

void boost::property_tree::file_parser_error::~file_parser_error(std::runtime_error *this)
{
  boost::property_tree::file_parser_error::~file_parser_error(this);

  JUMPOUT(0x1B8C85350);
}

{
  this->__vftable = &unk_1F2CFFB78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  boost::property_tree::json_parser::json_parser_error::json_parser_error(a1 + 8, a2 + 8);
  v4 = *(a2 + 88);
  *(a1 + 80) = &unk_1F2CFD578;
  *(a1 + 88) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *a1 = &unk_1F2CFFAD8;
  *(a1 + 8) = &unk_1F2CFFB08;
  *(a1 + 80) = &unk_1F2CFFB30;
  return a1;
}

uint64_t boost::property_tree::file_parser_error::file_parser_error(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  boost::property_tree::file_parser_error::format_what(a2, a3, a4);
  std::runtime_error::runtime_error(a1, &v11);
  *a1 = &unk_1F2CFFA38;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F2CFFB78;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = a4;
  return a1;
}

void sub_1B5153F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 39) < 0)
  {
    operator delete(*v16);
  }

  std::runtime_error::~runtime_error(v15);
  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::file_parser_error::format_what(uint64_t **a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  if (a2[23] < 0)
  {
    if (*(a2 + 1))
    {
      a2 = *a2;
    }

    else
    {
      a2 = "<unspecified file>";
    }
  }

  else if (!a2[23])
  {
    a2 = "<unspecified file>";
  }

  v7 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a2, v7);
  if (a3)
  {
    v22 = 40;
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
    v9 = MEMORY[0x1B8C84C30](v8, a3);
    v22 = 41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v22, 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ": ", 2);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  std::stringbuf::str();
  v16[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v17 = v14;
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v21);
}

void boost::property_tree::json_parser::create_escapes<char>(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = a1[23];
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  for (; v5; --v5)
  {
    v6 = *v4;
    if (v6 <= 0x5C && (v6 - 48) >= 0x2Cu && (v6 & 0xFE) != 0x20 && (v6 - 35) >= 0xCu)
    {
      if (*v4 > 0xCu)
      {
        if (*v4 > 0x2Eu)
        {
          if (v6 == 47)
          {
            std::string::push_back(a2, 92);
            LOBYTE(v6) = 47;
          }

          else
          {
            if (v6 != 92)
            {
LABEL_37:
              std::string::push_back(a2, 92);
              std::string::push_back(a2, 117);
              std::string::push_back(a2, 48);
              std::string::push_back(a2, 48);
              std::string::push_back(a2, a0123456789abcd[v6 >> 4]);
              std::string::push_back(a2, a0123456789abcd[v6 & 0xF]);
              goto LABEL_35;
            }

            LOBYTE(v6) = 92;
            std::string::push_back(a2, 92);
          }
        }

        else if (v6 == 13)
        {
          std::string::push_back(a2, 92);
          LOBYTE(v6) = 114;
        }

        else
        {
          if (v6 != 34)
          {
            goto LABEL_37;
          }

          std::string::push_back(a2, 92);
          LOBYTE(v6) = 34;
        }
      }

      else if (*v4 > 9u)
      {
        if (v6 == 10)
        {
          std::string::push_back(a2, 92);
          LOBYTE(v6) = 110;
        }

        else
        {
          if (v6 != 12)
          {
            goto LABEL_37;
          }

          std::string::push_back(a2, 92);
          LOBYTE(v6) = 102;
        }
      }

      else if (v6 == 8)
      {
        std::string::push_back(a2, 92);
        LOBYTE(v6) = 98;
      }

      else
      {
        if (v6 != 9)
        {
          goto LABEL_37;
        }

        std::string::push_back(a2, 92);
        LOBYTE(v6) = 116;
      }
    }

    std::string::push_back(a2, v6);
LABEL_35:
    ++v4;
  }
}

void sub_1B51543F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::count<std::string>(uint64_t a1, const void **a2)
{
  v2 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::equal_range<std::string,std::less<std::string>>(a1, a2, a1 + 1);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v3;
  v4 = 0;
  do
  {
    ++v4;
    v7 = v2 + 56;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&v7);
    if (v7)
    {
      v2 = v7 - 56;
    }

    else
    {
      v2 = 0;
    }
  }

  while (v2 != v5);
  return v4;
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::equal_range<std::string,std::less<std::string>>(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    return v3;
  }

  while (1)
  {
    v7 = v4;
    while (1)
    {
      v8 = v7 - 56;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, (v7 - 56), a2))
      {
        break;
      }

      v7 = *(v7 + 16);
      if (!v7)
      {
        return v3;
      }
    }

    v9 = std::less<std::string>::operator()[abi:ne200100](a3, a2, (v7 - 56));
    v4 = *(v7 + 8);
    if (!v9)
    {
      break;
    }

    v3 = v7 - 56;
    if (!v4)
    {
      return v8;
    }
  }

  if (v4)
  {
    do
    {
      while (1)
      {
        v11 = v4 - 56;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (v4 - 56), a2))
        {
          break;
        }

        v4 = *(v4 + 16);
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v4 = *(v4 + 8);
      v8 = v11;
    }

    while (v4);
  }

  else
  {
LABEL_17:
    v11 = v8;
  }

  v12 = *(v7 + 16);
  if (!v12)
  {
    return v11;
  }

  do
  {
    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, (v12 - 56)))
    {
      v12 = *(v12 + 16);
      if (!v12)
      {
        return v11;
      }
    }

    v12 = *(v12 + 8);
  }

  while (v12);
  return v11;
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}

void quasar::makeNbestElement(uint64_t *a1@<X0>, void *a2@<X1>, kaldi::quasar::TranslationUtil::NbestElement *a3@<X8>)
{
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement(a3);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      memset(v13, 0, 24);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      memset(v17, 0, 156);
      __src = *(v6 + 4 * v8);
      std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(&v17[1], &__src, v13, 1uLL);
      v9 = (*a2 + v7);
      if (v9 != &v17[7])
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v17[7], *v9, v9[1], (v9[1] - *v9) >> 2);
      }

      v10 = *(a3 + 1);
      if (v10 >= *(a3 + 2))
      {
        v11 = std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement const&>(a3, v13);
      }

      else
      {
        kaldi::quasar::TranslationUtil::PathElement::PathElement(*(a3 + 1), v13);
        v11 = v10 + 240;
      }

      *(a3 + 1) = v11;
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v13);
      ++v8;
      v6 = *a1;
      v7 += 24;
    }

    while (v8 < (a1[1] - *a1) >> 2);
  }
}

void sub_1B515474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 1) = v6;
  kaldi::quasar::TranslationUtil::PathElement::~PathElement(va);
  kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v5);
  _Unwind_Resume(a1);
}

uint64_t *quasar::PDecForceAlignOptions::options@<X0>(quasar::PDecForceAlignOptions *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 176;
  v3[1] = this + 16;
  v3[2] = this + 336;
  v3[3] = this + 480;
  v3[4] = this + 624;
  v3[5] = this + 784;
  v3[6] = this + 928;
  v3[7] = this + 1072;
  v3[8] = this + 1232;
  v3[9] = this + 1712;
  v3[10] = this + 1856;
  v3[11] = this + 2144;
  v3[12] = this + 2000;
  v3[13] = this + 1392;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0xEuLL);
}

uint64_t quasar::PDecForceAlignBlock::init(__n128 *this)
{
  v2 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 5)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 5)
  {
    goto LABEL_10;
  }

  if (*v2 != 1684824427 || *(v2 + 4) != 105)
  {
LABEL_10:
    v5 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
    v6 = *(v5 + 23);
    if (v6 < 0)
    {
      if (*(v5 + 8) != 8)
      {
        goto LABEL_30;
      }

      v5 = *v5;
    }

    else if (v6 != 8)
    {
LABEL_30:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Unknown model type: ", 20);
      v20 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v19, v20);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v21);
    }

    if (*v5 != 0x6F73736572707365)
    {
      goto LABEL_30;
    }

    v7 = quasar::OptionValue<std::string>::value(&this[1].n128_u64[1]);
    quasar::OptionValue<BOOL>::value(&this[21].n128_u64[1]);
    v8 = *quasar::OptionValue<BOOL>::value(&this[107].n128_u64[1]);
    v9 = this[155].n128_u64[0];
    v38 = this[154].n128_u64[1];
    v39 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>(v7, v8, 1, &v38, &v21);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::Encdec>,std::shared_ptr<kaldi::quasar::Encdec>>(this + 151, this + 151, &v21);
    if (v21.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21.n128_u64[1]);
    }

    v10 = v39;
    if (v39)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = quasar::OptionValue<std::string>::value(&this[1].n128_u64[1]);
  quasar::OptionValue<BOOL>::value(&this[21].n128_u64[1]);
  v16 = *quasar::OptionValue<BOOL>::value(&this[107].n128_u64[1]);
  v17 = this[155].n128_u64[0];
  v40 = this[154].n128_i64[1];
  v41 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>(v15, v16, 0, &v40, &v21);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v18 = quasar::PDecModelVersionChecker::PDecModelVersionChecker(&v42, v21.n128_i64[0]);
  quasar::PDecModelVersionChecker::checkVersion(v18, this[1].n128_u32[0]);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<0ul,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>&>(&this[151], this[151].n128_u64, &v21);
  v10 = v21.n128_u64[1];
  if (v21.n128_u64[1])
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_22:
  v11 = quasar::OptionValue<std::string>::value(&this[77].n128_u64[1]);
  v21.n128_u64[0] = quasar::OptionValue<std::string>::value(&this[97].n128_u64[1]);
  v21.n128_u64[1] = v11;
  *&v22 = this;
  v12 = this[152].n128_u32[0];
  if (v12 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v42 = &v21;
  result = (off_1F2CFFFF0[v12])(&v42, &this[151]);
  this[152].n128_u64[1] = result;
  this[153].n128_u32[0] = v14;
  return result;
}

void sub_1B5154AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>(std::locale::__imp *a1@<X0>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v23 = a3;
  v22 = a4;
  if ((a3 & 1) == 0)
  {
    std::allocate_shared[abi:ne200100]<kaldi::quasar::TorchEncoderDecoder,std::allocator<kaldi::quasar::TorchEncoderDecoder>,std::string const&,BOOL &,BOOL &,0>();
  }

  if (*a5)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>(*a5);
  }

  v8 = kaldi::quasar::TorchEncoderDecoder::ModelFileMap(0);
  v21[0].__locale_ = a1;
  v9 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8, a1, &std::piecewise_construct, v21, &v24);
  *a6 = 0;
  a6[1] = 0;
  v10 = v9[8];
  if (!v10)
  {
LABEL_19:
    operator new();
  }

  v11 = std::__shared_weak_count::lock(v10);
  a6[1] = v11;
  if (v11)
  {
    v12 = v9[7];
    *a6 = v12;
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*a6)
  {
LABEL_17:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    goto LABEL_19;
  }

LABEL_8:
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v21, 1);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "ModelSharing: cache id ", 23);
    v14 = MEMORY[0x1B8C84BB0](v13, v8);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", getting existing model for ", 29);
    v16 = *(a1 + 23);
    if (v16 >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    if (v16 >= 0)
    {
      v18 = *(a1 + 23);
    }

    else
    {
      v18 = *(a1 + 1);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", id: ", 6);
    MEMORY[0x1B8C84BB0](v20, *a6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v21);
  }
}

void sub_1B5154DC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>(std::locale::__imp *a1@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t ***a5@<X4>, void *a6@<X8>)
{
  v23 = a3;
  v22 = a4;
  if ((a3 & 1) == 0)
  {
    std::allocate_shared[abi:ne200100]<kaldi::quasar::Encdec,std::allocator<kaldi::quasar::Encdec>,std::string const&,BOOL &,BOOL &,0>();
  }

  if (*a5)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::Encdec>(*a5);
  }

  v8 = kaldi::quasar::Encdec::ModelFileMap(0);
  v21[0].__locale_ = a1;
  v9 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8, a1, &std::piecewise_construct, v21, &v24);
  *a6 = 0;
  a6[1] = 0;
  v10 = v9[8];
  if (!v10)
  {
LABEL_19:
    operator new();
  }

  v11 = std::__shared_weak_count::lock(v10);
  a6[1] = v11;
  if (v11)
  {
    v12 = v9[7];
    *a6 = v12;
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*a6)
  {
LABEL_17:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    goto LABEL_19;
  }

LABEL_8:
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v21, 1);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "ModelSharing: cache id ", 23);
    v14 = MEMORY[0x1B8C84BB0](v13, v8);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", getting existing model for ", 29);
    v16 = *(a1 + 23);
    if (v16 >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    if (v16 >= 0)
    {
      v18 = *(a1 + 23);
    }

    else
    {
      v18 = *(a1 + 1);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", id: ", 6);
    MEMORY[0x1B8C84BB0](v20, *a6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v21);
  }
}

void sub_1B51550EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t ***a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void quasar::PDecForceAlignBlock::processBody(quasar::PDecForceAlignBlock *this)
{
  v105 = *MEMORY[0x1E69E9840];
  Value = quasar::ProcessingInput::getValue((this + 2304));
  if (*Value == Value[1])
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    *v88 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v88, "PDecForceAlignBlock 'source' input must not be empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
  }

  __p[0] = 0;
  __p[1] = 0;
  v87 = 0;
  memset(v85, 0, sizeof(v85));
  v3 = quasar::ProcessingInput::getValue((this + 2304));
  v4 = *(*v3 + 200);
  v5 = *(*v3 + 208);
  while (v4 != v5)
  {
    std::vector<std::string>::push_back[abi:ne200100](v85, v4);
    if (v4[16] == -1 && *quasar::OptionValue<BOOL>::value(this + 233) == 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v88 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Option 'use-sentencepiece-ids' require vocabulary IDs set in 'input phrase'.", 76);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
    }

    v6 = v4 + 16;
    std::vector<int>::push_back[abi:ne200100](__p, v6);
    v4 = v6 + 18;
  }

  memset(&v84, 0, sizeof(v84));
  if (*quasar::OptionValue<BOOL>::value(this + 233) != 1)
  {
    v67[0].__r_.__value_.__r.__words[0] = " ";
    v67[0].__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(v85, v67);
    v11 = quasar::OptionValue<std::string>::value(this + 135);
    v12 = quasar::OptionValue<std::string>::value(this + 155);
    kaldi::quasar::MultiLangDecorator::Apply(this + 2440, v88, v11, v12, v67);
    std::string::basic_string[abi:ne200100]<0>(v81, " ");
    quasar::split(v67, &v82, v81, 0);
  }

  v7 = *(this + 608);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v67[0].__r_.__value_.__r.__words[0] = v88;
  v8 = (off_1F2D000A0[v7])(v67, this + 2416);
  v9 = quasar::OptionValue<std::string>::value(this + 135);
  v10 = quasar::OptionValue<std::string>::value(this + 155);
  kaldi::quasar::MultiLangDecorator::Apply(this + 2440, __p, v9, v10, v8, v88);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *v88;
  v87 = v89;
  v82 = 0uLL;
  v83 = 0;
  v13 = quasar::OptionValue<std::string>::value(this + 175);
  v88[0] = v13;
  v14 = *(this + 608);
  if (v14 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v64 = v13;
  v67[0].__r_.__value_.__r.__words[0] = v88;
  (off_1F2D000B0[v14])(v67, this + 2416);
  for (i = 0; ; ++i)
  {
    v16 = *quasar::OptionValue<int>::value(this + 61);
    v17 = quasar::ProcessingInput::getValue((this + 2360));
    v18 = 0xF83E0F83E0F83E1 * ((v17[1] - *v17) >> 3);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    if (v18 <= i)
    {
      break;
    }

    v19 = (*quasar::ProcessingInput::getValue((this + 2360)) + 264 * i);
    memset(v81, 0, sizeof(v81));
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v21 = *(v19 + 25);
    v20 = *(v19 + 26);
    while (v21 != v20)
    {
      std::vector<std::string>::push_back[abi:ne200100](v81, v21);
      v22 = (v21 + 4);
      std::vector<int>::push_back[abi:ne200100](&v78, v22);
      if (*v22 == -1 && *quasar::OptionValue<BOOL>::value(this + 233) == 1)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        *v88 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Option 'use-sentencepiece-ids' require vocabulary IDs set in 'input phrase'.", 76);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
      }

      v21 = (v22 + 18);
    }

    v23 = *(&v82 + 1);
    if (*(&v82 + 1) >= v83)
    {
      v24 = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(&v82, v19);
    }

    else
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(*(&v82 + 1), v19);
      v24 = v23 + 264;
    }

    *(&v82 + 1) = v24;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    memset(v74, 0, sizeof(v74));
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 1;
    if (*(this + 608) == 1)
    {
      v25 = quasar::OptionValue<BOOL>::value(this + 233);
      v26 = *(this + 302);
      if (*v25 == 1)
      {
        v27 = quasar::OptionValue<std::string>::value(this + 79);
        v28 = *quasar::OptionValue<int>::value(this + 99);
        v29 = *quasar::OptionValue<int>::value(this + 117);
        v88[1] = 0;
        *&v89 = 0;
        v88[0] = &v88[1];
        kaldi::quasar::Encdec::ConstrainSoftmax(v26, v27, v28, v29, __p, &v78, v88);
        std::__tree<int>::destroy(v88, v88[1]);
      }

      else
      {
        v32 = quasar::OptionValue<std::string>::value(this + 79);
        v33 = *quasar::OptionValue<int>::value(this + 99);
        v34 = quasar::OptionValue<int>::value(this + 117);
        kaldi::quasar::Encdec::ConstrainSoftmax(v26, v32, v33, *v34, &v84, v81);
      }

      v70 = 0;
    }

    else
    {
      v30 = quasar::OptionValue<std::string>::value(this + 79);
      v31 = *(v30 + 23);
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 && quasar::gLogLevel >= 2)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        *v88 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Ignoring shortlisting configuration for kaldi models, running with full readout layer", 85);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v88);
      }
    }

    v35 = *quasar::OptionValue<BOOL>::value(this + 269);
    v36 = *quasar::OptionValue<BOOL>::value(this + 251);
    v37 = quasar::OptionValue<std::string>::value(this + 195);
    v38 = quasar::OptionValue<std::string>::value(this + 155);
    v39 = quasar::OptionValue<std::string>::value(this + 79);
    v40 = *quasar::OptionValue<BOOL>::value(this + 233);
    v88[0] = &v84;
    v88[1] = v81;
    *&v89 = __p;
    *(&v89 + 1) = &v78;
    *&v90 = &v75;
    *(&v90 + 1) = v74;
    *&v91 = &v71;
    BYTE8(v91) = v36;
    BYTE9(v91) = v35;
    *&v92 = v37;
    *(&v92 + 1) = v38;
    *&v93 = &v70;
    BYTE8(v93) = v40;
    *&v94 = v64;
    *(&v94 + 1) = v39;
    v41 = *(this + 608);
    if (v41 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v67[0].__r_.__value_.__r.__words[0] = v88;
    (off_1F2D000C0[v41])(v67, this + 2416);
    v42 = *(&v82 + 1);
    v43 = v71;
    v44 = v72;
    v45 = (v72 - v71) >> 2;
    if (v36 - 0xF0F0F0F0F0F0F0FLL * ((*(*(&v82 + 1) - 56) - *(*(&v82 + 1) - 64)) >> 3) != v45 && quasar::gLogLevel >= 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v88 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Inconsistent alignment dimension ", 33);
      v47 = MEMORY[0x1B8C84C30](v46, (v72 - v71) >> 2);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " expecting ", 11);
      MEMORY[0x1B8C84C30](v48, v36 - 0xF0F0F0F0F0F0F0FLL * ((*(*(&v82 + 1) - 56) - *(*(&v82 + 1) - 64)) >> 3));
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v88);
      v43 = v71;
      v44 = v72;
      v42 = *(&v82 + 1);
      v45 = (v72 - v71) >> 2;
    }

    if (v44 == v43)
    {
      v51 = 0.0;
    }

    else
    {
      v49 = 0;
      v50 = v45 - 1;
      if (v45 <= 1)
      {
        v45 = 1;
      }

      v51 = 0.0;
      do
      {
        v52 = *v43;
        if (!v36 || v50)
        {
          v53 = *(v42 - 64) + v49;
          *(v53 + 60) = v52;
          *(v53 + 96) = *v43;
        }

        v51 = v51 + v52;
        --v50;
        v49 += 136;
        ++v43;
        --v45;
      }

      while (v45);
    }

    *(v42 - 264) = v51;
    *(v42 - 40) = v51;
    if ((v35 & 1) == 0)
    {
      v54 = *(this + 608);
      if (v54 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v67[0].__r_.__value_.__r.__words[0] = v88;
      if ((off_1F2D000D0[v54])(v67, this + 2416))
      {
        quasar::makeNbestElement(&v75, v74, v88);
        memset(v67, 0, 24);
        std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*>(v67, v88, &v105, 1uLL);
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v88);
        kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(v67);
        kaldi::quasar::TranslationUtil::MergeAlignments(v67);
        v55 = *(&v82 + 1);
        v56 = *(*(&v82 + 1) - 64);
        v57 = *(*(&v82 + 1) - 56);
        if (0xF0F0F0F0F0F0F0F1 * ((v57 - v56) >> 3) != 0xEEEEEEEEEEEEEEEFLL * ((*(v67[0].__r_.__value_.__r.__words[0] + 8) - *v67[0].__r_.__value_.__l.__data_) >> 4) && quasar::gLogLevel >= 1)
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v88 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Inconsistent alignment dimension!", 33);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v88);
          v55 = *(&v82 + 1);
          v56 = *(*(&v82 + 1) - 64);
          v57 = *(*(&v82 + 1) - 56);
        }

        if (v57 != v56)
        {
          v59 = 0;
          v60 = 0;
          v61 = 32;
          do
          {
            v62 = *v67[0].__r_.__value_.__l.__data_ + v59;
            if (v62 + 88 != v56 + v61)
            {
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v56 + v61), *(v62 + 88), *(v62 + 96), (*(v62 + 96) - *(v62 + 88)) >> 2);
              v55 = *(&v82 + 1);
            }

            ++v60;
            v56 = *(v55 - 64);
            v61 += 136;
            v59 += 240;
          }

          while (0xF0F0F0F0F0F0F0F1 * ((*(v55 - 56) - v56) >> 3) > v60);
        }

        v88[0] = v67;
        std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](v88);
      }
    }

    quasar::PTree::PTree(v88);
    std::string::basic_string[abi:ne200100]<0>(v68, quasar::FORCEALIGN_SOURCE_META);
    v63 = quasar::ProcessingInput::getValue((this + 2304));
    quasar::TranslationPhraseInternal::convertTokensToString(*v63);
    quasar::PTree::PTree(v67, v65);
    quasar::PTree::putChild(v88, v68, v67, 1);
    quasar::PTree::~PTree(&v67[0].__r_.__value_.__l.__data_);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v68, quasar::FORCEALIGN_TARGET_META);
    quasar::TranslationPhraseInternal::convertTokensToString(v19);
    quasar::PTree::PTree(v67, v65);
    quasar::PTree::putChild(v88, v68, v67, 1);
    quasar::PTree::~PTree(&v67[0].__r_.__value_.__l.__data_);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    quasar::MetaInfo::update((*(&v82 + 1) - 8), v88);
    quasar::PTree::~PTree(v88);
    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v88[0] = v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v88);
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    v88[0] = v81;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  }

  quasar::ProcessingBlock::send((this + *(*this - 24)), &v82, 0);
  v88[0] = &v82;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v88);
  v88[0] = &v84;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  v88[0] = v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5155EB8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5155F30);
}

void sub_1B5155EC8(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v9[0] = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v4;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::MultiLangDecorator::Apply(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void **a6@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    v12 = *(a3 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a3 + 8);
    }

    if (v12)
    {
      if (kaldi::g_kaldi_verbose_level < 5)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = *(a4 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(a4 + 8);
      }

      if (v29)
      {
        v30 = kaldi::g_kaldi_verbose_level < 5;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_33;
      }
    }

    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "model does not require the use of src/tar tags", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
LABEL_33:
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a6, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    return;
  }

  if (*(a1 + 4) == 3)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = (v10 - *a2) >> 2;

    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a6, v9, v10, v11);
  }

  else
  {
    if (!a5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Apply tags to ID sequence require a tag symbol table in MultiLangDecorator!");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    kaldi::quasar::MultiLangDecorator::GetTags(a1, a3, a4, __p);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    kaldi::SplitStringToVector(__p, " ", 1, &v35);
    __src = 0;
    v33 = 0;
    v34 = 0;
    v14 = v35;
    v15 = v36;
    if (v35 == v36)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v16 = (*(*a5 + 96))(a5, v14) - 1;
        v17 = v33;
        if (v33 >= v34)
        {
          v19 = __src;
          v20 = v33 - __src;
          v21 = (v33 - __src) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v23 = v34 - __src;
          if ((v34 - __src) >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
          v25 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v25 = v22;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v25);
          }

          v26 = (4 * v21);
          v27 = &v26[-((v33 - __src) >> 2)];
          *v26 = v16;
          v18 = (v26 + 1);
          memcpy(v27, v19, v20);
          v28 = __src;
          __src = v27;
          v33 = v18;
          v34 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v33 = v16;
          v18 = v17 + 4;
        }

        v33 = v18;
        v14 += 24;
      }

      while (v14 != v15);
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    if ((*(a1 + 4) | 2) == 2)
    {
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a6, 0, __src, v18, (v18 - __src) >> 2);
      v31 = a6[1];
    }

    else
    {
      v31 = 0;
    }

    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a6, v31, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    if ((*(a1 + 4) - 1) <= 1)
    {
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a6, a6[1], __src, v33, (v33 - __src) >> 2);
    }

    if (__src)
    {
      v33 = __src;
      operator delete(__src);
    }

    __src = &v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void kaldi::quasar::MultiLangDecorator::Apply(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    v18 = *(a3 + 23);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 8);
    }

    if (v18)
    {
      if (kaldi::g_kaldi_verbose_level < 5)
      {
LABEL_30:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
        }

        else
        {
          *&a5->__r_.__value_.__l.__data_ = *a2;
          a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
        }

        return;
      }
    }

    else
    {
      v19 = *(a4 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a4 + 8);
      }

      if (v19)
      {
        v20 = kaldi::g_kaldi_verbose_level < 5;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }

    kaldi::KaldiVlogMessage::KaldiVlogMessage(v38, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "model does not require the use of src/tar tags", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v38);
    goto LABEL_30;
  }

  kaldi::quasar::MultiLangDecorator::GetTags(a1, a3, a4, &v35);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v38);
  v8 = *(a1 + 4);
  switch(v8)
  {
    case 0:
      if ((v37 & 0x80u) == 0)
      {
        v29 = &v35;
      }

      else
      {
        v29 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v30 = v37;
      }

      else
      {
        v30 = v36;
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v29, v30);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
      v25 = *(a2 + 23);
      v26 = *(a2 + 8);
      v27 = (v25 & 0x80u) != 0;
      if ((v25 & 0x80u) == 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      goto LABEL_52;
    case 1:
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = *(a2 + 8);
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v22, v23);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
      goto LABEL_40;
    case 2:
      if ((v37 & 0x80u) == 0)
      {
        v9 = &v35;
      }

      else
      {
        v9 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v10 = v37;
      }

      else
      {
        v10 = v36;
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v9, v10);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
LABEL_40:
      v25 = v37;
      v26 = v36;
      v27 = (v37 & 0x80u) != 0;
      if ((v37 & 0x80u) == 0)
      {
        v28 = &v35;
      }

      else
      {
        v28 = v35;
      }

LABEL_52:
      if (v27)
      {
        v32 = v26;
      }

      else
      {
        v32 = v25;
      }

      goto LABEL_62;
  }

  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v33 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v17 = &v39;
LABEL_62:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v28, v32);
  std::stringbuf::str();
  v38[0] = *MEMORY[0x1E69E54D8];
  v34 = *(MEMORY[0x1E69E54D8] + 72);
  *(v38 + *(v38[0].__locale_ - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v39 = v34;
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v43);
  if (v37 < 0)
  {
    operator delete(v35);
  }
}

void quasar::PDecForceAlignBlock::setContextProvider(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::setContextProvider(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2472) = v6;
  v7 = *(a1 + 2480);
  *(a1 + 2480) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B5156784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B5156874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2488));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2488));

  JUMPOUT(0x1B8C85350);
}

uint64_t *quasar::PDecForceAlignBlock::inputs@<X0>(quasar::PDecForceAlignBlock *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 2304;
  v3[1] = this + 2360;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

uint64_t *non-virtual thunk toquasar::PDecForceAlignBlock::inputs@<X0>(quasar::PDecForceAlignBlock *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void non-virtual thunk toquasar::PDecForceAlignBlock::~PDecForceAlignBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 24);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 24);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this)
{
  v2 = (v1 + 2488);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 311);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(this + 24) = vnegq_f32(v2);
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "{}");
  *(this + 88) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 240) = 0;
  *(this + 31) = this + 256;
  return this;
}

void sub_1B5156C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        kaldi::quasar::TranslationUtil::PathElement::~PathElement((v4 - 240));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void kaldi::quasar::TranslationUtil::PathElement::~PathElement(kaldi::quasar::TranslationUtil::PathElement *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v8 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  std::__tree<std::string>::destroy(this + 248, *(this + 32));
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = this;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::init(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> &>(const std::string ***a1, uint64_t *a2)
{
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  quasar::OptionValue<std::string>::value((v4 + 632));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(a2, v5, v3, &v12);
  v6 = *&v12.__r_.__value_.__l.__data_;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v7 = *(v4 + 2464);
  *(v4 + 2456) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v12.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
    }
  }

  v8 = *a2;
  if (*(*a2 + 3951) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v8 + 3928), *(v8 + 3936));
    v8 = *a2;
  }

  else
  {
    v12 = *(v8 + 3928);
  }

  if (*(v8 + 3975) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v8 + 3952), *(v8 + 3960));
  }

  else
  {
    __p = *(v8 + 3952);
  }

  v9 = kaldi::quasar::ToAddTag(&v12);
  kaldi::quasar::ToTagFormat(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return (v9 << 32) | 1;
}

void sub_1B5156FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::init(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> &>(const std::string ***a1, uint64_t *a2)
{
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  quasar::OptionValue<std::string>::value((v4 + 632));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(a2, v5, v3, 0, &v12);
  v6 = *&v12.__r_.__value_.__l.__data_;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v7 = *(v4 + 2464);
  *(v4 + 2456) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v12.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
    }
  }

  v8 = *a2;
  if (*(*a2 + 2407) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v8 + 2384), *(v8 + 2392));
    v8 = *a2;
  }

  else
  {
    v12 = *(v8 + 2384);
  }

  if (*(v8 + 2431) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v8 + 2408), *(v8 + 2416));
  }

  else
  {
    __p = *(v8 + 2408);
  }

  v9 = kaldi::quasar::ToAddTag(&v12);
  kaldi::quasar::ToTagFormat(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return (v9 << 32) | 1;
}

void sub_1B515712C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(uint64_t *a1@<X0>, const std::string *a2@<X1>, std::string *a3@<X2>, void *a6@<X8>)
{
  v8 = *a1;
  if (*(v8 + 3924) != 1)
  {
    *a6 = 0;
    a6[1] = 0;
    return;
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v80, "No tar tag specified but required by model!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Select models for ", 18);
    v13 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = a2->__r_.__value_.__l.__size_;
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "-", 1);
    v18 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = a3->__r_.__value_.__r.__words[0];
    }

    if (v18 >= 0)
    {
      v20 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = a3->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
    v8 = *a1;
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(v8, a3, a6);
  if (*a6)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Selected: ", 10);
      v22 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v22 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = a2->__r_.__value_.__r.__words[0];
      }

      if (v22 >= 0)
      {
        v24 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = a2->__r_.__value_.__l.__size_;
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "-", 1);
      v27 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = a3->__r_.__value_.__r.__words[0];
      }

      if (v27 >= 0)
      {
        v29 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = a3->__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
    }

    return;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Models for ", 11);
    v31 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v31 >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = a2->__r_.__value_.__r.__words[0];
    }

    if (v31 >= 0)
    {
      v33 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = a2->__r_.__value_.__l.__size_;
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "-", 1);
    v36 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v36 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = a3->__r_.__value_.__r.__words[0];
    }

    if (v36 >= 0)
    {
      v38 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = a3->__r_.__value_.__l.__size_;
    }

    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " not found", 10);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

  v40 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v40 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = a2->__r_.__value_.__r.__words[0];
  }

  if (v40 >= 0)
  {
    v42 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = a2->__r_.__value_.__l.__size_;
  }

  v43 = v41 + v42;
  if (v42 >= 1)
  {
    v44 = v41;
    do
    {
      v45 = memchr(v44, 95, v42);
      if (!v45)
      {
        break;
      }

      if (*v45 == 95)
      {
        goto LABEL_62;
      }

      v44 = (v45 + 1);
      v42 = v43 - v44;
    }

    while (v43 - v44 > 0);
  }

  v45 = v43;
LABEL_62:
  if (v45 == v43)
  {
    v46 = -1;
  }

  else
  {
    v46 = v45 - v41;
  }

  std::string::basic_string(&v79, a2, 0, v46, v80);
  v47 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v47 >= 0)
  {
    v48 = a3;
  }

  else
  {
    v48 = a3->__r_.__value_.__r.__words[0];
  }

  if (v47 >= 0)
  {
    v49 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = a3->__r_.__value_.__l.__size_;
  }

  v50 = v48 + v49;
  if (v49 >= 1)
  {
    v51 = v48;
    do
    {
      v52 = memchr(v51, 95, v49);
      if (!v52)
      {
        break;
      }

      if (*v52 == 95)
      {
        goto LABEL_77;
      }

      v51 = (v52 + 1);
      v49 = v50 - v51;
    }

    while (v50 - v51 > 0);
  }

  v52 = v50;
LABEL_77:
  if (v52 == v50)
  {
    v53 = -1;
  }

  else
  {
    v53 = v52 - v48;
  }

  std::string::basic_string(&__p, a3, 0, v53, v80);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Try to find models for ", 23);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v79;
    }

    else
    {
      v55 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v79.__r_.__value_.__l.__size_;
    }

    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "-", 1);
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
      v60 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v60 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, p_p, v60);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(*a1, &__p, v80);
  v61 = v80[0];
  v80[0] = 0uLL;
  v62 = a6[1];
  *a6 = v61;
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    if (*(&v80[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v80[0] + 1));
    }

    if (*a6)
    {
      goto LABEL_98;
    }

LABEL_117:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Models for ", 11);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v79;
    }

    else
    {
      v71 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v79.__r_.__value_.__l.__size_;
    }

    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &__p;
    }

    else
    {
      v75 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = __p.__r_.__value_.__l.__size_;
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " not found!", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
  }

  if (!v61)
  {
    goto LABEL_117;
  }

LABEL_98:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Selected: ", 10);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v79;
    }

    else
    {
      v64 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v79.__r_.__value_.__l.__size_;
    }

    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v64, v65);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &__p;
    }

    else
    {
      v68 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v69);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }
}

void sub_1B51576E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B51576F0);
}

void sub_1B5157714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157724);
}

void sub_1B5157734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157740);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(uint64_t *a1@<X0>, const std::string *a2@<X1>, const std::string *a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  if (!*(v8 + 408))
  {
    *a6 = 0;
    a6[1] = 0;
    return;
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v81);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v81, "No tar tag specified but required by model!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v81);
  }

  v11 = a5;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v81, 3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Select models for ", 18);
    v14 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v14 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = a2->__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = a2->__r_.__value_.__l.__size_;
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "-", 1);
    v19 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = a3->__r_.__value_.__r.__words[0];
    }

    if (v19 >= 0)
    {
      v21 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = a3->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v81);
    v8 = *a1;
  }

  kaldi::quasar::Encdec::SelectModel(v8, &a2->__r_.__value_.__l.__data_, a3, v11, a6);
  if (*a6)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v81, 3);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Selected: ", 10);
      v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v23 >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = a2->__r_.__value_.__r.__words[0];
      }

      if (v23 >= 0)
      {
        v25 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = a2->__r_.__value_.__l.__size_;
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-", 1);
      v28 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v28 >= 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = a3->__r_.__value_.__r.__words[0];
      }

      if (v28 >= 0)
      {
        v30 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = a3->__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v81);
    }

    return;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v81, 3);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Models for ", 11);
    v32 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = a2->__r_.__value_.__r.__words[0];
    }

    if (v32 >= 0)
    {
      v34 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = a2->__r_.__value_.__l.__size_;
    }

    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "-", 1);
    v37 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v37 >= 0)
    {
      v38 = a3;
    }

    else
    {
      v38 = a3->__r_.__value_.__r.__words[0];
    }

    if (v37 >= 0)
    {
      v39 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = a3->__r_.__value_.__l.__size_;
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " not found", 10);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v81);
  }

  v41 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v41 >= 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = a2->__r_.__value_.__r.__words[0];
  }

  if (v41 >= 0)
  {
    v43 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = a2->__r_.__value_.__l.__size_;
  }

  v44 = v42 + v43;
  if (v43 >= 1)
  {
    v45 = v42;
    do
    {
      v46 = memchr(v45, 95, v43);
      if (!v46)
      {
        break;
      }

      if (*v46 == 95)
      {
        goto LABEL_61;
      }

      v45 = (v46 + 1);
      v43 = v44 - v45;
    }

    while (v44 - v45 > 0);
  }

  v46 = v44;
LABEL_61:
  if (v46 == v44)
  {
    v47 = -1;
  }

  else
  {
    v47 = v46 - v42;
  }

  std::string::basic_string(&v80, a2, 0, v47, v81);
  v48 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v48 >= 0)
  {
    v49 = a3;
  }

  else
  {
    v49 = a3->__r_.__value_.__r.__words[0];
  }

  if (v48 >= 0)
  {
    v50 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = a3->__r_.__value_.__l.__size_;
  }

  v51 = v49 + v50;
  if (v50 >= 1)
  {
    v52 = v49;
    do
    {
      v53 = memchr(v52, 95, v50);
      if (!v53)
      {
        break;
      }

      if (*v53 == 95)
      {
        goto LABEL_76;
      }

      v52 = (v53 + 1);
      v50 = v51 - v52;
    }

    while (v51 - v52 > 0);
  }

  v53 = v51;
LABEL_76:
  if (v53 == v51)
  {
    v54 = -1;
  }

  else
  {
    v54 = v53 - v49;
  }

  std::string::basic_string(&__p, a3, 0, v54, v81);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v81, 3);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Try to find models for ", 23);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v80;
    }

    else
    {
      v56 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v80.__r_.__value_.__l.__size_;
    }

    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "-", 1);
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
      v61 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, p_p, v61);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v81);
  }

  kaldi::quasar::Encdec::SelectModel(*a1, &v80.__r_.__value_.__l.__data_, &__p, v11, v81);
  v62 = v81[0];
  v81[0] = 0uLL;
  v63 = a6[1];
  *a6 = v62;
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    if (*(&v81[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81[0] + 1));
    }

    if (*a6)
    {
      goto LABEL_97;
    }

LABEL_117:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v81);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Models for ", 11);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v80;
    }

    else
    {
      v72 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v80.__r_.__value_.__l.__size_;
    }

    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &__p;
    }

    else
    {
      v76 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = __p.__r_.__value_.__l.__size_;
    }

    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " not found!", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v81);
  }

  if (!v62)
  {
    goto LABEL_117;
  }

LABEL_97:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v81, 3);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Selected: ", 10);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v80;
    }

    else
    {
      v65 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = v80.__r_.__value_.__l.__size_;
    }

    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &__p;
    }

    else
    {
      v69 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v81);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }
}

void sub_1B5157CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157CD4);
}

void sub_1B5157CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157D08);
}

void sub_1B5157D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157D24);
}

void kaldi::quasar::Encdec::SelectModel(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, const std::string::value_type *a3@<X2>, int a4@<W4>, void *a5@<X8>)
{
  v67[27] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (kaldi::quasar::Encdec::SelectSubmodelsToCompile(a1, a2, a3))
    {
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v61, 5);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Selected langpair for compilation only: ", 40);
        v10 = *(a2 + 23);
        if (v10 >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        if (v10 >= 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = a2[1];
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "-", 1);
        v15 = a3[23];
        if (v15 >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        if (v15 >= 0)
        {
          v17 = *(a3 + 23);
        }

        else
        {
          v17 = *(a3 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v61);
      }

      operator new();
    }

    goto LABEL_71;
  }

  v18 = *(a1 + 2240);
  if (v18)
  {
    kaldi::quasar::Shortlist::LoadLanguagePair(v18);
  }

  if (kaldi::quasar::Encdec::LoadSubmodels(a1, a2, a3))
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v61);
    v19 = a3[23];
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 1);
    }

    v22 = std::string::append(&v61, v20, v21);
    v23 = v22->__r_.__value_.__r.__words[0];
    v60.__r_.__value_.__r.__words[0] = v22->__r_.__value_.__l.__size_;
    *(v60.__r_.__value_.__r.__words + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 959) < 0)
    {
      operator delete(*(a1 + 936));
    }

    *(a1 + 936) = v23;
    *(a1 + 944) = v60.__r_.__value_.__r.__words[0];
    *(a1 + 951) = *(v60.__r_.__value_.__r.__words + 7);
    *(a1 + 959) = v24;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 480))
    {
      if (*(a1 + 1521) == 1)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, *a2, a2[1]);
        }

        else
        {
          v61 = *a2;
        }
      }

      else
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v60);
        v31 = a3[23];
        if (v31 >= 0)
        {
          v32 = a3;
        }

        else
        {
          v32 = *a3;
        }

        if (v31 >= 0)
        {
          v33 = *(a3 + 23);
        }

        else
        {
          v33 = *(a3 + 1);
        }

        v34 = std::string::append(&v60, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      v60.__r_.__value_.__r.__words[0] = &v61;
      v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 464), &v61.__r_.__value_.__l.__data_, &std::piecewise_construct, &v60, &v59);
      std::string::operator=((a1 + 912), (v45 + 56));
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v61, 5);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Selected and loaded langpair: ", 30);
      v47 = *(a2 + 23);
      if (v47 >= 0)
      {
        v48 = a2;
      }

      else
      {
        v48 = *a2;
      }

      if (v47 >= 0)
      {
        v49 = *(a2 + 23);
      }

      else
      {
        v49 = a2[1];
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "-", 1);
      v52 = a3[23];
      if (v52 >= 0)
      {
        v53 = a3;
      }

      else
      {
        v53 = *a3;
      }

      if (v52 >= 0)
      {
        v54 = *(a3 + 23);
      }

      else
      {
        v54 = *(a3 + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v61);
    }

    v55 = *(a1 + 160);
    v61.__r_.__value_.__r.__words[0] = *(a1 + 152);
    v61.__r_.__value_.__l.__size_ = v55;
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = *(a1 + 192);
    v61.__r_.__value_.__r.__words[2] = *(a1 + 184);
    v62 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
    }

    v57 = *(a1 + 224);
    v63 = *(a1 + 216);
    v64 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }

    v58 = *(a1 + 240);
    v65 = *(a1 + 232);
    v66 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    memset(&v60, 0, sizeof(v60));
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*>(&v60, &v61, v67, 4uLL);
    operator new();
  }

  if (*(a1 + 24) == 1)
  {
    v25 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v26 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v27 = *(a1 + 240);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    if (!v27)
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    goto LABEL_71;
  }

  v28 = *(a1 + 272);
  v29 = *(v28 + 64);
  if (v29 && (v29 = std::__shared_weak_count::lock(v29)) != 0)
  {
    v30 = *(v28 + 56);
  }

  else
  {
    v30 = 0;
  }

  v36 = *(a1 + 192);
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(a1 + 312))
  {
    v37 = *(a1 + 296);
    v38 = *(v37 + 64);
    if (v38 && (v38 = std::__shared_weak_count::lock(v38)) != 0)
    {
      v39 = *(v37 + 56);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a1 + 224);
    *(a1 + 216) = v39;
    *(a1 + 224) = v38;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  if (*(a1 + 336))
  {
    v41 = *(a1 + 320);
    v42 = *(v41 + 64);
    if (v42 && (v42 = std::__shared_weak_count::lock(v42)) != 0)
    {
      v43 = *(v41 + 56);
    }

    else
    {
      v43 = 0;
    }

    v44 = *(a1 + 240);
    *(a1 + 232) = v43;
    *(a1 + 240) = v42;
    if (v44)
    {
      v27 = v44;
      goto LABEL_70;
    }
  }

LABEL_71:
  *a5 = 0;
  a5[1] = 0;
}

void sub_1B5158290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (result[23] >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void kaldi::quasar::MultiLangDecorator::GetTags(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      v10 = *(a3 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 8);
      }

      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = kaldi::g_kaldi_verbose_level <= -2;
      }

      if (v11)
      {
        goto LABEL_33;
      }
    }

    else if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_33;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "A Both type TagFormat requires non-empty source and target tags", 63);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

  if (!v8)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v13)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "SrcTag cannot be empty for TagFormat::Src", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

  if (v8 == 1)
  {
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v15)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "TarTag cannot be empty for TagFormat::Tar", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

LABEL_33:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 <= 1)
  {
    if (v8 <= 1)
    {
LABEL_44:
      std::operator+<char>();
      v21 = std::string::append(&v36, ">");
      v22 = v21->__r_.__value_.__r.__words[0];
      v37.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
      *(v37.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v24 = v37.__r_.__value_.__r.__words[0];
      *a4 = v22;
      *(a4 + 8) = v24;
      *(a4 + 15) = *(v37.__r_.__value_.__r.__words + 7);
      *(a4 + 23) = v23;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        v25 = v36.__r_.__value_.__r.__words[0];
LABEL_63:
        operator delete(v25);
        return;
      }

      return;
    }

LABEL_48:
    MEMORY[0x1B8C84820](a4, "");
    return;
  }

  if (v8 == 2)
  {
    std::operator+<char>();
    v26 = std::string::append(&v35, "-");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = *(a3 + 23);
    if (v28 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v28 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }
  }

  else
  {
    if (v8 != 3)
    {
      goto LABEL_48;
    }

    std::operator+<char>();
    v16 = std::string::append(&v35, "> <tar-");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }
  }

  v29 = std::string::append(&v37, v19, v20);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v36, ">");
  v32 = v31->__r_.__value_.__r.__words[0];
  v38[0] = v31->__r_.__value_.__l.__size_;
  *(v38 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
  v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v34 = v38[0];
  *a4 = v32;
  *(a4 + 8) = v34;
  *(a4 + 15) = *(v38 + 7);
  *(a4 + 23) = v33;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = v35.__r_.__value_.__r.__words[0];
    goto LABEL_63;
  }
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::processBody(void)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> const&>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(a2, *(*a1 + 64), *(*a1 + 72), &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *a2;
  if (*(v3 + 88) == 1)
  {
    if (*(*a2 + 3925))
    {
      kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(v4, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96), 1u);
      return;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
LABEL_11:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  if (*(*a2 + 3925))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    goto LABEL_11;
  }

  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(v4, *v3, *(v3 + 8), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96));
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::processBody(void)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> const&>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(a2, *(*a1 + 64), *(*a1 + 72), 0, &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *a2;
  if (*(v3 + 88) == 1)
  {
    if (*(*a2 + 2461))
    {
      kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(v4, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96), 1u);
      return;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
LABEL_11:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  if (*(*a2 + 2461))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    goto LABEL_11;
  }

  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(v4, *v3, *(v3 + 8), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96));
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, uint64_t a10, unsigned __int8 a11)
{
  v67 = 0;
  v68 = 0;
  v69 = 0;
  kaldi::JoinVectorToString<int>(a2, " ", &v67);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v64, 1);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Source symbol sequence : ", 25);
    if (v69 >= 0)
    {
      v18 = &v67;
    }

    else
    {
      v18 = v67;
    }

    if (v69 >= 0)
    {
      v19 = HIBYTE(v69);
    }

    else
    {
      v19 = v68;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " (length: ", 10);
    v22 = MEMORY[0x1B8C84C30](v21, (a2[1] - *a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v64);
  }

  kaldi::JoinVectorToString<int>(a3, " ", &v67);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v64, 1);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Target symbol sequence : ", 25);
    if (v69 >= 0)
    {
      v24 = &v67;
    }

    else
    {
      v24 = v67;
    }

    if (v69 >= 0)
    {
      v25 = HIBYTE(v69);
    }

    else
    {
      v25 = v68;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (length: ", 10);
    v28 = MEMORY[0x1B8C84C30](v27, (a3[1] - *a3) >> 2);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " excluding </s> symbol: ", 24);
    v30 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1);
    v31 = MEMORY[0x1B8C84C00](v29, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v64);
  }

  v61 = 0u;
  v62 = 0u;
  v60 = &unk_1F2D0EE38;
  v63 = 0;
  kaldi::CuMatrix<float>::Resize(&v60, (a2[1] - *a2) >> 2, 1, 0, 0);
  v32 = *a2;
  v33 = a2[1];
  v34 = v33 - *a2;
  if (v33 != *a2)
  {
    v35 = 0;
    v36 = v34 >> 2;
    v37 = v61;
    if (v36 <= 1)
    {
      v36 = 1;
    }

    v38 = 4 * v62;
    do
    {
      *v37 = (*(v32 + 4 * v35++) + a11 - 1);
      v37 = (v37 + v38);
    }

    while (v36 != v35);
  }

  if (a9)
  {
    std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 3664), 0);
  }

  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::Start(a1, _CLOCK_MONOTONIC_RAW, a10);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, &v60, 0, 0);
  v57 = 0u;
  v58 = 0u;
  v56 = &unk_1F2D0EE38;
  v59 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v54, 1, 1, 0, 0, 0);
  v39 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
  *v55 = (v39 - 1);
  if (a3[1] - *a3 != -4)
  {
    v40 = 0;
    do
    {
      v41 = *v55;
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, &v54, &v56, 0);
      if (v40 >= (a3[1] - *a3) >> 2)
      {
        v42 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      }

      else
      {
        v42 = *(*a3 + 4 * v40) + a11 - 1;
      }

      *v55 = v42;
      if (a6)
      {
        if (v42 != kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1 || a7 != 0)
        {
          v45 = v42;
          if (*(a1 + 3664))
          {
            kaldi::quasar::TorchEncoderDecoder::GetSoftmaxIdx(a1, v42);
          }

          v46 = *(v57 + 4 * v45);
          Type = quasar::getType(a1, v43);
          v48 = logf(v46);
          if (!Type)
          {
            v48 = v46;
          }

          *&v64.__locale_ = -v48;
          std::vector<float>::push_back[abi:ne200100](a6, &v64);
        }
      }

      if (*(a1 + 3923) == 1)
      {
        v49 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
        v50 = v41 + 1;
      }

      else
      {
        v49 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1);
        v50 = v42 + 1;
      }

      if (v50 != v49 && (a8 & 1) == 0)
      {
        if (*(a1 + 3922) == 1)
        {
          BestAlignment = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(a1, 0);
          std::vector<int>::push_back[abi:ne200100](a4, &BestAlignment);
          v64.__locale_ = 0;
          locale = 0;
          v66 = 0;
          kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(a1, &v64.__locale_, 0);
          std::vector<std::vector<float>>::push_back[abi:ne200100](a5, &v64);
          if (v64.__locale_)
          {
            locale = v64.__locale_;
            operator delete(v64.__locale_);
          }
        }

        else if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "model trained with supervised alignment required for alignment", 62);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v64);
        }
      }

      ++v40;
    }

    while (((a3[1] - *a3) >> 2) + 1 > v40);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v54);
  kaldi::CuMatrix<float>::~CuMatrix(&v56);
  kaldi::CuMatrix<float>::~CuMatrix(&v60);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v67);
  }
}

void sub_1B51595D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v30 + 280));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(uint64_t a1, __int128 **a2, __int128 **a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, uint64_t a10)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::quasar::TorchEncoderDecoder::Symbolize(a1, a2, &v20, 0, 0);
  __p = 0;
  v18 = 0;
  v19 = 0;
  kaldi::quasar::TorchEncoderDecoder::Symbolize(a1, a3, &__p, 1, 0);
  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(a1, &v20, &__p, a4, a5, a6, a7, a8, a9, a10, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_1B515976C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      MEMORY[0x1B8C84C00](&v16, *(v6 + 4 * v7++));
      v6 = *a1;
      v8 = a1[1] - *a1;
      if (v7 < v8 >> 2)
      {
        v9 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v9);
        v6 = *a1;
        v8 = a1[1] - *a1;
      }
    }

    while (v7 < v8 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v13;
  v10 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v14;
  v15[0] = *v10;
  v11 = v10[9];
  *(v15 + *(v15[0] - 24)) = v10[8];
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B51599A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

kaldi::nnet1::Nnet *std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](kaldi::nnet1::Nnet **a1, kaldi::nnet1::Nnet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::nnet1::Nnet::~Nnet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t *std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5159BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, const std::string *a10, unsigned __int8 a11)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  kaldi::JoinVectorToString<int>(a2, " ", &v76);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v74, 1);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Source symbol sequence : ", 25);
    if (v78 >= 0)
    {
      v18 = &v76;
    }

    else
    {
      v18 = v76;
    }

    if (v78 >= 0)
    {
      v19 = HIBYTE(v78);
    }

    else
    {
      v19 = v77;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " (length: ", 10);
    v22 = MEMORY[0x1B8C84C30](v21, (a2[1] - *a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v74);
  }

  kaldi::JoinVectorToString<int>(a3, " ", &v76);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v74, 1);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Target symbol sequence : ", 25);
    if (v78 >= 0)
    {
      v24 = &v76;
    }

    else
    {
      v24 = v76;
    }

    if (v78 >= 0)
    {
      v25 = HIBYTE(v78);
    }

    else
    {
      v25 = v77;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (length: ", 10);
    v28 = MEMORY[0x1B8C84C30](v27, (a3[1] - *a3) >> 2);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " excluding </s> symbol: ", 24);
    v30 = MEMORY[0x1B8C84C00](v29, *(a1 + 828));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v74);
  }

  v72 = 0u;
  v71 = 0u;
  v70 = &unk_1F2D0EE38;
  v73 = 0;
  kaldi::CuMatrix<float>::Resize(&v70, (a2[1] - *a2) >> 2, 1, 0, 0);
  v31 = *a2;
  v32 = a2[1];
  v33 = v32 - *a2;
  if (v32 != *a2)
  {
    v34 = 0;
    v35 = v33 >> 2;
    v36 = v71;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    v37 = 4 * v72;
    do
    {
      *v36 = (*(v31 + 4 * v34++) + a11 - 1);
      v36 = (v36 + v37);
    }

    while (v35 != v34);
  }

  if (a9)
  {
    *(a1 + 1509) = 0;
    std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 2248), 0);
  }

  kaldi::quasar::Encdec::ResetHistoryState(a1);
  kaldi::quasar::Encdec::Start(a1, 4, a10);
  kaldi::quasar::Encdec::StartFeedforward(a1, &v70, 0, 0);
  v67 = 0u;
  v68 = 0u;
  v66 = &unk_1F2D0EE38;
  v69 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v64, 1, 1, 0, 0, 0);
  *v65 = (*(a1 + 824) - 1);
  if (a3[1] - *a3 != -4)
  {
    v38 = 0;
    v39 = (a1 + 828);
    do
    {
      v40 = *v65;
      kaldi::quasar::Encdec::Feedforward(a1, &v64, &v66);
      v41 = (a3[1] - *a3) >> 2;
      v42 = v41 > v38;
      if (v41 > v38)
      {
        v43 = (*a3 + 4 * v38);
      }

      else
      {
        v43 = (a1 + 828);
      }

      if (v42)
      {
        v44 = a11 ^ 1;
      }

      else
      {
        v44 = 1;
      }

      v45 = *v43 - v44;
      *v65 = v45;
      if (a6)
      {
        if (v45 != *v39 - 1 || a7 != 0)
        {
          if (*(a1 + 1509) == 1)
          {
            kaldi::quasar::Encdec::GetSoftmaxIdx(a1, v45);
          }

          else
          {
            v47 = v45;
          }

          v48 = *(v67 + 4 * v47);
          v49 = *(a1 + 1519);
          v50 = logf(v48);
          if (!v49)
          {
            v50 = v48;
          }

          *&v74[0].__locale_ = -v50;
          std::vector<float>::push_back[abi:ne200100](a6, v74);
        }
      }

      if (*(a1 + 2165) == 1)
      {
        v51 = v40 + 1;
        v52 = *(a1 + 824);
      }

      else
      {
        v51 = v45 + 1;
        v52 = *v39;
      }

      if (v51 != v52 && (a8 & 1) == 0)
      {
        if (*(a1 + 2164) == 1)
        {
          v53 = *(a1 + 2168);
          if (v53 == *(a1 + 2176))
          {
            v54 = -1;
          }

          else
          {
            v54 = *v53;
          }

          v63 = v54;
          std::vector<int>::push_back[abi:ne200100](a4, &v63);
          __p = 0;
          v61 = 0;
          v62 = 0;
          v55 = *(a1 + 2208);
          if (v55 >= 1)
          {
            v56 = *(a1 + 2224);
            v79[1] = *(a1 + 2200);
            v79[0] = &unk_1F2CFCA48;
            v79[2] = v55;
            v79[3] = v56;
            kaldi::CuVector<float>::CuVector(v74, v79);
            if (v75 >= 1)
            {
              for (i = 0; i < v75; ++i)
              {
                LODWORD(v79[0]) = *(v74[1].__locale_ + i);
                std::vector<float>::push_back[abi:ne200100](&__p, v79);
              }
            }

            kaldi::CuVector<float>::~CuVector(v74);
          }

          std::vector<std::vector<float>>::push_back[abi:ne200100](a5, &__p);
          if (__p)
          {
            v61 = __p;
            operator delete(__p);
          }
        }

        else if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v74);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "model trained with supervised alignment required for alignment", 62);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v74);
        }
      }

      ++v38;
    }

    while (((a3[1] - *a3) >> 2) + 1 > v38);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v64);
  kaldi::CuMatrix<float>::~CuMatrix(&v66);
  kaldi::CuMatrix<float>::~CuMatrix(&v70);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v76);
  }
}

void sub_1B515A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(uint64_t a1, __int128 **a2, __int128 **a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, const std::string *a10)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::quasar::Encdec::Symbolize(a1, a2, &v20, 0, 0);
  __p = 0;
  v18 = 0;
  v19 = 0;
  kaldi::quasar::Encdec::Symbolize(a1, a3, &__p, 1, 0);
  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(a1, &v20, &__p, a4, a5, a6, a7, a8, a9, a10, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_1B515A338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::TranslationPhraseInternal>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; std::allocator_traits<std::allocator<quasar::TranslationPhraseInternal>>::destroy[abi:ne200100]<quasar::TranslationPhraseInternal,0>(result, i))
  {
    i -= 264;
  }

  *(result + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::TranslationPhraseInternal>>::destroy[abi:ne200100]<quasar::TranslationPhraseInternal,0>(uint64_t a1, uint64_t a2)
{
  quasar::MetaInfo::~MetaInfo((a2 + 256));
  if (*(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  v4 = (a2 + 200);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 176);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 160) = v3;
    operator delete(v3);
  }

  if (*(a2 + 120) == 1)
  {
    v4 = (a2 + 96);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v4 = (a2 + 16);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void quasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 287) = a2[6];
  v5 = *(this + 310);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 308);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 2416);
  v8 = (this + 2392);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 2383) < 0)
  {
    operator delete(*(this + 295));
  }

  v8 = (this + 2336);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 2327) < 0)
  {
    operator delete(*(this + 288));
  }

  v7 = a2[1];
  *this = v7;
  *(this + *(v7 - 24)) = a2[2];
  quasar::PDecForceAlignOptions::~PDecForceAlignOptions((this + 8));
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F2D000E0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrIN5kaldi6quasar19TorchEncoderDecoderEEENS8_INSA_6EncdecEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrIN5kaldi6quasar19TorchEncoderDecoderEEENS8_INSA_6EncdecEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void quasar::PDecForceAlignOptions::~PDecForceAlignOptions(quasar::PDecForceAlignOptions *this)
{
  *this = &unk_1F2CFFBA0;
  *(this + 268) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2264, *(this + 284));
  *(this + 268) = &unk_1F2D08890;
  v2 = *(this + 280);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 2223) < 0)
  {
    operator delete(*(this + 275));
  }

  if (*(this + 2199) < 0)
  {
    operator delete(*(this + 272));
  }

  if (*(this + 2175) < 0)
  {
    operator delete(*(this + 269));
  }

  *(this + 250) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2120, *(this + 266));
  *(this + 250) = &unk_1F2D08890;
  v3 = *(this + 262);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 2079) < 0)
  {
    operator delete(*(this + 257));
  }

  if (*(this + 2055) < 0)
  {
    operator delete(*(this + 254));
  }

  if (*(this + 2031) < 0)
  {
    operator delete(*(this + 251));
  }

  *(this + 232) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1976, *(this + 248));
  *(this + 232) = &unk_1F2D08890;
  v4 = *(this + 244);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  *(this + 214) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1832, *(this + 230));
  *(this + 214) = &unk_1F2D08890;
  v5 = *(this + 226);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  if (*(this + 1767) < 0)
  {
    operator delete(*(this + 218));
  }

  if (*(this + 1743) < 0)
  {
    operator delete(*(this + 215));
  }

  *(this + 194) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1688, *(this + 212));
  if (*(this + 1679) < 0)
  {
    operator delete(*(this + 207));
  }

  *(this + 194) = &unk_1F2D08890;
  v6 = *(this + 206);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  if (*(this + 1607) < 0)
  {
    operator delete(*(this + 198));
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  *(this + 174) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1528, *(this + 192));
  if (*(this + 1519) < 0)
  {
    operator delete(*(this + 187));
  }

  *(this + 174) = &unk_1F2D08890;
  v7 = *(this + 186);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 1471) < 0)
  {
    operator delete(*(this + 181));
  }

  if (*(this + 1447) < 0)
  {
    operator delete(*(this + 178));
  }

  if (*(this + 1423) < 0)
  {
    operator delete(*(this + 175));
  }

  *(this + 154) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1368, *(this + 172));
  if (*(this + 1359) < 0)
  {
    operator delete(*(this + 167));
  }

  *(this + 154) = &unk_1F2D08890;
  v8 = *(this + 166);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 1311) < 0)
  {
    operator delete(*(this + 161));
  }

  if (*(this + 1287) < 0)
  {
    operator delete(*(this + 158));
  }

  if (*(this + 1263) < 0)
  {
    operator delete(*(this + 155));
  }

  *(this + 134) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1208, *(this + 152));
  if (*(this + 1199) < 0)
  {
    operator delete(*(this + 147));
  }

  *(this + 134) = &unk_1F2D08890;
  v9 = *(this + 146);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 1151) < 0)
  {
    operator delete(*(this + 141));
  }

  if (*(this + 1127) < 0)
  {
    operator delete(*(this + 138));
  }

  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  *(this + 116) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 1048, *(this + 132));
  *(this + 116) = &unk_1F2D08890;
  v10 = *(this + 128);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 1007) < 0)
  {
    operator delete(*(this + 123));
  }

  if (*(this + 983) < 0)
  {
    operator delete(*(this + 120));
  }

  if (*(this + 959) < 0)
  {
    operator delete(*(this + 117));
  }

  *(this + 98) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 904, *(this + 114));
  *(this + 98) = &unk_1F2D08890;
  v11 = *(this + 110);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 815) < 0)
  {
    operator delete(*(this + 99));
  }

  *(this + 78) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 760, *(this + 96));
  if (*(this + 751) < 0)
  {
    operator delete(*(this + 91));
  }

  *(this + 78) = &unk_1F2D08890;
  v12 = *(this + 90);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  *(this + 60) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v13 = *(this + 72);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  *(this + 42) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 456, *(this + 58));
  *(this + 42) = &unk_1F2D08890;
  v14 = *(this + 54);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  *(this + 22) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 312, *(this + 40));
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 22) = &unk_1F2D08890;
  v15 = *(this + 34);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v16 = *(this + 14);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement const&>(uint64_t a1, const kaldi::quasar::TranslationUtil::PathElement *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  kaldi::quasar::TranslationUtil::PathElement::PathElement((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = (240 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(&v13);
  return v12;
}

void sub_1B515B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *kaldi::quasar::TranslationUtil::PathElement::PathElement(std::string *this, const kaldi::quasar::TranslationUtil::PathElement *a2)
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
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  v7 = *(a2 + 10);
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__l.__size_ = v7;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[5].__r_.__value_.__r.__words[2], *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[6].__r_.__value_.__r.__words[2], *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[7].__r_.__value_.__r.__words[2], *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[8].__r_.__value_.__r.__words[2], *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  LODWORD(this[9].__r_.__value_.__r.__words[2]) = *(a2 + 58);
  return this;
}

void sub_1B515B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(int a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::PathElement(this, v8);
      v8 = (v8 + 240);
      this += 10;
      v7 -= 240;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v6);
      v6 = (v6 + 240);
    }
  }
}

void sub_1B515B3B8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 240);
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v4);
      v4 = (v5 - 240);
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    kaldi::quasar::TranslationUtil::PathElement::~PathElement((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B515B700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 104);
  *(v14 - 104) = 0;
  if (v16)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,std::allocator<kaldi::quasar::TorchEncoderDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00100;
  kaldi::quasar::TorchEncoderDecoder::TorchEncoderDecoder((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::TorchEncoderDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v4 = *(v14 - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((&v14 + v4));
  std::ios_base::imbue((&v14 + v4), v5);
  std::locale::~locale(__p);
  v6 = *(&v16[3].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v19, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v19);
  }

  std::locale::~locale(&v13);
  MEMORY[0x1B8C84BB0](&v14, a2);
  std::stringbuf::str();
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v18);
  return v9;
}

void sub_1B515BB20(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, std::locale a8, void *a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>> &&>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4, uint64_t **a5)
{
  v5 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    operator new();
  }

  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>::~ModelCache(void *a1)
{
  *a1 = &unk_1F2D00150;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy((a1 + 1), a1[2]);
  return a1;
}

void kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>::~ModelCache(void *a1)
{
  *a1 = &unk_1F2D00150;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy((a1 + 1), a1[2]);

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B515C074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::shared_ptr[abi:ne200100]<kaldi::quasar::TorchEncoderDecoder,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<0ul,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>&>(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 16))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v5 = a3[1];
    *a1 = *a3;
    *(a1 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    v7 = *a3;
    v6 = a3[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a2[1];
    *a2 = v7;
    a2[1] = v6;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1B515C498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 104);
  *(v14 - 104) = 0;
  if (v16)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::Encdec>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,std::allocator<kaldi::quasar::Encdec>,0>(void *a1, void **a2, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00210;
  kaldi::quasar::Encdec::Encdec((a1 + 3), a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::Encdec>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::Encdec::~Encdec(kaldi::quasar::Encdec *this)
{
  v17 = (this + 2432);
  std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 2431) < 0)
  {
    operator delete(*(this + 301));
  }

  if (*(this + 2407) < 0)
  {
    operator delete(*(this + 298));
  }

  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 281, 0);
  v2 = *(this + 280);
  *(this + 280) = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      (*(*v3 + 64))(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C85350](v2, 0x1030C40AC6CB4BDLL);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 2192);
  v5 = *(this + 271);
  if (v5)
  {
    *(this + 272) = v5;
    operator delete(v5);
  }

  v17 = (this + 2080);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 2056);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 2032);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 2031) < 0)
  {
    operator delete(*(this + 251));
  }

  if (*(this + 2007) < 0)
  {
    operator delete(*(this + 248));
  }

  if (*(this + 1983) < 0)
  {
    operator delete(*(this + 245));
  }

  if (*(this + 1959) < 0)
  {
    operator delete(*(this + 242));
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  if (*(this + 1863) < 0)
  {
    operator delete(*(this + 230));
  }

  if (*(this + 1839) < 0)
  {
    operator delete(*(this + 227));
  }

  if (*(this + 1815) < 0)
  {
    operator delete(*(this + 224));
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  if (*(this + 1767) < 0)
  {
    operator delete(*(this + 218));
  }

  if (*(this + 1743) < 0)
  {
    operator delete(*(this + 215));
  }

  v17 = (this + 1696);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 1695) < 0)
  {
    operator delete(*(this + 209));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1648, *(this + 207));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1624, *(this + 204));
  v17 = (this + 1600);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1576);
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1552);
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1528);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v17);
  kaldi::nnet1::Nnet::~Nnet((this + 1128));
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(this + 1104, *(this + 139));
  if (*(this + 1079) < 0)
  {
    operator delete(*(this + 132));
  }

  if (*(this + 1055) < 0)
  {
    operator delete(*(this + 129));
  }

  if (*(this + 1031) < 0)
  {
    operator delete(*(this + 126));
  }

  if (*(this + 1007) < 0)
  {
    operator delete(*(this + 123));
  }

  if (*(this + 983) < 0)
  {
    operator delete(*(this + 120));
  }

  if (*(this + 959) < 0)
  {
    operator delete(*(this + 117));
  }

  if (*(this + 935) < 0)
  {
    operator delete(*(this + 114));
  }

  v17 = (this + 880);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v6 = *(this + 107);
  if (v6)
  {
    *(this + 108) = v6;
    operator delete(v6);
  }

  kaldi::quasar::BPE::~BPE((this + 568));
  v7 = *(this + 70);
  *(this + 70) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 69);
  *(this + 69) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 68);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 66);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(this + 496, *(this + 63));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 464, *(this + 59));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 440, *(this + 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 416, *(this + 53));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 392, *(this + 50));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 368, *(this + 47));
  v17 = (this + 344);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 296, *(this + 38));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 248, *(this + 32));
  v11 = *(this + 30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 28);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 26);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 22);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 20);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void kaldi::quasar::BPE::~BPE(kaldi::quasar::BPE *this)
{
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 88);
  v2 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 3);
  std::__tree<std::string>::destroy(this, *(this + 1));
}

uint64_t kaldi::quasar::TMTools::ModelCache<kaldi::quasar::Encdec>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00260;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void kaldi::quasar::TMTools::ModelCache<kaldi::quasar::Encdec>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00260;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void std::shared_ptr<kaldi::quasar::Encdec>::shared_ptr[abi:ne200100]<kaldi::quasar::Encdec,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1B515CDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<kaldi::quasar::Encdec>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

kaldi::quasar::Encdec **std::unique_ptr<kaldi::quasar::Encdec>::~unique_ptr[abi:ne200100](kaldi::quasar::Encdec **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    kaldi::quasar::Encdec::~Encdec(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::Encdec *std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    kaldi::quasar::Encdec::~Encdec(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::Encdec>,std::shared_ptr<kaldi::quasar::Encdec>>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1[1].n128_u32[0] == 1)
  {
    result = *a3;
    *a3 = 0uLL;
    v5 = a2->n128_u64[1];
    *a2 = result;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *a3;
    *a1 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a1[1].n128_u32[0] = 1;
  }

  return result;
}

uint64_t *std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*>(uint64_t *result, kaldi::quasar::TranslationUtil::NbestElement *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

kaldi::quasar::TranslationUtil::NbestElement *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement*>(int a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v6);
      v6 = (v6 + 272);
      this = (this + 272);
      v7 -= 272;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B515D0D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 272);
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v4);
      v4 = (v5 - 272);
      v2 += 272;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(this, *a2, *(a2 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 4));
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 6) = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v4 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v4;
  }

  *(this + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v5 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v5;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v6;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v7 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v7;
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 21, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 24, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 27, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(this + 240) = *(a2 + 240);
  std::map<std::string,double>::map[abi:ne200100](this + 31, a2 + 31);
  return this;
}

void sub_1B515D2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  a10 = v10;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<kaldi::quasar::TranslationUtil::PathElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(uint64_t *result, kaldi::quasar::TranslationUtil::PathElement *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(int a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::PathElement(this, v6);
      v6 = (v6 + 240);
      this += 10;
      v7 -= 240;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B515D494(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 240);
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v4);
      v4 = (v5 - 240);
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((v4 - 272));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

kaldi::nnet1::LayerNorm *kaldi::nnet1::LayerNorm::LayerNorm(kaldi::nnet1::LayerNorm *this, const kaldi::nnet1::LayerNorm *a2)
{
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D00310;
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 7) = &unk_1F2D3AC18;
  *(this + 8) = 0;
  v4 = this + 88;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 11) = &unk_1F2D3AC18;
  *(this + 12) = 0;
  kaldi::CuVector<float>::operator=(this + 56, a2 + 56);
  kaldi::CuVector<float>::operator=(v4, a2 + 88);
  return this;
}

void sub_1B515D60C(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v3);
  kaldi::CuVector<float>::~CuVector(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 20);
  v30 = 0;
  v31 = 0;
  v28 = &unk_1F2D3AC18;
  v29 = 0;
  kaldi::CuVector<float>::Resize(&v28, v6, 0);
  if (*(a2 + 20) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + 8) + 4 * *(a2 + 24) * v7;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v24 = &unk_1F2CFCA48;
      v25 = v8;
      v27 = v10;
      v26 = v9;
      v11 = kaldi::CuVectorBase<float>::Sum(&v24);
      *(v29 + 4 * v7++) = *&v11 / v26;
    }

    while (v7 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  v12.n128_u32[0] = -1.0;
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, &v28, v12, 1.0);
  v13 = *(a2 + 20);
  v26 = 0;
  v27 = 0;
  v24 = &unk_1F2D3AC18;
  v25 = 0;
  kaldi::CuVector<float>::Resize(&v24, v13, 0);
  if (*(a2 + 20) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(a3 + 8) + 4 * *(a3 + 24) * v14;
      v16 = *(a3 + 16);
      v17 = *(a3 + 32);
      v23[0] = &unk_1F2CFCA48;
      v23[1] = v15;
      v23[3] = v17;
      v23[2] = v16;
      kaldi::CuVector<float>::CuVector(v21, v23);
      kaldi::CuVectorBase<float>::MulElements(v21, v23);
      v18 = kaldi::CuVectorBase<float>::Sum(v21);
      *(v25 + 4 * v14) = 1.0 / (*(a1 + 48) + sqrtf(*&v18 / (v22 - *(a1 + 52))));
      kaldi::CuVector<float>::~CuVector(v21);
      ++v14;
    }

    while (v14 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::MulRowsVec(a3, &v24);
  kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 56);
  v19.n128_u32[0] = 1.0;
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v19, 1.0);
  kaldi::CuVector<float>::~CuVector(&v24);
  return kaldi::CuVector<float>::~CuVector(&v28);
}

void sub_1B515D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LayerNorm::Info(kaldi::nnet1::LayerNorm *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  kaldi::WriteToken(&v14, 0, "<Epsilon>");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " ", 1);
  std::ostream::operator<<();
  kaldi::WriteToken(&v14, 0, "<UnbiasedVar>");
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " ", 1);
  MEMORY[0x1B8C84BD0](v3, *(this + 52));
  kaldi::WriteToken(&v14, 0, "<Gamma>");
  kaldi::nnet1::MomentStatistics<float>(this + 56);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = v11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, v5);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  kaldi::WriteToken(&v14, 0, "<Beta>");
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v12 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v13[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v8;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B515DB48(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LayerNorm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v27, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Reading LayerNorm component", 27);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v27);
  }

  __p = 0uLL;
  v26 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (kaldi::Peek(a2, a3) != 60)
        {
          v6 = HIBYTE(v26);
          goto LABEL_64;
        }

        kaldi::ReadToken(a2, a3, &__p);
        v6 = HIBYTE(v26);
        if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          break;
        }

        if (*(&__p + 1) == 9 && *__p == 0x6E6F6C697370453CLL && *(__p + 8) == 62)
        {
          goto LABEL_52;
        }

        if (*(&__p + 1) == 13 && *__p == 0x65736169626E553CLL && *(__p + 5) == 0x3E72615664657361)
        {
          goto LABEL_39;
        }

        if (*(&__p + 1) != 6)
        {
          if (*(&__p + 1) != 7)
          {
            goto LABEL_55;
          }

          v10 = *__p == 1835091772 && *(__p + 3) == 1046572397;
          v11 = a1 + 56;
          if (!v10)
          {
            goto LABEL_55;
          }

          goto LABEL_46;
        }

        v12 = __p;
LABEL_41:
        v14 = *v12;
        v15 = *(v12 + 2);
        v16 = v14 == 1952793148 && v15 == 15969;
        v11 = a1 + 88;
        if (!v16)
        {
          if (SHIBYTE(v26) < 0)
          {
LABEL_55:
            if (*(&__p + 1) == 12)
            {
              v18 = __p;
              goto LABEL_59;
            }
          }

LABEL_67:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unrecognized token ", 19);
          if (v26 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v26 >= 0)
          {
            v24 = HIBYTE(v26);
          }

          else
          {
            v24 = *(&__p + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, v24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
        }

LABEL_46:
        kaldi::CuVector<float>::Read(v11, a2, a3);
      }

      if (HIBYTE(v26) <= 8u)
      {
        if (HIBYTE(v26) != 6)
        {
          if (HIBYTE(v26) != 7)
          {
            goto LABEL_67;
          }

          v13 = __p == 1835091772 && *(&__p + 3) == 1046572397;
          v11 = a1 + 56;
          if (!v13)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        }

        v12 = &__p;
        goto LABEL_41;
      }

      if (HIBYTE(v26) != 9)
      {
        break;
      }

      if (__p != 0x6E6F6C697370453CLL || BYTE8(__p) != 62)
      {
        goto LABEL_67;
      }

LABEL_52:
      kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
    }

    if (HIBYTE(v26) != 13)
    {
      break;
    }

    if (__p != 0x65736169626E553CLL || *(&__p + 5) != 0x3E72615664657361)
    {
      goto LABEL_67;
    }

LABEL_39:
    kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 52));
  }

  if (HIBYTE(v26) != 12)
  {
    goto LABEL_67;
  }

  v18 = &__p;
LABEL_59:
  v19 = *v18;
  v20 = *(v18 + 2);
  if (v19 != 0x6E6F706D6F432F3CLL || v20 != 1047817829)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B515DEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::WriteData(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  kaldi::WriteToken(a2, a3, "<Epsilon>");
  kaldi::WriteBasicType<float>(a2, v3, *(a1 + 48));
  kaldi::WriteToken(a2, v3, "<UnbiasedVar>");
  kaldi::WriteBasicType<BOOL>(a2, v3, *(a1 + 52));
  kaldi::WriteToken(a2, v3, "<Gamma>");
  kaldi::CuVectorBase<float>::Write(a1 + 56, a2, v3);
  kaldi::WriteToken(a2, v3, "<Beta>");
  kaldi::CuVectorBase<float>::Write(a1 + 88, a2, v3);

  return kaldi::WriteToken(a2, v3, "</Component>");
}

void kaldi::nnet1::LayerNorm::~LayerNorm(kaldi::nnet1::LayerNorm *this)
{
  kaldi::nnet1::LayerNorm::~LayerNorm(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D00310;
  v2 = (this + 56);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::CuVector<float>::~CuVector(v2);

  kaldi::nnet1::Component::~Component(this);
}

uint64_t loggableFileObject(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 48);
    if (*(v3 + 71) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "[dynamic object]";
  }

  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v4, v5);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " (", 2);
  v7 = MEMORY[0x1B8C84C30](v6, a1[4]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") : ", 4);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " attribute '", 12);
  v9 = a1[1];
  v10 = __p;
  loggableUnicode(v9, __p);
  if (v15 < 0)
  {
    v10 = __p[0];
  }

  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' : ", 4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B515E318(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::ostringstream::~ostringstream(&a12, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t TFileObject::verify(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 40))
  {
    loggableFileObject(a1);
    if (v47 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected an object\n", v5, v6, v7);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 1;
    return v8 & 1;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    a4 = 1;
  }

  if ((a4 & 1) == 0)
  {
    loggableFileObject(a1);
    v15 = v47 >= 0 ? __p : __p[0];
    tknPrintf("Error: %sObject has no attributes\n", v13, v14, v15);
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = a4 ^ 1;
  LOBYTE(v44[0]) = 0;
  std::vector<BOOL>::vector(__p, a3, v44);
  if (*a1)
  {
    v16 = *(*a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v41 = a1;
  if (v11)
  {
    while (1)
    {
      v17 = 0;
      if (a3)
      {
        break;
      }

LABEL_44:
      if (v17 == a3)
      {
LABEL_45:
        loggableFileObject(v11);
        v31 = v44;
        if (v45 < 0)
        {
          v31 = v44[0];
        }

        tknPrintf("Error: %sInvalid attribute\n", v29, v30, v31);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        v8 = 1;
      }

      v11 = v11[2];
      if (!v11)
      {
        goto LABEL_51;
      }
    }

    v18 = v11[1];
    v19 = (a2 + 24);
    while (wcscmp(v18, *(v19 - 3)))
    {
      ++v17;
      v19 += 4;
      if (a3 == v17)
      {
        goto LABEL_45;
      }
    }

    if ((*(__p[0] + (v17 >> 6)) & (1 << v17)) != 0 && (*(v19 - 2) & 1) == 0)
    {
      loggableFileObject(v11);
      v22 = v44;
      if (v45 < 0)
      {
        v22 = v44[0];
      }

      tknPrintf("Error: %sRedefinition\n", v20, v21, v22);
LABEL_40:
      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      v8 = 1;
      goto LABEL_43;
    }

    if (v16)
    {
      if (v16 < *(v19 - 1))
      {
        loggableFileObject(v11);
        v25 = v44;
        if (v45 < 0)
        {
          v25 = v44[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version must be at least %lld\n", v23, v24, v25, v16, *(v19 - 1));
        goto LABEL_40;
      }

      if (v16 > *v19)
      {
        loggableFileObject(v11);
        v28 = v44;
        if (v45 < 0)
        {
          v28 = v44[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version may not be greater than %lld\n", v26, v27, v28, v16, *v19);
        goto LABEL_40;
      }
    }

LABEL_43:
    *(__p[0] + (v17 >> 6)) |= 1 << v17;
    goto LABEL_44;
  }

LABEL_51:
  if (a3)
  {
    v32 = 0;
    v33 = (a2 + 16);
    do
    {
      if (((*(__p[0] + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0 && (*(v33 - 1) & 2) == 0 && (!v16 || v16 >= *v33 && v16 <= v33[1]))
      {
        loggableFileObject(v41);
        v34 = v45;
        v35 = v44[0];
        loggableUnicode(*(v33 - 2), v42);
        if (v34 >= 0)
        {
          v38 = v44;
        }

        else
        {
          v38 = v35;
        }

        if (v43 >= 0)
        {
          v39 = v42;
        }

        else
        {
          v39 = v42[0];
        }

        tknPrintf("Error: %sMissing declaration of '%s'\n", v36, v37, v38, v39);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        v8 = 1;
      }

      ++v32;
      v33 += 4;
    }

    while (a3 != v32);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8 & 1;
}

void sub_1B515E700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::verify(TFileObject *this, char a2, char a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    if (v3 != 2 || (a2 & 1) != 0)
    {
      v10 = 0;
      if (**(this + 3) || (a3 & 1) != 0)
      {
        return v10;
      }

      loggableFileObject(this);
      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      tknPrintf("Error: %sEmpty string not allowed here\n", v11, v12, v13);
    }

    else
    {
      loggableFileObject(this);
      if (v16 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      tknPrintf("Error: %sRegExp not supported here\n", v4, v5, v6);
    }
  }

  else
  {
    loggableFileObject(this);
    if (v16 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected a string\n", v7, v8, v9);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1B515E870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::getAttribute(uint64_t a1, __int32 *a2)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      break;
    }
  }

  return i;
}

void TFileObject::collectAttributes(uint64_t a1, __int32 *a2, uint64_t a3)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a3) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - *a3;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a3, v12);
        }

        *(8 * v9) = i;
        v8 = 8 * v9 + 8;
        v13 = *(a3 + 8) - *a3;
        v14 = (8 * v9 - v13);
        memcpy(v14, *a3, v13);
        v15 = *a3;
        *a3 = v14;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = i;
        v8 = (v7 + 1);
      }

      *(a3 + 8) = v8;
    }
  }
}

void TFileObjectParser::TFileObjectParser(TFileObjectParser *this, const TLocaleInfo **a2)
{
  TAllocator::TAllocator((this + 8), 2048);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = 0;
  if (TInputStream::verifyVersion(a2, "ObjectFormatVersion", 1uLL, 1uLL, 1uLL))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "");
    TException::TException(v10, &v12);
    v10[0].__vftable = &unk_1F2D00400;
    if (v11 >= 0)
    {
      v8 = &v10[1];
    }

    else
    {
      v8 = v10[1].__vftable;
    }

    conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 247);
    TException::~TException(v10);
    if (v13 < 0)
    {
      operator delete(v12);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    TException::TException(exception, v10);
    *exception = &unk_1F2D00400;
  }

  TLexerLexicon::TLexerLexicon(&v12, a2[22]);
  initLexicon(v4);
  TLexer::TLexer(v10, a2, 1uLL, &v12, 0);
  if (*(a2 + 39) >= 0)
  {
    v5 = a2 + 2;
  }

  else
  {
    v5 = a2[2];
  }

  MEMORY[0x1B8C84820](this + 48, v5);
  *(this + 9) = a2[12];
  Objects = TFileObjectParser::loadObjects(this, v10);
  v7 = TAllocator::allocate((this + 8), 48);
  *(v7 + 10) = 0;
  v7[3] = Objects;
  v7[4] = 0;
  *v7 = this;
  v7[1] = &dword_1B5AE2648;
  v7[2] = 0;
  *this = v7;
  TLexer::~TLexer(v10);
  TLexerLexicon::~TLexerLexicon(&v12);
}

void sub_1B515EBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 71) < 0)
      {
        operator delete(*v16);
      }

      TAllocator::clear((v15 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

TRegExpCompiler *initLexicon(TRegExp **a1)
{
  TLexerLexicon::addLiteral(a1, "=", 5);
  TLexerLexicon::addLiteral(a1, "{", 6);
  TLexerLexicon::addLiteral(a1, "}", 7);
  TLexerLexicon::addLiteral(a1, "(", 8);
  TLexerLexicon::addLiteral(a1, ")", 9);
  TLexerLexicon::addString(a1, 39, 3, 2);
  TLexerLexicon::addString(a1, 96, 4, 0);
  TLexerLexicon::addString(a1, 34, 2, 1);
  TLexerLexicon::addRegExp(a1, "[", 1);

  return TLexerLexicon::doneAdding(a1);
}

const TFileObject *TFileObjectParser::loadObjects(TFileObjectParser *this, TLexer *a2)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    v4 = 0;
    i = 0;
    while (1)
    {
      Object = TFileObjectParser::makeObject(this, a2, &dword_1B5AE2648);
      if (i)
      {
        *(v4 + 2) = Object;
        v7 = Object;
        Object = v4;
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *(Object + 2);
        for (i = Object; v7; v7 = *(v7 + 2))
        {
LABEL_5:
          Object = v7;
        }
      }

      v4 = Object;
      if (*(a2 + 3) >= ((*(a2 + 12) - *(a2 + 11)) >> 3))
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t *TFileObjectParser::TFileObjectParser(uint64_t *a1, __darwin_ct_rune_t *a2, uint64_t a3, const TLocaleInfo *a4)
{
  TAllocator::TAllocator((a1 + 1), 2048);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *a1 = 0;
  TLexerLexicon::TLexerLexicon(v12, a4);
  initLexicon(v7);
  TLexer::TLexer(v11, a2, 1, v12, 0);
  MEMORY[0x1B8C84820](a1 + 6, "[dynamic text object]");
  a1[9] = 1;
  Objects = TFileObjectParser::loadObjects(a1, v11);
  v9 = TAllocator::allocate((a1 + 1), 48);
  *(v9 + 10) = 0;
  v9[3] = Objects;
  v9[4] = 0;
  *v9 = a1;
  v9[1] = &dword_1B5AE2648;
  v9[2] = 0;
  *a1 = v9;
  TLexer::~TLexer(v11);
  TLexerLexicon::~TLexerLexicon(v12);
  return a1;
}

void sub_1B515EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TLexer::~TLexer(va);
  TLexerLexicon::~TLexerLexicon((v5 - 88));
  if (*(v3 + 71) < 0)
  {
    operator delete(*v4);
  }

  TAllocator::clear((v3 + 8));
  _Unwind_Resume(a1);
}

void TFileObjectParser::~TFileObjectParser(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  TAllocator::clear((this + 1));
}

__n128 TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2, const TFileObject *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 10);
  if (!v6)
  {
    v23 = *(a2 + 3);
    if (!v23)
    {
      v7 = 0;
LABEL_57:
      v34 = TAllocator::allocate((this + 8), 48);
      v36 = *(a2 + 4);
      *(v34 + 10) = 0;
      v34[4] = v36;
      goto LABEL_58;
    }

    i = 0;
    v7 = 0;
    v25 = 0;
    while (!wcscmp(*(v23 + 8), "I"))
    {
LABEL_48:
      v23 = *(v23 + 16);
      if (!v23)
      {
        goto LABEL_57;
      }
    }

    TFileObjectParser::instantiateObject(this, v23, a3);
    if (v7)
    {
      i[2] = v26;
      v28 = v26;
      if (v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v28 = v26[2];
      v7 = v26;
      for (i = v26; v28; v28 = v28[2])
      {
LABEL_46:
        i = v28;
      }
    }

    v25 |= v27 & 1;
    goto LABEL_48;
  }

  if (v6 != 3)
  {
    v29 = TAllocator::allocate((this + 8), 48);
    *(v29 + 10) = *(a2 + 10);
    result = *a2;
    *v29 = *a2;
    v29[4] = *(a2 + 4);
    v29[2] = *(a2 + 2);
    v31 = *(a2 + 3);
    v29[2] = 0;
    v29[3] = v31;
    return result;
  }

  v7 = *(a2 + 3);
  v8 = *(a3 + 3);
  if (v8)
  {
    v9 = 0;
    do
    {
      v50 = __s2;
      v51 = 256;
      v54 = 0;
      v52 = 0;
      TBuffer<wchar_t>::insert(&v50, 0, "$", 2uLL);
      v10 = 0;
      v11 = *(v8 + 8);
        ;
      }

      TBuffer<wchar_t>::insert(&v50, v52, v11, v10 - 1);
      LODWORD(v45[0].__vftable) = 41;
      TBuffer<wchar_t>::insert(&v50, v52, v45, 1uLL);
      if (v52 >= v51)
      {
        if (v54)
        {
          LODWORD(v45[0].__vftable) = 0;
          TBuffer<wchar_t>::insert(&v50, v52--, v45, 1uLL);
        }

        else if (v51)
        {
          v50[v51 - 1] = 0;
        }
      }

      else
      {
        v50[v52] = 0;
      }

      if (!*(v8 + 40) && !wcscmp(__s2, v7))
      {
        v7 = *(v8 + 24);
        if (v7)
        {
          v19 = 0;
          v9 = 0;
          do
          {
            v20 = TAllocator::allocate((this + 8), 48);
            *(v20 + 10) = *(v7 + 10);
            *v20 = *v7;
            v20[4] = v7[4];
            v20[2] = v7[2];
            v21 = v7[3];
            v20[2] = 0;
            v20[3] = v21;
            if (v9)
            {
              v19[2] = v20;
              do
              {
                v22 = v20;
                v20 = v20[2];
              }

              while (v20);
              v20 = v22;
            }

            else
            {
              v9 = v20;
            }

            v7 = v7[2];
            v19 = v20;
          }

          while (v7);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          v9 = 0;
        }
      }

      else
      {
        v13 = wcsstr(v7, __s2);
        if (v13)
        {
          if (!*(v8 + 40))
          {
            loggableFileObject(a2);
            v37 = v46;
            v38 = v45[0].__vftable;
            loggableFileObject(v8);
            v41 = v45;
            if (v37 < 0)
            {
              v41 = v38;
            }

            if (v49 >= 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            tknPrintf("Error: %s%sCannot instantiate\n", v39, v40, v41, v42);
            if (v49 < 0)
            {
              operator delete(__p[0]);
            }

            if (v46 < 0)
            {
              operator delete(v45[0].__vftable);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            TException::TException(v45, __p);
            v45[0].__vftable = &unk_1F2D00428;
            if (v47 >= 0)
            {
              v43 = &v45[1];
            }

            else
            {
              v43 = v45[1].__vftable;
            }

            conditionalAssert(v43, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 366);
            TException::~TException(v45);
            if (v49 < 0)
            {
              operator delete(__p[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v45, "");
            TException::TException(exception, v45);
            *exception = &unk_1F2D00428;
          }

          v14 = wcslen(__s2);
          wcscpy(__s2, v7);
          wcscpy((__s2 + v13 - v7), *(v8 + 24));
          wcscat(__s2, &v13[v14]);
          v15 = wcslen(__s2);
          if ((v15 + 1) >> 62)
          {
            v16 = -1;
          }

          else
          {
            v16 = 4 * (v15 + 1);
          }

          v7 = TAllocator::allocate((this + 8), v16);
          wcscpy(v7, __s2);
        }

        v17 = 1;
      }

      if (v54 == 1 && v50 != &v53 && v50 != 0)
      {
        MEMORY[0x1B8C85310]();
      }

      if (!v17)
      {
        break;
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (v9)
    {
      v32 = TAllocator::allocate((this + 8), 48);
      v33 = *(a2 + 4);
      *(v32 + 10) = 0;
      v32[4] = v33;
      result = *a2;
      *v32 = *a2;
      v32[2] = 0;
      v32[3] = v9;
      return result;
    }
  }

  v34 = TAllocator::allocate((this + 8), 48);
  v35 = *(a2 + 4);
  *(v34 + 10) = *(a2 + 10);
  v34[4] = v35;
LABEL_58:
  result = *a2;
  *v34 = *a2;
  v34[2] = 0;
  v34[3] = v7;
  return result;
}

void sub_1B515F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x468]) == 1 && a22 != a11 && a22 != 0)
      {
        MEMORY[0x1B8C85310]();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  TFileObject::collectAttributes(a2, "I", &v22);
  v4 = v22;
  if (v22 != v23)
  {
    v5 = 0;
    i = 0;
    v7 = 0;
    while (1)
    {
      TFileObjectParser::instantiateObject(this, a2, v4[v5]);
      if ((v9 & 1) == 0)
      {
        loggableFileObject(a2);
        if (v20 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        tknPrintf("Error: %sNothing to instantiate\n", v12, v13, v14);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v17, "");
        TException::TException(__p, v17);
        __p[0] = &unk_1F2D00428;
        if (v21 >= 0)
        {
          v15 = &__p[1];
        }

        else
        {
          v15 = __p[1];
        }

        conditionalAssert(v15, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 441);
        TException::~TException(__p);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(exception, __p);
        *exception = &unk_1F2D00428;
      }

      if (v7)
      {
        *(i + 2) = v8;
        v10 = v8;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v8 + 2);
        v7 = v8;
        for (i = v8; v10; v10 = *(v10 + 2))
        {
LABEL_6:
          i = v10;
        }
      }

      ++v5;
      v4 = v22;
      if (v5 >= v23 - v22)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = a2;
LABEL_12:
  if (v4)
  {
    v23 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_1B515F804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      if (a24)
      {
        operator delete(a24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::makeObject(uint64_t a1, TLexer *a2, __int32 *a3)
{
  v3 = a3;
  Token = nextToken(a2, a2, a3);
  v9 = Token;
  v10 = *Token;
  if (*Token == 1)
  {
    v11 = wcslen(*(Token + 8));
    if ((v11 + 1) >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = 4 * (v11 + 1);
    }

    v3 = TAllocator::allocate((a1 + 8), v12);
    wcscpy(v3, *(v9 + 8));
    v15 = nextToken(a2, v13, v14);
    if (*v15 != 5)
    {
      loggableToken(a2, v15);
      if (v76 >= 0)
      {
        v60 = v75;
      }

      else
      {
        v60 = v75[0].__vftable;
      }

      tknPrintf("Error: %sSyntax error, missing '='\n", v58, v59, v60);
      if (v76 < 0)
      {
        operator delete(v75[0].__vftable);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(v75, __p);
      v75[0].__vftable = &unk_1F2CFF890;
      if (v77 >= 0)
      {
        v61 = &v75[1];
      }

      else
      {
        v61 = v75[1].__vftable;
      }

      conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 488);
      TException::~TException(v75);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v75, "");
      TException::TException(exception, v75);
      *exception = &unk_1F2CFF890;
    }

    v9 = nextToken(a2, v16, v17);
    v10 = *v9;
  }

  if (v10 <= 3)
  {
    if (v10 == 2)
    {
      v38 = wcslen(*(v9 + 8));
      if ((v38 + 1) >> 62)
      {
        v39 = -1;
      }

      else
      {
        v39 = 4 * (v38 + 1);
      }

      v23 = TAllocator::allocate((a1 + 8), v39);
      wcscpy(v23, *(v9 + 8));
      v24 = TAllocator::allocate((a1 + 8), 48);
      v25 = v24;
      v26 = *(v9 + 16);
      v27 = 3;
    }

    else
    {
      if (v10 != 3)
      {
LABEL_84:
        loggableToken(a2, v9);
        if (v76 >= 0)
        {
          v65 = v75;
        }

        else
        {
          v65 = v75[0].__vftable;
        }

        tknPrintf("Error: %sSyntax error\n", v63, v64, v65);
        if (v76 < 0)
        {
          operator delete(v75[0].__vftable);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(v75, __p);
        v75[0].__vftable = &unk_1F2CFF890;
        if (v77 >= 0)
        {
          v66 = &v75[1];
        }

        else
        {
          v66 = v75[1].__vftable;
        }

        conditionalAssert(v66, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 571);
        TException::~TException(v75);
        if (v74 < 0)
        {
          operator delete(__p[0]);
        }

        v67 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v75, "");
        TException::TException(v67, v75);
        *v67 = &unk_1F2CFF890;
      }

      v21 = wcslen(*(v9 + 8));
      if ((v21 + 1) >> 62)
      {
        v22 = -1;
      }

      else
      {
        v22 = 4 * (v21 + 1);
      }

      v23 = TAllocator::allocate((a1 + 8), v22);
      wcscpy(v23, *(v9 + 8));
      v24 = TAllocator::allocate((a1 + 8), 48);
      v25 = v24;
      v26 = *(v9 + 16);
      v27 = 1;
    }

LABEL_38:
    *(v24 + 10) = v27;
    v24[3] = v23;
    v24[4] = v26;
    *v24 = a1;
    v24[1] = v3;
    v24[2] = 0;
    return v25;
  }

  if (v10 == 4)
  {
    v28 = wcslen(*(v9 + 8));
    if ((v28 + 1) >> 62)
    {
      v29 = -1;
    }

    else
    {
      v29 = 4 * (v28 + 1);
    }

    v23 = TAllocator::allocate((a1 + 8), v29);
    wcscpy(v23, *(v9 + 8));
    v24 = TAllocator::allocate((a1 + 8), 48);
    v25 = v24;
    v26 = *(v9 + 16);
    v27 = 2;
    goto LABEL_38;
  }

  if (v10 == 8)
  {
    v30 = nextToken(a2, v7, v8);
    v25 = 0;
    for (i = 0; ; i = v36)
    {
      if (*v30 == 9)
      {
        if (!v25)
        {
          loggableToken(a2, v30);
          if (v76 >= 0)
          {
            v70 = v75;
          }

          else
          {
            v70 = v75[0].__vftable;
          }

          tknPrintf("Error: %sAssignment list is empty\n", v68, v69, v70);
          if (v76 < 0)
          {
            operator delete(v75[0].__vftable);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "");
          TException::TException(v75, __p);
          v75[0].__vftable = &unk_1F2CFF890;
          if (v77 >= 0)
          {
            v71 = &v75[1];
          }

          else
          {
            v71 = v75[1].__vftable;
          }

          conditionalAssert(v71, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 536);
          TException::~TException(v75);
          if (v74 < 0)
          {
            operator delete(__p[0]);
          }

          v72 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v75, "");
          TException::TException(v72, v75);
          *v72 = &unk_1F2CFF890;
        }

        if (!*(v25 + 10))
        {
          goto LABEL_54;
        }

        return v25;
      }

      if (*v30 == 1)
      {
        loggableToken(a2, v30);
        v50 = v76;
        v51 = v75[0].__vftable;
        loggableUnicode(*(v30 + 8), __p);
        if (v50 >= 0)
        {
          v54 = v75;
        }

        else
        {
          v54 = v51;
        }

        if (v74 >= 0)
        {
          v55 = __p;
        }

        else
        {
          v55 = __p[0];
        }

        tknPrintf("Error: %sUnexpected attribute name '%s' in assignment list\n", v52, v53, v54, v55);
        if (v74 < 0)
        {
          operator delete(__p[0]);
        }

        if (v76 < 0)
        {
          operator delete(v75[0].__vftable);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(v75, __p);
        v75[0].__vftable = &unk_1F2CFF890;
        if (v77 >= 0)
        {
          v56 = &v75[1];
        }

        else
        {
          v56 = v75[1].__vftable;
        }

        conditionalAssert(v56, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 524);
        TException::~TException(v75);
        if (v74 < 0)
        {
          operator delete(__p[0]);
        }

        v57 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v75, "");
        TException::TException(v57, v75);
        *v57 = &unk_1F2CFF890;
      }

      v32 = *(a2 + 3);
      if (v32)
      {
        *(a2 + 3) = v32 - 1;
      }

      Object = TFileObjectParser::makeObject(a1, a2, v3);
      v36 = Object;
      if (v25)
      {
        *(i + 2) = Object;
        v37 = Object;
        v36 = i;
        if (!Object)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v37 = *(Object + 2);
        v25 = Object;
        if (!v37)
        {
          goto LABEL_31;
        }
      }

      do
      {
        v36 = v37;
        v37 = *(v37 + 2);
      }

      while (v37);
LABEL_31:
      v30 = nextToken(a2, v34, v35);
    }
  }

  if (v10 != 6)
  {
    goto LABEL_84;
  }

  v18 = nextToken(a2, v7, v8);
  if (*v18 == 7)
  {
    v19 = v18;
    v20 = 0;
    goto LABEL_53;
  }

  v41 = 0;
  v20 = 0;
  do
  {
    v42 = *(a2 + 3);
    if (v42)
    {
      *(a2 + 3) = v42 - 1;
    }

    v43 = TFileObjectParser::makeObject(a1, a2, &dword_1B5AE2648);
    v46 = v43;
    if (v20)
    {
      *(v41 + 2) = v43;
      v47 = v43;
      v46 = v41;
      if (!v43)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v47 = *(v43 + 2);
      v20 = v43;
      if (!v47)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v46 = v47;
      v47 = *(v47 + 2);
    }

    while (v47);
LABEL_49:
    v48 = nextToken(a2, v44, v45);
    v41 = v46;
  }

  while (*v48 != 7);
  v19 = v48;
LABEL_53:
  v25 = TAllocator::allocate((a1 + 8), 48);
  v49 = v19[2];
  *(v25 + 10) = 0;
  v25[3] = v20;
  v25[4] = v49;
  *v25 = a1;
  v25[1] = v3;
  v25[2] = 0;
LABEL_54:

  return TFileObjectParser::instantiateObject(a1, v25);
}

void sub_1B51600F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

uint64_t nextToken(TLexer *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 3);
  v4 = *(a1 + 11);
  if (v3 >= (*(a1 + 12) - v4) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", a2, a3, v7);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v20, __p);
    v20[0].__vftable = &unk_1F2CFF890;
    if (v22 >= 0)
    {
      v8 = &v20[1];
    }

    else
    {
      v8 = v20[1].__vftable;
    }

    conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 457);
    TException::~TException(v20);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v20, "");
    TException::TException(exception, v20);
    *exception = &unk_1F2CFF890;
  }

  *(a1 + 3) = v3 + 1;
  v5 = *(v4 + 8 * v3);
  if (v5 && *v5 == -1)
  {
    loggableToken(a1, v5);
    v10 = v21;
    v11 = v20[0].__vftable;
    loggableUnicode(*(v5 + 8), __p);
    if (v10 >= 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = v11;
    }

    if (v19 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    tknPrintf("Error: %sSyntax error, found unexpected token '%s'\n", v12, v13, v14, v15);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0].__vftable);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v20, __p);
    v20[0].__vftable = &unk_1F2CFF890;
    if (v22 >= 0)
    {
      v16 = &v20[1];
    }

    else
    {
      v16 = v20[1].__vftable;
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 465);
    TException::~TException(v20);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v20, "");
    TException::TException(v17, v20);
    *v17 = &unk_1F2CFF890;
  }

  return *(v4 + 8 * v3);
}

void sub_1B5160484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void TDataException::~TDataException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void TLexer::~TLexer(TLexer *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  TAllocator::clear((this + 32));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void TSemanticException::~TSemanticException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::HwcnConfidence::HwcnConfidence(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D00450;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  kaldi::SilencePhoneSet::SilencePhoneSet((v3 + 488));
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 704) = 100;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 840) = 1;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN6marisa4TrieENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51606D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 912);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 896);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v10 + 880);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(v10 + 871) < 0)
  {
    operator delete(*(v10 + 848));
  }

  if (*(v10 + 839) < 0)
  {
    operator delete(*(v10 + 816));
  }

  if (*(v10 + 807) < 0)
  {
    operator delete(*(v10 + 784));
  }

  if (*(v10 + 783) < 0)
  {
    operator delete(*(v10 + 760));
  }

  if (*(v10 + 759) < 0)
  {
    operator delete(*(v10 + 736));
  }

  if (*(v10 + 735) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 703) < 0)
  {
    operator delete(*(v10 + 680));
  }

  if (*(v10 + 679) < 0)
  {
    operator delete(*(v10 + 656));
  }

  if (*(v10 + 655) < 0)
  {
    operator delete(*(v10 + 632));
  }

  if (*(v10 + 631) < 0)
  {
    operator delete(*(v10 + 608));
  }

  if (*(v10 + 607) < 0)
  {
    operator delete(*(v10 + 584));
  }

  if (*(v10 + 583) < 0)
  {
    operator delete(*(v10 + 560));
  }

  kaldi::SilencePhoneSet::~SilencePhoneSet((v10 + 488));
  a10 = (v10 + 464);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](v11, 0);
  quasar::Decoder::~Decoder(v10);
  _Unwind_Resume(a1);
}

void kaldi::SilencePhoneSet::~SilencePhoneSet(kaldi::SilencePhoneSet *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    operator delete(v3);
  }
}

void sub_1B5160934(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void quasar::HwcnConfidence::initOtherStuff(quasar::HwcnConfidence *this)
{
  v2 = this + 872;
  quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 234, this + 760, this + 784, &v22[0].__locale_);
  v3 = *&v22[0].__locale_;
  v22[0].__locale_ = 0;
  v22[1].__locale_ = 0;
  v4 = *(this + 120);
  *(v2 + 5) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v22[1].__locale_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22[1].__locale_);
    }
  }

  memset(&v44, 0, sizeof(v44));
  v43 = 0;
  kaldi::Input::Input(&v42, this + 680);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  kaldi::Input::Stream(v5);
  v7 = v6;
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v8 = std::locale::use_facet(v22, MEMORY[0x1E69E5318]);
  v9 = (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(v22);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, &v39, v9);
  if ((kaldi::SplitStringToIntegers<int>(&v39, ":", 1, &v44) & 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    v26 = 0u;
    *v23 = 0u;
    v24 = 0u;
    *&v22[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Invalid silence-phones string ", 30);
    if (v41 >= 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39;
    }

    if (v41 >= 0)
    {
      v20 = HIBYTE(v41);
    }

    else
    {
      v20 = v40;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v22);
  }

  kaldi::SilencePhoneSet::SilencePhoneSet(v22, &v44);
  *(this + 122) = v22[0].__locale_;
  *(this + 62) = v22[1];
  *(this + 252) = v23[0];
  std::vector<BOOL>::operator=(this + 64, &v23[1]);
  if ((this + 488) != v22)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 67, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23[1])
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  kaldi::Input::~Input(&v42);
  if (v44.__begin_)
  {
    v44.__end_ = v44.__begin_;
    operator delete(v44.__begin_);
  }

  v10 = *(this + 735);
  if (v10 < 0)
  {
    v10 = *(this + 90);
  }

  if (v10)
  {
    quasar::readMemMappedLockedFile(this + 89);
  }

  if ((*(this + 759) & 0x8000000000000000) == 0)
  {
    if (!*(this + 759))
    {
      goto LABEL_24;
    }

LABEL_23:
    quasar::readMemMappedLockedFile(this + 92);
  }

  if (*(this + 93))
  {
    goto LABEL_23;
  }

LABEL_24:
  quasar::HwcnConfidence::initArcFeatExtractors(this);
  v11 = *(this + 58);
  v12 = *(this + 59);
  while (v11 != v12)
  {
    v13 = *v11;
    v11 += 2;
    *(this + 246) += (*(*v13 + 16))(v13);
  }

  v14 = (this + 816);
  if (*(this + 839) < 0)
  {
    v15 = *(this + 103);
    if (!v15)
    {
      goto LABEL_34;
    }

    std::string::__init_copy_ctor_external(&v21, *v14, v15);
  }

  else
  {
    if (!*(this + 839))
    {
      goto LABEL_34;
    }

    *&v21.__r_.__value_.__l.__data_ = *v14;
    v21.__r_.__value_.__r.__words[2] = *(this + 104);
  }

  kaldi::WordHypLattice::StringToCriteria(&v21);
  *(this + 210) = v16;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_34:
  v17 = *(this + 871);
  if (v17 < 0)
  {
    v17 = *(this + 107);
  }

  if (v17)
  {
    std::allocate_shared[abi:ne200100]<quasar::CalibrationMap,std::allocator<quasar::CalibrationMap>,std::string &,0>();
  }
}