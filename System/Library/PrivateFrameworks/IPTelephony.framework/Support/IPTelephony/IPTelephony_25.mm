void sub_1E4DF3D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiServices::namesForServiceMask(int a1@<W0>, void *a3@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  BambiServices::nameArrayForServiceMask(a1, &v4);
  if (v4 != *(&v4 + 1))
  {
    ims::join<std::__wrap_iter<std::string const*>>();
  }

  std::string::basic_string[abi:ne200100]<0>(a3, &str_1_6);
  v6 = &v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1E4DF3E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void BambiServices::addServiceParameters(int a1, uint64_t a2, std::string **a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  memset(&__str, 0, sizeof(__str));
  if (BambiServices::kFeatureTagMmtel[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *BambiServices::kFeatureTagMmtel, *&BambiServices::kFeatureTagMmtel[8]);
  }

  else
  {
    __str = *BambiServices::kFeatureTagMmtel;
  }

  ims::addPercentEscapes(&__str, 0, 0);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  memset(&v41, 0, sizeof(v41));
  v7 = &v41;
  std::string::basic_string[abi:ne200100](&v41, size + 1);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v41.__r_.__value_.__r.__words[0];
  }

  v7->__r_.__value_.__s.__data_[0] = 34;
  v8 = &v7->__r_.__value_.__l.__data_ + 1;
  if (size)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v8, p_str, size);
  }

  *(v8 + size) = 0;
  std::string::push_back(&v41, 34);
  v45.__r_.__value_.__r.__words[0] = v41.__r_.__value_.__l.__size_;
  v10 = v41.__r_.__value_.__r.__words[0];
  *(v45.__r_.__value_.__r.__words + 7) = *(&v41.__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  memset(&v41, 0, sizeof(v41));
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    __str.__r_.__value_.__r.__words[0] = v10;
    __str.__r_.__value_.__l.__size_ = v45.__r_.__value_.__r.__words[0];
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v45.__r_.__value_.__r.__words + 7);
    *(&__str.__r_.__value_.__s + 23) = v11;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str.__r_.__value_.__r.__words[0] = v10;
    __str.__r_.__value_.__l.__size_ = v45.__r_.__value_.__r.__words[0];
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v45.__r_.__value_.__r.__words + 7);
    *(&__str.__r_.__value_.__s + 23) = v11;
  }

  std::string::basic_string[abi:ne200100]<0>(&v41, "+g.3gpp.icsi-ref");
  v45.__r_.__value_.__r.__words[0] = &v41;
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v41, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v12 + 7), &__str);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((a1 & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_22:
    if ((a1 & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "video");
  std::string::basic_string[abi:ne200100]<0>(&v41, &str_1_6);
  v45.__r_.__value_.__r.__words[0] = &__str;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &__str, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v13 + 7), &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((a1 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  std::string::basic_string[abi:ne200100]<0>(&__str, "+g.3gpp.smsip");
  std::string::basic_string[abi:ne200100]<0>(&v41, &str_1_6);
  v45.__r_.__value_.__r.__words[0] = &__str;
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &__str, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v14 + 7), &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((a1 & 8) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_32:
    if ((a1 & 8) == 0)
    {
      goto LABEL_38;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "audio");
  std::string::basic_string[abi:ne200100]<0>(&v41, &str_1_6);
  v45.__r_.__value_.__r.__words[0] = &__str;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &__str, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v15 + 7), &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  std::string::basic_string[abi:ne200100]<0>(&__str, "+g.gsma.rcs.ipcall");
  std::string::basic_string[abi:ne200100]<0>(&v41, &str_1_6);
  v45.__r_.__value_.__r.__words[0] = &__str;
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &__str, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v16 + 7), &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_42:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_48;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "text");
  std::string::basic_string[abi:ne200100]<0>(&v41, &str_1_6);
  v45.__r_.__value_.__r.__words[0] = &__str;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &__str, &std::piecewise_construct, &v45, &v40);
  std::string::operator=((v17 + 7), &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_48:
  memset(&__str, 0, sizeof(__str));
  memset(&v41, 0, sizeof(v41));
  if ((a1 & 0x80) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v45, "+g.gsma.rcs.cpm.pager-large");
    std::string::basic_string[abi:ne200100]<0>(&v40, &str_1_6);
    __p[0] = &v45;
    v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v45, &std::piecewise_construct, __p, &v44);
    std::string::operator=((v18 + 7), &v40);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if ((a1 & 0x200) != 0)
    {
    }
  }

  if ((a1 & 0x100) != 0)
  {
    if ((a1 & 0x200) != 0)
    {
    }

    if ((a1 & 0x200) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  if ((a1 & 0x200) != 0)
  {
LABEL_63:
    memset(&v45, 0, sizeof(v45));
    v20 = std::string::basic_string[abi:ne200100]<0>(&v45, "#=1,#=2");
    ims::addQuotes(v20, 0);
    std::string::basic_string[abi:ne200100]<0>(&v40, "+g.gsma.rcs.botversion");
    __p[0] = &v40;
    v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v40, &std::piecewise_construct, __p, &v44);
    std::string::operator=((v21 + 7), &v45);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    goto LABEL_67;
  }

  if ((a1 & 0x80) != 0)
  {
LABEL_67:
    v19 = "urn:urn-7:3gpp-application.ims.iari.rcs.geosms";
    goto LABEL_68;
  }

  if ((a1 & 0x1000) != 0)
  {
    v19 = "urn:urn-7:3gpp-application.ims.iari.rcs.fthttp";
LABEL_68:
  }

  if ((a1 & 0x400) == 0)
  {
    goto LABEL_73;
  }

  memset(&v45, 0, sizeof(v45));
  v22 = std::string::basic_string[abi:ne200100]<0>(&v45, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg");
  ims::addPercentEscapes(v22, 0, 0);
  ims::addQuotes(&v45, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "+g.3gpp.icsi-ref");
  __p[0] = &v40;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v40, &std::piecewise_construct, __p, &v44);
  std::string::operator=((v23 + 7), &v45);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_73:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_79;
    }
  }

  memset(&v45, 0, sizeof(v45));
  v24 = std::string::basic_string[abi:ne200100]<0>(&v45, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.largemsg");
  ims::addPercentEscapes(v24, 0, 0);
  ims::addQuotes(&v45, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "+g.3gpp.icsi-ref");
  __p[0] = &v40;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v40, &std::piecewise_construct, __p, &v44);
  std::string::operator=((v25 + 7), &v45);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_79:
  if ((a1 & 0x20000) != 0)
  {
    memset(&v45, 0, sizeof(v45));
    v26 = std::string::basic_string[abi:ne200100]<0>(&v45, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session");
    ims::addPercentEscapes(v26, 0, 0);
    ims::addQuotes(&v45, 0);
    std::string::basic_string[abi:ne200100]<0>(&v40, "+g.3gpp.icsi-ref");
    __p[0] = &v40;
    v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v40, &std::piecewise_construct, __p, &v44);
    std::string::operator=((v27 + 7), &v45);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

  if ((a1 & 0x40000) != 0)
  {
LABEL_84:
  }

LABEL_85:
  if ((a1 & 0x10000) != 0)
  {
    v28 = *a3;
    if (*a3)
    {
      if ((SHIBYTE(v28[9].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (!v28[9].__r_.__value_.__l.__size_)
        {
          goto LABEL_104;
        }
      }

      else if (!*(&v28[9].__r_.__value_.__s + 23))
      {
        goto LABEL_104;
      }

      memset(&v45, 0, sizeof(v45));
      v29 = std::string::basic_string[abi:ne200100]<0>(&v45, "v1");
      ims::addQuotes(v29, 0);
      std::string::basic_string[abi:ne200100]<0>(&v40, "+g.gsma.rcs.mls.mls-version");
      __p[0] = &v40;
      v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v40, &std::piecewise_construct, __p, &v44);
      std::string::operator=((v30 + 7), &v45);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      memset(&v40, 0, sizeof(v40));
      v31 = *a3;
      if (SHIBYTE((*a3)[9].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v31[9].__r_.__value_.__l.__data_, v31[9].__r_.__value_.__l.__size_);
      }

      else
      {
        v40 = v31[9];
      }

      ims::addQuotes(&v40, 0);
      std::string::basic_string[abi:ne200100]<0>(__p, "+g.gsma.rcs.mls.mls-kds");
      v44 = __p;
      v32 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), __p, &std::piecewise_construct, &v44, &v43);
      std::string::operator=((v32 + 7), &v40);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_104:
  v33 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __str.__r_.__value_.__l.__size_;
  }

  if (v33)
  {
    ims::addQuotes(&__str, 0);
    std::string::basic_string[abi:ne200100]<0>(&v45, "+g.3gpp.icsi-ref");
    v40.__r_.__value_.__r.__words[0] = &v45;
    v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v45, &std::piecewise_construct, &v40, __p);
    std::string::operator=((v34 + 7), &__str);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  v35 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  v36 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v41.__r_.__value_.__l.__size_;
  }

  if (v35)
  {
    ims::addQuotes(&v41, 0);
    std::string::basic_string[abi:ne200100]<0>(&v45, "+g.3gpp.iari-ref");
    v40.__r_.__value_.__r.__words[0] = &v45;
    v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 8), &v45, &std::piecewise_construct, &v40, __p);
    std::string::operator=((v37 + 7), &v41);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v36 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  if (v36 < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DF48F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::addParam(std::string *this, char *__s)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(this, 44);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  ims::addPercentEscapes(&__p, 0, 0);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = v8;
  }

  std::string::append(this, p_p, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E4DF4ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiServices::serviceFromKeyValue(char *a1, uint64_t a2)
{
  v4 = a1[23];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (a1[23] > 0xCu)
    {
      if (v4 != 13)
      {
        if (v4 != 16)
        {
          if (v4 != 18)
          {
            goto LABEL_64;
          }

          v5 = *a1 == 0x2E616D73672E672BLL && *(a1 + 1) == 0x616370692E736372;
          if (!v5 || *(a1 + 8) != 27756)
          {
            goto LABEL_64;
          }

          return 16;
        }

        if (*a1 != 0x2E707067332E672BLL || *(a1 + 1) != 0x6665722D69736369)
        {
          goto LABEL_64;
        }

LABEL_95:
        memset(&v86, 0, sizeof(v86));
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *a2, *(a2 + 8));
        }

        else
        {
          v86 = *a2;
        }

        ims::removeQuotes(&v86);
        ims::removePercentEscapes(&v86);
        v33 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
        v34 = v86.__r_.__value_.__r.__words[0];
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v86;
        }

        else
        {
          v42 = v86.__r_.__value_.__r.__words[0];
        }

        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v86.__r_.__value_.__l.__size_;
        }

        v44 = v42 + size;
        if (size >= 27)
        {
          v45 = size;
          v46 = v42;
          do
          {
            v47 = memchr(v46, 51, v45 - 26);
            if (!v47)
            {
              break;
            }

            if (*v47 == 0x7265732D70706733 && *(v47 + 1) == 0x736D692E65636976 && *(v47 + 2) == 0x6D6D2E697363692ELL && *(v47 + 19) == 0x6C65746D6D2E6973)
            {
              if (v47 != v44 && v47 - v42 != -1)
              {
                v16 = 1;
                goto LABEL_241;
              }

              break;
            }

            v46 = (v47 + 1);
            v45 = v44 - v46;
          }

          while (v44 - v46 >= 27);
          if (size >= 43)
          {
            v63 = size;
            v64 = v42;
            do
            {
              v65 = memchr(v64, 117, v63 - 42);
              if (!v65)
              {
                break;
              }

              v66 = v65;
              if (!memcmp(v65, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg", 0x2BuLL))
              {
                if (v66 != v44 && v66 - v42 != -1)
                {
                  v16 = 128;
                  goto LABEL_202;
                }

                break;
              }

              v64 = (v66 + 1);
              v63 = v44 - (v66 + 1);
            }

            while (v63 >= 43);
          }
        }

        v16 = 0;
LABEL_202:
        if (size >= 47)
        {
          v71 = size;
          v72 = v42;
          do
          {
            v73 = memchr(v72, 117, v71 - 46);
            if (!v73)
            {
              break;
            }

            v74 = v73;
            if (!memcmp(v73, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session", 0x2FuLL))
            {
              if (v74 != v44 && v74 - v42 != -1)
              {
                v16 = v16 | 0x100;
              }

              break;
            }

            v72 = (v74 + 1);
            v71 = v44 - (v74 + 1);
          }

          while (v71 >= 47);
        }

        if (size >= 37)
        {
          v75 = v42;
          while (1)
          {
            v76 = memchr(v75, 51, size - 36);
            if (!v76)
            {
              break;
            }

            v77 = v76;
            if (!memcmp(v76, "3gpp-service.ims.icsi.gsma.videoshare", 0x25uLL))
            {
              if (v77 != v44 && v77 - v42 != -1)
              {
                v16 = v16 | 0x8000;
              }

              goto LABEL_241;
            }

            v75 = (v77 + 1);
            size = v44 - (v77 + 1);
            if (size < 37)
            {
              goto LABEL_241;
            }
          }
        }

        goto LABEL_241;
      }

      if (*a1 != 0x2E707067332E672BLL || *(a1 + 5) != 0x7069736D732E7070)
      {
        goto LABEL_64;
      }

      return 4;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        if (*a1 != 1701079414 || a1[4] != 111)
        {
          if (*a1 != 1768191329 || a1[4] != 111)
          {
            goto LABEL_64;
          }

          return 8;
        }

        return 2;
      }

LABEL_64:
      v7 = a1[23];
      v8 = a1;
      goto LABEL_65;
    }

    if (*a1 != 1954047348)
    {
      goto LABEL_64;
    }

    return 32;
  }

  v8 = *a1;
  v7 = *(a1 + 1);
  if (v7 <= 12)
  {
    if (v7 == 4)
    {
      if (*v8 != 1954047348)
      {
        goto LABEL_98;
      }

      return 32;
    }

    if (v7 == 5)
    {
      if (*v8 != 1701079414 || v8[4] != 111)
      {
        if (*v8 != 1768191329 || v8[4] != 111)
        {
          goto LABEL_98;
        }

        return 8;
      }

      return 2;
    }
  }

  else
  {
    switch(v7)
    {
      case 13:
        if (*v8 != 0x2E707067332E672BLL || *(v8 + 5) != 0x7069736D732E7070)
        {
          goto LABEL_98;
        }

        return 4;
      case 16:
        if (*v8 != 0x2E707067332E672BLL || *(v8 + 1) != 0x6665722D69736369)
        {
          goto LABEL_98;
        }

        goto LABEL_95;
      case 18:
        if (*v8 != 0x2E616D73672E672BLL || *(v8 + 1) != 0x616370692E736372 || *(v8 + 8) != 27756)
        {
          v11 = v8 + 18;
          v7 = 18;
          goto LABEL_67;
        }

        return 16;
    }
  }

LABEL_65:
  if (v7 < 17)
  {
    goto LABEL_81;
  }

  v11 = &v8[v7];
LABEL_67:
  v19 = v8;
  do
  {
    v20 = memchr(v19, 43, v7 - 16);
    if (!v20)
    {
      break;
    }

    if (*v20 == 0x2E616D73672E672BLL && *(v20 + 1) == 0x6F6273692E736372 && v20[16] == 116)
    {
      if (v20 != v11 && v20 - v8 != -1)
      {
        return 512;
      }

      break;
    }

    v19 = v20 + 1;
    v7 = v11 - v19;
  }

  while (v11 - v19 >= 17);
LABEL_81:
  if ((v4 & 0x80) != 0)
  {
LABEL_98:
    if (*(a1 + 1) != 16)
    {
      goto LABEL_104;
    }

    v23 = *a1;
    goto LABEL_100;
  }

  v23 = a1;
  if (v4 != 16)
  {
    return 0;
  }

LABEL_100:
  v27 = *v23;
  v26 = *(v23 + 1);
  if (v27 != 0x2E707067332E672BLL || v26 != 0x6665722D69726169)
  {
LABEL_104:
    v16 = 0;
    if ((v4 & 0x80) != 0 && *(a1 + 1) == 23)
    {
      v29 = *a1;
      v30 = 0x2B672E67736D612ELL;
      v31 = bswap64(**a1);
      if (v31 == 0x2B672E67736D612ELL && (v30 = 0x7263732E6D6C732ELL, v31 = bswap64(*(v29 + 8)), v31 == 0x7263732E6D6C732ELL) && (v30 = 0x2E6D6C732D6B6473, v31 = bswap64(*(v29 + 15)), v31 == 0x2E6D6C732D6B6473))
      {
        v32 = 0;
      }

      else if (v31 < v30)
      {
        v32 = -1;
      }

      else
      {
        v32 = 1;
      }

      return (v32 == 0) << 16;
    }

    return v16;
  }

  memset(&v86, 0, sizeof(v86));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *a2, *(a2 + 8));
  }

  else
  {
    v86 = *a2;
  }

  ims::removeQuotes(&v86);
  ims::removePercentEscapes(&v86);
  v33 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
  v34 = v86.__r_.__value_.__r.__words[0];
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v86;
  }

  else
  {
    v35 = v86.__r_.__value_.__r.__words[0];
  }

  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v86.__r_.__value_.__l.__size_;
  }

  v37 = v35 + v36;
  if (v36 >= 46)
  {
    v38 = v36;
    v39 = v35;
    do
    {
      v40 = memchr(v39, 117, v38 - 45);
      if (!v40)
      {
        break;
      }

      v41 = v40;
      if (!memcmp(v40, "urn:urn-7:3gpp-application.ims.iari.rcs.fthttp", 0x2EuLL))
      {
        if (v41 != v37 && v41 - v35 != -1)
        {
          v16 = 4096;
          goto LABEL_158;
        }

        break;
      }

      v39 = (v41 + 1);
      v38 = v37 - (v41 + 1);
    }

    while (v38 >= 46);
  }

  v16 = 0;
