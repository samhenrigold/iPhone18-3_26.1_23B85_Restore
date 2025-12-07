void std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<NSString * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "0");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "");
  return a1;
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v8, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create(212, v8, exception);
  }

  if (!v2)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_1AE572A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void nlohmann::detail::invalid_iterator::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "invalid_iterator");
  nlohmann::detail::exception::name(a1, &v14);
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

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F241FDD0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1AE572BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::invalid_iterator::~invalid_iterator(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(unsigned __int8 **result)
{
  if (!*result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++();
  }

  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
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
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

double nlohmann::detail::int_to_string<std::string>(uint64_t a1, unint64_t __val)
{
  v5 = *MEMORY[0x1E69E9840];
  std::to_string(&v4, __val);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

uint64_t nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key(void *a1)
{
  v3[3] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key();
  }

  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v3, "cannot use key() for non-object iterators");
    nlohmann::detail::invalid_iterator::create(207, v3, exception);
  }

  return a1[1] + 32;
}

void sub_1AE572EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(unsigned __int8 **a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, v4);
    }
  }

  return result;
}

void sub_1AE573098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

void FrameworkConfiguration::getExternalConfiguration(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a1 + 3;
  v5 = a1[3];
  if (v5)
  {
    if (*a1 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *a1;
    }

    v9 = *(a1[2] + 12);
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*>(v5, v8 + v9, v24, 1, &v22);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v24);
    if (v22 == 2)
    {
      v24[0] = &v22;
      v24[1] = 0;
      v24[2] = 0;
      v25 = 0;
      v26 = 0x8000000000000000;
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_begin(v24);
      v21[0] = &v22;
      memset(&v21[1], 0, 24);
      v21[4] = 0x8000000000000000;
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v21);
      while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==(v24, v21))
      {
        v10 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(v24);
        v11 = v10;
        if (*v10 == 1)
        {
          v20 = 0xAAAAAAAAAAAAAAAALL;
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v19[0] = v12;
          v19[1] = v12;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<char const(&)[5]>(v10, "kind", v19);
          v18 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v17[0] = v13;
          v17[1] = v13;
          nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v17, v11);
          nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v17);
          if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==(v19, v17))
          {
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(v19);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(&v16, a2);
          }
        }

        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v24);
      }
    }

    else
    {
      {
        FrameworkConfiguration::getExternalConfiguration(v6, v8 + v9, v15);
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v22);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v23, v22);
  }

  else
  {
    {
      FrameworkConfiguration::getExternalConfiguration(v14);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  }
}

void sub_1AE5733D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v2 - 128);
    if (a2 == 2)
    {
      __cxa_begin_catch(exception_object);
      *(v2 - 144) = 0;
      *(v2 - 136) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v2 - 144));
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v2 - 144));
      __cxa_end_catch();
      JUMPOUT(0x1AE573164);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator*(unsigned __int8 **a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
  }

  v3 = *result;
  if (v3 == 1)
  {
    v6 = a1[1];
    if (v6 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }

    return v6 + 56;
  }

  else if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*();
    }
  }

  else
  {
    if (!*result)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, exception);
    }

    if (a1[4])
    {
      v4 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v8, "cannot get value");
      nlohmann::detail::invalid_iterator::create(214, v8, v4);
    }
  }

  return result;
}

void sub_1AE5735AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<char const(&)[5]>@<X0>(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(a3, a1);
  result = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v7);
  if (*a1 == 1)
  {
    result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char [5]>(*(a1 + 8), a2);
    *(a3 + 8) = result;
  }

  return result;
}

BOOL nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v8, "cannot compare iterators of different containers");
    nlohmann::detail::invalid_iterator::create(212, v8, exception);
  }

  if (!v2)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==();
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[4];
    v5 = a2[4];
  }

  return v4 == v5;
}

void sub_1AE573760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>(a2);
}

void std::__shared_ptr_emplace<FrameworkConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F241FDF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2703F50);
}

_BYTE *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(_BYTE *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[1]>("");
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *a1 = 0;
    return a1;
  }

  *a1 = 0;
  return a1;
}

void nlohmann::detail::other_error::~other_error(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13[18] = *MEMORY[0x1E69E9840];
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 8) = 0;
  *a5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a5);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v11, a3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>(a1, a2, v11, a4, v12);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parse(v12, 1, a5);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v13);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v12);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v11);
}

void sub_1AE573B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v13 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v12);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = *MEMORY[0x1E69E9840];
  *&v8 = a1;
  *(&v8 + 1) = a2;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v9, a3);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parser(a5, &v8, v9, v5);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v9);
}

void sub_1AE573C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parse(uint64_t a1, int a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v36 = v6;
    v37 = v6;
    *&v35[16] = v6;
    *&v35[32] = v6;
    *v35 = v6;
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v34, a1);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(v35, a3, v34, *(a1 + 176));
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v34);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v35);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    if (a2)
    {
      v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
      *(a1 + 32) = v7;
      if (v7 != 15)
      {
        v8 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v33);
        v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(v26, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 15, v26, &__p);
        nlohmann::detail::parse_error::create(101, &v29, &__p, &v31);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(v35, v8, &v33, &v31);
        v31.__vftable = &unk_1F241FAF8;
        MEMORY[0x1B2703DF0](v32);
        std::exception::~exception(&v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (BYTE8(v38) == 1)
    {
      v24[0] = 9;
      v9 = v24;
      v25 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
      v10 = *a3;
      *a3 = v24[0];
      v24[0] = v10;
      v11 = *(a3 + 8);
      *(a3 + 8) = v25;
      v25 = v11;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
      v12 = v24[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(v35);
        return;
      }

      v22[0] = 0;
      v9 = v22;
      v23 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
      v18 = *a3;
      *a3 = v22[0];
      v22[0] = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = v23;
      v23 = v19;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
      v12 = v22[0];
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v9 + 1, v12);
    goto LABEL_27;
  }

  v13 = *(a1 + 176);
  *&v35[40] = 0xAAAAAAAAAAAAAA00;
  *v35 = a3;
  memset(&v35[8], 0, 32);
  v35[41] = v13;
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v35);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  if (a2)
  {
    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 != 15)
    {
      v15 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v33);
      v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(v26, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 15, v26, &__p);
      nlohmann::detail::parse_error::create(101, &v29, &__p, &v31);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(v35, v15, &v33, &v31);
      v31.__vftable = &unk_1F241FAF8;
      MEMORY[0x1B2703DF0](v32);
      std::exception::~exception(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v35[40] == 1)
  {
    v20[0] = 9;
    v21 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v16 = *a3;
    *a3 = v20[0];
    v20[0] = v16;
    v17 = *(a3 + 8);
    *(a3 + 8) = v21;
    v21 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v21, v20[0]);
  }

  if (*&v35[8])
  {
    *&v35[16] = *&v35[8];
    operator delete(*&v35[8]);
  }
}

void sub_1AE57407C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  nlohmann::detail::parse_error::~parse_error(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  v44 = *(v42 - 200);
  if (v44)
  {
    *(v42 - 192) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parser(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_decimal_point();
  *(a1 + 176) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  return a1;
}

void sub_1AE574284(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v1 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_decimal_point()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::skip_bom(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v8[0] = 1819047278;
            v5 = a1;
            v6 = 4;
            v7 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v8[0] = 1702195828;
            v5 = a1;
            v6 = 4;
            v7 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v8, "false", 5);
          v5 = a1;
          v6 = 5;
          v7 = 2;
        }

        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(v5, v8, v6, v7);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(a1);
    default:
      goto LABEL_47;
  }
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::skip_bom(unsigned __int8 **a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1, v2);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    *(a1 + 96) = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  if (*(a1 + 16) != 34)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string();
  }

  while (2)
  {
    v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_86;
        }

        v8 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (codepoint >= 0x110000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string();
          }

          if (codepoint > 0x7F)
          {
            if (codepoint > 0x7FF)
            {
              if (HIWORD(codepoint))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(v8, (a1 + 72), &v13);
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_1AE588270;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_1AE588260;
        goto LABEL_5;
      case 238:
        v7 = xmmword_1AE588250;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_1AE5882DC;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_1AE5882F4;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_1AE58830C;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v5 = 5;
    }

    else
    {
      if (v2 != 45)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number();
      }

      v4 = (a1 + 72);
      std::string::push_back((a1 + 72), 45);
      v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      if ((v17 - 49) < 9)
      {
        v2 = *v3;
        v5 = 6;
        goto LABEL_3;
      }

      if (v17 != 48)
      {
        v21 = "invalid number; expected digit after '-'";
        goto LABEL_55;
      }

      std::string::push_back((a1 + 72), *v3);
      v5 = 6;
    }

    v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    if (v18 == 101 || v18 == 69)
    {
      v6 = (a1 + 72);
      goto LABEL_42;
    }

    if (v18 != 46)
    {
      goto LABEL_9;
    }

    v6 = (a1 + 72);
    goto LABEL_34;
  }

  v4 = (a1 + 72);
  v5 = 5;