LABEL_158:
  if (v36 > 46)
  {
    v51 = v36;
    v52 = v35;
    do
    {
      v53 = memchr(v52, 117, v51 - 46);
      if (!v53)
      {
        break;
      }

      v54 = v53;
      if (!memcmp(v53, "urn:urn-7:3gpp-application.ims.iari.rcs.geopush", 0x2FuLL))
      {
        if (v54 != v37 && v54 - v35 != -1)
        {
LABEL_174:
          v16 = v16 | 0x2000;
          goto LABEL_175;
        }

        break;
      }

      v52 = (v54 + 1);
      v51 = v37 - (v54 + 1);
    }

    while (v51 > 46);
  }

  if (v36 >= 46)
  {
    v55 = v36;
    v56 = v35;
    do
    {
      v57 = memchr(v56, 117, v55 - 45);
      if (!v57)
      {
        break;
      }

      v58 = v57;
      if (!memcmp(v57, "urn:urn-7:3gpp-application.ims.iari.rcs.geosms", 0x2EuLL))
      {
        if (v58 == v37 || v58 - v35 == -1)
        {
          break;
        }

        goto LABEL_174;
      }

      v56 = (v58 + 1);
      v55 = v37 - (v58 + 1);
    }

    while (v55 >= 46);
LABEL_175:
    if (v36 > 46)
    {
      v59 = v36;
      v60 = v35;
      do
      {
        v61 = memchr(v60, 117, v59 - 46);
        if (!v61)
        {
          break;
        }

        v62 = v61;
        if (!memcmp(v61, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot", 0x2FuLL))
        {
          if (v62 != v37 && v62 - v35 != -1)
          {
LABEL_222:
            v16 = v16 | 0x100;
            goto LABEL_223;
          }

          break;
        }

        v60 = (v62 + 1);
        v59 = v37 - (v62 + 1);
      }

      while (v59 >= 47);
      if (v36 >= 50)
      {
        v67 = v36;
        v68 = v35;
        do
        {
          v69 = memchr(v68, 117, v67 - 49);
          if (!v69)
          {
            break;
          }

          v70 = v69;
          if (!memcmp(v69, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa", 0x32uLL))
          {
            if (v70 == v37 || v70 - v35 == -1)
            {
              break;
            }

            goto LABEL_222;
          }

          v68 = (v70 + 1);
          v67 = v37 - (v70 + 1);
        }

        while (v67 >= 50);
      }
    }
  }

LABEL_223:
  if (v36 >= 43)
  {
    v78 = v36;
    v79 = v35;
    do
    {
      v80 = memchr(v79, 117, v78 - 42);
      if (!v80)
      {
        break;
      }

      v81 = v80;
      if (!memcmp(v80, "urn:urn-7:3gpp-application.ims.iari.rcse.im", 0x2BuLL))
      {
        if (v81 != v37 && v81 - v35 != -1)
        {
          v16 = v16 | 0x100;
        }

        break;
      }

      v79 = (v81 + 1);
      v78 = v37 - (v81 + 1);
    }

    while (v78 >= 43);
  }

  if (v36 >= 43)
  {
    v82 = v35;
    do
    {
      v83 = memchr(v82, 117, v36 - 42);
      if (!v83)
      {
        break;
      }

      v84 = v83;
      if (!memcmp(v83, "urn:urn-7:3gpp-application.ims.iari.gsma-is", 0x2BuLL))
      {
        if (v84 != v37 && v84 - v35 != -1)
        {
          v16 = v16 | 0x4000;
        }

        break;
      }

      v82 = (v84 + 1);
      v36 = v37 - (v84 + 1);
    }

    while (v36 >= 43);
  }

LABEL_241:
  if (v33 < 0)
  {
    operator delete(v34);
  }

  return v16;
}

void sub_1E4DF54E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiServices::serviceMaskFromParameters(BambiServices *this, const SipParameterMap *a2)
{
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 == this + 16)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v5 = BambiServices::serviceFromKeyValue(v2 + 32, (v2 + 56));
    v6 = *(v2 + 1);
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
        v7 = *(v2 + 2);
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v4 = v5 | v4;
    v2 = v7;
  }

  while (v7 != v3);
  return v4;
}

uint64_t _GLOBAL__sub_I_BambiServices_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(BambiServices::kFeatureTagMmtel, "urn:urn-7:3gpp-service.ims.icsi.mmtel");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, BambiServices::kFeatureTagMmtel, &dword_1E4C3F000);
}

void SipCallWaitingInfoBody::generateXml(SipCallWaitingInfoBody *this@<X0>, std::string *a2@<X8>)
{
  v7 = 0u;
  v6 = 0u;
  v4 = &unk_1F5EF5490;
  memset(v5, 0, sizeof(v5));
  std::vector<bambi::XmlTreeNs>::__init_with_size[abi:ne200100]<bambi::XmlTreeNs*,bambi::XmlTreeNs*>(v5, *(this + 6), *(this + 7), 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 4));
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 9), *(this + 10));
  }

  else
  {
    v6 = *(this + 72);
    *&v7 = *(this + 11);
  }

  v4 = &unk_1F5EF1328;
  BYTE8(v7) = *(this + 96);
  bambi::XmlTreeItem::encode(a2, &v4, 0, 1);
  bambi::XmlTreeItem::~XmlTreeItem(&v4);
}

void sub_1E4DF5728(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

void SipCallWaitingInfoBody::~SipCallWaitingInfoBody(void **this)
{
  *this = &unk_1F5ED16C0;
  bambi::XmlTreeItem::~XmlTreeItem(this + 5);
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED16C0;
  bambi::XmlTreeItem::~XmlTreeItem(this + 5);
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DF59A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  *v3 = &unk_1F5ED9B90;
  if (*(v3 + 31) < 0)
  {
    operator delete(*(v3 + 8));
  }

  MEMORY[0x1E69235B0](v3, v4);
  _Unwind_Resume(a1);
}

void ImsDnsResolver::resolveHostname(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  LOBYTE(__p) = 0;
  (*(*a1 + 32))(a1, a2, a3, &__p, a4);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_1E4DF5B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsDnsResolver::cleanAddressesAndPerformBlock(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 == v7)
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    do
    {
      v8 = (*(**v6 + 152))();
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v9 == 3)
      {
        if (v10 >= 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = *v8;
        }

        if (*v11 ^ IpAddress::kAddressTypeIPv4 | *(v11 + 2) ^ 0x34)
        {
          v12 = &v28;
        }

        else
        {
          v12 = &v25;
        }
      }

      else
      {
        v12 = &v28;
      }

      std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](v12, v6++);
    }

    while (v6 != v7);
    v13 = v23;
    v14 = v28;
    v15 = v29;
  }

  std::vector<std::shared_ptr<IpAddress>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<IpAddress>*>,std::__wrap_iter<std::shared_ptr<IpAddress>*>>(&v22, v13, v14, v15, (v15 - v14) >> 4);
  std::vector<std::shared_ptr<IpAddress>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<IpAddress>*>,std::__wrap_iter<std::shared_ptr<IpAddress>*>>(&v22, v23, v25, v26, (v26 - v25) >> 4);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16[0] = &unk_1F5EBDEF8;
  v16[1] = &_bambiDomain;
  v17 = 0;
  (*(a4 + 16))(a4, a2, v16, &v22);
  ImsResult::~ImsResult(v16);
  v16[0] = &v22;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v16);
  v16[0] = &v25;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v16);
  v16[0] = &v28;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v16);
}

void sub_1E4DF5D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  ImsResult::~ImsResult(&a9);
  a9 = &a20;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a23;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v23 - 88);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [15]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char const*>(uint64_t a1, const char **a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = strlen(*a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, v5);
  *(v3 + 17) = 0;
  return a1;
}

void std::vector<std::shared_ptr<IpAddress>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<IpAddress>*>,std::__wrap_iter<std::shared_ptr<IpAddress>*>>(void **result, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<IpAddress>>::__move_range(result, a2, result[1], &a2[16 * a5]);
        v18 = &v6[2 * a5];
      }

      else
      {
        result[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<IpAddress>>,std::shared_ptr<IpAddress>*,std::shared_ptr<IpAddress>*,std::shared_ptr<IpAddress>*>(result, (a3 + v16), a4, result[1]);
        if (v17 < 1)
        {
          return;
        }

        std::vector<std::shared_ptr<IpAddress>>::__move_range(result, a2, v10, &a2[16 * a5]);
        v18 = (v6 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<IpAddress> *,std::shared_ptr<IpAddress> *,std::shared_ptr<IpAddress> *>(v6, v18, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 + ((v10 - *result) >> 4);
      if (v12 >> 60)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 3 > v12)
      {
        v12 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v31 = result;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(result, v15);
      }

      v19 = 16 * (v13 >> 4);
      v30 = 0;
      v20 = (v19 + 16 * a5);
      v21 = v19;
      do
      {
        v22 = v6[1];
        *v21 = *v6;
        *(v21 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v21 += 16;
        v6 += 2;
      }

      while (v21 != v20);
      memcpy(v20, a2, result[1] - a2);
      v23 = *result;
      v24 = &v20[result[1] - a2];
      result[1] = a2;
      v25 = (a2 - v23);
      v26 = (v19 - (a2 - v23));
      memcpy(v26, v23, v25);
      v27 = *result;
      *result = v26;
      result[1] = v24;
      v28 = result[2];
      result[2] = v30;
      v29[2] = v27;
      v30 = v28;
      v29[0] = v27;
      v29[1] = v27;
      std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(v29);
    }
  }
}

void std::vector<std::shared_ptr<IpAddress>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 8) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = (v9 + v5);
      v11 = *(v9 + v5);
      *v10 = 0;
      v10[1] = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<IpAddress>>,std::shared_ptr<IpAddress>*,std::shared_ptr<IpAddress>*,std::shared_ptr<IpAddress>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
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
    v9 = v4;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IpAddress>>,std::shared_ptr<IpAddress>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<IpAddress>>,std::shared_ptr<IpAddress>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<IpAddress> *,std::shared_ptr<IpAddress> *,std::shared_ptr<IpAddress> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

void SipSupportedHeader::~SipSupportedHeader(char **this)
{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void RTPTransportManager::~RTPTransportManager(char **this)
{
  *this = &unk_1F5ED17F0;
  v2 = this + 2;
  std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy((this + 1), this[2]);
  this[1] = v2;
  this[3] = 0;
  *v2 = 0;
  std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>>>::destroy(this[5]);
  std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy((this + 1), *v2);
}

{
  RTPTransportManager::~RTPTransportManager(this);

  JUMPOUT(0x1E69235B0);
}

double RTPTransportManager::setupTransport@<D0>(RTPTransportManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, NSObject **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, SipStack **a10)
{
  if (*a10)
  {
    v14 = SipStack::prefs(*a10);
    ImsPrefs::UseEphemeralRTPPorts(v14);
    if (TelephonyRadiosGetRadioVendor() == 1 && *(*a10 + 296) == 1)
    {
      v15 = std::string::basic_string[abi:ne200100]<0>(&v56, "rtp.transport");
      v50[0] = 0;
      v53 = 0;
      v16 = ims::debug(v15, v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Using higher RTP port for an emergency call to work around MAV20 baseband bug.", 78);
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      if (v53 == 1 && v52 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }
    }

    v48 = 0;
    v49 = 0;
    (*(**a2 + 32))(&v48);
    v17 = *(*a5 + 448);
    v32 = *(*a5 + 456);
    while (v17 != v32)
    {
      v18 = *(v17 + 12);
      if (v18 == 4 || *(v17 + 16))
      {
        if (v18 == a6)
        {
          v19 = std::string::basic_string[abi:ne200100]<0>(&v56, "rtp.transport");
          v44[0] = 0;
          v47 = 0;
          v20 = ims::debug(v19, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Setting up sockets for ", 23);
          *(v20 + 17) = 0;
          (*(*v20 + 32))(v20, &v54);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " session [sessionId=", 20);
          *(v20 + 17) = 0;
          MEMORY[0x1E69233B0](*(v20 + 8), a1);
          *(v20 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "]", 1);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v47 == 1 && v46 < 0)
          {
            operator delete(v45);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          v42 = v48;
          v43 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = a7[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21[1], 1uLL, memory_order_relaxed);
          }

          v22 = *(a8 + 8);
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v58 = a1;
          LODWORD(v54) = *(a4 + 4);
          std::allocate_shared[abi:ne200100]<ImsUdpSocket,std::allocator<ImsUdpSocket>,decltype(nullptr),DscpClass,0>(&v56, &v54);
        }

        v23 = std::string::basic_string[abi:ne200100]<0>(&v56, "rtp.transport");
        v38[0] = 0;
        v41 = 0;
        v24 = ims::debug(v23, v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Skipping socket creation for media type ", 40);
        *(v24 + 17) = 0;
        (*(*v24 + 32))(v24, &v54);
        (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v24 + 17) = 0;
        if (v55 < 0)
        {
          operator delete(v54);
        }

        if (v41 != 1 || (v40 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v25 = v39;
      }

      else
      {
        v26 = std::string::basic_string[abi:ne200100]<0>(&v56, "rtp.transport");
        v34[0] = 0;
        v37 = 0;
        v27 = ims::debug(v26, v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Skipping socket creation for session with 0 port", 48);
        *(v27 + 17) = 0;
        (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v27 + 17) = 0;
        if (v37 != 1 || (v36 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v25 = v35;
      }

      operator delete(v25);
LABEL_36:
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }

      v17 += 200;
    }

    result = 0.0;
    *(a9 + 24) = 0u;
    *(a9 + 40) = 0u;
    *(a9 + 56) = 0u;
    *(a9 + 72) = 0u;
    *a9 = &unk_1F5EBDEF8;
    *(a9 + 8) = &_bambiDomain;
    *(a9 + 16) = 0;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }
  }

  else
  {
    result = 0.0;
    *(a9 + 24) = 0u;
    *(a9 + 40) = 0u;
    *(a9 + 56) = 0u;
    *(a9 + 72) = 0u;
    *a9 = &unk_1F5EBDEF8;
    *(a9 + 8) = &_bambiDomain;
    *(a9 + 16) = 0x40000000;
  }

  return result;
}

void sub_1E4DF7788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a66 == 1 && a65 < 0)
  {
    operator delete(__p);
  }

  if (*(v66 - 201) < 0)
  {
    operator delete(*(v66 - 224));
  }

  _Unwind_Resume(a1);
}

void sub_1E4DF7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x208]) == 1 && a66 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  JUMPOUT(0x1E4DF7AB0);
}

void RTPTransportManager::setupTransport(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, int a5@<W5>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  if (*a9)
  {
    v12 = SipStack::prefs(*a9);
    ImsPrefs::UseEphemeralRTPPorts(v12);
    if (TelephonyRadiosGetRadioVendor() == 1 && *(*a9 + 296) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v50, "rtp.transport");
      v44[0] = 0;
      v47 = 0;
      v13 = ims::debug(&v50, v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Using higher RTP port for an emergency call to work around MAV20 baseband bug.", 78);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v47 == 1 && v46 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50);
      }
    }

    v42 = 0;
    v43 = 0;
    (*(**a2 + 32))(&v42);
    v27 = *(*a4 + 456);
    if (*(*a4 + 448) != v27)
    {
      v14 = *(*a4 + 448);
      do
      {
        v28 = v14;
        v15 = *(v14 + 3);
        if (v15 == 4 || *(v14 + 2))
        {
          if (v15 == a5)
          {
            std::string::basic_string[abi:ne200100]<0>(&v50, "rtp.transport");
            v38[0] = 0;
            v41 = 0;
            v16 = ims::debug(&v50, v38);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Setting up NW Paths for ", 24);
            *(v16 + 17) = 0;
            (*(*v16 + 32))(v16, &v48);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " session [sessionId=", 20);
            *(v16 + 17) = 0;
            MEMORY[0x1E69233B0](*(v16 + 8), a1);
            *(v16 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
            *(v16 + 17) = 0;
            (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v16 + 17) = 0;
            if (SHIBYTE(v49) < 0)
            {
              operator delete(v48);
            }

            if (v41 == 1 && v40 < 0)
            {
              operator delete(v39);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50);
            }

            v17 = *(a9 + 8);
            v37[0] = *a9;
            v37[1] = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
            }

            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = a6[1];
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = a7[1];
            if (v19)
            {
              atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
            }

            v52[1] = 0;
            v52[2] = a1;
            v52[0] = 0;
            std::allocate_shared[abi:ne200100]<ImsRtpNw,std::allocator<ImsRtpNw>,std::shared_ptr<SipStack> const&,0>(v52, v37);
          }

          std::string::basic_string[abi:ne200100]<0>(&v50, "rtp.transport");
          v33[0] = 0;
          v36 = 0;
          v20 = ims::debug(&v50, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Skipping NW path creation for media type ", 41);
          *(v20 + 17) = 0;
          (*(*v20 + 32))(v20, &v48);
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (SHIBYTE(v49) < 0)
          {
            operator delete(v48);
          }

          if (v36 != 1 || (v35 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          v21 = v34;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v50, "rtp.transport");
          v29[0] = 0;
          v32 = 0;
          v22 = ims::debug(&v50, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Skipping NW path creation for session with 0 port", 49);
          *(v22 + 17) = 0;
          (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v22 + 17) = 0;
          if (v32 != 1 || (v31 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          v21 = v30;
        }

        operator delete(v21);
LABEL_39:
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50);
        }

        v14 = (v28 + 200);
      }

      while ((v28 + 200) != v27);
    }

    *(a8 + 24) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 56) = 0u;
    *(a8 + 72) = 0u;
    *a8 = &unk_1F5EBDEF8;
    *(a8 + 8) = &_bambiDomain;
    *(a8 + 16) = 0;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }
  }

  else
  {
    *(a8 + 24) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 56) = 0u;
    *(a8 + 72) = 0u;
    *a8 = &unk_1F5EBDEF8;
    *(a8 + 8) = &_bambiDomain;
    *(a8 + 16) = 0x40000000;
  }
}

void sub_1E4DF9174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, std::__shared_weak_count *a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_weak(a65);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  v68 = *(v66 - 128);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v69 = a19;
  v70 = a20;
  v71 = *(v66 - 112);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    v69 = a19;
    v70 = a20;
    if (!a21)
    {
LABEL_7:
      if (!v70)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if (!a21)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_weak(a21);
  v69 = a19;
  v70 = a20;
  if (!a20)
  {
LABEL_8:
    if (!v69)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  v69 = a19;
  if (!a19)
  {
LABEL_10:
    if (a43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a43);
    }

    if (a63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a63);
    }

    _Unwind_Resume(a1);
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  goto LABEL_10;
}

void RTPTransportManager::removeTransport(RTPTransportManager *this)
{
  v2 = qword_1EE2BD278;
  if (qword_1EE2BD278)
  {
    v3 = &qword_1EE2BD278;
    v4 = qword_1EE2BD278;
    do
    {
      v5 = *(v4 + 32);
      v6 = v5 >= this;
      v7 = v5 < this;
      if (v6)
      {
        v3 = v4;
      }

      v4 = *(v4 + 8 * v7);
    }

    while (v4);
    if (v3 != &qword_1EE2BD278 && v3[4] <= this)
    {
      v9 = v3[5];
      v10 = v3[6];
      v8 = v3 + 5;
      if (v9 != v10)
      {
        while (1)
        {
          v12 = *v9;
          v11 = v9[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v36, "rtp.transport");
          v32[0] = 0;
          v35 = 0;
          v13 = ims::debug(v36, v32);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Deleting socket for port ", 25);
          *(v13 + 17) = 0;
          (*(*v12 + 72))(&v30, v12);
          v14 = (*(*v30 + 56))(v30);
          MEMORY[0x1E6923390](*(v13 + 8), v14);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v35 == 1 && v34 < 0)
          {
            operator delete(__p);
          }

          if (v37 < 0)
          {
            break;
          }

          if (v11)
          {
            goto LABEL_19;
          }

LABEL_20:
          v9 += 2;
          if (v9 == v10)
          {
            goto LABEL_24;
          }
        }

        operator delete(v36[0]);
        if (!v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_20;
      }

LABEL_24:
      std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100](v8);
      v2 = qword_1EE2BD278;
    }

    if (v2)
    {
      v15 = &qword_1EE2BD278;
      v16 = v2;
      do
      {
        v17 = v16[4];
        v6 = v17 >= this;
        v18 = v17 < this;
        if (v6)
        {
          v15 = v16;
        }

        v16 = v16[v18];
      }

      while (v16);
      if (v15 != &qword_1EE2BD278 && v15[4] <= this)
      {
        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          v21 = v15;
          do
          {
            v20 = v21[2];
            v22 = *v20 == v21;
            v21 = v20;
          }

          while (!v22);
        }

        if (qword_1EE2BD270 == v15)
        {
          qword_1EE2BD270 = v20;
        }

        --qword_1EE2BD280;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v2, v15);
        v36[0] = v15 + 5;
        std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v36);
        operator delete(v15);
      }
    }
  }

  if (qword_1EE2BD290)
  {
    v23 = &qword_1EE2BD290;
    v24 = qword_1EE2BD290;
    do
    {
      v25 = *(v24 + 32);
      v6 = v25 >= this;
      v26 = v25 < this;
      if (v6)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * v26);
    }

    while (v24);
    if (v23 != &qword_1EE2BD290 && v23[4] <= this)
    {
      v27 = v23[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        v29 = v23;
        do
        {
          v28 = v29[2];
          v22 = *v28 == v29;
          v29 = v28;
        }

        while (!v22);
      }

      if (qword_1EE2BD288 == v23)
      {
        qword_1EE2BD288 = v28;
      }

      --qword_1EE2BD298;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BD290, v23);
      v36[0] = v23 + 5;
      std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](v36);
      operator delete(v23);
    }
  }
}