LABEL_3:
  std::string::push_back(v4, v2);
  v6 = (a1 + 72);
  while (1)
  {
    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    std::string::push_back((a1 + 72), *v3);
  }

  if (v7 != 46)
  {
    if (v7 != 69 && v7 != 101)
    {
LABEL_9:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1, v8);
      v27[0] = 0;
      *__error() = 0;
      v9 = (a1 + 72);
      v10 = *(a1 + 95);
      v11 = (a1 + 72);
      if (v5 == 5)
      {
        if (v10 < 0)
        {
          v11 = *v9;
        }

        v12 = strtoull(v11, v27, 10);
        v13 = *(a1 + 95);
        if (v13 < 0)
        {
          v9 = *(a1 + 72);
          v13 = *(a1 + 80);
        }

        if (v27[0] != v9 + v13)
        {
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number();
        }

        if (!*__error())
        {
          result = 5;
          v15 = 112;
LABEL_24:
          *(a1 + v15) = v12;
          return result;
        }
      }

      else
      {
        if (v10 < 0)
        {
          v11 = *v9;
        }

        v12 = strtoll(v11, v27, 10);
        v16 = *(a1 + 95);
        if (v16 < 0)
        {
          v9 = *(a1 + 72);
          v16 = *(a1 + 80);
        }

        if (v27[0] != v9 + v16)
        {
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number();
        }

        if (!*__error())
        {
          result = 6;
          v15 = 104;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_34:
  std::string::push_back(v6, *(a1 + 128));
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 > 9)
  {
    v21 = "invalid number; expected digit after '.'";
    goto LABEL_55;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  }

  while ((v19 - 48) < 0xA);
  if (v19 != 101 && v19 != 69)
  {
    goto LABEL_45;
  }

LABEL_42:
  std::string::push_back(v6, *(a1 + 16));
  v22 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if ((v22 - 48) >= 0xA)
  {
    if (v22 == 45 || v22 == 43)
    {
      v23 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 < 0xA)
      {
        goto LABEL_44;
      }

      v21 = "invalid number; expected digit after exponent sign";
    }

    else
    {
      v21 = "invalid number; expected '+', '-', or digit after exponent";
    }

LABEL_55:
    *(a1 + 96) = v21;
    return 14;
  }

  v23 = (a1 + 72);
LABEL_44:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(a1, (a1 + 16), v23);
LABEL_45:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1, v20);
  v27[0] = 0;
  *__error() = 0;
LABEL_46:
  v24 = (a1 + 72);
  v25 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v25 = *v24;
  }

  *(a1 + 120) = strtod(v25, v27);
  v26 = *(a1 + 95);
  if (v26 < 0)
  {
    v24 = *(a1 + 72);
    v26 = *(a1 + 80);
  }

  if (v27[0] != v24 + v26)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number();
  }

  return 7;
}

void sub_1AE574EBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(uint64_t result, uint64_t a2)
{
  v2 = (result + 32);
  v3 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v3 || (v2 = (result + 40), (v3 = *(result + 40)) != 0))
  {
    *v2 = v3 - 1;
  }

  if (*(result + 16) != -1)
  {
    v4 = *(result + 56);
    if (*(result + 48) == v4)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget();
    }

    *(result + 56) = v4 - 1;
  }

  return result;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

void sub_1AE5750A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 117)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1, (a1 + 16), &v2);
  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(std::string *a1, _DWORD *a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a2, a3, a1, a3, &v4);
  return v4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, uint64_t *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2, a1 + 112, 0);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v30, &v32);
          v13 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v34, &v32);
          nlohmann::detail::out_of_range::~out_of_range(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    std::vector<BOOL>::push_back(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(&v28, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 0, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = &unk_1F241FAF8;
      MEMORY[0x1B2703DF0](&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    std::string::basic_string[abi:ne200100]<0>(&v28, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 16, &v28, &__p);
    nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
    v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key(a2, a1 + 112);
    }

    goto LABEL_64;
  }

  v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(&v28, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 10, &v28, &__p);
        nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
        v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(&v28, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 11, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key(a2, a1 + 112);
  }

LABEL_64:
  v22 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  std::string::basic_string[abi:ne200100]<0>(&v28, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 4, &v28, &__p);
  nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
  v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  nlohmann::detail::parse_error::~parse_error(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1AE575AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::exception a30)
{
  nlohmann::detail::parse_error::~parse_error(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  v32 = *(v30 - 64);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::detail::parse_error *a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    v5 = *(a4 + 2) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = nlohmann::detail::parse_error::parse_error(exception, a4);
        v9 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v10 = __cxa_allocate_exception(0x20uLL);
        v7 = nlohmann::detail::invalid_iterator::invalid_iterator(v10, a4);
        v9 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::type_error::type_error(v11, a4);
          v9 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v12 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::out_of_range::out_of_range(v12, a4);
          v9 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::other_error::other_error(v6, a4);
          v9 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_15:
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error();
      }
    }

    __cxa_throw(v7, v8, v9);
  }

  return 0;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1AE575E44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, nlohmann::detail::exception *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v30, 170, sizeof(v30));
  std::string::basic_string[abi:ne200100]<0>(&v24, "parse_error");
  nlohmann::detail::exception::name(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::parse_error::position_string(a2, &__p);
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

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  *&v30[16] = *(&v19->__r_.__value_.__l + 2);
  *v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v30[23] >= 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = *v30;
  }

  nlohmann::detail::exception::exception(a4, a1, v22);
  *a4 = &unk_1F241FEE0;
  *(a4 + 4) = v21;
  if ((v30[23] & 0x80000000) != 0)
  {
    operator delete(*v30);
  }
}

void sub_1AE576088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v5 = a2;
  v41 = *MEMORY[0x1E69E9840];
  memset(a4, 170, sizeof(std::string));
  std::string::basic_string[abi:ne200100]<0>(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &__p);
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

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!v5)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(v13);
  std::string::basic_string[abi:ne200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!v5)
  {
    return;
  }

LABEL_50:
  v30 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(v5);
  std::string::basic_string[abi:ne200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1AE576498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::~parse_error(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v38);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v36, &v38);
          v18 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v29, &v40, &v38);
          nlohmann::detail::out_of_range::~out_of_range(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100]((a2 + 1), &v38);
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        std::vector<BOOL>::push_back(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100]((a2 + 1), &v38);
        v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
          *v36 = *(a1 + 64);
          v37 = *(a1 + 80);
          std::string::basic_string[abi:ne200100]<0>(&v34, "object key");
          nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 4, &v34, &__p);
          nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
          v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v4->~exception, &std::piecewise_construct, &v38, &v40) + 7;
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        std::vector<BOOL>::push_back(&v41, &v38);
        v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 0, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = &unk_1F241FAF8;
        MEMORY[0x1B2703DF0](&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 16, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2);
    }

    else
    {
      if (v5 == 4)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2, v4);
      }

      v38.__vftable = *(a1 + 152);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(&v34, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 10, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
      *v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(&v34, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 11, &v34, &__p);
      nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
      v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, &v4->~exception, &std::piecewise_construct, &v38, &v40) + 7;
  v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &v40);
  *v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  std::string::basic_string[abi:ne200100]<0>(&v34, "object separator");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(a1, 12, &v34, &__p);
  nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
  v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  nlohmann::detail::parse_error::~parse_error(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_1AE576E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::exception a30)
{
  nlohmann::detail::parse_error::~parse_error(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::detail::parse_error *a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    v5 = *(a4 + 2) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = nlohmann::detail::parse_error::parse_error(exception, a4);
        v9 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v10 = __cxa_allocate_exception(0x20uLL);
        v7 = nlohmann::detail::invalid_iterator::invalid_iterator(v10, a4);
        v9 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::type_error::type_error(v11, a4);
          v9 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v12 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::out_of_range::out_of_range(v12, a4);
          v9 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::other_error::other_error(v6, a4);
          v9 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_15:
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error();
      }
    }

    __cxa_throw(v7, v8, v9);
  }

  return 0;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1 + 96, a3);
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  v7 = 1;
  std::vector<BOOL>::push_back(a1 + 32, &v7);
  return a1;
}