void sub_1E4DF99A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<ImsUdpSocketInterface>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

void std::vector<std::shared_ptr<ImsRtpNw>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__throw_length_error[abi:ne200100]();
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

void RTPTransportManager::getTransport(uint64_t *__return_ptr a1@<X8>, RTPTransportManager *this@<X0>, int a3@<W1>)
{
  v4 = qword_1EE2BD278;
  if (!qword_1EE2BD278)
  {
    goto LABEL_18;
  }

  v6 = &qword_1EE2BD278;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= this;
    v9 = v7 < this;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == &qword_1EE2BD278 || v6[4] > this || (v10 = v6[5], v11 = v6[6], v10 == v11))
  {
LABEL_18:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v13 = *v10;
      v12 = v10[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 72))(&v15, v13);
      v14 = (*(*v15 + 56))(v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v14 == a3)
      {
        break;
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v10 += 2;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    *a1 = v13;
    a1[1] = v12;
  }
}

void sub_1E4DF9D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *v10 = v12;
  v10[1] = v11;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RTPTransportManager::getTransports@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = qword_1EE2BD278;
  if (!qword_1EE2BD278)
  {
    goto LABEL_9;
  }

  v3 = &qword_1EE2BD278;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= this;
    v6 = v4 < this;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != &qword_1EE2BD278 && v3[4] <= this)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__init_with_size[abi:ne200100]<std::shared_ptr<ImsUdpSocketInterface>*,std::shared_ptr<ImsUdpSocketInterface>*>(a2, v3[5], v3[6], (v3[6] - v3[5]) >> 4);
  }

  else
  {
LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void RTPTransportManager::getNwTransport(uint64_t *__return_ptr a1@<X8>, RTPTransportManager *this@<X0>, int a3@<W1>)
{
  v4 = qword_1EE2BD290;
  if (!qword_1EE2BD290)
  {
    goto LABEL_16;
  }

  v6 = &qword_1EE2BD290;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= this;
    v9 = v7 < this;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == &qword_1EE2BD290 || v6[4] > this || (v10 = v6[5], v11 = v6[6], v10 == v11))
  {
LABEL_16:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v13 = *v10;
      v12 = v10[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (nw_endpoint_get_port(*(v13 + 56)) == a3)
      {
        break;
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v10 += 2;
      if (v10 == v11)
      {
        goto LABEL_16;
      }
    }

    *a1 = v13;
    a1[1] = v12;
  }
}

void sub_1E4DF9ED8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void RTPTransportManager::clearAll(RTPTransportManager *this)
{
  v1 = qword_1EE2BD270;
  if (qword_1EE2BD270 != &qword_1EE2BD278)
  {
    do
    {
      v2 = v1[5];
      v11 = 0;
      v12 = 0;
      v10 = 0;
      std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__init_with_size[abi:ne200100]<std::shared_ptr<ImsUdpSocketInterface>*,std::shared_ptr<ImsUdpSocketInterface>*>(&v10, v2, v1[6], (v1[6] - v2) >> 4);
      v3 = v10;
      v4 = v11;
      if (v10 != v11)
      {
        do
        {
          v5 = *(v3 + 8);
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          }

          v3 += 16;
        }

        while (v3 != v4);
        v3 = v10;
        v4 = v11;
      }

      while (v4 != v3)
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      v11 = v3;
      v13 = &v10;
      std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v13);
      v7 = v1[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != &qword_1EE2BD278);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy(&qword_1EE2BD270, qword_1EE2BD278);
  qword_1EE2BD270 = &qword_1EE2BD278;
  qword_1EE2BD280 = 0;
  qword_1EE2BD278 = 0;
}

uint64_t *std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__init_with_size[abi:ne200100]<std::shared_ptr<ImsUdpSocketInterface>*,std::shared_ptr<ImsUdpSocketInterface>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4DFA0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(a1, a2);
  }

  std::vector<std::shared_ptr<ImsUdpSocketInterface>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ImsUdpSocketInterface>>,std::shared_ptr<ImsUdpSocketInterface>*,std::shared_ptr<ImsUdpSocketInterface>*,std::shared_ptr<ImsUdpSocketInterface>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
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
    v9 = v4;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ImsUdpSocketInterface>>,std::shared_ptr<ImsUdpSocketInterface>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ImsUdpSocketInterface>>,std::shared_ptr<ImsUdpSocketInterface>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<BambiConferenceParticipant>>,std::shared_ptr<BambiConferenceParticipant>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void sub_1E4DFA334(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsUdpSocket>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsUdpSocketInterface>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(unint64_t a1, uint64_t **a2)
{
  v2 = qword_1EE2BD278;
  if (!qword_1EE2BD278)
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

void sub_1E4DFA5F8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ImsRtpNw>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED1870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::shared_ptr<ImsRtpNw>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(unint64_t a1, uint64_t **a2)
{
  v2 = qword_1EE2BD290;
  if (!qword_1EE2BD290)
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

uint64_t _GLOBAL__sub_I_RTPTransportManager_cpp()
{
  qword_1EE2BD278 = 0;
  RTPTransportManager::_transportManager = &unk_1F5ED17F0;
  qword_1EE2BD270 = &qword_1EE2BD278;
  qword_1EE2BD298 = 0;
  qword_1EE2BD290 = 0;
  qword_1EE2BD280 = 0;
  qword_1EE2BD288 = &qword_1EE2BD290;
  return __cxa_atexit(RTPTransportManager::~RTPTransportManager, &RTPTransportManager::_transportManager, &dword_1E4C3F000);
}

void SipUssdData::SipUssdData(SipUssdData *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "ussd-data");
  bambi::XmlTreeItem::XmlTreeItem(v2, __p, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5ED18C0;
  *(this + 1) = &unk_1F5ED1938;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
}

void sub_1E4DFA8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUssdData::SipUssdData(SipUssdData *this, const SipUssdData *a2)
{
  *this = &unk_1F5ED5818;
  v4 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "ussd-data");
  bambi::XmlTreeItem::XmlTreeItem(v4, __p, 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5ED18C0;
  *(this + 1) = &unk_1F5ED1938;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  std::string::operator=((this + 64), (a2 + 64));
  std::string::operator=((this + 88), (a2 + 88));
  *(this + 28) = *(a2 + 28);
}

void sub_1E4DFA9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUssdData::SipUssdData(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *a1 = &unk_1F5ED5818;
  v6 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "ussd-data");
  bambi::XmlTreeItem::XmlTreeItem(v6, __p, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5ED18C0;
  *(a1 + 8) = &unk_1F5ED1938;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  std::string::operator=((a1 + 88), a2);
  std::string::operator=((a1 + 64), a3);
  return a1;
}

void sub_1E4DFAB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *SipUssdData::setText(std::string *result, uint64_t **a2, std::string *__str)
{
  v3 = result;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
    if (v4 != 8)
    {
      if (v4 != 10)
      {
        if (v4 != 11)
        {
          return result;
        }

LABEL_10:
        if (*a2 != 0x7274732D64737375 || *(a2 + 3) != 0x676E697274732D64)
        {
          if (*a2 != 0x632D746C75736572 || *(a2 + 3) != 0x65646F632D746C75)
          {
            return result;
          }

LABEL_32:
          result = ims::strToUint32(__str, 0);
          LODWORD(v3[4].__r_.__value_.__r.__words[2]) = result;
          return result;
        }

        v11 = (result + 88);
        goto LABEL_38;
      }

      if (*a2 == 0x6F632D726F727265 && *(a2 + 4) == 25956)
      {
        goto LABEL_32;
      }

      return result;
    }

    v9 = *a2;
LABEL_34:
    if (v9 != 0x65676175676E616CLL)
    {
      return result;
    }

    v11 = (result + 64);
LABEL_38:

    return std::string::operator=(v11, __str);
  }

  v5 = a2[1];
  if (v5 == 8)
  {
    v9 = **a2;
    goto LABEL_34;
  }

  if (v5 != 10)
  {
    if (v5 != 11)
    {
      return result;
    }

    a2 = *a2;
    goto LABEL_10;
  }

  if (**a2 == 0x6F632D726F727265 && *(*a2 + 4) == 25956)
  {
    goto LABEL_32;
  }

  return result;
}

void SipUssdData::constructTree(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  bambi::XmlTreeItem::makeNode(a2);
}

void sub_1E4DFAF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v28 - 40) = v27;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  v30 = *(v26 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void non-virtual thunk toSipUssdData::~SipUssdData(SipUssdData *this)
{
  *(this - 1) = &unk_1F5ED18C0;
  *this = &unk_1F5ED1938;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  bambi::XmlTreeItem::~XmlTreeItem(this);
}

{
  *(this - 1) = &unk_1F5ED18C0;
  *this = &unk_1F5ED1938;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

void SipSessionStateMachine::stateMachineName(SipSessionStateMachine *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 11), *(this + 12));
  }

  else
  {
    *a2 = *(this + 88);
  }
}

void SipSession::SipSession(SipSession *this, const ClientConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "sip.session");
  SipSessionInterface::SipSessionInterface(this, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5ED19E8;
  *(this + 17) = &unk_1F5ED1B40;
  *(this + 18) = &unk_1F5ED1B70;
  *(this + 84) = &unk_1F5ED1B98;
  *(this + 85) = &unk_1F5ED1BC8;
  *(this + 696) = 0u;
  *(this + 86) = this + 696;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = 0;
  *(this + 190) = 1065353216;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 89) = &unk_1F5ED1C50;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 826) = 0u;
  *(this + 110) = 90;
  *(this + 444) = 1;
  *(this + 890) = 1;
  *(this + 892) = 0x200000001;
  *(this + 450) = 256;
  *(this + 902) = 1;
  *(this + 903) = 0;
  *(this + 911) = 256;
  *(this + 913) = 0;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 230) = 0;
  *(this + 924) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 976) = 0;
  *(this + 127) = 0x40A7700000000000;
  *(this + 1160) = 0;
  *(this + 1184) = 0;
  *(this + 1152) = 0;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 64) = 0u;
  *(this + 163) = 0;
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1192) = 0u;
  *(this + 164) = 90;
  *(this + 330) = 16777472;
  *(this + 1324) = 0;
  *(this + 1504) = 0;
  *(this + 196) = 0;
  *(this + 97) = 0u;
  *(this + 1584) = 0;
  *(this + 1780) = 0;
  *(this + 83) = 0u;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
  *(this + 87) = 0u;
  *(this + 88) = 0u;
  *(this + 89) = 0u;
  *(this + 1433) = 0u;
  *(this + 186) = 0;
  *(this + 92) = 0u;
  *(this + 91) = 0u;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 101) = 0u;
  *(this + 102) = 0u;
  *(this + 103) = 0u;
  *(this + 1664) = 0;
  *(this + 110) = 0u;
  *(this + 1732) = 0u;
  *(this + 1748) = 0u;
  *(this + 1700) = 0u;
  *(this + 1716) = 0u;
  *(this + 1668) = 0u;
  *(this + 1684) = 0u;
  *(this + 1781) = 1;
  v4 = *(this + 31);
  *(this + 30) = 0;
  *(this + 31) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 1496) = 0;
  *(this + 375) = 0;
  *(this + 1585) = 0;
  *(this + 444) = 0;
  *(this + 199) = 0;
  *(this + 201) = 0;
  *(this + 200) = 0;
  *(this + 386) = -1;
  *(this + 1576) = 0;
}

void sub_1E4DFB4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionStateMachine::~SipSessionStateMachine(void **this)
{
  *this = &unk_1F5ED1C50;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(this);
}

{
  *this = &unk_1F5ED1C50;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(this);

  JUMPOUT(0x1E69235B0);
}

void SipSession::init(SipSession *this)
{
  v3 = 0;
  v4 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v5, this + 19);
  std::dynamic_pointer_cast[abi:ne200100]<SipSession,SipSessionInterface>(&v3, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (v3)
  {
    operator new();
  }

  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Couldn't set delegate for stateMachine", 38);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4DFB82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<SipSession,SipSessionInterface>(void **a1, void **a2)
{
  result = *a2;
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void SipSession::create(SipSession **__return_ptr a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipSession,std::allocator<SipSession>,ClientConfig const&,0>();
}

void sub_1E4DFB964(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::~SipSession(SipSession *this)
{
  *this = &unk_1F5ED19E8;
  *(this + 17) = &unk_1F5ED1B40;
  *(this + 18) = &unk_1F5ED1B70;
  *(this + 84) = &unk_1F5ED1B98;
  *(this + 85) = &unk_1F5ED1BC8;
  std::string::basic_string[abi:ne200100]<0>(v24, "sip.session");
  v20[0] = 0;
  v23 = 0;
  v2 = ims::debug(v24, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "~SipSession", 11);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v3 = *(this + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(this + 103);
      if (v5)
      {
        (*(*v5 + 48))(v5);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 200);
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

  v9 = *(this + 199);
  if (v9)
  {
    v10 = *(v9 + 120);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = *(v9 + 104);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (*(v9 + 95) < 0)
    {
      operator delete(*(v9 + 72));
    }

    if (*(v9 + 55) < 0)
    {
      operator delete(*(v9 + 32));
    }

    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    MEMORY[0x1E69235B0](v9, 0x1032C40D4AF1F8FLL);
  }

  v12 = *(this + 201);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 1775) < 0)
  {
    operator delete(*(this + 219));
  }

  if (*(this + 1751) < 0)
  {
    operator delete(*(this + 216));
  }

  if (*(this + 1727) < 0)
  {
    operator delete(*(this + 213));
  }

  if (*(this + 1703) < 0)
  {
    operator delete(*(this + 210));
  }

  if (*(this + 1663) < 0)
  {
    operator delete(*(this + 205));
  }

  std::unique_ptr<ImsPowerAssertion>::reset[abi:ne200100](this + 204, 0);
  v13 = *(this + 203);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 194);
  if (v14)
  {
    *(this + 195) = v14;
    operator delete(v14);
  }

  v15 = *(this + 192);
  *(this + 192) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (*(this + 1535) < 0)
  {
    operator delete(*(this + 189));
  }

  v16 = *(this + 186);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(this + 184);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  LazuliSessionOptions::~LazuliSessionOptions((this + 1208));
  v18 = *(this + 150);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  BambiCallOptions::~BambiCallOptions(this + 105);
  v19 = *(this + 104);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  *(this + 89) = &unk_1F5ED1C50;
  if (*(this + 823) < 0)
  {
    operator delete(*(this + 100));
  }

  SipSimpleStateMachine<SipSessionState>::~SipSimpleStateMachine(this + 712);
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(*(this + 87));
  SipSessionInterface::~SipSessionInterface(this);
}

{
  SipSession::~SipSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSession::~SipSession(SipSession *this)
{
  SipSession::~SipSession((this - 136));
}

{
  SipSession::~SipSession((this - 144));
}

{
  SipSession::~SipSession((this - 672));
}

{
  SipSession::~SipSession((this - 680));
}

{
  SipSession::~SipSession((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipSession::~SipSession((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  SipSession::~SipSession((this - 672));

  JUMPOUT(0x1E69235B0);
}

{
  SipSession::~SipSession((this - 680));

  JUMPOUT(0x1E69235B0);
}

BOOL SipSession::requireQosBeforeRinging(SipSession *this)
{
  if (*(this + 1781) != 1)
  {
    return 0;
  }

  SipSessionInterface::stack(&v4, this);
  v1 = SipStack::prefs(v4);
  v2 = ImsPrefs::RequireQoSBeforeRinging(v1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E4DFBF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::removeAllAckHandlers(SipSession **this)
{
  SipSessionInterface::removeAllAckHandlers(this);
  __src = 0;
  v20 = 0;
  v21 = 0;
  v2 = this[86];
  if (v2 != (this + 87))
  {
    v3 = 0;
    do
    {
      if (v3 >= v21)
      {
        v4 = __src;
        v5 = v3 - __src;
        v6 = (v3 - __src) >> 2;
        v7 = v6 + 1;
        if ((v6 + 1) >> 62)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v8 = v21 - __src;
        if ((v21 - __src) >> 1 > v7)
        {
          v7 = v8 >> 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v9 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v7;
        }

        if (v9)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(&__src, v9);
        }

        v10 = (v3 - __src) >> 2;
        v11 = (4 * v6);
        v12 = (4 * v6 - 4 * v10);
        *v11 = *(v2 + 8);
        v3 = (v11 + 1);
        memcpy(v12, v4, v5);
        v13 = __src;
        __src = v12;
        v20 = v3;
        v21 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v3 = *(v2 + 8);
        v3 += 4;
      }

      v20 = v3;
      v14 = *(v2 + 1);
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
          v15 = *(v2 + 2);
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
    }

    while (v15 != this + 87);
    v17 = __src;
    if (v3 != __src)
    {
      v18 = 0;
      do
      {
        SipSession::removePrackHandler(this, *&v17[4 * v18++]);
        v17 = __src;
      }

      while (v18 < (v20 - __src) >> 2);
    }

    if (v17)
    {
      v20 = v17;
      operator delete(v17);
    }
  }
}

void sub_1E4DFC0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SipSession::removePrackHandler(SipSession *this, uint64_t a2)
{
  result = *(this + 87);
  if (result)
  {
    v5 = (this + 696);
    v6 = result;
    do
    {
      v7 = *(v6 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != (this + 696) && *(v5 + 8) <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*(this + 86) == v5)
      {
        *(this + 86) = v11;
      }

      --*(this + 88);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(result, v5);
      v14 = v5[6];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      operator delete(v5);
      v15 = (*(*this + 64))(this);
      (*(*this + 16))(this, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "removed PRACK handler for cseq ", 31);
      *(v15 + 17) = 0;
      MEMORY[0x1E6923350](*(v15 + 8), a2);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      v23 = 0;
      v21 = 0u;
      memset(v22, 0, sizeof(v22));
      *__p = 0u;
      v20 = 0u;
      v17 = 0u;
      memset(v18, 0, sizeof(v18));
      std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "PrackHandler ", 13);
      MEMORY[0x1E6923350](v16, a2);
      (*(*this + 104))(this);
      *&v17 = *MEMORY[0x1E69E54E8];
      *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v18);
      std::ostream::~ostream();
      return MEMORY[0x1E6923510](v22);
    }
  }

  return result;
}

void SipSession::initializeWithOptions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 840) = *a3;
    std::string::operator=((a1 + 848), (a3 + 8));
    v6 = *(a3 + 48);
    v5 = *(a3 + 64);
    v7 = *(a3 + 32);
    *(a1 + 917) = *(a3 + 77);
    *(a1 + 888) = v6;
    *(a1 + 904) = v5;
    *(a1 + 872) = v7;
    std::string::operator=((a1 + 928), (a3 + 88));
    std::string::operator=((a1 + 952), (a3 + 112));
    *(a1 + 976) = *(a3 + 136);
    v8 = *(a3 + 144);
    v9 = *(a3 + 176);
    *(a1 + 1000) = *(a3 + 160);
    *(a1 + 1016) = v9;
    *(a1 + 984) = v8;
    std::string::operator=((a1 + 1032), (a3 + 192));
    std::string::operator=((a1 + 1056), (a3 + 216));
    std::string::operator=((a1 + 1080), (a3 + 240));
    std::string::operator=((a1 + 1104), (a3 + 264));
    std::string::operator=((a1 + 1128), (a3 + 288));
    *(a1 + 1152) = *(a3 + 312);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 1160), (a3 + 320));
  }

  operator new();
}