void sub_1AE5771E4(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100]((v1 + 12));
  v5 = v1[7];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(result, v7);
    v4 = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1AE5773A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = v4 + a4;
  a1[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*a1 + 8 * v6) = 0;
  }

  v7 = *(a2 + 2);
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = *a1 + 8 * (v4 >> 6);
  v16 = *a2;
  v17 = v7;
  v14 = v8;
  v15 = v9;
  v12 = v10;
  v13 = v4 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v16, &v14, &v12, v11);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 2);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v9;
  v21 = v9;
  v18 = v5;
  v19 = v6;
  v16 = v7;
  v17 = v8;
  v10 = *(a3 + 2);
  v14 = *a3;
  v15 = v10;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v18, &v16, &v14, &v20);
  v11 = DWORD2(v20);
  v12 = v21;
  v13 = DWORD2(v21);
  *a4 = v20;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(uint64_t *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 2;
  v5 = (a1 + 1);
  v19 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 0);
  std::vector<BOOL>::push_back((v4 + 2), &v19);
  LOBYTE(v15) = 1;
  v17 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, &v15, 1);
  v18 = v6;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](v5, &v18);
  if (a2 != -1)
  {
    v7 = *(*v4 - 8);
    if (v7)
    {
      v8 = *v7;
      if (v8 > 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_1AE588350[v8];
      }

      if (v9 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, a2);
        v12 = std::string::insert(&v14, 0, "excessive object size: ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v16 = v12->__r_.__value_.__r.__words[2];
        v15 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        nlohmann::detail::out_of_range::create(408, &v15, exception);
      }
    }
  }

  return 1;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    v3 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v21, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    v5 = *v4;
    *v4 = v21[0];
    v21[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v22[0];
    v22[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v22, v21[0]);
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      if (*v10 - 1 <= 1)
      {
        *&v20[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v20 = v11;
        *&v20[16] = v11;
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v20, v10);
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_begin(v20);
        v12 = *(*(a1 + 16) - 8);
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v19 = v13;
        *&v19[16] = v13;
        *&v19[32] = 0xAAAAAAAAAAAAAAAALL;
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v19, v12);
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v19);
        if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==(v20, v19))
        {
          while (*nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(v20) != 9)
          {
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v20);
            v14 = *(*(a1 + 16) - 8);
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v19 = v15;
            *&v19[16] = v15;
            *&v19[32] = 0xAAAAAAAAAAAAAAAALL;
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v19, v14);
            nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v19);
            if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator==(v20, v19))
            {
              return 1;
            }
          }

          v16 = *(*(a1 + 16) - 8);
          *v19 = *v20;
          *&v19[8] = *&v20[8];
          *&v19[24] = *&v20[24];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::erase<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v16, v19, v18);
        }
      }
    }
  }

  return 1;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key(uint64_t a1, uint64_t a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = 0xAAAAAAAAAAAAAAAALL;
  v2[1] = 0xAAAAAAAAAAAAAAAALL;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v2, a2);
}

void sub_1AE577C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(uint64_t *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 2;
  v5 = (a1 + 1);
  v19 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 2);
  std::vector<BOOL>::push_back((v4 + 2), &v19);
  LOBYTE(v15) = 2;
  v17 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, &v15, 1);
  v18 = v6;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](v5, &v18);
  if (a2 != -1)
  {
    v7 = *(*v4 - 8);
    if (v7)
    {
      v8 = *v7;
      if (v8 > 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_1AE588350[v8];
      }

      if (v9 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, a2);
        v12 = std::string::insert(&v14, 0, "excessive array size: ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v16 = v12->__r_.__value_.__r.__words[2];
        v15 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        nlohmann::detail::out_of_range::create(408, &v15, exception);
      }
    }
  }

  return 1;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v12, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    v5 = *v4;
    *v4 = v12[0];
    v12[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v13[0];
    v13[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v13, v12[0]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array();
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 == v7 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v10 = *(v7 - 16);
    if (*v10 == 2)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](*(v10 + 8), (*(*(v10 + 8) + 8) - 16));
    }
  }

  return 1;
}

void nlohmann::detail::out_of_range::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_of_range");
  nlohmann::detail::exception::name(a1, &v14);
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

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F241FEA0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1AE5780B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::out_of_range::~out_of_range(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

uint64_t std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(uint64_t a1, int a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28[0] = 0xAAAAAAAAAAAAAAAALL;
    v6 = *a2;
    LOBYTE(v27) = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(v28, v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v25[0] = v27;
        v26 = v28[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
        LOBYTE(v27) = 0;
        v28[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v12 = *v11;
        *v11 = v25[0];
        v25[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v26;
        v26 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), &v27);
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, v27);
          return v10;
        }

        if (v9 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v23[0] = v27;
              v24 = v28[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
              LOBYTE(v27) = 0;
              v28[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v17 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v18 = *v17;
              *v17 = v23[0];
              v23[0] = v18;
              v19 = *(v17 + 8);
              *(v17 + 8) = v24;
              v24 = v19;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE5784B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(a1, v10);
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int8 *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->(unsigned __int8 **a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  result = *a1;
  if (!result)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
  }

  v3 = *result;
  if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
    }
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    if (v4 == (*(result + 1) + 8))
    {
      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->();
    }

    return v4 + 56;
  }

  else if (a1[4])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v7, "cannot get value");
    nlohmann::detail::invalid_iterator::create(214, v7, exception);
  }

  return result;
}

void sub_1AE578760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::erase<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "iterator does not fit current value");
    nlohmann::detail::invalid_iterator::create(202, &v24, exception);
  }

  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v6;
  *(a3 + 16) = v6;
  v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(a3, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v7);
  v8 = *a1;
  if ((v8 - 3) < 6)
  {
    if (a2[4])
    {
      v18 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v24, "iterator out of range");
      nlohmann::detail::invalid_iterator::create(205, &v24, v18);
    }

    if (v8 == 8)
    {
      v10 = (a1 + 8);
      v9 = *(a1 + 1);
      v16 = *v9;
      if (*v9)
      {
        v9[1] = v16;
        v11 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      if (v8 != 3)
      {
LABEL_15:
        *a1 = 0;

        return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
      }

      v10 = (a1 + 8);
      v9 = *(a1 + 1);
      if (*(v9 + 23) < 0)
      {
        v11 = *v9;
LABEL_13:
        operator delete(v11);
        v9 = *v10;
      }
    }

    operator delete(v9);
    *v10 = 0;
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::erase(*(a1 + 1), a2[1]);
    *(a3 + 8) = result;
  }

  else
  {
    if (v8 != 2)
    {
      v19 = __cxa_allocate_exception(0x20uLL);
      v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
      std::string::basic_string[abi:ne200100]<0>(&v23, v20);
      v21 = std::string::insert(&v23, 0, "cannot use erase() with ");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v25 = v21->__r_.__value_.__r.__words[2];
      v24 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(307, &v24, v19);
    }

    v12 = *(a1 + 1);
    v13 = a2[2];
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v24, (v13 + 16), *(v12 + 8), v13);
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v12, v14);
    *(a3 + 16) = v13;
  }

  return result;
}