{
  if (a3)
  {
    LazuliSessionOptions::operator=(a1 + 1208, a3);
  }

  operator new();
}

void sub_1E4DFC5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4DFC6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliSessionOptions::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  v4 = *(a2 + 109);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 109) = v4;
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  std::string::operator=((a1 + 168), (a2 + 168));
  std::string::operator=((a1 + 192), (a2 + 192));
  if (a1 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 216), *(a2 + 216), *(a2 + 224), *(a2 + 224) - *(a2 + 216));
  }

  return a1;
}

void SipSession::initialize(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v20[0] = *a2;
  v20[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionInterface::initialize(a1, v20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v18 = 0;
  v19 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, (a1 + 152));
  std::dynamic_pointer_cast[abi:ne200100]<SipSession,SipSessionInterface>(&v18, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    if (*(a1 + 888) == 1)
    {
      v4 = *(a1 + 1480);
      v5 = v19;
      v14[0] = v18;
      v14[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSessionTimer::initialize(v4, v14, *(a1 + 889));
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    v6 = *(a1 + 240);
    v7 = *(v6 + 232);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(v6 + 224);
        if (v10)
        {
          v11 = *(v10 + 248);
          v12 = *(v10 + 256);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11 && *(SipUserAgent::config(v11) + 609) == 1)
          {
            *(a1 + 1500) = 1;
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    operator new();
  }

  v13 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Couldn't initialize ", 20);
  *(v13 + 17) = 0;
  (*(*a1 + 320))(&v15, a1);
  (*(*v13 + 40))(v13, &v15);
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v17 < 0)
  {
    operator delete(v15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1E4DFDC5C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  v4 = *(v2 - 72);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void SipTypedStateMachine<SipSessionState>::addState(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return;
  }

  v4 = (*(**a2 + 48))(*a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v5 <= v4)
    {
      v7 = v4 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v4;
  }

  v8 = *(*(a1 + 16) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_18;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[4];
  v9[3] = v12;
  v9[4] = v11;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

uint64_t SipTypedStateMachine<SipSessionState>::transitionToState(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(a1[2] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == a2)
        {
          if (*(i + 4) == a2)
          {
            v15 = a1[7];
            v14 = a1[8];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v15)
            {
              v16 = (*(*v15 + 48))(v15);
              (*(*v15 + 64))(v15, a2);
            }

            else
            {
              v16 = 0;
            }

            v17 = i[3];
            v18 = i[4];
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = a1[8];
            a1[7] = v17;
            a1[8] = v18;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              v17 = a1[7];
            }

            (*(*v17 + 56))(v17, v16);
            v23 = v15;
            v24 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = a1[8];
            v21 = a1[7];
            v22 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 56))(a1, &v23, &v21);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            return 1;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= v4)
            {
              v9 %= v4;
            }
          }

          else
          {
            v9 &= v4 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = (*(*v10 + 56))(a1[1]);
    (*(*v10 + 16))(v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "transitionToState: no such state ", 33);
    *(v11 + 17) = 0;
    v12 = (*(*a1 + 16))(a1, a2);
    LoggableString::LoggableString(&__p, v12);
    (*(*v11 + 40))(v11, &__p);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1E4DFE598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSession::forceDeinitialize(SipSession *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SipSession::forceDeinitialize", 29);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = *(this + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 103);
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  (*(*this + 88))(this);
  *(this + 600) = 0;
  v7 = *(*this + 104);

  return v7(this);
}

void SipSession::replaceDialog(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 240);
  if (v7)
  {
    v47 = 0;
    v48 = 0;
    SipDialog::createRequestInDialog(v7, &v47);
    v9 = *(a1 + 240);
    v10 = *(v9 + 232);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(v9 + 224);
        if (v13)
        {
          v14 = *(v13 + 248);
          v15 = *(v13 + 256);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v14 && *(SipUserAgent::config(v14) + 612) == 1)
          {
            v16 = v48;
            v46[0] = v47;
            v46[1] = v48;
            if (v48)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            BambiCallTerminationReason::addReasonToRequest(a4, v46);
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    v17 = v48;
    v43[0] = v47;
    v43[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
    SipSession::sendRequest(&v44, a1, v43, &__p);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v38 < 0)
    {
      operator delete(__p);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    SipDialog::detachSession(*(a1 + 240));
    v18 = *(a1 + 248);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }
  }

  v47 = 0;
  v48 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, (a1 + 152));
  std::dynamic_pointer_cast[abi:ne200100]<SipSession,SipSessionInterface>(&v47, &__p);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v19 = v47;
  if (v47)
  {
    v20 = *a2;
    v21 = a2[1];
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 248);
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      v20 = *(a1 + 240);
    }

    v23 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(v20 + 2744) = v19;
    v24 = *(v20 + 2752);
    *(v20 + 2752) = v23;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v25 = *(a1 + 240);
    v26 = SipMessage::header<SipFromHeader>(*a3);
    if (v26)
    {
      v27 = SipUriHeader::tag(v26);
    }

    else
    {
      v27 = &ims::kEmptyString;
    }

    v28 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v25 + 2944, v27);
    v29 = v28;
    if (v25 + 2952 == v28)
    {
      v31 = 0;
    }

    else
    {
      v30 = *(v28 + 56);
      v31 = *(v29 + 64);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v30)
      {
        v32 = a3[1];
        v41 = *a3;
        v42 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipDialogFork::updateRouteSet(v30, &v41, 0);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

LABEL_60:
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        goto LABEL_62;
      }
    }

    v33 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "no fork with remote tag", 23);
    *(v33 + 17) = 0;
    v34 = SipMessage::header<SipFromHeader>(*a3);
    if (v34)
    {
      v35 = SipUriHeader::tag(v34);
    }

    else
    {
      v35 = &ims::kEmptyString;
    }

    ObfuscatedString::ObfuscatedString(&__p, v35);
    (*(*v33 + 56))(v33, &__p);
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_60;
  }

LABEL_62:
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }
}

void sub_1E4DFEB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void SipSession::sendRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSessionRefresh = SipRequest::isSessionRefresh(*a3);
  if (isSessionRefresh)
  {
    v9 = *(a2 + 1480);
    v10 = *(a3 + 8);
    v19 = *a3;
    v20 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionTimer::addHeadersToRequest(v9, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v17 = 0;
  v18 = 0;
  v11 = *(a2 + 240);
  v12 = *(a3 + 8);
  v15 = *a3;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialog::sendRequest(v11, &v15, a4, &v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v13 = v17;
  if (v17)
  {
    if (isSessionRefresh)
    {
      SipTimerContainer::cancelAllTimers((*(a2 + 1480) + 80));
      v13 = v17;
    }

    v14 = v18;
    *a1 = v13;
    a1[1] = v14;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_1E4DFED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::handleStateTransition(SipSession *this, uint64_t a2, uint64_t a3)
{
  if (a2 <= 5 && a3 >= 6)
  {
    v6 = *(this + 30);
    memset(&v16, 0, sizeof(v16));
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    SipDialog::currentClientTransactions(v6, &v16, "PRACK", &__p);
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v7 = v16.__r_.__value_.__r.__words[0];
    if (v16.__r_.__value_.__l.__size_ != v16.__r_.__value_.__r.__words[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        SipTransaction::abort(*(v7 + v8));
        ++v9;
        v7 = v16.__r_.__value_.__r.__words[0];
        v8 += 16;
      }

      while (v9 < (v16.__r_.__value_.__l.__size_ - v16.__r_.__value_.__r.__words[0]) >> 4);
    }

    v17 = &v16;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v17);
    SipTimerContainer::cancelAllTimers((this + 264));
    v10 = *(this + 204);
    if (*(v10 + 24))
    {
      ImsPowerAssertion::deinitialize(v10);
    }
  }

  v11 = (*(*this + 64))(this);
  (*(*this + 16))(this, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "state transition [", 18);
  *(v11 + 17) = 0;
  v12 = (*(*this + 272))(this, a2);
  LoggableString::LoggableString(&v16, v12);
  (*(*v11 + 40))(v11, &v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " --> ", 5);
  *(v11 + 17) = 0;
  v13 = (*(*this + 272))(this, a3);
  LoggableString::LoggableString(&__p, v13);
  (*(*v11 + 40))(v11, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (a2)
    {
      goto LABEL_14;
    }
  }

  else if (a2)
  {
    goto LABEL_14;
  }

  ImsPowerAssertion::initialize(*(this + 204), 300.0, 6, v14);
  ImsResult::~ImsResult(v14);
LABEL_14:
  if (a3 == 6)
  {
    *(this + 1780) = 1;
  }

  else if (a3 >= 7)
  {
    SipTimerContainer::cancelAllTimers((*(this + 185) + 80));
    if (a3 == 13)
    {
      (*(*this + 192))(this);
    }
  }
}

void sub_1E4DFF07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  *(v25 - 56) = v25 - 80;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100]((v25 - 56));
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<SipSessionInterface>::weak_from_this(void *a1, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(v4, a2);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void SipSession::fireCallEvent(SipSession *this, BambiCallEvent *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v61 = 0;
    v62 = 0;
    SipSessionInterface::stack(&v61, this);
    if (v61 && *(v61 + 2817) == 1)
    {
      v4 = *(this + 150);
      if (!v4)
      {
        goto LABEL_119;
      }

      v5 = std::__shared_weak_count::lock(v4);
      if (!v5)
      {
        goto LABEL_119;
      }

      v6 = v5;
      v7 = *(this + 149);
      if (v7)
      {
        LazuliSession::processEvent(v7, a2);
      }

      goto LABEL_118;
    }

    v8 = *(this + 104);
    if (v8)
    {
      v6 = std::__shared_weak_count::lock(v8);
      if (v6)
      {
        v9 = *(this + 103);
        if (v9)
        {
          v11 = v10;
          v12 = *(a2 + 2);
          if ((v12 - 7) < 2)
          {
            if (v10)
            {
              v13 = *(this + 30);
              v14 = v10[4];
              v15 = v11[5];
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v16 = SipMessage::header<SipToHeader>(v14);
              if (v16)
              {
                v17 = SipUriHeader::tag(v16);
              }

              else
              {
                v17 = &ims::kEmptyString;
              }

              v26 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v13 + 2944, v17);
              if (v13 + 2952 == v26)
              {
                v28 = 0;
                v27 = 0;
              }

              else
              {
                v28 = *(v26 + 56);
                v27 = *(v26 + 64);
                if (v27)
                {
                  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }

              if (v28 && SipPreconditions::preconditionsSatisfiedInFork(*(this + 192), (v28 + 264)))
              {
                SipTimerContainer::cancelTimer((this + 264), "WaitForRingingTimer");
              }

              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              goto LABEL_85;
            }

            goto LABEL_117;
          }

          if (v12 != 4)
          {
LABEL_84:
            if (v11)
            {
LABEL_85:
              v43 = v9[48];
              if (v43)
              {
                v44 = std::__shared_weak_count::lock(v43);
                if (v44)
                {
                  v45 = v9[47];
                  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
                  if (v45)
                  {
                    v46 = v11[4];
                    v47 = v11[5];
                    if (v47)
                    {
                      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v48 = SipMessage::body<SipSdpBody>(v46);
                    if (v48)
                    {
                      v49 = *(v48 + 1);
                      v50 = *(v48 + 2);
                      if (v50)
                      {
                        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v49)
                      {
                        v51 = v9[48];
                        if (v51)
                        {
                          v51 = std::__shared_weak_count::lock(v51);
                          v52 = v51;
                          if (v51)
                          {
                            v51 = v9[47];
                          }
                        }

                        else
                        {
                          v52 = 0;
                        }

                        v54 = SipStack::prefs(v51);
                        if (ImsPrefs::EPSFallbackTimerSeconds(v54))
                        {
                          v55 = std::__shared_weak_count::lock(v9[48]);
                          if (BYTE5(v9[47][165].__shared_weak_owners_) == 1)
                          {
                            v56 = v9[48];
                            if (v56 && (v57 = std::__shared_weak_count::lock(v56)) != 0)
                            {
                              v58 = v57;
                              isNR = ims::AccessNetwork::isNR(&v9[47][143]);
                              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                            }

                            else
                            {
                              isNR = ims::AccessNetwork::isNR(0xD68);
                            }
                          }

                          else
                          {
                            isNR = 0;
                          }

                          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                        }

                        else
                        {
                          isNR = 0;
                        }

                        if (v52)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                        }
                      }

                      else
                      {
                        isNR = 0;
                      }

                      if (v50)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                      }
                    }

                    else
                    {
                      isNR = 0;
                    }

                    if (v47)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                    }

                    if (isNR)
                    {
                      BambiCall::startEPSWatchdogTimer(v9);
                    }
                  }
                }
              }
            }

LABEL_117:
            ((*v9)[1].__shared_owners_)(v9, a2);
            goto LABEL_118;
          }

          if (v10)
          {
            v19 = *(this + 30);
            v20 = v10[4];
            v21 = v11[5];
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v22 = SipMessage::toTag(v20);
            v23 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v19 + 2944, v22);
            if (v19 + 2952 == v23)
            {
              v25 = 0;
              v24 = 0;
            }

            else
            {
              v25 = *(v23 + 56);
              v24 = *(v23 + 64);
              if (v24)
              {
                atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }
          }

          else
          {
            v24 = 0;
            v25 = 0;
          }

          SipTimerContainer::cancelTimer((this + 264), "WaitForRingingTimer");
          if (*(*(this + 30) + 2816) != 1)
          {
LABEL_76:
            if (!SipPreconditions::remotePreconditionsSatisfiedInFork(*(this + 192), &v25[11]))
            {
              v42 = (*(*this + 64))(this);
              (*(*this + 16))(this, v42);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "received 180 ringing. Forcing remote preconditions satisfied in fork ", 69);
              *(v42 + 17) = 0;
              ObfuscatedString::ObfuscatedString(&v63, v25 + 11);
              (*(*v42 + 56))(v42, &v63);
              (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v42 + 17) = 0;
              if (v67 < 0)
              {
                operator delete(__p);
              }

              if (v65 < 0)
              {
                operator delete(v63);
              }

              SipPreconditions::setRemotePreconditionsSatisfiedInFork(*(this + 192), &v25[11], 0);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            goto LABEL_84;
          }

          SipTimerContainer::cancelTimer((this + 264), "WaitForRingingTimer");
          v29 = *(this + 104);
          if (v29)
          {
            v30 = std::__shared_weak_count::lock(v29);
            if (v30)
            {
              v31 = *(this + 103);
LABEL_49:
              SipSessionInterface::stack(&v63, this);
              v32 = SipStack::prefs(v63);
              v33 = ImsPrefs::RingbackTimerSeconds(v32);
              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v64);
              }

              if (v31)
              {
                if (*(v31 + 552))
                {
                  SipSessionInterface::stack(&v63, this);
                  v34 = SipStack::prefs(v63);
                  v33 = ImsPrefs::EmergencyRingbackTimerSeconds(v34);
                  if (v64)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
                  }
                }
              }

              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v63, this + 19);
              v60 = v33;
              v35 = v64;
              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v36 = *(this + 30);
              v37 = *(v36 + 232);
              if (v37)
              {
                v59 = std::__shared_weak_count::lock(v37);
                if (v59)
                {
                  v38 = *(v36 + 224);
                  if (v38)
                  {
                    v39 = *(v38 + 248);
                    v40 = *(v38 + 256);
                    if (v40)
                    {
                      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v39 && v60 && ((*(SipUserAgent::config(v39) + 957) & 1) != 0 || !std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 34, "RingbackTimer")))
                    {
                      v41 = (*(*this + 64))(this);
                      (*(*this + 16))(this, v41);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "starting ringback timer", 23);
                      *(v41 + 17) = 0;
                      (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v41 + 17) = 0;
                      if (v35)
                      {
                        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      }

                      __p = 0;
                      operator new();
                    }

                    if (v40)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
                }
              }

              if (v35)
              {
                std::__shared_weak_count::__release_weak(v35);
                std::__shared_weak_count::__release_weak(v35);
              }

              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }

              goto LABEL_76;
            }
          }

          else
          {
            v30 = 0;
          }

          v31 = 0;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v18 = (*(*this + 64))(this);
    (*(*this + 16))(this, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "fireCallEvent: we don't have a call", 35);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (!v6)
    {
LABEL_119:
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      return;
    }

LABEL_118:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_119;
  }
}

void sub_1E4DFF9BC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void SipSession::performPendingTermination(SipSession *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 199);
  if (v5)
  {
    v6 = a4;
    bzero(v16, 0x250uLL);
    BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v16, 15, v5);
    v16[0] = &unk_1F5EC4038;
    v9 = *a2;
    if (*a2)
    {
      v10 = a2[1];
      v15[0] = v9;
      v15[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      BambiCallSessionTerminationBaseEvent::setResponse(v16, v15);
    }

    SipSession::terminateWithEvent(a1, v16, a3);
    if (v6)
    {
      v11 = *(a1 + 199);
      if (v11)
      {
        v12 = *(v11 + 120);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v13 = *(v11 + 104);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (*(v11 + 95) < 0)
        {
          operator delete(*(v11 + 72));
        }

        if (*(v11 + 55) < 0)
        {
          operator delete(*(v11 + 32));
        }

        if (*(v11 + 31) < 0)
        {
          operator delete(*(v11 + 8));
        }

        MEMORY[0x1E69235B0](v11, 0x1032C40D4AF1F8FLL);
      }

      *(a1 + 199) = 0;
    }

    BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v16);
  }

  else
  {
    v14 = (*(*a1 + 56))(a1, a2, a3, a4);
    (*(*a1 + 16))(a1, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "performPendingTermination: no pending termination reason", 56);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }
}

void sub_1E4DFFD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  _Unwind_Resume(a1);
}

void SipSession::terminateWithEvent(SipSession *a1, BambiCallEvent *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      LODWORD(v6) = (*(*v6 + 48))(v6);
    }

    if (v6 != a3)
    {
      SipTypedStateMachine<SipSessionState>::transitionToState(a1 + 89, a3);
    }
  }

  v7 = (a1 + 824);
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *v7;
      if (*v7)
      {
        if (a2)
        {
          SipSession::fireCallEvent(a1, a2);
        }

        (*(*v10 + 48))(v10);
        v11 = *(a1 + 104);
        *v7 = 0;
        *(a1 + 104) = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 150);
  if (!v12)
  {
    v13 = 0;
    if (!a2)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v13 = std::__shared_weak_count::lock(v12);
  if (v13)
  {
    v14 = *(a1 + 149);
    if (v14)
    {
      if (a2)
      {
        SipSession::fireCallEvent(a1, a2);
      }

      LazuliSession::detachSipSession(v14);
      v15 = *(a1 + 150);
      *(a1 + 149) = 0;
      *(a1 + 150) = 0;
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }

  if (a2)
  {
LABEL_24:
    if (v16)
    {
      v17 = v16[8];
      v18 = v17 > 0x15;
      v19 = (1 << v17) & 0x320000;
      if (!v18 && v19 != 0)
      {
        SipSession::reportSetupTimeoutToIRat(a1);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4DFFF1C(_Unwind_Exception *exception_object)
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

uint64_t SipTypedStateMachine<SipSessionState>::currentStateId(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void SipSession::reportSetupTimeoutToIRat(std::__shared_weak_count *this)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  SipSessionInterface::stack(&v5, this);
  LOBYTE(v8) = ims::AccessNetwork::isWifi((v5.__r_.__value_.__r.__words[0] + 3432));
  if (v5.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5.__r_.__value_.__l.__size_);
  }

  SipSessionInterface::stack(&v5, this);
  v9 = *(v5.__r_.__value_.__r.__words[0] + 4372);
  if (v5.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5.__r_.__value_.__l.__size_);
  }

  LODWORD(v10) = 4;
  IPTelephonyManager::getBambiClient(&v6);
  v2 = v6;
  SipSessionInterface::stack(&v3, this);
  if (*(v3 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(v3 + 554), *(v3 + 555));
  }

  else
  {
    v5 = *(v3 + 4432);
  }

  BambiClient::reportIRatTimeout(v2, &v5, &v8);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E00088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSession::handleInitializationFailure(SipSession *this)
{
  v2 = (*(*this + 56))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "session initialization failed", 29);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = *(*this + 192);

  return v3(this);
}

void SipSession::loggableName()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ImsStringOutStream::ImsStringOutStream(v2, 1);
}

void sub_1E4E00308(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipSession::emergency(std::__shared_weak_count *this)
{
  shared_weak_owners = this[34].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v3 = std::__shared_weak_count::lock(shared_weak_owners);
    if (v3)
    {
      shared_owners = this[34].__shared_owners_;
    }

    else
    {
      shared_owners = 0;
    }
  }

  else
  {
    shared_owners = 0;
    v3 = 0;
  }

  SipSessionInterface::stack(&v9, this);
  if (v9)
  {
    SipSessionInterface::stack(&v7, this);
    v5 = *(v7 + 296);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (shared_owners)
  {
    LODWORD(shared_owners) = *(shared_owners + 552) != 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 | shared_owners) & 1;
}

void sub_1E4E0042C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::startPingTimer(SipSession *this)
{
  v13 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 19);
  v2 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(this + 30);
  v4 = *(v3 + 232);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + 224);
      if (v7)
      {
        v9 = *(v7 + 248);
        v8 = *(v7 + 256);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9 && *(SipUserAgent::config(v9) + 36))
        {
          if (v2)
          {
            atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = 0;
          operator new();
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1E4E005DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void SipSession::clientInviteTransaction(uint64_t *__return_ptr a1@<X8>, SipSession *this@<X0>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = *(this + 30);
  v8 = 0;
  v9 = 0;
  SipDialog::currentClientTransactions(v3, &v10, "INVITE", &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v4 = v10;
  v5 = v11;
  if (v10 == v11)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!(*(*v7 + 136))(v7))
      {
        break;
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    *a1 = v7;
    a1[1] = v6;
  }

  v13 = &v10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1E4E0071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a14 = &a11;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void SipSession::serverInviteTransaction(SipSession *this@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = *(this + 30);
  v8 = 0;
  v9 = 0;
  SipDialog::currentServerTransactions(v3, &v10, "INVITE", &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v4 = v10;
  v5 = v11;
  if (v10 == v11)
  {
LABEL_10:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!(*(*v7 + 136))(v7))
      {
        break;
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    *a2 = v7;
    a2[1] = v6;
  }

  v13 = &v10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1E4E00844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a14 = &a11;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void SipSession::handleTimer(SipSession *this, uint64_t ***a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  switch(v5)
  {
    case 19:
      v16 = *a2;
      if (v4 >= 0)
      {
        v16 = a2;
      }

      v17 = *v16;
      v18 = v16[1];
      v19 = *(v16 + 11);
      if (v17 == 0x52726F4674696157 && v18 == 0x6954676E69676E69 && v19 == 0x72656D6954676E69)
      {
        v63 = (*(*this + 64))(this);
        (*(*this + 16))(this, v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "timed out waiting for ringing/preconditions", 43);
        *(v63 + 17) = 0;
        (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v63 + 17) = 0;
        memset(v100, 0, 24);
        if (*(*(this + 30) + 2816) == 1 && (SipPreconditions::preconditionsSatisfiedInAnyFork(*(this + 192)) & 1) != 0)
        {
          v64 = &v100[1] + 5;
          BYTE7(v100[1]) = 21;
          qmemcpy(v100, "WaitForRingingTimeout", 21);
        }

        else
        {
          v64 = &v100[1] + 3;
          BYTE7(v100[1]) = 19;
          qmemcpy(v100, "PreconditionFailure", 19);
        }

        *v64 = 0;
        v65 = *(this + 104);
        v67 = !v65 || !std::__shared_weak_count::lock(v65) || (v66 = *(this + 103)) == 0 || *(v66 + 552) == 0;
        SipSession::reportSetupTimeoutToIRat(this);
        SipSessionInterface::stack(&__p, this);
        v73 = SipStack::prefs(__p);
        v74 = ImsPrefs::DropRegistrationOnWaitTimeout(v73) && v67;
        if (v93)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        }

        if (v74)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "Deregistering");
          SipSession::hangUp(this, &__p);
        }

        SipSession::hangUp(this, v100);
      }

      break;
    case 13:
      v11 = *a2;
      if (v4 >= 0)
      {
        v11 = a2;
      }

      v12 = *v11;
      v13 = *(v11 + 5);
      if (v12 == 0x6B636162676E6952 && v13 == 0x72656D69546B6361)
      {
        if ((SipSession::confirmed(this) & 1) == 0)
        {
          v15 = (*(*this + 64))(this);
          (*(*this + 16))(this, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ringback timer fired.  Canceling call.", 38);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p, "NoAnswer");
          SipSessionInterface::terminationReason(this);
        }

        return;
      }

      break;
    case 12:
      v6 = *a2;
      if (v4 >= 0)
      {
        v6 = a2;
      }

      v7 = *v6;
      v8 = *(v6 + 2);
      if (v7 == 0x54676E69676E6952 && v8 == 1919249769)
      {
        if ((SipSession::confirmed(this) & 1) == 0)
        {
          v10 = (*(*this + 64))(this);
          (*(*this + 16))(this, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ringing timer fired.  Rejecting call.", 37);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          std::string::basic_string[abi:ne200100]<0>(v100, "NoAnswer");
          SipSession::rejectWithReason(v99, this, v100);
        }

        return;
      }

      break;
  }

  v22 = qword_1EE2BD458;
  if (byte_1EE2BD467 >= 0)
  {
    v22 = byte_1EE2BD467;
  }

  if (v5 == v22)
  {
    v23 = v4 >= 0 ? a2 : *a2;
    if (!memcmp(v23, v24, v5))
    {
      v36 = *(this + 104);
      if (!v36 || (v37 = std::__shared_weak_count::lock(v36)) == 0 || (v38 = *(this + 103)) == 0 || (*(v38 + 495) & 1) == 0)
      {
        v68 = (*(*this + 64))(this);
        (*(*this + 16))(this, v68);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v68 + 8), "timed out waiting for local QoS", 31);
        *(v68 + 17) = 0;
        (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v68 + 17) = 0;
        SipSession::reportSetupTimeoutToIRat(this);
        std::string::basic_string[abi:ne200100]<0>(v100, "LocalQualityOfServiceTimeout");
        SipSession::hangUp(this, v100);
      }

      goto LABEL_130;
    }
  }

  if (v5 <= 10)
  {
    if (v5 != 9)
    {
      if (v5 == 10)
      {
        v32 = *a2;
        if (v4 >= 0)
        {
          v32 = a2;
        }

        v33 = *v32;
        v34 = *(v32 + 4);
        if (v33 == 0x6D69546572616C47 && v34 == 29285)
        {

          SipSession::sendPendingInvite(this);
        }
      }

      return;
    }

    v52 = *a2;
    if (v4 >= 0)
    {
      v52 = a2;
    }

    if (*v52 != 0x656D6954676E6950 || *(v52 + 8) != 114)
    {
      v54 = *v52;
      v55 = *(v52 + 8);
      if (v54 != 0x656D6954646C6F48 || v55 != 114)
      {
        return;
      }

      __p = 0;
      v93 = 0;
      SipSession::clientInviteTransaction(&__p, this);
      v57 = __p;
      if (__p && ((*(*__p + 136))(__p) & 1) == 0)
      {
        v58 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v57 + 368), "InviteType");
        v59 = v57 + 376 == v58 ? &ims::kEmptyString : (v58 + 56);
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v59, "HoldInvite"))
        {
          v60 = (*(*this + 64))(this);
          (*(*this + 16))(this, v60);
          v61 = ImsOutStream::operator<<(v60, "timed out waiting for hold to complete");
          (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v61[17] = 0;
          SipSession::reportSetupTimeoutToIRat(this);
          std::string::basic_string[abi:ne200100]<0>(v100, "HoldResumeTimeout");
          SipSession::hangUp(this, v100);
        }
      }

      goto LABEL_119;
    }

    v69 = *(this + 30);
    v70 = *(v69 + 232);
    if (!v70)
    {
      return;
    }

    v71 = std::__shared_weak_count::lock(v70);
    if (!v71)
    {
      return;
    }

    v37 = v71;
    v72 = *(v69 + 224);
    if (!v72)
    {
LABEL_130:
      v62 = v37;
      goto LABEL_131;
    }

    if (*(*(this + 30) + 2816) == 1)
    {
      SipSession::clientInviteTransaction(v100, this);
    }

    else
    {
      SipSession::serverInviteTransaction(this, v100);
    }

    v77 = *(&v100[0] + 1);
    if (!*&v100[0])
    {
      v85 = (*(*this + 64))(this);
      (*(*this + 16))(this, v85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v85 + 8), "handlePingTimer: no INVITE transaction", 38);
      *(v85 + 17) = 0;
      (*(*v85 + 64))(v85, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v86 = 0;
      *(v85 + 17) = 0;
LABEL_161:
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v86)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(v100, this + 19);
        v89 = *(&v100[0] + 1);
        if (*(&v100[0] + 1))
        {
          atomic_fetch_add_explicit((*(&v100[0] + 1) + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
          atomic_fetch_add_explicit(&v89->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v91 = *(v72 + 248);
        v90 = *(v72 + 256);
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v91)
        {
          if (v89)
          {
            atomic_fetch_add_explicit(&v89->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v105 = 0;
          operator new();
        }

        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        if (v89)
        {
          std::__shared_weak_count::__release_weak(v89);
          std::__shared_weak_count::__release_weak(v89);
        }
      }

      goto LABEL_130;
    }

    v78 = *(*&v100[0] + 112);
    if (v78)
    {
      v79 = *(*&v100[0] + 104);
      atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v80 = std::__shared_weak_count::lock(v78);
      std::__shared_weak_count::__release_weak(v78);
      if (v80 && v79)
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        memset(v100, 0, sizeof(v100));
        (*(*v79 + 40))(v100, v79, 0);
        v81 = (*(**(&v100[0] + 1) + 24))(*(&v100[0] + 1), LODWORD(v100[1]));
        v82 = *this;
        if (v81)
        {
          v83 = (*(v82 + 56))(this);
          (*(*this + 16))(this, v83);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), "unable to send ping: ", 21);
          *(v83 + 17) = 0;
          v84 = (v83 + 17);
          (*(*&v100[0] + 16))(v100, v83);
        }

        else
        {
          v83 = (*(v82 + 64))(this);
          (*(*this + 16))(this, v83);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), "ping!", 5);
          *(v83 + 17) = 0;
          v84 = (v83 + 17);
        }

        (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *v84 = 0;
        ImsResult::~ImsResult(v100);
        v88 = 1;
LABEL_160:
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        v86 = v88;
        goto LABEL_161;
      }
    }

    else
    {
      v80 = 0;
    }

    v87 = (*(*this + 64))(this);
    (*(*this + 16))(this, v87);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v87 + 8), "handlePingTimer: INVITE transaction doesn't have an associated transport", 72);
    *(v87 + 17) = 0;
    (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v88 = 0;
    v86 = 0;
    *(v87 + 17) = 0;
    if (!v80)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  if (v5 != 11)
  {
    if (v5 == 16)
    {
      v48 = *a2;
      if (v4 >= 0)
      {
        v48 = a2;
      }

      v50 = *v48;
      v49 = v48[1];
      if (v50 == 0x766E696552595454 && v49 == 0x72656D6954657469)
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        memset(v100, 0, sizeof(v100));
        SipSession::sendInvite(this, "InviteTypeTTYReinvite", v100);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        __p = &unk_1F5EBDEF8;
        v93 = &_bambiDomain;
        v94 = 1073741838;
        if (*(&v100[0] + 1) == &_bambiDomain)
        {
          v75 = v100[1];
          ImsResult::~ImsResult(&__p);
          if (v75 == 1073741838)
          {
            v76 = (*(*this + 64))(this);
            (*(*this + 16))(this, v76);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "can't send pending INVITE now. I'll try later.", 46);
            *(v76 + 17) = 0;
            (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v76 + 17) = 0;
            std::string::operator=(this + 73, "InviteTypeTTYReinvite");
          }
        }

        else
        {
          ImsResult::~ImsResult(&__p);
        }

        ImsResult::~ImsResult(v100);
      }
    }

    else if (v5 == 20)
    {
      v25 = *a2;
      if (v4 >= 0)
      {
        v25 = a2;
      }

      v26 = *v25;
      v27 = v25[1];
      v28 = *(v25 + 4);
      if (v26 == 0x7272456B63617250 && v27 == 0x5479616C6544726FLL && v28 == 1919249769)
      {
        v31 = *(this + 444);

        SipSession::handlePrackErrorResponse(this, v31);
      }
    }

    return;
  }

  v39 = *a2;
  if (v4 >= 0)
  {
    v39 = a2;
  }

  v40 = *v39;
  v41 = *(v39 + 3);
  if (v40 == 0x6954656D75736552 && v41 == 0x72656D6954656D75)
  {
    __p = 0;
    v93 = 0;
    SipSession::clientInviteTransaction(&__p, this);
    v43 = __p;
    if (__p && ((*(*__p + 136))(__p) & 1) == 0)
    {
      v44 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v43 + 368), "InviteType");
      v45 = v43 + 376 == v44 ? &ims::kEmptyString : (v44 + 56);
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, "ResumeInvite"))
      {
        v46 = (*(*this + 64))(this);
        (*(*this + 16))(this, v46);
        v47 = ImsOutStream::operator<<(v46, "timed out waiting for resume to complete");
        (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v47[17] = 0;
        SipSession::reportSetupTimeoutToIRat(this);
        std::string::basic_string[abi:ne200100]<0>(v100, "HoldResumeTimeout");
        SipSession::hangUp(this, v100);
      }
    }

LABEL_119:
    v62 = v93;
    if (!v93)
    {
      return;
    }

LABEL_131:
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }
}

void sub_1E4E01B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

uint64_t SipSession::confirmed(SipSession *this)
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

  v6 = (*(*v4 + 144))(v4);
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

void sub_1E4E01E00(_Unwind_Exception *exception_object)
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

void sub_1E4E01EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void sub_1E4E01F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  _Unwind_Resume(a1);
}

void SipSession::sendPendingInvite(SipSession *this)
{
  if ((*(this + 1775) & 0x8000000000000000) != 0)
  {
    if (!*(this + 220))
    {
      return;
    }
  }

  else if (!*(this + 1775))
  {
    return;
  }

  if (SipSession::terminating(this) || (*(*this + 264))(this))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    v3 = *(v2 + 8);
    v4 = "not sending pending INVITE in terminated session";
    v5 = 48;
LABEL_8:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    return;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 34, "GlareTimer"))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    v3 = *(v2 + 8);
    v4 = "not sending pending INVITE while glare timer is active";
    v5 = 54;
    goto LABEL_8;
  }

  memset(&__str, 0, sizeof(__str));
  if (*(this + 1775) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(this + 219), *(this + 220));
    if (*(this + 1775) < 0)
    {
      **(this + 219) = 0;
      *(this + 220) = 0;
      goto LABEL_16;
    }
  }

  else
  {
    __str = *(this + 73);
  }

  *(this + 1752) = 0;
  *(this + 1775) = 0;
LABEL_16:
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  SipSession::sendInvite(this, &__str, &v14);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8[0] = &unk_1F5EBDEF8;
  v8[1] = &_bambiDomain;
  v9 = 1073741838;
  if (*(&v14 + 1) == &_bambiDomain)
  {
    v6 = v15;
    ImsResult::~ImsResult(v8);
    if (v6 == 1073741838)
    {
      v7 = (*(*this + 64))(this);
      (*(*this + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "can't send pending INVITE now. I'll try later.", 46);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      std::string::operator=(this + 73, &__str);
    }
  }

  else
  {
    ImsResult::~ImsResult(v8);
  }

  ImsResult::~ImsResult(&v14);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E022E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ImsResult::~ImsResult(va);
  if (*(v20 - 57) < 0)
  {
    operator delete(*(v20 - 80));
  }

  _Unwind_Resume(a1);
}