void sub_1AE578A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__remove_node_pointer(a1, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    do
    {
      v10[0] = *v5;
      v11[0] = *(v5 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      *v5 = 0;
      *(v5 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11[0];
      v11[0] = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, v6, a2);
  if (!result)
  {
    memset(&v6[1], 170, 24);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1AE5791AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann10basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS8_14adl_serializerENSB_IhNS4_IhEEEEEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSK_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENST_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  return this;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(uint64_t *a1, void ****a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v6 = *a2;
    LOBYTE(v27) = 7;
    v28[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v25[0] = v27;
        v26 = v28[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
        LOBYTE(v27) = 0;
        v28[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v12 = *v11;
        *v11 = v25[0];
        v25[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v26;
        v26 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), &v27);
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, v27);
          return v10;
        }

        if (v9 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v23[0] = v27;
              v24 = v28[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
              LOBYTE(v27) = 0;
              v28[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v17 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v18 = *v17;
              *v17 = v23[0];
              v23[0] = v18;
              v19 = *(v17 + 8);
              *(v17 + 8) = v24;
              v24 = v19;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE579578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v27 = 0xAAAAAAAAAAAAAA04;
    v28[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v25[0] = v27;
        v26 = v28[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
        LOBYTE(v27) = 0;
        v28[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v12 = *v11;
        *v11 = v25[0];
        v25[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v26;
        v26 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), &v27);
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, v27);
          return v10;
        }

        if (v9 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v23[0] = v27;
              v24 = v28[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
              LOBYTE(v27) = 0;
              v28[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v17 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v18 = *v17;
              *v17 = v23[0];
              v23[0] = v18;
              v19 = *(v17 + 8);
              *(v17 + 8) = v24;
              v24 = v19;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE579870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(uint64_t *a1, uint64_t a2, char a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v26 = 0xAAAAAAAAAAAAAA00;
    v27[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v26);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v26);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v24[0] = v26;
        v25 = v27[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v26);
        LOBYTE(v26) = 0;
        v27[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        v11 = *v10;
        *v10 = v24[0];
        v24[0] = v11;
        v12 = *(v10 + 8);
        *(v10 + 8) = v25;
        v25 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v25, v24[0]);
        goto LABEL_16;
      }

      v7 = *(v6 - 8);
      if (v7)
      {
        v8 = *v7;
        if (v8 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v7 + 1), &v26);
LABEL_16:
          v9 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v26);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v27, v26);
          return v9;
        }

        if (v8 == 1)
        {
          v13 = a1[8];
          if (v13)
          {
            v14 = v13 - 1;
            v15 = *(a1[7] + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v14;
            if ((v15 >> v14))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v22[0] = v26;
              v23 = v27[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v26);
              LOBYTE(v26) = 0;
              v27[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
              v16 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
              v17 = *v16;
              *v16 = v22[0];
              v22[0] = v17;
              v18 = *(v16 + 8);
              *(v16 + 8) = v23;
              v23 = v18;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v23, v22[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v20 = "not key_keep_stack.empty()";
          v21 = 615;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v21 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v21, v20);
      }
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE579B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(uint64_t *a1, void ****a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v27 = 0xAAAAAAAAAAAAAA05;
    v28[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v25[0] = v27;
        v26 = v28[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
        LOBYTE(v27) = 0;
        v28[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v12 = *v11;
        *v11 = v25[0];
        v25[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v26;
        v26 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), &v27);
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, v27);
          return v10;
        }

        if (v9 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v23[0] = v27;
              v24 = v28[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
              LOBYTE(v27) = 0;
              v28[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v17 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v18 = *v17;
              *v17 = v23[0];
              v23[0] = v18;
              v19 = *(v17 + 8);
              *(v17 + 8) = v24;
              v24 = v19;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE579E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(uint64_t *a1, uint64_t a2, char a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v5[0] = 0xAAAAAAAAAAAAAAAALL;
    v5[1] = 0xAAAAAAAAAAAAAAAALL;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v5, a2);
  }

  return 0;
}

void sub_1AE57A13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(uint64_t *a1, void ****a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!v3)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  if ((*(a1[4] + (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v3 - 1)))
  {
    v6 = *a2;
    v27 = 0xAAAAAAAAAAAAAA06;
    v28[0] = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    if (a3 & 1) != 0 || (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v25[0] = v27;
        v26 = v28[0];
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
        LOBYTE(v27) = 0;
        v28[0] = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v12 = *v11;
        *v11 = v25[0];
        v25[0] = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v26;
        v26 = v13;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v26, v25[0]);
        goto LABEL_16;
      }

      v8 = *(v7 - 8);
      if (v8)
      {
        v9 = *v8;
        if (v9 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v8 + 1), &v27);
LABEL_16:
          v10 = 1;
LABEL_18:
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v28, v27);
          return v10;
        }

        if (v9 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *(a1[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
            a1[8] = v15;
            if ((v16 >> v15))
            {
              if (!a1[10])
              {
                __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
              }

              v23[0] = v27;
              v24 = v28[0];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
              LOBYTE(v27) = 0;
              v28[0] = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v17 = a1[10];
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              v18 = *v17;
              *v17 = v23[0];
              v23[0] = v18;
              v19 = *(v17 + 8);
              *(v17 + 8) = v24;
              v24 = v19;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  return 0;
}

void sub_1AE57A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

nlohmann::detail::parse_error *nlohmann::detail::parse_error::parse_error(nlohmann::detail::parse_error *this, const nlohmann::detail::parse_error *a2)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x1B2703DE0](this + 16, a2 + 16);
  *this = &unk_1F241FEE0;
  *(this + 4) = *(a2 + 4);
  return this;
}

nlohmann::detail::out_of_range *nlohmann::detail::out_of_range::out_of_range(nlohmann::detail::out_of_range *this, const nlohmann::detail::out_of_range *a2)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x1B2703DE0](this + 16, a2 + 16);
  *this = &unk_1F241FEA0;
  return this;
}

nlohmann::detail::invalid_iterator *nlohmann::detail::invalid_iterator::invalid_iterator(nlohmann::detail::invalid_iterator *this, const nlohmann::detail::invalid_iterator *a2)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x1B2703DE0](this + 16, a2 + 16);
  *this = &unk_1F241FDD0;
  return this;
}

nlohmann::detail::type_error *nlohmann::detail::type_error::type_error(nlohmann::detail::type_error *this, const nlohmann::detail::type_error *a2)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x1B2703DE0](this + 16, a2 + 16);
  *this = &unk_1F241FB38;
  return this;
}

nlohmann::detail::other_error *nlohmann::detail::other_error::other_error(nlohmann::detail::other_error *this, const nlohmann::detail::other_error *a2)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x1B2703DE0](this + 16, a2 + 16);
  *this = &unk_1F241FE60;
  return this;
}

void nlohmann::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
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
  *a2 = *v10;
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

void sub_1AE57A83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
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

const char *nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_1E7A2A5C0[a1];
  }
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 144), *(a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20[0] = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(v21, v9);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v10 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    v11 = *v10;
    *v10 = v20[0];
    v20[0] = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21[0];
    v21[0] = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v21, v20[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(v6, a2);
      }

      else
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(v6, a2);
        v8 = v7 + 16;
      }

      *(v6 + 8) = v8;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v14 = *a2;
      v18[0] = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v19, v14);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v15 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      v16 = *v15;
      *v15 = v18[0];
      v18[0] = v16;
      v17 = *(v15 + 8);
      *(v15 + 8) = v19;
      v19 = v17;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v19, v18[0]);
      return a1[4];
    }
  }
}

unsigned __int8 *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__construct_one_at_end[abi:ne200100]<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  *v3 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(v3 + 8, v4);
  result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  *(a1 + 8) = v3 + 16;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::detail::value_t>(uint64_t a1, unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(v8 + 8, v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v18 + 16;
  v10 = *(a1 + 8);
  v11 = &v17[*a1 - v10];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1AE57AC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(void *a1, void ****a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 7;
    v22[0] = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22[0];
    v22[0] = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 7;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 7;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<double &>(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v18 = 0uLL;
  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1AE57AF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(void *a1, unsigned __int8 *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 4;
    v22[0] = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22[0];
    v22[0] = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 4;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 4;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<BOOL &>(uint64_t a1, unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v18 = 0uLL;
  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1AE57B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v17[0] = 0;
    v18[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v8 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    v9 = *v8;
    *v8 = v17[0];
    v17[0] = v9;
    v10 = *(v8 + 8);
    *(v8 + 8) = v18[0];
    v18[0] = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v18, v17[0]);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v7 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(v5);
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v7 = v6 + 16;
      }

      *(v5 + 8) = v7;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v4 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15[0] = 0;
      v16 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v12 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      v13 = *v12;
      *v12 = v15[0];
      v15[0] = v13;
      v14 = *(v12 + 8);
      *(v12 + 8) = v16;
      v16 = v14;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<decltype(nullptr)>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  *&v15 = v6 + 16;
  v7 = *(a1 + 8);
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1AE57B5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(void *a1, void ****a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 5;
    v22[0] = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22[0];
    v22[0] = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 5;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 5;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<long long &>(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v18 = 0uLL;
  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1AE57B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (a1[1] != v2)
  {
    v3 = *(v2 - 8);
    v4 = *v3;
    if (v4 == 2)
    {
      v5 = *(v3 + 1);
      if (v5[1] < v5[2])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v5[1], a2);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(v5, a2);
    }

    if (v4 == 1)
    {
      if (a1[4])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v6, a2);
      }

      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
    }

    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v7, a2);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&>(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 3 > v3)
    {
      v3 = v5 >> 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF0)
    {
      v6 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v6);
    }

    v7 = (16 * v2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(16 * v2, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void sub_1AE57BBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(void *a1, void ****a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v21[0] = 6;
    v22[0] = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v11 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    v12 = *v11;
    *v11 = v21[0];
    v21[0] = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v22[0];
    v22[0] = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v22, v21[0]);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = *v4;
    if (v5 == 2)
    {
      v6 = *(v4 + 1);
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 16))
      {
        v9 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(v6, a2);
      }

      else
      {
        *(v7 + 8) = 0;
        v8 = *a2;
        *v7 = 6;
        *(v7 + 8) = v8;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
        v9 = v7 + 16;
      }

      *(v6 + 8) = v9;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v5 != 1)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      if (!a1[4])
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>();
      }

      v15 = *a2;
      v19[0] = 6;
      v20 = v15;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v16 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      v17 = *v16;
      *v16 = v19[0];
      v19[0] = v17;
      v18 = *(v16 + 8);
      *(v16 + 8) = v20;
      v20 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
      return a1[4];
    }
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<unsigned long long &>(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v18 = 0uLL;
  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1AE57BF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char [5]>(uint64_t a1, std::string::value_type *__s)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), __s);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), __s) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t nlohmann::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v7 = v3 == 5 && v4 == 7;
    if (v7)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v10 = *(a1 + 1);
        v11 = *(a2 + 1);
        return v10 == v11;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == *(a2 + 1);
          }

          return result;
        }

        v10 = *(a1 + 1);
        v11 = *(a2 + 1);
        return v10 == v11;
      }

      v12 = *(a1 + 1);
    }

    return *(a2 + 1) == v12;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        return a1[8] == a2[8];
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = *(a2 + 1);
          v44[0] = *(a1 + 1);
          v44[1] = v44[0] + 24;
          v44[2] = v44[0] + 25;
          v43[0] = v5;
          v43[1] = v5 + 24;
          v43[2] = v5 + 25;
          return std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<unsigned char> const&,unsigned char const&,BOOL const&>,std::tuple<std::vector<unsigned char> const&,unsigned char const&,BOOL const&>>(&v45, v44, v43);
        }

        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *(a2 + 1);
      return v10 == v11;
    }

    return *(a1 + 1) == *(a2 + 1);
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      return 1;
    }

    v14 = *(a1 + 1);
    v15 = *(a2 + 1);
    if (v14[2] == v15[2])
    {
      v18 = *v14;
      v16 = (v14 + 1);
      v17 = v18;
      if (v18 != v16)
      {
        v19 = *v15;
        while (1)
        {
          v20 = v17[55];
          if (v20 >= 0)
          {
            v21 = v17[55];
          }

          else
          {
            v21 = *(v17 + 5);
          }

          v22 = v19[55];
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v19 + 5);
          }

          if (v21 != v22)
          {
            break;
          }

          v24 = v20 >= 0 ? v17 + 32 : *(v17 + 4);
          v25 = v23 >= 0 ? v19 + 32 : *(v19 + 4);
          if (memcmp(v24, v25, v21))
          {
            break;
          }

          result = nlohmann::operator==(v17 + 56, v19 + 56);
          if (result)
          {
            v26 = *(v17 + 1);
            v27 = v17;
            if (v26)
            {
              do
              {
                v17 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v17 = *(v27 + 2);
                v7 = *v17 == v27;
                v27 = v17;
              }

              while (!v7);
            }

            v28 = *(v19 + 1);
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = *(v19 + 2);
                v7 = *v29 == v19;
                v19 = v29;
              }

              while (!v7);
            }

            result = 1;
            v19 = v29;
            if (v17 != v16)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v3 != 2)
  {
    v30 = *(a1 + 1);
    v31 = *(a2 + 1);
    v32 = *(v30 + 23);
    if (v32 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = *(v31 + 23);
    v35 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(v31 + 8);
    }

    if (v33 == v34)
    {
      if (v32 >= 0)
      {
        v36 = *(a1 + 1);
      }

      else
      {
        v36 = *v30;
      }

      if (v35 >= 0)
      {
        v37 = *(a2 + 1);
      }

      else
      {
        v37 = *v31;
      }

      return memcmp(v36, v37, v33) == 0;
    }

    return 0;
  }

  v38 = *(a1 + 1);
  v39 = *(a2 + 1);
  v40 = *v38;
  v41 = v38[1];
  v42 = *v39;
  if (v41 - *v38 != *(v39 + 8) - *v39)
  {
    return 0;
  }

  if (v40 == v41)
  {
    return 1;
  }

  do
  {
    result = nlohmann::operator==(v40, v42);
    if (!result)
    {
      break;
    }

    v40 += 16;
    v42 += 16;
  }

  while (v40 != v41);
  return result;
}