void SipSession::sendInvite(SipSessionInterface *a1@<X0>, std::string *a2@<X1>, ImsResult *a3@<X8>)
{
  v106[17] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 104);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_36;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(a1 + 103)) == 0)
  {
LABEL_36:
    memset(&v106[1], 0, 64);
    *&v105 = &unk_1F5EBDEF8;
    *(&v105 + 1) = &_bambiDomain;
    LODWORD(v106[0]) = 1073741826;
    v28 = ImsResult::operator<<<char [36]>(&v105, "can't send an INVITE without a call");
    v29 = ImsLogContainer::logResult(a1, v28);
    ImsResult::ImsResult(a3, v29);
    ImsResult::~ImsResult(&v105);
    if (!v7)
    {
      return;
    }

    goto LABEL_37;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = *(a1 + 30);
    v11 = *(v10 + 232);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(v10 + 224);
        if (v13)
        {
          v15 = *(v13 + 248);
          v14 = *(v13 + 256);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v15)
          {
            memset(&v106[1], 0, 64);
            *&v105 = &unk_1F5EBDEF8;
            *(&v105 + 1) = &_bambiDomain;
            LODWORD(v106[0]) = 1073741826;
            v33 = ImsResult::operator<<<char [14]>(&v105, "no user agent");
            ImsResult::ImsResult(a3, v33);
            ImsResult::~ImsResult(&v105);
LABEL_171:
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

LABEL_173:
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            goto LABEL_37;
          }

          v103 = 0;
          v104 = 0;
          SipDialog::createRequestInDialog(*(a1 + 30), &v103);
          v16 = *(a1 + 871);
          if (v16 < 0)
          {
            v16 = *(a1 + 107);
          }

          if (v16)
          {
            v17 = SipMessage::header<SipSubjectHeader>(v103, 1);
            std::string::operator=((v17 + 8), (a1 + 848));
          }

          v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v19 = v18;
          v20 = a2->__r_.__value_.__l.__size_;
          if ((v18 & 0x80u) == 0)
          {
            v21 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = a2->__r_.__value_.__l.__size_;
          }

          if (v21 != 11)
          {
            goto LABEL_27;
          }

          v22 = a2->__r_.__value_.__r.__words[0];
          if ((v18 & 0x80u) == 0)
          {
            v22 = a2;
          }

          v23 = v22->__r_.__value_.__r.__words[0];
          v24 = *(v22->__r_.__value_.__r.__words + 3);
          if (v23 != 0x766E497974706D45 || v24 != 0x657469766E497974)
          {
LABEL_27:
            memset(v106, 0, 72);
            v105 = 0u;
            v26 = v104;
            v102[0] = v103;
            v102[1] = v104;
            if (v104)
            {
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, &str_24_0);
            SipSession::addBodyToInvite(&v105, a1, v102, a2, &__p);
            if (v97 < 0)
            {
              operator delete(__p);
            }

            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            if ((*(**(&v105 + 1) + 24))(*(&v105 + 1), LODWORD(v106[0])))
            {
              v27 = ImsLogContainer::logResult(a1, &v105);
              ImsResult::ImsResult(a3, v27);
              goto LABEL_169;
            }

            ImsResult::~ImsResult(&v105);
            v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            v20 = a2->__r_.__value_.__l.__size_;
            v19 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          }

          if (v19 >= 0)
          {
            v34 = v18;
          }

          else
          {
            v34 = v20;
          }

          if (v34 == 18)
          {
            v35 = v19 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
            v36 = *v35;
            v37 = v35[1];
            v38 = *(v35 + 8);
            v39 = v36 == 0x6961464343565253 && v37 == 0x69766E496572756CLL;
            if (v39 && v38 == 25972)
            {
              v41 = v103;
              std::string::basic_string[abi:ne200100]<0>(&v105, "failure to transition to CS domain");
              v42 = SipMessage::header<SipReasonHeader>(v41, 1);
              SipReasonHeader::addReason(v42, &SipReason::kProtocolSip, 487, &v105);
            }
          }

          if (v19 >= 0)
          {
            v43 = v18;
          }

          else
          {
            v43 = v20;
          }

          if (v43 == 13)
          {
            v44 = v19 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
            v45 = *v44;
            v46 = *(v44 + 5);
            if (v45 == 0x496C616974696E49 && v46 == 0x657469766E496C61)
            {
              v61 = *(a1 + 975);
              if (v61 < 0)
              {
                v61 = *(a1 + 120);
              }

              if (v61)
              {
                v62 = (*(*a1 + 64))(a1);
                (*(*a1 + 16))(a1, v62);
                v63 = ImsOutStream::operator<<(v62, "sendInvite");
                v64 = ImsOutStream::operator<<(v63, ": Starting INVITE with Replace for pull call id : ");
                ObfuscatedString::ObfuscatedString(&v105, (a1 + 952));
                (*(*v64 + 56))(v64, &v105);
                (*(*v64 + 64))(v64, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v64[17] = 0;
                ims::AccessNetwork::~AccessNetwork(&v105);
                v65 = SipMessage::addHeader<SipReplacesHeader>(v103);
                if ((SipUserAgent::getCallTransferInfo(v15, a1 + 952, v65) & 1) == 0)
                {
                  v91 = (*(*a1 + 64))(a1);
                  (*(*a1 + 16))(a1, v91);
                  v92 = ImsOutStream::operator<<(v91, "sendInvite");
                  v93 = ImsOutStream::operator<<(v92, ": cannot find dialog for pull call id : ");
                  ObfuscatedString::ObfuscatedString(&v105, (a1 + 952));
                  (*(*v93 + 56))(v93, &v105);
                  (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v93[17] = 0;
                  ims::AccessNetwork::~AccessNetwork(&v105);
                  memset(&v106[1], 0, 64);
                  *&v105 = &unk_1F5EBDEF8;
                  *(&v105 + 1) = &_bambiDomain;
                  LODWORD(v106[0]) = 1073741836;
                  ImsLogContainer::logResult(a1, &v105, a3);
LABEL_169:
                  ImsResult::~ImsResult(&v105);
                  if (v104)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v104);
                  }

                  goto LABEL_171;
                }

                v66 = *(a1 + 30);
                v67 = SipUserAgent::publicUri(v15);
                SipDialog::updateRemoteUri(v66, v67);
                v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
                v20 = a2->__r_.__value_.__l.__size_;
                v19 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
              }
            }
          }

          if (v19 < 0)
          {
            v18 = v20;
          }

          if (v18 == 13)
          {
            v48 = a2->__r_.__value_.__r.__words[0];
            if (v19 >= 0)
            {
              v48 = a2;
            }

            v49 = v48->__r_.__value_.__r.__words[0];
            v50 = *(v48->__r_.__value_.__r.__words + 5);
            v51 = v49 == 0x496C616974696E49 && v50 == 0x657469766E496C61;
            if (v51 && SipSession::emergency(a1))
            {
              SipSessionInterface::stack(&v105, a1);
              v52 = SipStack::prefs(v105);
              v53 = ImsPrefs::SupportsCurrentLocationDiscovery(v52);
              if (*(&v105 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
              }

              if (v53)
              {
                v54 = v103;
                std::string::basic_string[abi:ne200100]<0>(&v105, "application/sdp, application/vnd.3gpp.current-location-discovery+xml");
                SipMessage::addHeader(v54, "Accept", &v105, 0);
                if (SHIBYTE(v106[0]) < 0)
                {
                  operator delete(v105);
                }

                v55 = v103;
                std::string::basic_string[abi:ne200100]<0>(&v105, "g.3gpp.current-location-discovery");
                SipMessage::addHeader(v55, "Recv-Info", &v105, 0);
                if (SHIBYTE(v106[0]) < 0)
                {
                  operator delete(v105);
                }
              }
            }
          }

          SipSessionInterface::stack(&__p, a1);
          v56 = SipStack::prefs(__p);
          if (ImsPrefs::AddPEmergencyInfoHeaderToEmergencyInviteOnWifi(v56) && SipSession::emergency(a1) && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "InitialInvite"))
          {
            SipSessionInterface::stack(&v100, a1);
            if (ims::AccessNetwork::isWifi((v100 + 3432)))
            {
              v57 = v103;
              std::string::basic_string[abi:ne200100]<0>(&v105, "Geolocation");
              v58 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v57 + 9, &v105);
              if (v58)
              {
                v59 = v58[5] == 0;
              }

              else
              {
                v59 = 1;
              }

              if (SHIBYTE(v106[0]) < 0)
              {
                operator delete(v105);
              }
            }

            else
            {
              v59 = 0;
            }

            if (v101)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v101);
            }
          }

          else
          {
            v59 = 0;
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          if (v59)
          {
            IPTelephonyManager::getCallManager(&v105);
            v60 = *(v105 + 327);
            if (v60 < 0)
            {
              v60 = *(v105 + 312);
            }

            if (*(&v105 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
            }

            if (v60)
            {
              goto LABEL_116;
            }

            IPTelephonyManager::getCallManager(&v105);
            v68 = *(v105 + 303);
            if (v68 < 0)
            {
              v68 = *(v105 + 288);
            }

            if (*(&v105 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
            }

            if (v68)
            {
LABEL_116:
              v69 = v103;
              IPTelephonyManager::getCallManager(&__p);
              std::operator+<char>();
              SipMessage::addHeader(v69, "P-Emergency-Info", &v105, 0);
              if (SHIBYTE(v106[0]) < 0)
              {
                operator delete(v105);
              }

              if (v96)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v96);
              }
            }

            else
            {
              v70 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v70);
              v71 = ImsOutStream::operator<<(v70, "no device id found. P-Emergency-Info header not added");
              (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v71[17] = 0;
            }
          }

          v72 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v73 = v72;
          if ((v72 & 0x80u) != 0)
          {
            v72 = a2->__r_.__value_.__l.__size_;
          }

          if (v72 == 13)
          {
            v74 = v73 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
            v75 = *v74;
            v76 = *(v74 + 5);
            if (v75 == 0x496C616974696E49 && v76 == 0x657469766E496C61)
            {
              SipSessionInterface::stack(&v105, a1);
              *(a1 + 1782) = ims::AccessNetwork::isNR((v105 + 3432));
              if (*(&v105 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
              }
            }
          }

          memset(v106, 0, 72);
          v105 = 0u;
          v98 = v103;
          v99 = v104;
          if (v104)
          {
            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v8 + 40))(&v105, v8, a2, &v98);
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
          }

          if (((*(**(&v105 + 1) + 24))(*(&v105 + 1), LODWORD(v106[0])) & 1) == 0)
          {
            v78 = v104;
            v94[0] = v103;
            v94[1] = v104;
            if (v104)
            {
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::sendInvite(&__p, a1, v94, a2);
            ImsResult::operator=(&v105, &__p);
            ImsResult::~ImsResult(&__p);
            if (v78)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v78);
            }
          }

          IPTelephonyManager::getBambiClient(&v100);
          __p = 0;
          v96 = 0;
          v79 = BambiClient::callCountExcludingCall(v100, &__p);
          v80 = SipUserAgent::config(v15);
          v81 = 24;
          if (v79 > 1)
          {
            v81 = 28;
          }

          v82 = *(v80 + v81);
          if (v101)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, a1 + 19);
          v83 = v96;
          if (v96)
          {
            atomic_fetch_add_explicit(&v96->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            atomic_fetch_add_explicit(&v83->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          if (v82)
          {
            v84 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            v85 = v84;
            if ((v84 & 0x80u) != 0)
            {
              v84 = a2->__r_.__value_.__l.__size_;
            }

            if (v84 == 10)
            {
              v86 = v85 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
              v87 = *v86;
              v88 = *(v86 + 4);
              if (v87 == 0x69766E49646C6F48 && v88 == 25972)
              {
                if (v83)
                {
                  atomic_fetch_add_explicit(&v83->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v106[16] = 0;
                operator new();
              }
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "ResumeInvite"))
            {
              if (v83)
              {
                atomic_fetch_add_explicit(&v83->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v106[12] = 0;
              operator new();
            }
          }

          v90 = ImsLogContainer::logResult(a1, &v105);
          ImsResult::ImsResult(a3, v90);
          if (v83)
          {
            std::__shared_weak_count::__release_weak(v83);
            std::__shared_weak_count::__release_weak(v83);
          }

          goto LABEL_169;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    memset(&v106[1], 0, 64);
    *&v105 = &unk_1F5EBDEF8;
    *(&v105 + 1) = &_bambiDomain;
    LODWORD(v106[0]) = 1073741826;
    v32 = ImsResult::operator<<<char [12]>(&v105, "no sipstack");
    ImsResult::ImsResult(a3, v32);
    ImsResult::~ImsResult(&v105);
    if (!v12)
    {
      goto LABEL_37;
    }

    goto LABEL_173;
  }

  memset(&v106[1], 0, 64);
  *&v105 = &unk_1F5EBDEF8;
  *(&v105 + 1) = &_bambiDomain;
  LODWORD(v106[0]) = 1073741825;
  v30 = ImsResult::operator<<<char [29]>(&v105, "sendInvite: empty inviteType");
  v31 = ImsLogContainer::logResult(a1, v30);
  ImsResult::ImsResult(a3, v31);
  ImsResult::~ImsResult(&v105);
LABEL_37:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1E4E031F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  _Unwind_Resume(a1);
}

void SipSession::handlePrackErrorResponse(SipSession *this, uint64_t a2)
{
  if (a2 >= 0x12C)
  {
    v4 = SipSession::confirmed(this);
    v5 = *this;
    if (!v4)
    {
      v7 = (*(v5 + 56))(this);
      (*(*this + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "received ", 9);
      *(v7 + 17) = 0;
      MEMORY[0x1E6923350](*(v7 + 8), a2);
      *(v7 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " response to PRACK. Terminating session", 39);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      *v13 = 0u;
      v14 = 0u;
      *v11 = 0u;
      v12 = 0u;
      *v9 = 0u;
      v10 = 0u;
      std::string::basic_string[abi:ne200100]<0>(&__p, "NetworkError");
      SipSessionInterface::terminationReason(this);
    }

    v6 = (*(v5 + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "ignoring PRACK error in confirmed session", 41);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }
}

void SipSession::refer(SipSession *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, ImsResult *a6@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 == *(a1 + 30))
  {
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    __p = &unk_1F5EBDEF8;
    v35 = &_bambiDomain;
    v36 = 1073741825;
    v22 = ImsResult::operator<<<char [31]>(&__p, "can't REFER with my own dialog");
    ImsResult::ImsResult(a6, v22);
    ImsResult::~ImsResult(&__p);
    return;
  }

  if (*(v7 + 2960) != 1)
  {
    v13 = 0;
LABEL_18:
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    __p = &unk_1F5EBDEF8;
    v35 = &_bambiDomain;
    v36 = 1073741825;
    v23 = ImsResult::operator<<<char [27]>(&__p, "can't REFER a dialog with ");
    *buf = *(*a2 + 2960);
    v24 = ImsResult::operator<<<unsigned long>(v23, buf);
    v25 = ImsResult::operator<<<char [7]>(v24, " forks");
    ImsResult::ImsResult(a6, v25);
    ImsResult::~ImsResult(&__p);
    goto LABEL_40;
  }

  v12 = *(v7 + 2944);
  v14 = *(v12 + 56);
  v13 = *(v12 + 64);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = *(a1 + 30);
  v16 = *(v15 + 232);
  if (!v16)
  {
    v17 = 0;
LABEL_20:
    v26 = *(a1 + 23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 18) + 16))(&__p, a1 + 18);
      v32 = v37 >= 0 ? &__p : __p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v43 = 2081;
      v44 = v32;
      _os_log_error_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
      if (v37 < 0)
      {
        operator delete(__p);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    __p = &unk_1F5EBDEF8;
    v35 = &_bambiDomain;
    v36 = 1073741826;
    v27 = ImsResult::operator<<<char [12]>(&__p, "no sipstack");
    ImsResult::ImsResult(a6, v27);
    ImsResult::~ImsResult(&__p);
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v17 = std::__shared_weak_count::lock(v16);
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = *(v15 + 224);
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = *(v18 + 248);
  v20 = *(v18 + 256);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    if (*(SipUserAgent::config(v19) + 617) == 1)
    {
      v21 = a4[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::refer(a1, (v14 + 296), a3, *a2 + 2376, v14 + 264, *a2 + 1912, a6);
    }

    else
    {
      v30 = *a2;
      v31 = 240;
      if (*(*a2 + 1056))
      {
        v31 = 648;
      }

      v21 = a4[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipSession::refer(a1, (v30 + v31), a3, *a2 + 2376, v14 + 264, *a2 + 1912, a6);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v28 = *(a1 + 23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 18) + 16))(&__p, a1 + 18);
      v33 = v37 >= 0 ? &__p : __p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v43 = 2081;
      v44 = v33;
      _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
      if (v37 < 0)
      {
        operator delete(__p);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    __p = &unk_1F5EBDEF8;
    v35 = &_bambiDomain;
    v36 = 1073741826;
    v29 = ImsResult::operator<<<char [14]>(&__p, "no user agent");
    ImsResult::ImsResult(a6, v29);
    ImsResult::~ImsResult(&__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_39:
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
LABEL_40:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4E03C74(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void SipSession::refer(SipSession *a1@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, ImsResult *a9@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    memset(&v57[1] + 8, 0, 64);
    *&v57[0] = &unk_1F5EBDEF8;
    *(&v57[0] + 1) = &_bambiDomain;
    LODWORD(v57[1]) = 1073741826;
    v16 = ImsResult::operator<<<char [41]>(v57, "can't send REFER in a terminated session");
    ImsResult::ImsResult(a9, v16);
LABEL_13:
    ImsResult::~ImsResult(v57);
    return;
  }

  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    memset(&v57[1] + 8, 0, 64);
    *&v57[0] = &unk_1F5EBDEF8;
    *(&v57[0] + 1) = &_bambiDomain;
    LODWORD(v57[1]) = 1073741826;
    v18 = ImsResult::operator<<<char [42]>(v57, "can't send REFER in an unconfirmed dialog");
    ImsResult::ImsResult(a9, v18);
    goto LABEL_13;
  }

  SipSession::clientInviteTransaction(v57, a1);
  if (*&v57[0])
  {
    v17 = 1;
  }

  else
  {
    SipSession::serverInviteTransaction(a1, __p);
    v17 = __p[0] != 0;
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  if (*(&v57[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57[0] + 1));
  }

  if (v17)
  {
    memset(&v57[1] + 8, 0, 64);
    *&v57[0] = &unk_1F5EBDEF8;
    *(&v57[0] + 1) = &_bambiDomain;
    LODWORD(v57[1]) = 1073741826;
    ImsResult::operator<<<char [61]>(v57);
    ImsResult::ImsResult(a9, v57);
    goto LABEL_13;
  }

  v59 = 0;
  v60 = 0;
  SipDialog::createRequestInDialog(*(a1 + 30), &v59);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  SipUri::SipUri(v57);
  v19 = *(a1 + 30);
  v20 = *(v19 + 232);
  if (v20 && (v48 = std::__shared_weak_count::lock(v20)) != 0)
  {
    v21 = *(v19 + 224);
    if (v21)
    {
      v23 = *(v21 + 248);
      v22 = *(v21 + 256);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = v22;
      if (v23)
      {
        if (*(SipUserAgent::config(v23) + 616) == 1)
        {
          SipUri::operator=(v57, a2);
        }

        else
        {
          memset(v50, 0, 72);
          *__p = 0u;
          SipSessionInterface::stack(&v54, a1);
          SipStack::makeOutgoingSipUri(__p, v54, a2, v57);
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }

          if ((*(*__p[1] + 24))(__p[1], LODWORD(v50[0])))
          {
            v27 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v27);
            v28 = ImsOutStream::operator<<(v27, "unable to convert ");
            (*(*a2 + 40))(a2, v28);
            v29 = ImsOutStream::operator<<(v28, " to a SIP URI: ");
            (*(__p[0] + 2))(__p, v29);
            SipUri::operator=(v57, a2);
          }

          ImsResult::~ImsResult(__p);
        }

        __p[0] = "method";
        v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v57[4] + 1, "method", &std::piecewise_construct, __p, &v54);
        std::string::operator=((v30 + 7), a3);
        if ((*(SipUserAgent::config(v23) + 617) & 1) == 0)
        {
          v31 = *(a3 + 23);
          v32 = v31;
          if ((v31 & 0x80u) != 0)
          {
            v31 = *(a3 + 8);
          }

          if (v31 == 6)
          {
            v33 = v32 >= 0 ? a3 : *a3;
            v34 = *v33;
            v35 = *(v33 + 4);
            if (v34 == *"INVITE" && v35 == *"TE")
            {
              v44 = *(a6 + 23);
              if ((v44 & 0x80u) != 0)
              {
                v44 = *(a6 + 8);
              }

              if (v44)
              {
                v45 = *(a7 + 23);
                if ((v45 & 0x80u) != 0)
                {
                  v45 = *(a7 + 8);
                }

                if (v45)
                {
                  v46 = *(a8 + 23);
                  if ((v46 & 0x80u) != 0)
                  {
                    v46 = *(a8 + 8);
                  }

                  if (v46)
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    *&v50[0] = 0;
                    SipSession::createReplacesHeaderAsString(a1, a6, a7, a8, __p);
                    std::string::basic_string[abi:ne200100]<0>(&v54, "Replaces");
                    SipParameterMap::setParameter(&v57[20] + 8, &v54, __p);
                    if (SHIBYTE(v56) < 0)
                    {
                      operator delete(v54);
                    }

                    if (SBYTE7(v50[0]) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }
            }
          }
        }

        v37 = SipMessage::addHeader<SipReferToHeader>(v59);
        SipUri::operator=((v37 + 104), v57);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v38 = SipUserAgent::publicUri(v23);
        SipUri::asString(v38, &v54, 2);
        SipMessage::addHeader(v59, "Referred-By", &v54, 0);
        v53[0] = 0;
        v53[1] = 0;
        v39 = v60;
        v52[0] = v59;
        v52[1] = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
        SipSession::sendRequest(v53, a1, v52, __p);
        if (SBYTE7(v50[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        v51 = 0;
        *__p = 0u;
        memset(v50, 0, sizeof(v50));
        std::ostringstream::basic_ostringstream[abi:ne200100](__p);
        v40 = *(v53[0] + 264);
        v41 = *(v53[0] + 272);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = SipMessage::header<SipCSeqHeader>(v40);
        if (v42)
        {
          v43 = v42[15];
        }

        else
        {
          v43 = 0;
        }

        MEMORY[0x1E6923350](__p, v43);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        operator new();
      }

      memset(v50 + 8, 0, 64);
      __p[0] = &unk_1F5EBDEF8;
      __p[1] = &_bambiDomain;
      LODWORD(v50[0]) = 1073741826;
      v26 = ImsResult::operator<<<char [14]>(__p, "no user agent");
      ImsResult::ImsResult(a9, v26);
      ImsResult::~ImsResult(__p);
      v24 = v48;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      goto LABEL_60;
    }

    v24 = v48;
  }

  else
  {
    v24 = 0;
  }

  memset(v50 + 8, 0, 64);
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_bambiDomain;
  LODWORD(v50[0]) = 1073741826;
  v25 = ImsResult::operator<<<char [12]>(__p, "no sipstack");
  ImsResult::ImsResult(a9, v25);
  ImsResult::~ImsResult(__p);
  if (v24)
  {
LABEL_60:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  SipUri::~SipUri(v57);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }
}

void sub_1E4E0478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  SipUri::~SipUri(&a66);
  v68 = *(v66 - 104);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  _Unwind_Resume(a1);
}

void SipSession::refer(SipSession *a1@<X0>, const SipUri *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, ImsResult *a6@<X8>)
{
  v10 = a4[1];
  v17 = *a4;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, &str_24_0);
  std::string::basic_string[abi:ne200100]<0>(v13, &str_24_0);
  std::string::basic_string[abi:ne200100]<0>(__p, &str_24_0);
  SipSession::refer(a1, a2, a3, v15, v13, __p, a6);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4E04A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::createReplacesHeaderAsString(void *a1, const std::string *a2, const std::string *a3, const std::string *a4, uint64_t a5)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v6 = a1[30];
  v7 = *(v6 + 232);
  if (v7)
  {
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = *(v6 + 224);
      if (v12)
      {
        v13 = *(v12 + 248);
        v14 = *(v12 + 256);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v13)
        {
          v15 = SipMessageEncodingMap::headerPrototype<SipReplacesHeader>((v13 + 384));
          v16 = (*(*v15 + 32))(v15);
          std::string::operator=((v16 + 104), a2);
          v23[0] = "to-tag";
          v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 72), "to-tag", &std::piecewise_construct, v23, __p);
          std::string::operator=((v17 + 7), a3);
          v23[0] = "from-tag";
          v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 72), "from-tag", &std::piecewise_construct, v23, __p);
          std::string::operator=((v18 + 7), a4);
          memset(__p, 0, 24);
          (*(*v16 + 40))(v16, __p);
          v25 = 0;
          *v23 = 0u;
          v24 = 0u;
          ImsStringOutStream::ImsStringOutStream(v23, 1);
        }

        v20 = a1[23];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          (*(a1[18] + 16))(v23, a1 + 18);
          if ((SBYTE7(v24) & 0x80u) == 0)
          {
            v22 = v23;
          }

          else
          {
            v22 = v23[0];
          }

          LODWORD(__p[0]) = 141558275;
          *(__p + 4) = 1752392040;
          WORD2(__p[1]) = 2081;
          *(&__p[1] + 6) = v22;
          _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
          if (SBYTE7(v24) < 0)
          {
            operator delete(v23[0]);
          }
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        return;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = a1[23];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    (*(a1[18] + 16))(v23, a1 + 18);
    v21 = (SBYTE7(v24) & 0x80u) == 0 ? v23 : v23[0];
    LODWORD(__p[0]) = 141558275;
    *(__p + 4) = 1752392040;
    WORD2(__p[1]) = 2081;
    *(&__p[1] + 6) = v21;
    _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  if (v11)
  {
    goto LABEL_15;
  }
}

void sub_1E4E04EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [42]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [61]>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "can't send REFER while there is a current INVITE transaction", 60);
  *(v2 + 17) = 0;
  return a1;
}

void *SipMessage::addHeader<SipReferToHeader>(SipMessage *a1)
{
  v2 = SipMessageEncodingMap::headerPrototypeWithName(*(a1 + 15), "Refer-To");
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = (*(*v3 + 32))(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = SipMessage::addHeader(a1, v4, 0);
  if (!v5)
  {
    return 0;
  }
}

void SipSession::lazuliRefer(SipSession *a1@<X0>, const SipUri *a3@<X2>, const std::string *a4@<X3>, ImsResult *a7@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    *(&v33[1] + 8) = 0u;
    *(&v33[2] + 8) = 0u;
    *(&v33[3] + 8) = 0u;
    *(&v33[4] + 8) = 0u;
    *&v33[0] = &unk_1F5EBDEF8;
    *(&v33[0] + 1) = &_bambiDomain;
    LODWORD(v33[1]) = 1073741826;
    v11 = ImsResult::operator<<<char [41]>(v33, "can't send REFER in a terminated session");
    ImsResult::ImsResult(a7, v11);
LABEL_11:
    ImsResult::~ImsResult(v33);
    return;
  }

  SipSession::clientInviteTransaction(v33, a1);
  if (*&v33[0])
  {
    v12 = 1;
  }

  else
  {
    SipSession::serverInviteTransaction(a1, &__p);
    v12 = __p != 0;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }
  }

  if (*(&v33[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33[0] + 1));
  }

  if (v12)
  {
    *(&v33[1] + 8) = 0u;
    *(&v33[2] + 8) = 0u;
    *(&v33[3] + 8) = 0u;
    *(&v33[4] + 8) = 0u;
    *&v33[0] = &unk_1F5EBDEF8;
    *(&v33[0] + 1) = &_bambiDomain;
    LODWORD(v33[1]) = 1073741826;
    ImsResult::operator<<<char [61]>(v33);
    ImsResult::ImsResult(a7, v33);
    goto LABEL_11;
  }

  v13 = *(a1 + 30);
  v14 = *(v13 + 232);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = *(v13 + 224);
      if (v16)
      {
        v17 = *(v16 + 256);
        v27 = *(v16 + 248);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v27)
        {
          v18 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Refer ", 6);
          *(v18 + 17) = 0;
          (*(*a3 + 40))(a3, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " to group ", 10);
          *(v18 + 17) = 0;
          (*(*(*(a1 + 30) + 240) + 40))();
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v18 + 17) = 0;
          v35[0] = 0;
          v35[1] = 0;
          SipDialog::createRequestInDialog(*(a1 + 30), v35);
          v34 = 0;
          memset(v33, 0, sizeof(v33));
          SipUri::SipUri(v33, a3);
          __p = "method";
          v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v33[4] + 1, "method", &std::piecewise_construct, &__p, v32);
          std::string::operator=((v19 + 7), a4);
          v20 = SipMessage::addHeader<SipReferToHeader>(v35[0]);
          SipUri::operator=((v20 + 104), v33);
          v21 = v35[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "false");
          SipMessage::addHeader(v21, "Refer-Sub", &__p, 0);
          if (SHIBYTE(v30[0]) < 0)
          {
            operator delete(__p);
          }

          v22 = v35[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "norefersub");
          SipMessage::addHeader(v22, "Supported", &__p, 0);
          if (SHIBYTE(v30[0]) < 0)
          {
            operator delete(__p);
          }

          memset(v32, 0, sizeof(v32));
          v23 = SipUserAgent::publicUri(v27);
          SipUri::asString(v23, v32, 2);
          SipMessage::addHeader(v35[0], "Referred-By", v32, 0);
          memset(v31, 0, sizeof(v31));
          std::string::basic_string[abi:ne200100]<0>(v31, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
          SipMessage::addHeader(v35[0], "P-Preferred-Service", v31, 0);
          v30[1] = 0;
          v30[2] = 256;
          v29 = v30;
          v30[0] = 0;
          __p = &unk_1F5EBEF50;
          v24 = SipMessage::header<SipAcceptContactHeader>(v35[0], 1);
          SipAcceptContactHeader::addValueWithServiceMaskAndParams(v24, 0x20000, &__p);
        }

        *(&v33[1] + 8) = 0u;
        *(&v33[2] + 8) = 0u;
        *(&v33[3] + 8) = 0u;
        *(&v33[4] + 8) = 0u;
        *&v33[0] = &unk_1F5EBDEF8;
        *(&v33[0] + 1) = &_bambiDomain;
        LODWORD(v33[1]) = 1073741826;
        v26 = ImsResult::operator<<<char [14]>(v33, "no user agent");
        ImsResult::ImsResult(a7, v26);
        ImsResult::~ImsResult(v33);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *(&v33[1] + 8) = 0u;
  *(&v33[2] + 8) = 0u;
  *(&v33[3] + 8) = 0u;
  *(&v33[4] + 8) = 0u;
  *&v33[0] = &unk_1F5EBDEF8;
  *(&v33[0] + 1) = &_bambiDomain;
  LODWORD(v33[1]) = 1073741826;
  v25 = ImsResult::operator<<<char [12]>(v33, "no sipstack");
  ImsResult::ImsResult(a7, v25);
  ImsResult::~ImsResult(v33);
  if (v15)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E4E05AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v47 + 8, a30);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  SipUri::~SipUri(&a45);
  v50 = *(v48 - 104);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  _Unwind_Resume(a1);
}

void SipDialog::trackLazuliGroupModification(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = *(a1 + 2704);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a3;
    if (v3 <= a3)
    {
      v5 = a3 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a3;
  }

  v6 = *(*(a1 + 2696) + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a3)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a3)
  {
    goto LABEL_17;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = v7[4];
  v7[3] = v10;
  v7[4] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_weak(v11);
  }
}

void SipSession::lazuliMultiPartyRefer(SipSession *a1@<X0>, ImsResult *a7@<X8>)
{
  if ((*(*a1 + 264))(a1))
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    LODWORD(v26) = 1073741826;
    v9 = ImsResult::operator<<<char [41]>(&v24, "can't send REFER in a terminated session");
    ImsResult::ImsResult(a7, v9);
LABEL_13:
    ImsResult::~ImsResult(&v24);
    return;
  }

  if ((SipSession::confirmed(a1) & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    LODWORD(v26) = 1073741826;
    v11 = ImsResult::operator<<<char [42]>(&v24, "can't send REFER in an unconfirmed dialog");
    ImsResult::ImsResult(a7, v11);
    goto LABEL_13;
  }

  SipSession::clientInviteTransaction(&v24, a1);
  if (v24)
  {
    v10 = 1;
  }

  else
  {
    SipSession::serverInviteTransaction(a1, &v22);
    v10 = v22.__r_.__value_.__r.__words[0] != 0;
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v10)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    LODWORD(v26) = 1073741826;
    ImsResult::operator<<<char [61]>(&v24);
    ImsResult::ImsResult(a7, &v24);
    goto LABEL_13;
  }

  v12 = *(a1 + 30);
  v13 = *(v12 + 232);
  if (v13 && (v21 = std::__shared_weak_count::lock(v13)) != 0)
  {
    v14 = *(v12 + 224);
    if (v14)
    {
      v16 = *(v14 + 248);
      v15 = *(v14 + 256);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v15;
      if (v16)
      {
        v23[0] = 0;
        v23[1] = 0;
        SipDialog::createRequestInDialog(*(a1 + 30), v23);
        memset(&v22, 0, sizeof(v22));
        ImsUuid::generate(&v24);
        ImsUuid::asStringNoDashes(&v24, &v22);
        v24 = &unk_1F5EBEE78;
        if (SBYTE7(v27) < 0)
        {
          operator delete(v25);
        }

        SipUserAgent::publicDomain(&v24, v16);
        SipUri::asContentIdUriString();
      }

      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v24 = &unk_1F5EBDEF8;
      v25 = &_bambiDomain;
      LODWORD(v26) = 1073741826;
      v19 = ImsResult::operator<<<char [14]>(&v24, "no user agent");
      ImsResult::ImsResult(a7, v19);
      ImsResult::~ImsResult(&v24);
      v17 = v21;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      goto LABEL_26;
    }

    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = &unk_1F5EBDEF8;
  v25 = &_bambiDomain;
  LODWORD(v26) = 1073741826;
  v18 = ImsResult::operator<<<char [12]>(&v24, "no sipstack");
  ImsResult::ImsResult(a7, v18);
  ImsResult::~ImsResult(&v24);
LABEL_26:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1E4E06BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  a16 = &a29;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a16);
  *(v61 - 192) = a9;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v61 - 184, *(v61 - 176));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  v63 = *(v61 - 200);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void SipSession::makeLocalHoldSdp(SDPModel **a1)
{
  SDPModel::hold(*a1);
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(v2 + 456);
  while (v3 != v4)
  {
    SDPMedia::removePreconditions(v3);
    v3 += 25;
  }
}

void SipSession::makeLocalResumeSdp(SDPModel **a1, char a2)
{
  SDPModel::resumeAllStreams(*a1, a2);
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 456);
  while (v4 != v5)
  {
    SDPMedia::removePreconditions(v4);
    v4 += 25;
  }
}

void SipSession::addBodyToInvite(ImsResult *a1, SipSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a2 + 64))(a2);
  (*(*a2 + 16))(a2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SipSession::addBodyToInvite type=", 33);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a4);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  v9 = *(a2 + 30);
  v10 = *(v9 + 232);
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10)) == 0)
  {
    v24 = 0;
    goto LABEL_25;
  }

  v12 = *(v9 + 224);
  if (!v12)
  {
    v24 = v11;
LABEL_25:
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    __p = &unk_1F5EBDEF8;
    v70 = &_bambiDomain;
    LODWORD(v71) = 1073741826;
    v25 = ImsResult::operator<<<char [12]>(&__p, "no sipstack");
    ImsResult::ImsResult(a1, v25);
    ImsResult::~ImsResult(&__p);
    if (!v24)
    {
      return;
    }

    goto LABEL_26;
  }

  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v60 = v11;
  v61 = v13;
  if (!v14)
  {
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    __p = &unk_1F5EBDEF8;
    v70 = &_bambiDomain;
    LODWORD(v71) = 1073741826;
    v26 = ImsResult::operator<<<char [14]>(&__p, "no user agent");
    ImsResult::ImsResult(a1, v26);
    ImsResult::~ImsResult(&__p);
    v24 = 0;
    goto LABEL_96;
  }

  v15 = *(a4 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a4 + 8);
  }

  v59 = v14;
  if (v15 != 13)
  {
    if (v15 != 19)
    {
      goto LABEL_37;
    }

    v17 = v16 >= 0 ? a4 : *a4;
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 11);
    v21 = v18 == 0x496C616974696E49 && v19 == 0x7A614C657469766ELL;
    if (!v21 || v20 != 0x696C757A614C6574)
    {
      goto LABEL_37;
    }

    __p = 0;
    v70 = 0;
    SipSession::localLazuliTemplateSdp(&__p, a2);
    v23 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "SipSession::addBodyToInvite local=", 34);
    *(v23 + 17) = 0;
    MEMORY[0x1E6923310](*(v23 + 8), __p);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (__p)
    {
      std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> const&,0>();
    }

LABEL_50:
    v36 = 0;
    v24 = 0;
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