void sub_1AE57C520(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<unsigned char> const&,unsigned char const&,BOOL const&>,std::tuple<std::vector<unsigned char> const&,unsigned char const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = **a2;
  v7 = *(*a2 + 8) - v6;
  return v7 == *(v5 + 8) - *v5 && !memcmp(v6, *v5, v7) && **(a2 + 8) == *a3[1] && **(a2 + 16) == *a3[2];
}

void sub_1AE57CBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  CoreAnalytics::ConfigurationObserver::~ConfigurationObserver(v14);

  operator delete(v17);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v19);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::ConfigurationObserverImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F241FF08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2703F50);
}

void anonymous namespace::ConfigurationObserverImpl::~ConfigurationObserverImpl(id *this)
{
  *this = &unk_1F241FF58;

  objc_destroyWeak(this + 5);
  objc_destroyWeak(this + 4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CoreAnalytics::ConfigurationObserver::~ConfigurationObserver(this);
}

{
  *this = &unk_1F241FF58;

  objc_destroyWeak(this + 5);
  objc_destroyWeak(this + 4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CoreAnalytics::ConfigurationObserver::~ConfigurationObserver(this);

  JUMPOUT(0x1B2703F50);
}

void anonymous namespace::ConfigurationObserverImpl::notifyConfigurationActivated(id *this, const FrameworkConfiguration *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 5);
  if (WeakRetained)
  {
    v5 = this + 1;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19[0] = 0xAAAAAAAAAAAAAAAALL;
    FrameworkConfiguration::getExternalConfiguration(a2, (this + 1), &v18);
    if (v18)
    {
      v6 = makeNSObjectFromJson(&v18);
    }

    else
    {
      v6 = 0;
    }

    if (*(this + 31) < 0)
    {
      v5 = *v5;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    v8 = objc_loadWeakRetained(this + 4);
    v9 = this[6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN12_GLOBAL__N_125ConfigurationObserverImpl28notifyConfigurationActivatedERK22FrameworkConfiguration_block_invoke;
    block[3] = &unk_1E7A2A680;
    v14 = WeakRetained;
    v15 = v8;
    v16 = v6;
    v17 = v7;
    v10 = v7;
    v11 = v6;
    v12 = v8;
    dispatch_barrier_async(v9, block);

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v18);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v19, v18);
  }
}

void sub_1AE57D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);

  _Unwind_Resume(a1);
}

uint64_t analytics_rollover_with_options(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  CASPIEnter();
  if (v1)
  {
    empty = xpc_copy(v1);
  }

  else
  {
    empty = xpc_dictionary_create_empty();
  }

  v3 = empty;
  v4 = xpc_dictionary_get_value(empty, "writeLogsSynchronously");

  if (!v4)
  {
    xpc_dictionary_set_BOOL(v3, "writeLogsSynchronously", 1);
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v6 = CoreAnalytics::Client::get(v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "rollover");
  v7 = v3;
  v8 = v7;
  if (!v7)
  {
    v8 = xpc_null_create();
  }

  v9 = v8;
  v10 = v9;
  v23 = v9;
  v11 = MEMORY[0x1E69E9E80];
  if (!v9 || MEMORY[0x1B2704910](v9) != v11)
  {
    v12 = xpc_null_create();
    v13 = v23;
    v23 = v12;
  }

  CoreAnalytics::Client::sendManagementCommandWithReply(v6, __p, &v23, &v26);
  v14 = v23;
  v23 = 0;

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v26) == v11 && (v27 = &v26, v28 = "error", applesauce::xpc::dict::object_proxy::operator BOOL(&v27)))
  {
    memset(v22, 170, sizeof(v22));
    v20[0] = &v26;
    v20[1] = "error";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v20, &v21);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }

    v15 = v21;
    v21 = 0;

    {
      analytics_rollover_with_options_cold_1();
    }

    if (SHIBYTE(v22[2]) < 0)
    {
      operator delete(v22[0]);
    }

    v16 = 0;
  }

  else
  {
    v27 = &v26;
    v28 = "rollover";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v27, v22);
    v16 = applesauce::xpc::dyn_cast_or_default();
    v17 = v22[0];
    v22[0] = 0;
  }

  v18 = v26;
  v26 = 0;

  return v16;
}

void sub_1AE57D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AnalyticsRolloverWithOptions(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  CASPIEnter();
  v2 = xpc_null_create();
  if (v1)
  {
    makeXpcFromNSObject(v1, v6);
    v3 = v6[0];
    v6[0] = 0;

    v4 = analytics_rollover_with_options(v3);
  }

  else
  {
    v4 = analytics_rollover_with_options(0);
    v3 = v2;
  }

  return v4;
}

uint64_t analytics_disable_all_transform_sampling()
{
  v20 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "disable-sampling");
  applesauce::xpc::object::object(&v12, &v16);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v12, &v15);
  v2 = v12;
  v12 = 0;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v15) == MEMORY[0x1E69E9E80] && (v17 = &v15, v18 = "error", applesauce::xpc::dict::object_proxy::operator BOOL(&v17)))
  {
    memset(v11, 170, sizeof(v11));
    v9[0] = &v15;
    v9[1] = "error";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v9, &v10);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v17);
    }

    v3 = v10;
    v10 = 0;

    {
      analytics_disable_all_transform_sampling_cold_1();
    }

    if (SHIBYTE(v11[2]) < 0)
    {
      operator delete(v11[0]);
    }

    v4 = 0;
  }

  else
  {
    v17 = &v15;
    v18 = "disable-sampling";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v17, v11);
    v4 = applesauce::xpc::dyn_cast_or_default();
    v5 = v11[0];
    v11[0] = 0;
  }

  v6 = v15;
  v15 = 0;

  v7 = v16;
  v16 = 0;

  return v4;
}

void sub_1AE57D8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  v23 = *(v21 - 64);
  *(v21 - 64) = 0;

  v24 = *(v21 - 56);
  *(v21 - 56) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_reenable_all_transform_sampling()
{
  v20 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "reenable-sampling");
  applesauce::xpc::object::object(&v12, &v16);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v12, &v15);
  v2 = v12;
  v12 = 0;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v15) == MEMORY[0x1E69E9E80] && (v17 = &v15, v18 = "error", applesauce::xpc::dict::object_proxy::operator BOOL(&v17)))
  {
    memset(v11, 170, sizeof(v11));
    v9[0] = &v15;
    v9[1] = "error";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v9, &v10);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v17);
    }

    v3 = v10;
    v10 = 0;

    {
      analytics_reenable_all_transform_sampling_cold_1();
    }

    if (SHIBYTE(v11[2]) < 0)
    {
      operator delete(v11[0]);
    }

    v4 = 0;
  }

  else
  {
    v17 = &v15;
    v18 = "reenable-sampling";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v17, v11);
    v4 = applesauce::xpc::dyn_cast_or_default();
    v5 = v11[0];
    v11[0] = 0;
  }

  v6 = v15;
  v15 = 0;

  v7 = v16;
  v16 = 0;

  return v4;
}

void sub_1AE57DBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  v23 = *(v21 - 64);
  *(v21 - 64) = 0;

  v24 = *(v21 - 56);
  *(v21 - 56) = 0;

  _Unwind_Resume(a1);
}

uint64_t AnalyticsNotifyTaskingAvailable(void *a1)
{
  v1 = a1;
  v2 = analytics_notify_tasking_available([v1 UTF8String]);

  return v2;
}

uint64_t analytics_notify_tasking_available(const char *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v22 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v22);
  if (a1)
  {
    applesauce::xpc::object::object(&v20, a1);
    v23 = &v22;
    v24 = "tasking-id";
    applesauce::xpc::dict::object_proxy::operator=(&v23, &v20, &v21);
    v3 = v21;
    v21 = 0;

    v4 = v20;
    v20 = 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "tasking-notify");
  applesauce::xpc::object::object(&v16, &v22);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v16, &v19);
  v6 = v16;
  v16 = 0;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v19) == MEMORY[0x1E69E9E80] && (v23 = &v19, v24 = "error", applesauce::xpc::dict::object_proxy::operator BOOL(&v23)))
  {
    memset(v15, 170, sizeof(v15));
    v13[0] = &v19;
    v13[1] = "error";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v13, &v14);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    v7 = v14;
    v14 = 0;

    {
      analytics_notify_tasking_available_cold_1();
    }

    if (SHIBYTE(v15[2]) < 0)
    {
      operator delete(v15[0]);
    }

    v8 = 0;
  }

  else
  {
    v23 = &v19;
    v24 = "tasking-notify";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v23, v15);
    v8 = applesauce::xpc::dyn_cast_or_default();
    v9 = v15[0];
    v15[0] = 0;
  }

  v10 = v19;
  v19 = 0;

  v11 = v22;
  v22 = 0;

  return v8;
}

void sub_1AE57DF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (*(v22 - 41) < 0)
  {
    operator delete(*(v22 - 64));
  }

  v24 = *(v22 - 72);
  *(v22 - 72) = 0;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void CoreAnalytics::Client::sendManagementCommandWithReply(NSObject **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, xpc_object_t *a4@<X8>)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1B2704910](*a3);
  v9 = MEMORY[0x1E69E9E80];
  if (v8 != MEMORY[0x1E69E9E80])
  {
    applesauce::xpc::dict::create(&object);
    v10 = object;
    object = xpc_null_create();
    v11 = *a3;
    *a3 = v10;
    xpc_release(v11);
    xpc_release(object);
  }

  if (os_log_type_enabled(qword_1ED452D88, OS_LOG_TYPE_DEBUG))
  {
    v12 = *a3;
    v21 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v21 = xpc_null_create();
    }

    try_xpc_to_json(&v22, &v21);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&object);
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v19 = xpc_string_create(v13);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  object = a3;
  v24 = "command";
  applesauce::xpc::dict::object_proxy::operator=(&object, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_int64_create(1);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  object = a3;
  v24 = "priority";
  applesauce::xpc::dict::object_proxy::operator=(&object, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v14 = *a1;
  v22 = a1;
  v29[0] = 0xAAAAAAAAAAAAAAAALL;
  v29[0] = xpc_null_create();
  object = MEMORY[0x1E69E9820];
  v24 = 0x40000000;
  v25 = ___ZN10applesauce8dispatch2v19sync_implIZNK13CoreAnalytics6Client30sendManagementCommandWithReplyENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS_3xpc4dictEE3__0EENS5_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  v26 = &__block_descriptor_tmp_141;
  v27 = v29;
  v28 = &v22;
  dispatch_sync(v14, &object);
  if (MEMORY[0x1B2704910](v29[0]) == MEMORY[0x1E69E9E68])
  {
    v15 = xpc_connection_send_message_with_reply_sync(v29[0], *a3);
    v16 = v15;
    if (v15)
    {
      *a4 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      *a4 = v16;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    if (MEMORY[0x1B2704910](v16) == v9)
    {
      xpc_retain(v16);
      goto LABEL_23;
    }

LABEL_21:
    *a4 = xpc_null_create();
LABEL_23:
    xpc_release(v16);
    goto LABEL_24;
  }

  *a4 = xpc_null_create();
LABEL_24:
  xpc_release(v29[0]);
}

void sub_1AE57E340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void **applesauce::xpc::object::object(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

void CoreAnalytics::Client::registerConfigurationObserver(NSObject **a1, uint64_t a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1;
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client29registerConfigurationObserverENSt3__18weak_ptrINS3_21ConfigurationObserverEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_142;
  block[4] = &v3;
  dispatch_sync(v2, block);
  if (v4[1])
  {
    std::__shared_weak_count::__release_weak(v4[1]);
  }
}

void CoreAnalytics::Client::registerEventObserver(NSObject **a1, uint64_t a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1;
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client21registerEventObserverENSt3__18weak_ptrINS3_13EventObserverEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_143;
  block[4] = &v3;
  dispatch_sync(v2, block);
  if (v4[1])
  {
    std::__shared_weak_count::__release_weak(v4[1]);
  }
}

uint64_t CoreAnalytics::Client::registerErrorHandler(NSObject **a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v5 = a1;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v6, a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client20registerErrorHandlerEONSt3__18functionIFvRKNS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_144;
  block[4] = &v5;
  dispatch_sync(v2, block);
  return std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v6);
}

void ___ZN13CoreAnalytics6Client4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  CoreAnalytics::Client::updateDaemonState(v1);
  if (*(v1 + 60) == 1)
  {

    CoreAnalytics::Client::sendCheckinMessage_sync(v1);
  }
}

void CoreAnalytics::Client::sendCheckinMessage_sync(CoreAnalytics::Client *this)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1B2704910](*(this + 6)) == MEMORY[0x1E69E9E68] && (*(this + 61) & 1) == 0)
  {
    *(this + 61) = 1;
    {
      CoreAnalytics::Client::sendCheckinMessage_sync();
    }

    v13[0] = 0xAAAAAAAAAAAAAAAALL;
    applesauce::xpc::dict::create(v13);
    v11 = xpc_string_create("checkin");
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v9 = v13;
    v10 = "command";
    applesauce::xpc::dict::object_proxy::operator=(&v9, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    v2 = getprogname();
    v7 = xpc_string_create(v2);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v9 = v13;
    v10 = "process";
    applesauce::xpc::dict::object_proxy::operator=(&v9, &v7, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v7);
    v7 = 0;
    v5 = xpc_int64_create(0);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v9 = v13;
    v10 = "priority";
    applesauce::xpc::dict::object_proxy::operator=(&v9, &v5, &v6);
    xpc_release(v6);
    v6 = 0;
    xpc_release(v5);
    v3 = v13[0];
    v4 = v13[0];
    v5 = 0;
    if (v13[0])
    {
      xpc_retain(v13[0]);
    }

    else
    {
      v3 = xpc_null_create();
      v4 = v3;
    }

    CoreAnalytics::Client::sendXpcMessage_sync(this, &v4, 0, 0, 1);
    xpc_release(v3);
    v4 = 0;
    xpc_release(v13[0]);
  }
}

void sub_1AE57E8B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ___ZN13CoreAnalytics6Client14initConnectionEv_block_invoke_27(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  result = xpc_user_sessions_get_foreground_uid();
  if (result != *(a1 + 40))
  {
    {
      *v7 = 0;
      _os_log_impl(&dword_1AE55E000, v6, OS_LOG_TYPE_DEFAULT, "Re-estabilishing XPC connection after a user switch", v7, 2u);
    }

    CoreAnalytics::Client::initConnection(v4);
    return notify_cancel(a2);
  }

  return result;
}

void CoreAnalytics::Client::acquireSendTransaction(NSObject **this)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13CoreAnalytics6Client22acquireSendTransactionEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_36;
  v2[4] = this;
  dispatch_sync(v1, v2);
}

void CoreAnalytics::Client::releaseSendTransaction(NSObject **this)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13CoreAnalytics6Client22releaseSendTransactionEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_37;
  v2[4] = this;
  dispatch_sync(v1, v2);
}

void ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke_30(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  {
    v3 = *(a1 + 40);
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    try_xpc_to_json(&v7, &object);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
  }

  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v5 = v4;
  }

  CoreAnalytics::Client::retryXpcMessageHelper_sync(v2, &v5, *(a1 + 56), *(a1 + 57), (*(a1 + 58) + 1), 2 * *(a1 + 48));
  xpc_release(v4);
}