LABEL_52:
    if (!v36)
    {
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      __p = &unk_1F5EBDEF8;
      v70 = &_bambiDomain;
      LODWORD(v71) = 1073741826;
      v49 = ImsResult::operator<<<char [42]>(&__p, "no local SDP when trying to create INVITE");
      ImsResult::ImsResult(a1, v49);
      ImsResult::~ImsResult(&__p);
      goto LABEL_96;
    }

    v42 = *(a4 + 23);
    v43 = v42;
    if ((v42 & 0x80u) != 0)
    {
      v42 = *(a4 + 8);
    }

    switch(v42)
    {
      case 14:
        if (v43 >= 0)
        {
          v55 = a4;
        }

        else
        {
          v55 = *a4;
        }

        v56 = *v55;
        v57 = *(v55 + 6);
        if (v56 == 0x76636552646E6553 && v57 == 0x657469766E497663)
        {
          v63 = v36;
          v64 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::makeLocalResumeSdp(&v63, 1);
          v48 = v64;
          if (v64)
          {
            goto LABEL_94;
          }
        }

        break;
      case 12:
        if (v43 >= 0)
        {
          v50 = a4;
        }

        else
        {
          v50 = *a4;
        }

        v51 = *v50;
        v52 = *(v50 + 8);
        if (v51 == 0x6E49656D75736552 && v52 == 1702127990)
        {
          v65 = v36;
          v66 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v54 = SipUserAgent::config(v59);
          SipSession::makeLocalResumeSdp(&v65, *(v54 + 814));
          v48 = v66;
          if (v66)
          {
            goto LABEL_94;
          }
        }

        break;
      case 10:
        v44 = v43 >= 0 ? a4 : *a4;
        v45 = *v44;
        v46 = *(v44 + 8);
        if (v45 != 0x69766E49646C6F48 || v46 != 25972)
        {
          break;
        }

        v67 = v36;
        v68 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::makeLocalHoldSdp(&v67);
        v48 = v68;
        if (!v68)
        {
          break;
        }

LABEL_94:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        break;
      default:
        break;
    }

    operator new();
  }

  if (v16 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  v28 = *v27;
  v29 = *(v27 + 5);
  if (v28 == 0x496C616974696E49 && v29 == 0x657469766E496C61)
  {
    __p = 0;
    v70 = 0;
    SipSession::localTemplateSdp(&__p, a2);
    if (__p)
    {
      std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> const&,0>();
    }

    goto LABEL_50;
  }

LABEL_37:
  v31 = *(a2 + 30);
  if (*(v31 + 2960) == 1)
  {
    v32 = *(v31 + 2944);
    v33 = *(v32 + 56);
    v34 = *(v32 + 64);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v33)
    {
      SipDialogFork::createSdpOffer(v33, "INVITE", a4, &__p);
      v35 = 0;
      v36 = __p;
      v24 = v70;
      goto LABEL_44;
    }
  }

  else
  {
    v34 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  __p = &unk_1F5EBDEF8;
  v70 = &_bambiDomain;
  LODWORD(v71) = 1073741826;
  v37 = ImsResult::operator<<<char [14]>(&__p, "can't send a ");
  v38 = ImsResult::operator<<<std::string>(v37, a4);
  v39 = ImsResult::operator<<<char [17]>(v38, " when there are ");
  v62 = *(*(a2 + 30) + 2960);
  v40 = ImsResult::operator<<<unsigned long>(v39, &v62);
  v41 = ImsResult::operator<<<char [6]>(v40, "forks");
  ImsResult::ImsResult(a1, v41);
  ImsResult::~ImsResult(&__p);
  v36 = 0;
  v24 = 0;
  v35 = 1;
LABEL_44:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_96:
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  if (v24)
  {
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_1E4E07A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void sub_1E4E07C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  ImsResult::~ImsResult(va);
  if (!v25)
  {
    JUMPOUT(0x1E4E07C54);
  }

  JUMPOUT(0x1E4E07C4CLL);
}

void SipSession::localLazuliTemplateSdp(SipSession *this, uint64_t a2)
{
  v3 = *(a2 + 1200);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = *(a2 + 1192);
    if (v6)
    {
      v7 = *(v6 + 184);
      *this = 0;
      *(this + 1) = 0;
      SDPSession::localLazuliSdp(v7);
    }

    *this = 0;
    *(this + 1) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

void SipSession::localTemplateSdp(uint64_t *__return_ptr a1@<X8>, SipSession *this@<X0>)
{
  v4 = *(this + 104);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = *(this + 103);
    if (v6)
    {
      SDPSession::localTemplateSdp(*(v6 + 192), a1);
    }

    *a1 = 0;
    a1[1] = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t ImsResult::operator<<<char [6]>(uint64_t a1, char *__s)
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

void SipSession::addLocationToMessage(double *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 103);
      if (!v7)
      {
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      v8 = *(v7 + 552);
      if (v8 && *(v8 + 4776) == 1)
      {
        v9 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Skipping Geolocation for suspicious call SIP message ", 53);
        *(v9 + 17) = 0;
        (*(**a2 + 40))(&buf);
        LoggableString::LoggableString(&__p, &buf);
        (*(*v9 + 40))(v9, &__p);
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_36;
      }

      v10 = *(a1 + 30);
      v11 = *(v10 + 232);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = *(v10 + 224);
          if (v13)
          {
            v15 = *(v13 + 248);
            v14 = *(v13 + 256);
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v15)
            {
              operator new();
            }

            v17 = *(a1 + 23);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 18) + 16))(&__p, a1 + 18);
              v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
              *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
              _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

LABEL_35:
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            goto LABEL_36;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = *(a1 + 23);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        (*(*(a1 + 18) + 16))(&__p, a1 + 18);
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
        _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }
}

void sub_1E4E08B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  ims::LocationInfo::~LocationInfo(&a15);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  _Unwind_Resume(a1);
}

void *SipMessage::addHeader<SipReplacesHeader>(SipMessage *a1)
{
  v2 = SipMessageEncodingMap::headerPrototype<SipReplacesHeader>(*(a1 + 15));
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 32))(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = SipMessage::addHeader(a1, v3, 0);
  if (!v4)
  {
    return 0;
  }
}

void SipSession::sendInvite(uint64_t a1, std::__shared_weak_count *this, uint64_t *a3, const std::string *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  SipSessionInterface::stack(&v99, this);
  if (v99.__r_.__value_.__r.__words[0])
  {
    SipSessionInterface::stack(&v98, this);
    v8 = *(v98.__r_.__value_.__r.__words[0] + 2817);
    if (v98.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v99.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99.__r_.__value_.__l.__size_);
  }

  if ((this->__vftable[6].__get_deleter)(this))
  {
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v99.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741826;
    v9 = ImsResult::operator<<<char [45]>(&v99, "can't send an INVITE in a terminated session");
    v10 = ImsLogContainer::logResult(this, v9);
    ImsResult::ImsResult(a1, v10);
LABEL_28:
    ImsResult::~ImsResult(&v99);
    return;
  }

  SipSession::clientInviteTransaction(&v99, this);
  if (v99.__r_.__value_.__r.__words[0])
  {
    v11 = 1;
  }

  else
  {
    SipSession::serverInviteTransaction(this, &v98);
    v11 = v98.__r_.__value_.__r.__words[0] != 0;
    if (v98.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98.__r_.__value_.__l.__size_);
    }
  }

  if (v99.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99.__r_.__value_.__l.__size_);
  }

  if (v11)
  {
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v99.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741838;
    v12 = ImsResult::operator<<<char [65]>(&v99, "can't send an INVITE while there is a current INVITE transaction");
    v13 = ImsLogContainer::logResult(this, v12);
    ImsResult::ImsResult(a1, v13);
    goto LABEL_28;
  }

  v14 = (*(**a3 + 120))();
  v15 = *(v14 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15 != 6 || (v16 >= 0 ? (v17 = v14) : (v17 = *v14), (v18 = *v17, v19 = *(v17 + 4), v18 == *"INVITE") ? (v20 = v19 == *"TE") : (v20 = 0), !v20))
  {
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v99.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741825;
    v21 = ImsResult::operator<<<char [31]>(&v99, "sendInvite called with method ");
    v22 = (*(**a3 + 120))();
    v23 = ImsResult::operator<<<std::string>(v21, v22);
    v24 = ImsLogContainer::logResult(this, v23);
    ImsResult::ImsResult(a1, v24);
    goto LABEL_28;
  }

  v25 = this[10].__vftable;
  if (v25[74].~__shared_weak_count != 1)
  {
    v27 = 0;
    v28 = 0;
LABEL_41:
    v90 = 1;
    goto LABEL_42;
  }

  get_deleter = v25[73].__get_deleter;
  v28 = *(get_deleter + 7);
  v27 = *(get_deleter + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v28)
  {
    goto LABEL_41;
  }

  v29 = *(v28 + 768);
  v30 = *(v28 + 776);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = SipOfferAnswer::remoteAnswerPending(v29);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v31)
  {
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v99.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741838;
    v32 = ImsResult::operator<<<char [52]>(&v99, "Can't send INVITE with offer: remote answer pending");
    v33 = ImsLogContainer::logResult(this, v32);
    ImsResult::ImsResult(a1, v33);
LABEL_63:
    ImsResult::~ImsResult(&v99);
    goto LABEL_164;
  }

  v42 = *(v28 + 768);
  v43 = *(v28 + 776);
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = SipOfferAnswer::localAnswerPending(*(*(v42 + 216) + 16), *(*(v42 + 216) + 24));
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v44)
  {
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v99.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741838;
    v45 = ImsResult::operator<<<char [51]>(&v99, "Can't send INVITE with offer: local answer pending");
    v46 = ImsLogContainer::logResult(this, v45);
    ImsResult::ImsResult(a1, v46);
    goto LABEL_63;
  }

  v90 = 0;
LABEL_42:
  v34 = this[10].__vftable;
  on_zero_shared_weak = v34[5].__on_zero_shared_weak;
  if (on_zero_shared_weak && (v91 = std::__shared_weak_count::lock(on_zero_shared_weak)) != 0)
  {
    v36 = v34[5].__get_deleter;
    if (v36)
    {
      v38 = *(v36 + 31);
      v37 = *(v36 + 32);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v89 = v37;
      if (!v38)
      {
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        v99.__r_.__value_.__l.__size_ = &_bambiDomain;
        LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741826;
        v47 = ImsResult::operator<<<char [14]>(&v99, "no user agent");
        ImsResult::ImsResult(a1, v47);
        ImsResult::~ImsResult(&v99);
        v41 = v91;
        v48 = v89;
LABEL_161:
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        goto LABEL_163;
      }

      if (SipSession::confirmed(this))
      {
LABEL_104:
        if (!SipSession::confirmed(this) || BYTE1(this[38].__vftable) == 1)
        {
          v60 = SipStack::prefs(v36);
          if (ImsPrefs::AddPreconditionToSupportedHeaderIfEnabled(v60))
          {
            v61 = SipSession::confirmed(this);
          }

          else
          {
            v61 = 0;
          }

          v62 = this[64].__vftable;
          if (v90)
          {
            std::string::basic_string[abi:ne200100]<0>(&v99, &str_24_0);
          }

          else if (*(v28 + 287) < 0)
          {
            std::string::__init_copy_ctor_external(&v99, *(v28 + 264), *(v28 + 272));
          }

          else
          {
            v99 = *(v28 + 264);
          }

          v63 = a3[1];
          v96 = *a3;
          v97 = v63;
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipPreconditions::addPreconditionsToOutgoingRequest(v62, &v99, &v96, v61);
          if (v97)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }
        }

        *&v98.__r_.__value_.__l.__data_ = 0uLL;
        v64 = a3[1];
        v95[0] = *a3;
        v95[1] = v64;
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v90)
        {
          std::string::basic_string[abi:ne200100]<0>(&v99, &str_24_0);
        }

        else if (*(v28 + 287) < 0)
        {
          std::string::__init_copy_ctor_external(&v99, *(v28 + 264), *(v28 + 272));
        }

        else
        {
          v99 = *(v28 + 264);
        }

        SipSession::sendRequest(&v98, this, v95, &v99);
        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        v65 = v98.__r_.__value_.__r.__words[0];
        if (!v98.__r_.__value_.__r.__words[0])
        {
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
          v99.__r_.__value_.__l.__size_ = &_bambiDomain;
          LODWORD(v99.__r_.__value_.__r.__words[2]) = 0x40000000;
          v70 = ImsResult::operator<<<char [31]>(&v99, "sendInvite: sendRequest failed");
          v71 = ImsLogContainer::logResult(this, v70);
          ImsResult::ImsResult(a1, v71);
          ImsResult::~ImsResult(&v99);
          v41 = v91;
          v48 = v89;
LABEL_159:
          if (v98.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v98.__r_.__value_.__l.__size_);
          }

          goto LABEL_161;
        }

        v41 = v91;
        v48 = v89;
        SipParameterMap::setParameter(v98.__r_.__value_.__r.__words[0] + 360, "InviteType", a4);
        if (v90)
        {
          if ((SipSession::confirmed(this) & 1) != 0 || (shared_weak_owners = this[34].__shared_weak_owners_) == 0 || (v67 = std::__shared_weak_count::lock(shared_weak_owners)) == 0)
          {
LABEL_148:
            v75 = (this->__vftable[1].__get_deleter)(this);
            (this->__on_zero_shared)(this, v75);
            v76 = ImsOutStream::operator<<(v75, "sendInvite[");
            (*(*v76 + 32))(v76, a4);
            v77 = ImsOutStream::operator<<(v76, "], Fork: ");
            if (v90)
            {
              v78 = "no";
            }

            else
            {
              v78 = "yes";
            }

            v79 = ImsOutStream::operator<<(v77, v78);
            v80 = ImsOutStream::operator<<(v79, " Confirmed: ");
            if (SipSession::confirmed(this))
            {
              v81 = "yes";
            }

            else
            {
              v81 = "no";
            }

            v82 = ImsOutStream::operator<<(v80, v81);
            (*(*v82 + 64))(v82, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v82[17] = 0;
            v83 = this[32].__vftable;
            shared_owners = this[32].__shared_owners_;
            if (shared_owners)
            {
              atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
            }

            if (!v83)
            {
              SipTypedStateMachine<SipSessionState>::transitionToState(&this[29].__shared_weak_owners_, 1);
            }

            *(a1 + 24) = 0u;
            *(a1 + 40) = 0u;
            *(a1 + 56) = 0u;
            *(a1 + 72) = 0u;
            *a1 = &unk_1F5EBDEF8;
            *(a1 + 8) = &_bambiDomain;
            *(a1 + 16) = 0;
            goto LABEL_159;
          }

          v68 = v67;
          v69 = this[34].__shared_owners_;
          if (v69 && BambiCall::shouldFakeLocalQOS(v69))
          {
            v92[0] = MEMORY[0x1E69E9820];
            v92[1] = 0x40000000;
            v92[2] = ___ZN10SipSession10sendInviteENSt3__110shared_ptrI10SipRequestEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            v92[3] = &__block_descriptor_tmp_6;
            v92[4] = this;
            ctu::SharedSynchronizable<SipSessionInterface>::execute(&this[6].__shared_owners_, v92);
          }
        }

        else
        {
          v72 = *(v28 + 768);
          v68 = *(v28 + 776);
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = *a3;
          v74 = a3[1];
          v93[0] = v73;
          v93[1] = v74;
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipOfferAnswer::updateWithOutgoingRequest(v72, v93, v65 + 312, v94);
          ImsResult::~ImsResult(v94);
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          if (!v68)
          {
            goto LABEL_148;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        goto LABEL_148;
      }

      v88 = v38;
      if (*(SipUserAgent::config(v38) + 546) == 1)
      {
        if (v8)
        {
          if (BYTE1(this[10].__vftable[67].~__shared_weak_count_0))
          {
            v39 = 2048;
          }

          else
          {
            v39 = 0x20000;
          }
        }

        else
        {
          v39 = 1;
        }

        v86 = v39;
        v49 = SipMessage::header<SipAcceptContactHeader>(*a3, 1);
        v50 = SipUserAgent::config(v88);
        SipAcceptContactHeader::addValueWithServiceMaskAndParams(v49, v86, (v50 + 552));
      }

      if (*(SipUserAgent::config(v38) + 548) != 1)
      {
LABEL_81:
        if (*(SipUserAgent::config(v38) + 608) == 1)
        {
          v52 = SipMessage::header<SipPEarlyMediaHeader>(*a3);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v52 + 8, "supported", "supported");
        }

        v53 = this[34].__shared_weak_owners_;
        if (v53 && (v54 = std::__shared_weak_count::lock(v53)) != 0)
        {
          v55 = v54;
          v56 = this[34].__shared_owners_;
          v85 = v55;
          if (v56 && BambiCall::isWPSCall(v56))
          {
            SipSessionInterface::stack(&v99, this);
            v57 = SipStack::prefs(v99.__r_.__value_.__l.__data_);
            v87 = ImsPrefs::WaitForRingingTimerWPSSeconds(v57);
            if (v99.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v99.__r_.__value_.__l.__size_);
            }

            if (v87)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v85 = 0;
        }

        v87 = *(SipUserAgent::config(v38) + 8);
LABEL_93:
        *&v99.__r_.__value_.__l.__data_ = 0uLL;
        ctu::SharedSynchronizable<SipSessionInterface>::weak_from_this(&v99, &this[6].__shared_owners_);
        size = v99.__r_.__value_.__l.__size_;
        if (v99.__r_.__value_.__l.__size_)
        {
          v59 = (v99.__r_.__value_.__l.__size_ + 16);
          atomic_fetch_add_explicit((v99.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          if (v87)
          {
            atomic_fetch_add_explicit(v59, 1uLL, memory_order_relaxed);
            goto LABEL_97;
          }
        }

        else if (v87)
        {
LABEL_97:
          v104 = 0;
          operator new();
        }

        if ((*(SipUserAgent::config(v88) + 35) & 1) == 0)
        {
          SipSession::startLocalQosTimerMO(this);
        }

        if (size)
        {
          std::__shared_weak_count::__release_weak(size);
          std::__shared_weak_count::__release_weak(size);
        }

        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        goto LABEL_104;
      }

      memset(&v99, 0, sizeof(v99));
      if (BambiServices::kFeatureTagMmtel[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v99, *BambiServices::kFeatureTagMmtel, *&BambiServices::kFeatureTagMmtel[8]);
      }

      else
      {
        v99 = *BambiServices::kFeatureTagMmtel;
      }

      if (!v8)
      {
LABEL_79:
        SipMessage::addHeader(*a3, "P-Preferred-Service", &v99, 0);
        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        goto LABEL_81;
      }

      SipSessionInterface::stack(&v98, this);
      isGroupChatUri = SipStack::isGroupChatUri(v98.__r_.__value_.__l.__data_, &this[10].__vftable[6]);
      if (v98.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98.__r_.__value_.__l.__size_);
      }

      if (isGroupChatUri)
      {
        std::string::basic_string[abi:ne200100]<0>(&v98, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
        v38 = v88;
        if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_78:
          v99 = v98;
          goto LABEL_79;
        }
      }

      else
      {
        if (BYTE1(this[10].__vftable[67].~__shared_weak_count_0) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v98, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.largemsg");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v98, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session");
        }

        v38 = v88;
        if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_78;
        }
      }

      operator delete(v99.__r_.__value_.__l.__data_);
      goto LABEL_78;
    }
  }

  else
  {
    v91 = 0;
  }

  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v99.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  v99.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(v99.__r_.__value_.__r.__words[2]) = 1073741826;
  v40 = ImsResult::operator<<<char [12]>(&v99, "no sipstack");
  ImsResult::ImsResult(a1, v40);
  ImsResult::~ImsResult(&v99);
  v41 = v91;
  if (v91)
  {
LABEL_163:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

LABEL_164:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}