void sub_1AE57ECC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void CoreAnalytics::Client::handleSinkMessageEmit_sync(CoreAnalytics::Client *this, xpc_object_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(*a2, "message");
  if (string)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*&>(&string, v14, 1, &v11);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v14);
    if (v11 == 1)
    {
      v3 = *(this + 15);
      for (i = *(this + 16); v3 != i; v3 += 2)
      {
        v5 = v3[1];
        if (v5)
        {
          v6 = *v3;
          atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v7 = std::__shared_weak_count::lock(v5);
          if (v7)
          {
            v8 = v7;
            if (v6)
            {
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v9, &v11);
              (*(*v6 + 16))(v6, v9);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v10, v9[0]);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    {
      CoreAnalytics::Client::handleSinkMessageEmit_sync();
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v12, v11);
  }

  {
    CoreAnalytics::Client::handleSinkMessageEmit_sync();
  }
}

void sub_1AE57EED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va1);
  if (a2 == 1)
  {
    CoreAnalytics::Client::handleSinkMessageEmit_sync(a1, a2, va, (v6 + 8));
    JUMPOUT(0x1AE57ED84);
  }

  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIZNK13CoreAnalytics6Client30sendManagementCommandWithReplyENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS_3xpc4dictEE3__0EENS5_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = **(a1 + 40);
  v3 = *(v2 + 48);
  if (v3)
  {
    xpc_retain(*(v2 + 48));
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 32);
  v5 = xpc_null_create();
  v6 = *v4;
  *v4 = v3;
  xpc_release(v6);
  xpc_release(v5);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client29registerConfigurationObserverENSt3__18weak_ptrINS3_21ConfigurationObserverEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = *v1;
  v3 = v1 + 1;
  v2 = v4;
  v6 = v4[13];
  v5 = v4[14];
  if (v6 >= v5)
  {
    v8 = v2[12];
    v9 = (v6 - v8) >> 4;
    if ((v9 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v23[4] = v2 + 12;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>>((v2 + 12), v12);
    }

    v13 = (16 * v9);
    *v13 = *v3;
    v7 = 16 * v9 + 16;
    *v3 = 0;
    v3[1] = 0;
    v14 = v2[12];
    v15 = v2[13] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v2[12];
    v2[12] = v16;
    v2[13] = v7;
    v18 = v2[14];
    v2[14] = 0;
    v23[2] = v17;
    v23[3] = v18;
    v23[0] = v17;
    v23[1] = v17;
    std::__split_buffer<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>::~__split_buffer(v23);
  }

  else
  {
    *v6 = *v3;
    v7 = (v6 + 1);
    *v3 = 0;
    v3[1] = 0;
  }

  v2[13] = v7;
  if (v2[10])
  {
    v19 = *(v7 - 8);
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v21 = v20;
        v22 = *(v7 - 16);
        if (v22)
        {
          (*(*v22 + 16))(v22, v2[10]);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }
  }

  else
  {
    CoreAnalytics::Client::sendCheckinMessage_sync(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client21registerEventObserverENSt3__18weak_ptrINS3_13EventObserverEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = *v1;
  v3 = v1 + 1;
  v2 = v4;
  v6 = v4[16];
  v5 = v4[17];
  if (v6 >= v5)
  {
    v8 = v2[15];
    v9 = (v6 - v8) >> 4;
    if ((v9 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v19[4] = v2 + 15;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>>((v2 + 15), v12);
    }

    v13 = (16 * v9);
    *v13 = *v3;
    v7 = 16 * v9 + 16;
    *v3 = 0;
    v3[1] = 0;
    v14 = v2[15];
    v15 = v2[16] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v2[15];
    v2[15] = v16;
    v2[16] = v7;
    v18 = v2[17];
    v2[17] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    std::__split_buffer<std::weak_ptr<CoreAnalytics::ConfigurationObserver>>::~__split_buffer(v19);
  }

  else
  {
    *v6 = *v3;
    v7 = (v6 + 1);
    *v3 = 0;
    v3[1] = 0;
  }

  v2[16] = v7;
  CoreAnalytics::Client::sendCheckinMessage_sync(v2);
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

void *___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client20registerErrorHandlerEONSt3__18functionIFvRKNS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEE3__0EEvP16dispatch_queue_sOT_NS5_17integral_constantIbLb1EEE_block_invoke(void *result)
{
  v1 = result[4];
  if (v1[4])
  {
    return std::function<void ()(std::string)>::operator=<std::function<void ()(std::string const&)>,void>((*v1 + 144), (v1 + 1));
  }

  return result;
}

void *std::function<void ()(std::string)>::operator=<std::function<void ()(std::string const&)>,void>(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100]<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>>(v5, v4);
  std::__function::__value_func<void ()(std::string)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void sub_1AE57F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100]<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

void *std::__function::__func<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F24200F8;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F24200F8;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1B2703F50);
}

void std::__function::__func<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>,void ()(std::string)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>,void ()(std::string)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<std::function<void ()(std::string const&)>,std::allocator<std::function<void ()(std::string const&)>>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(std::string)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 170, 24);
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1AE57FA40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*&>@<X0>(const char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[18] = *MEMORY[0x1E69E9840];
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 8) = 0;
  *a4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  v8 = *a1;
  v9 = strlen(v8);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v11, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>(v8, &v8[v9], v11, a3, v12);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parse(v12, 1, a4);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v13);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v12);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v11);
}

void sub_1AE57FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v13 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v12);
  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__1EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  {
    ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__1EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke_cold_1(v1, v2);
  }

  CoreAnalytics::Client::cancelConnection_sync(v1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void MemoryMappedBuffer::~MemoryMappedBuffer(MemoryMappedBuffer *this)
{
  v2 = *this;
  if (v2 != -1)
  {
    munmap(v2, *(this + 1));
    *this = -1;
  }
}

void makeXpcFromNSObjectWithDepthCount(NSObject *a1@<X0>, unsigned int a2@<W1>, applesauce::xpc::object *a3@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 >= 0xB)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Object exceeded the max depth"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid non-UTF8 character(s) in string value"];
    }

    applesauce::xpc::object::object(a3, v6);
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      applesauce::xpc::object::object(a3, [v7 BOOLValue]);
LABEL_40:

      goto LABEL_41;
    }

    v11 = *[v7 objCType];
    if (v11 <= 0x50)
    {
      if (v11 > 72)
      {
        if (v11 == 73 || v11 == 76)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }

      if (v11 != 66)
      {
        if (v11 == 67)
        {
LABEL_34:
          applesauce::xpc::object::object(a3, [v7 unsignedLongLongValue]);
          goto LABEL_40;
        }

LABEL_37:
        v16 = MEMORY[0x1E695DF30];
        v17 = [v7 objCType];
        [v16 raise:*MEMORY[0x1E695D940] format:{@"Invalid number type in JSON write (%c)", *v17}];
        *a3 = xpc_null_create();
        goto LABEL_40;
      }
    }

    else
    {
      if ((v11 - 99) > 0x10)
      {
        goto LABEL_32;
      }

      if (((1 << (v11 - 99)) & 0x14241) == 0)
      {
        if (v11 == 100)
        {
          [v7 doubleValue];
          goto LABEL_39;
        }

        if (v11 == 102)
        {
          [v7 floatValue];
          v13 = v12;
LABEL_39:
          applesauce::xpc::object::object(a3, v13);
          goto LABEL_40;
        }

LABEL_32:
        if (v11 == 81 || v11 == 83)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }
    }

    applesauce::xpc::object::object(a3, [v7 longLongValue]);
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24[0] = 0xAAAAAAAAAAAAAAAALL;
    applesauce::xpc::dict::create(v24);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = ___ZL33makeXpcFromNSObjectWithDepthCountP8NSObjecth_block_invoke;
    v21[3] = &__block_descriptor_41_ea8_32c27_ZTSN10applesauce3xpc4dictE_e15_v32__0_8_16_B24l;
    applesauce::xpc::object::object(&v22, v24);
    v23 = a2;
    [v5 enumerateKeysAndObjectsUsingBlock:v21];
    applesauce::xpc::object::object(a3, v24);
    v9 = v22;
    v22 = 0;

    v10 = v24[0];
    v24[0] = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      applesauce::xpc::array::create(v24);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3321888768;
      v18[2] = ___ZL33makeXpcFromNSObjectWithDepthCountP8NSObjecth_block_invoke_15;
      v18[3] = &__block_descriptor_41_ea8_32c28_ZTSN10applesauce3xpc5arrayE_e15_v32__0_8Q16_B24l;
      applesauce::xpc::object::object(&v19, v24);
      v20 = a2;
      [v5 enumerateObjectsUsingBlock:v18];
      applesauce::xpc::object::object(a3, v24);
      v14 = v19;
      v19 = 0;

      v15 = v24[0];
      v24[0] = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::xpc::object::object(a3, [v5 bytes], [v5 length]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid type in JSON write (%@)", objc_opt_class()}];
        }

        *a3 = xpc_null_create();
      }
    }
  }

LABEL_41:
}

void sub_1AE580178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL33makeXpcFromNSObjectWithDepthCountP8NSObjecth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 UTF8String];
    if (!v7)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid non-UTF8 character(s) in dictionary key"];
    }

    makeXpcFromNSObjectWithDepthCount(v6, (*(a1 + 40) + 1), &v11);
    v10[0] = (a1 + 32);
    v10[1] = v7;
    applesauce::xpc::dict::object_proxy::operator=(v10, &v11, v12);
    v8 = v12[0];
    v12[0] = 0;

    v9 = v11;
    v11 = 0;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid (non-string) key in dictionary"];
  }
}

void __destroy_helper_block_ea8_32c27_ZTSN10applesauce3xpc4dictE(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void ___ZL33makeXpcFromNSObjectWithDepthCountP8NSObjecth_block_invoke_15(uint64_t a1, NSObject *a2)
{
  value[1] = *MEMORY[0x1E69E9840];
  makeXpcFromNSObjectWithDepthCount(a2, (*(a1 + 40) + 1), value);
  xpc_array_append_value(*(a1 + 32), value[0]);
  v3 = value[0];
  value[0] = 0;
}

void __destroy_helper_block_ea8_32c28_ZTSN10applesauce3xpc5arrayE(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, const void *bytes, size_t length)
{
  v4 = xpc_data_create(bytes, length);
  *this = v4;
  if (!v4)
  {
    v5 = xpc_null_create();
    v6 = *this;
    *this = v5;
  }

  return this;
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, uint64_t value)
{
  v3 = xpc_uint64_create(value);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, double a2)
{
  v3 = xpc_double_create(a2);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char (&)[37],char [37],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[37]>(a2);
}

uint64_t sub_1AE5807F0()
{
  v0 = sub_1AE583820();
  __swift_allocate_value_buffer(v0, qword_1EB5DFD20);
  __swift_project_value_buffer(v0, qword_1EB5DFD20);
  return sub_1AE583810();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AE580898()
{
  v0 = sub_1AE581860(&unk_1F2420298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFCF0, &qword_1AE588C60);
  result = swift_arrayDestroy();
  qword_1EB5DFD38 = v0;
  return result;
}

xpc_object_t AnalyticsQueryValuesFor(arguments:)(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v7 = 0;
  sub_1AE583880();
  if (qword_1EB5DFD00 != -1)
  {
    swift_once();
  }

  v2 = sub_1AE583820();
  __swift_project_value_buffer(v2, qword_1EB5DFD20);
  v3 = sub_1AE583800();
  v4 = sub_1AE583890();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AE55E000, v3, v4, "Invalid parameter type. Expected a set of strings.", v5, 2u);
    MEMORY[0x1B27046E0](v5, -1, -1);
  }

  return empty;
}

unint64_t sub_1AE581094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AE581160(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AE581700(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1AE581160(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AE58126C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1AE5838B0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1AE58126C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AE5812B8(a1, a2);
  sub_1AE5813E8(&unk_1F24202E8);
  return v3;
}

void *sub_1AE5812B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AE5814D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AE5838B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AE583870();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AE5814D4(v10, 0);
        result = sub_1AE5838A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AE5813E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AE581548(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AE5814D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFCE8, &qword_1AE588C58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1AE581548(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFCE8, &qword_1AE588C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1AE58163C(uint64_t a1, uint64_t a2)
{
  sub_1AE5838E0();
  sub_1AE583850();
  v4 = sub_1AE5838F0();

  return sub_1AE5817A8(a1, a2, v4);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1AE581700(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AE5817A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AE5838D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AE581860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFCF8, &qword_1AE588C68);
    v3 = sub_1AE5838C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AE58163C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void setObjectForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_ERROR, "Error setting the value for %s", &v2, 0xCu);
}

void getObjectForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_ERROR, "Error getting the value for %s", &v2, 0xCu);
}

void AnalyticsSendEventInternal()
{
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1AE55E000, v0, OS_LOG_TYPE_FAULT, "Dropping because event name was non-UTF8", v1, 2u);
}

{
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE55E000, v0, OS_LOG_TYPE_ERROR, "Dropping because event name was null", v1, 2u);
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
}

{
  __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1064, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 889, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 980, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 979, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 186, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 185, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "to_chars.hpp", 827, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
}

void std::__function::__func<analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>,nlohmann::basic_json<std::map,std::vector,std::basic_string<char,std::char_traits<char>,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<char>>,BOOL,long long,unsigned long long,double,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>::adl_serializer,std::map<unsigned char,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<unsigned char>>> ()(void)>::operator()(uint64_t **a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = **a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_ERROR, "Error: event %s dropped because the payload is neither a dictionary nor null", &v3, 0xCu);
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*()
{
  __assert_rtn("operator*", "iter_impl.hpp", 254, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 248, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 242, "m_object != nullptr");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(unsigned __int8 **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:ne200100]((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = a1[5] + 1;
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

void FrameworkConfiguration::init(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid magic number) %u", v2, 8u);
}

void FrameworkConfiguration::init(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = -258926936;
  _os_log_fault_impl(&dword_1AE55E000, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid version) %u", v1, 8u);
}

{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_error_impl(&dword_1AE55E000, log, OS_LOG_TYPE_ERROR, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (not deserializable)", v1, 2u);
}

void FrameworkConfiguration::init(int a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_fault_impl(&dword_1AE55E000, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (fw end offset [%u] > mmap size [%zu])", v3, 0x12u);
}

void FrameworkConfiguration::getExternalConfiguration(void *a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2 - *a1;
  v4 = 134217984;
  v5 = v3;
  _os_log_debug_impl(&dword_1AE55E000, log, OS_LOG_TYPE_DEBUG, "[FrameworkConfiguration] External configs: present but not parsed (size=%zd)", &v4, 0xCu);
}

void FrameworkConfiguration::getExternalConfiguration(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_debug_impl(&dword_1AE55E000, log, OS_LOG_TYPE_DEBUG, "[FrameworkConfiguration] External configs: null", v1, 2u);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string()
{
  __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
}

{
  __assert_rtn("scan_string", "lexer.hpp", 370, "0x00 <= codepoint and codepoint <= 0x10FFFF");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(unsigned int a1, std::string *this, _BYTE *a3)
{
  std::string::push_back(this, (a1 >> 18) | 0xF0);
  std::string::push_back(this, (a1 >> 12) & 0x3F | 0x80);
  std::string::push_back(this, (a1 >> 6) & 0x3F | 0x80);
  *a3 = a1 & 0x3F | 0x80;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number()
{
  __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 928, "false");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(unsigned __int8 **a1, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v12 = xmmword_1AE588280;
  do
  {
    v8 = *(&v12 + v7);
    result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(_DWORD *a1, uint64_t a2, std::string *a3, uint64_t a4, char *a5)
{
  std::string::push_back(a3 + 3, a3->__r_.__value_.__s.__data_[16]);
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a3);
    v10 = a3->__r_.__value_.__r.__words[2];
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back(a3 + 3, v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  a3[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object()
{
  __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array()
{
  __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->()
{
  __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 279, "m_object != nullptr");
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>()
{
  __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
}

{
  __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
}

void analytics_rollover_with_options_cold_1()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v0, v1, "Rollover failed with error: %s", v2, v3, v4, v5);
}

void AnalyticsRolloverWithOptions_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AE55E000, log, OS_LOG_TYPE_ERROR, "Error: Failed to perform rollover due to %{public}@ (%{public}@)", buf, 0x16u);
}

void analytics_disable_all_transform_sampling_cold_1()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v0, v1, "Failed to disable sampling with error: %s", v2, v3, v4, v5);
}

void analytics_reenable_all_transform_sampling_cold_1()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v0, v1, "Failed to reenable sampling with error: %s", v2, v3, v4, v5);
}

void analytics_notify_tasking_available_cold_1()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v0, v1, "Failed to reconfigure new tasking with error: %s", v2, v3, v4, v5);
}

void CoreAnalytics::Client::initConnection(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2080;
  v5 = xpc_strerror();
  _os_log_error_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_ERROR, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v3, 0x12u);
}

void CoreAnalytics::Client::retryXpcMessageHelper_sync()
{
  OUTLINED_FUNCTION_4();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  _os_log_error_impl(&dword_1AE55E000, v3, OS_LOG_TYPE_ERROR, "Used all retries. Discarding message: %s.", v4, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void CoreAnalytics::Client::handleServerMessage_sync()
{
  OUTLINED_FUNCTION_4();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  _os_log_fault_impl(&dword_1AE55E000, v3, OS_LOG_TYPE_FAULT, "#Error: Received unknown event from daemon: %s", v4, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void CoreAnalytics::Client::handleConfigurationChange_sync()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v0, v1, "#Error: Received configuration update from daemon but was not usable.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v0, v1, "#Error: Received configuration update from daemon but no config size specified.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v0, v1, "#Error: Received configuration update from daemon but no config.", v2, v3, v4, v5);
}

void CoreAnalytics::Client::handleSinkMessageEmit_sync(void *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  __cxa_begin_catch(a1);
  *a3 = 0;
  *a4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  __cxa_end_catch();
}

void CoreAnalytics::Client::handleSinkMessageEmit_sync()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v0, v1, "#Error: Received message emit from daemon but was not parsable.", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v0, v1, "#Error: Received message emit from daemon but no message.", v2, v3, v4, v5);
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_286_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__1EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_FAULT, "Timed out waiting for the exit barrier block. activeSendTransactions=%d", v3, 8u);
}

void try_xpc_to_json(void *a1, uint64_t a2)
{
  __cxa_begin_catch(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);

  __cxa_end_catch();
}

uint64_t applesauce::xpc::dyn_cast_or_default()
{
  return MEMORY[0x1EEDEE348]();
}

{
  return MEMORY[0x1EEDEE350]();
}

{
  return MEMORY[0x1EEDEE368]();
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