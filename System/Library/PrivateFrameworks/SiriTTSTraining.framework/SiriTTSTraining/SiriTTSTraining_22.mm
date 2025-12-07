uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_283050;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_282FD8;
  *(a1 + 8) = off_283008;
  *(a1 + 24) = off_283030;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1A0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a1[1].__imp_);

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &off_2830A8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a1[1].__imp_);
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(void *a1)
{
  *a1 = &off_2830A8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &off_2830A8;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete();
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &off_283050;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = off_283080;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_2830A8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_282FD8;
  *(a1 + 8) = off_283008;
  *(a1 + 24) = off_283030;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *std::vector<std::string>::vector[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(v7, a2);
  boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(v6, a3);
  std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>>(a1, v7, v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(v6);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(v7);
  return a1;
}

void sub_1A0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void (**)(void, void, uint64_t));
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(va);
  boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_sentinel[abi:ne200100]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::string,std::__wrap_iter<char *>>,boost::algorithm::split_iterator<std::__wrap_iter<char *>>,boost::use_default,boost::use_default>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = 0;
  while (1)
  {
    result = boost::algorithm::split_iterator<std::__wrap_iter<char *>>::equal(a2, a3);
    if (result)
    {
      break;
    }

    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
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

      v26.__end_cap_.__value_ = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v13);
      }

      v14 = 24 * v10;
      v15 = *__p;
      *(v14 + 16) = v23;
      *v14 = v15;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v16 = 24 * v10 + 24;
      v17 = *(a1 + 8) - *a1;
      v18 = 24 * v10 - v17;
      memcpy((v14 - v17), *a1, v17);
      v19 = *a1;
      *a1 = v18;
      *(a1 + 8) = v16;
      v20 = *(a1 + 16);
      *(a1 + 16) = 0;
      v26.__end_ = v19;
      v26.__end_cap_.__value_ = v20;
      v26.__first_ = v19;
      v26.__begin_ = v19;
      std::__split_buffer<std::string>::~__split_buffer(&v26);
      v21 = SHIBYTE(v23);
      *(a1 + 8) = v16;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v9 = *__p;
      *(v8 + 16) = v23;
      *v8 = v9;
      *(a1 + 8) = v8 + 24;
    }

    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(a2);
  }

  return result;
}

void sub_1A113C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::equal(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 64);
  }

  else
  {
    v4 = 1;
  }

  if (!*a2)
  {
    LOBYTE(v5) = 1;
    goto LABEL_11;
  }

  v5 = *(a2 + 64);
  if ((v4 | v5))
  {
LABEL_11:
    v9 = v4 ^ v5 ^ 1;
    return v9 & 1;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v8 = *(a1 + 40) - v6;
  v9 = v8 == *(a2 + 40) - v7 && !memcmp(v6, v7, v8) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  return v9 & 1;
}

void *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,std::vector<SiriTTS::ForcedAlignment::Phoneme> &>::operator=[abi:ne200100]<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__emplace_multi<std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>> const&>(a1);
  }
}

void sub_1A1694(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::pair<std::string &,std::vector<SiriTTS::ForcedAlignment::Phoneme> &>::operator=[abi:ne200100]<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>,0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != &a2[1])
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__assign_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(v4, a2[1].__r_.__value_.__l.__data_, a2[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((a2[1].__r_.__value_.__l.__size_ - a2[1].__r_.__value_.__r.__words[0]) >> 3));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_prepare(unint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__rehash<false>(unint64_t result, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::__do_rehash<false>(void **a1, unint64_t a2)
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

  a1[1] = 0;
}

void sub_1A1CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<SiriTTS::ForcedAlignment::Phoneme>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__init_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1A1DF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<SiriTTS::ForcedAlignment::Phoneme>::__init_with_size[abi:ne200100]<SiriTTS::ForcedAlignment::Phoneme*,SiriTTS::ForcedAlignment::Phoneme*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A1E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SiriTTS::ForcedAlignment::Phoneme>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = (v4 + size);
  locale = a2->__locale_;
  std::locale::locale(&v14, a2 + 1);
  v15 = locale;
  std::locale::locale(&v16, &v14);
  while (size)
  {
    v7 = size;
    v8 = v4->__r_.__value_.__s.__data_[size - 1];
    v9 = std::locale::use_facet(&v16, &std::ctype<char>::id);
    if ((v8 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    v6 = (v6 - 1);
    v10 = *(&v9[1].~facet + v8);
    size = v7 - 1;
    if ((v10 & v15) == 0)
    {
      v4 = (v4 + v7);
      break;
    }
  }

  std::locale::~locale(&v16);
  v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x80u) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v12, v12 + v11 - v4);
  std::locale::~locale(&v14);
}

uint64_t std::__split_buffer<std::pair<std::string,int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,int>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  operator delete[]();
}

uint64_t boost::algorithm::detail::find_iterator_base<std::__wrap_iter<char *>>::find_iterator_base<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    OUTLINED_FUNCTION_0_6(result);
  }

  return result;
}

void SpeechEnergy::SpeechEnergy(SpeechEnergy *this)
{
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 72) = xmmword_21FFE0;
  *(this + 30) = 500;
  *(this + 1) = 0;
  *(this + 88) = xmmword_21FFF0;
  *(this + 104) = xmmword_220000;
}

void SpeechEnergy::estimate_speech_energy(uint64_t a1@<X0>, uint64_t a2@<X1>, DSP *a3@<X2>, uint64_t *a4@<X8>)
{
  clock();
  *a1 = a3;
  *(a1 + 92) = a3;
  if (*(a1 + 104) && *(a1 + 88) != a3)
  {
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v72, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    DSP::resample(&v72, *a1, *(a1 + 88), &v75);
    v7 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v7;
      operator delete(v7);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = v75;
    *(a2 + 16) = v76;
    v76 = 0;
    v75 = 0uLL;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    a3 = *(a1 + 88);
    *a1 = a3;
  }

  DSP::get_highpass_70hz_coefficients(a3);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v67, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  __p = 0;
  v65 = 0;
  v66 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  DSP::high_pass_filter(&v67, &__p, &v70);
  v8 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v8;
    operator delete(v8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v70;
  *(a2 + 16) = v71;
  v71 = 0;
  v70 = 0uLL;
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v9 = *a1;
  v10 = *a2;
  v11 = llround(*(a1 + 72) / 1000.0 * v9);
  if (v11 > (*(a2 + 8) - *a2) >> 1)
  {
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v52);
    exit(1);
  }

  v12 = *(a1 + 80);
  v13 = llround(vcvtd_n_f64_s32(v11, 1uLL));
  LOWORD(v70) = 0;
  std::vector<short>::insert(a2, v10, v13, &v70);
  v14 = *(a2 + 8);
  LOWORD(v70) = 0;
  std::vector<short>::insert(a2, v14, v13, &v70);
  v15 = (*(a2 + 8) - *a2) >> 1;
  v55 = llround(v12 / 1000.0 * v9);
  v16 = (v15 / v55 - v11 / v55 + 1);
  std::vector<std::pair<int,int>>::resize((a1 + 48), v16);
  std::vector<std::pair<int,int>>::resize((a1 + 24), v16);
  std::vector<double>::vector[abi:ne200100](&v70, v11);
  v54 = a2;
  DSP::window_blackman(v11, v63);
  if (v15 > v11)
  {
    v17 = 0;
    v18 = 0;
    v19 = 2 * v11;
    do
    {
      if (*(a1 + 96) == 1 && *(a1 + 100) == 1 && *(a1 + 116) < v16)
      {
        v20 = *(a1 + 120);
        v21 = *(a1 + 112);
        boost::filesystem::path::path(v61, "Progress: ");
        utils::update_progress_bar(v18, v16, v20, v21, v61);
        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      *(*(a1 + 24) + 8 * v18) = v17 / *a1;
      v22 = v70;
      if (v11)
      {
        v23 = v19 - 2 * v17;
        v24 = (*v54 + 2 * v17);
        v25 = v70;
        do
        {
          v26 = *v24++;
          *v25++ = v26;
          v23 -= 2;
        }

        while (v23);
        if (v11 >= 1)
        {
          v27 = v63[0];
          v28 = v11;
          v29 = v22;
          do
          {
            v30 = *v27++;
            *v29 = *v29 * v30;
            ++v29;
            --v28;
          }

          while (v28);
        }
      }

      cblas_ddot_NEWLAPACK();
      *(*(a1 + 48) + 8 * v18++) = log(sqrt(v31 / v11) + 1.0e-10);
      v17 += v55;
      v19 += 2 * v55;
    }

    while (v15 > v11 + v18 * v55);
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 56);
  if (*(v32 - 1) == 0.0)
  {
    do
    {
      v33 -= 8;
      v34 = *(v32 - 2);
      --v32;
    }

    while (v34 == 0.0);
    *(a1 + 32) = v32;
    *(a1 + 56) = v33;
  }

  v35 = *(a1 + 48);
  v36 = *(a1 + 24);
  v37 = v33 - v35;
  v38 = v32 - v36;
  if (v33 - v35 > (v32 - v36))
  {
    do
    {
      v33 -= 8;
      v37 -= 8;
    }

    while (v37 > v38);
    *(a1 + 56) = v33;
  }

  if (v37 < v38)
  {
    do
    {
      v39 = *(a1 + 64);
      if (v33 >= v39)
      {
        v40 = (v37 >> 3) + 1;
        if (v40 >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v41 = v39 - v35;
        if (v41 >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 48, v42);
        }

        v43 = (8 * (v37 >> 3));
        *v43 = *(v33 - 1);
        v33 = (v43 + 1);
        memcpy(0, v35, v37);
        v44 = *(a1 + 48);
        *(a1 + 48) = 0;
        *(a1 + 56) = v43 + 1;
        *(a1 + 64) = 0;
        if (v44)
        {
          operator delete(v44);
          v35 = *(a1 + 48);
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        *v33 = *(v33 - 1);
        v33 += 8;
      }

      *(a1 + 56) = v33;
      v37 = v33 - v35;
      v36 = *(a1 + 24);
      v32 = *(a1 + 32);
    }

    while (v33 - v35 < (v32 - v36));
  }

  v45 = *(a1 + 108);
  if (v45 >= 3)
  {
    DSP::smooth(a1 + 48, v45, v59);
    v46 = *(a1 + 48);
    if (v46)
    {
      *(a1 + 56) = v46;
      operator delete(v46);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
    }

    *(a1 + 48) = *v59;
    *(a1 + 64) = v60;
    v36 = *(a1 + 24);
    v32 = *(a1 + 32);
  }

  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v59, v36, v32, v32 - v36);
  v47 = *(a1 + 48);
  v48 = *(a1 + 56);
  v57 = 0;
  v58 = 0;
  v56 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v56, v47, v48, v48 - v47);
  if (*(a1 + 96))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v49 = std::ostream::operator<<();
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " s", 2);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(&v77, &std::ctype<char>::id);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(&v77);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_EEC2B8ne200100IJLm0ELm1EEJS6_S6_EJEJEJRS6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, v59, &v56);
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v70)
  {
    *(&v70 + 1) = v70;
    operator delete(v70);
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }
}

void sub_1A27CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  v41 = *(v39 - 184);
  if (v41)
  {
    *(v39 - 176) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_EEC2B8ne200100IJLm0ELm1EEJS6_S6_EJEJEJRS6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  return a1;
}

void sub_1A2934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SRH::SRH(SRH *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = xmmword_220010;
  *(this + 9) = vdupq_n_s64(0x4059000000000000uLL);
  *(this + 10) = xmmword_220020;
  *(this + 11) = xmmword_21FDA0;
  *(this + 13) = xmmword_220030;
  *(this + 14) = xmmword_220040;
  *(this + 31) = 16000;
  *(this + 12) = xmmword_220050;
  *(this + 30) = 0x3FE4CCCCCCCCCCCDLL;
  *(this + 1) = 0;
  *(this + 260) = xmmword_220070;
  *(this + 276) = xmmword_220060;
  *(this + 3) = 0;
}

void SRH::estimate_pitch(unsigned int *a1@<X0>, uint64_t a2@<X1>, DSP *a3@<X2>, uint64_t *a4@<X8>)
{
  clock();
  *a1 = a3;
  a1[63] = a3;
  v387 = 0uLL;
  v388 = 0;
  if (a1[6] && a1[62] != a3)
  {
    v383 = 0;
    v384 = 0;
    v382 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v382, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    DSP::resample(&v382, *a1, a1[62], &v385);
    if (v387)
    {
      *(&v387 + 1) = v387;
      operator delete(v387);
    }

    v387 = v385;
    v388 = v386;
    v386 = 0;
    v385 = 0uLL;
    if (v382)
    {
      v383 = v382;
      operator delete(v382);
    }

    a3 = a1[62];
    *a1 = a3;
  }

  else if (&v387 != a2)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v387, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    a3 = *a1;
  }

  v385 = 0uLL;
  v386 = 0;
  DSP::get_highpass_70hz_coefficients(a3);
  if (v380 == v381)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Warning: High-pass filtering not performed due to unsupported sampling frequency!", 81);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v378, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v378);
    std::ostream::put();
    std::ostream::flush();
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(&v385, v387, *(&v387 + 1), (*(&v387 + 1) - v387) >> 1);
  }

  else
  {
    v377 = 0;
    v375 = 0;
    v376 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v375, v380, v381, (v381 - v380) >> 3);
    v373 = 0;
    __p = 0;
    v374 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, v387, *(&v387 + 1), (*(&v387 + 1) - v387) >> 1);
    DSP::high_pass_filter(&v375, &__p, &v378);
    if (v385)
    {
      *(&v385 + 1) = v385;
      operator delete(v385);
    }

    v385 = v378;
    v386 = v379;
    v379 = 0;
    v378 = 0uLL;
    if (__p)
    {
      v373 = __p;
      operator delete(__p);
    }

    if (v375)
    {
      v376 = v375;
      operator delete(v375);
    }
  }

  v10 = *a1;
  v12 = *(a1 + 19);
  v11 = *(a1 + 20);
  v13 = *(a1 + 21);
  v14 = a1[72];
  v15 = *(a1 + 22) / v10 * v14;
  v16 = *(a1 + 23);
  v17 = v385;
  v18 = (*(&v385 + 1) - v385) >> 1;
  if (*(&v385 + 1) != v385)
  {
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (*(&v385 + 1) - v385) >> 1;
    }

    v20 = 0.0;
    v21 = v385;
    v22 = v19;
    do
    {
      v24 = *v21++;
      v23 = v24;
      if (v24 < 0)
      {
        v23 = -v23;
      }

      if (v20 < v23)
      {
        v20 = v23;
      }

      --v22;
    }

    while (v22);
    v25 = 32767.0 / v20 * *(a1 + 30);
    v26 = v385;
    do
    {
      *v26 = (v25 * *v26);
      ++v26;
      --v19;
    }

    while (v19);
  }

  v326 = llround(v15);
  v27 = v10;
  if (a1[6])
  {
    v28 = a1[63];
    v27 = v28;
    if (v28 >= a1[62])
    {
      v27 = v10;
    }
  }

  v29 = v27 / 1000.0;
  v329 = powf(v29, 0.2);
  v30.f32[0] = powf(v29, 0.71429);
  v30.f32[1] = v329;
  *(a1 + 34) = vdivq_f64(*(a1 + 34), vmulq_f64(vcvtq_f64_f32(v30), xmmword_21FE10));
  v31 = a1[65];
  if ((v31 * v326) > v14 / 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: f0min is too high in order to evaluate f0 up to ", 55);
    v304 = std::ostream::operator<<();
    v305 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v304, " harmonics.", 11);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v305);
    v306 = "       Please lower f0min and try again.";
    goto LABEL_338;
  }

  v318 = llround(v16 / v10 * v14);
  v317 = v31 * v318;
  if ((v31 * v318) > v14 / 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: f0max is too high in order to evaluate f0 up to ", 55);
    v307 = std::ostream::operator<<();
    v308 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v307, " harmonics.", 11);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v308);
    v306 = "       Please lower f0max and try again.";
LABEL_338:
    v309 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, v306, 40);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v309);
    exit(1);
  }

  LODWORD(v14) = llround(v12 / 1000.0 * v10);
  if (v18 < v14)
  {
    v310 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Signal is not long enough to be processed.", 49);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v310);
    exit(1);
  }

  v32 = (v10 * 0.75 / 1000.0);
  if ((v32 & 0x80000001) == 1)
  {
    ++v32;
  }

  a1[64] = v32;
  v33 = vcvtd_n_f64_s32(v14, 1uLL);
  v34 = llround(v33);
  LOWORD(v378) = 0;
  std::vector<short>::insert(&v385, v17, v34, &v378);
  LOWORD(v378) = 0;
  std::vector<short>::insert(&v385, *(&v385 + 1), v34, &v378);
  v324 = (*(&v385 + 1) - v385) >> 1;
  v321 = llround(v13 / 1000.0 * v10);
  v314 = v324 / v321 - v14 / v321;
  v35 = v314 + 1;
  v328 = a1[64];
  v378 = 0uLL;
  v379 = 0;
  if (a1[68] <= (v314 + 1))
  {
    v36 = v35;
  }

  else
  {
    std::vector<double>::vector[abi:ne200100](&v368, v317 + 1);
    v36 = v35;
    std::vector<std::vector<double>>::vector[abi:ne200100](&v370, v35, &v368);
    if (v368)
    {
      v369 = v368;
      operator delete(v368);
    }

    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v378, v370, *v371, 0xAAAAAAAAAAAAAAABLL * ((*v371 - v370) >> 3));
    v368 = &v370;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v368);
  }

  std::vector<std::pair<int,int>>::resize(a1 + 7, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 10, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 13, v36);
  std::vector<std::pair<int,int>>::resize(a1 + 4, v36);
  std::vector<double>::vector[abi:ne200100](&v370, v36);
  v367[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v368, v36, v367);
  v366[0] = 0;
  std::vector<double>::vector[abi:ne200100](v367, v36, v366);
  std::vector<double>::vector[abi:ne200100](v366, v14);
  v322 = llround(v11 / 1000.0 * v10);
  std::vector<double>::vector[abi:ne200100](v365, v322);
  std::vector<double>::vector[abi:ne200100](v364, v14);
  std::vector<double>::vector[abi:ne200100](&v362, v328 + v14);
  v316 = v328 + v14;
  std::vector<double>::vector[abi:ne200100](&v360, v316);
  v358[0] = 0x3FF0000000000000;
  std::vector<double>::vector[abi:ne200100](v359, 1uLL, v358);
  std::vector<double>::vector[abi:ne200100](v358, a1[72] / 2 + 1);
  std::vector<double>::vector[abi:ne200100](&v356, v318 - v326 + 1);
  v325 = malloc_type_calloc((2 * a1[72]) | 1, 4uLL, 0x100004052888210uLL);
  v312 = a4;
  DSP::window_blackman(v14, v355);
  if (a1[66])
  {
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Start frame-wise processing", 27);
    std::ios_base::getloc((v37 + *(*v37 - 24)));
    v38 = std::locale::use_facet(&v351, &std::ctype<char>::id);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v351);
    std::ostream::put();
    std::ostream::flush();
  }

  v39 = v14;
  v323 = v314 + 1;
  v313 = v36;
  v320 = v14;
  if (v324 > v14)
  {
    v40 = 0;
    v41 = 0;
    v330 = 0;
    v42 = v322;
    v311 = v33;
    v43 = 2 * v14;
    v44 = round(v33 + v322 * -0.5);
    v45 = v14;
    v46 = -v328;
    while (1)
    {
      if (a1[66] == 1 && a1[67] == 1 && a1[70] < v35)
      {
        v47 = a1[71];
        v48 = a1[69];
        boost::filesystem::path::path(v353, "Progress: ");
        utils::update_progress_bar(v41, v35, v47, v48, v353);
        if (v354 < 0)
        {
          operator delete(v353[0]);
        }
      }

      *(*(a1 + 4) + 8 * v41) = (v40 / *a1);
      v49 = v385;
      if (v39)
      {
        v50 = v43 - 2 * v40;
        v51 = v366[0];
        v52 = (v385 + 2 * v40);
        do
        {
          v53 = *v52++;
          *v51++ = v53;
          v50 -= 2;
        }

        while (v50);
      }

      v54 = v44 + v40;
      v55 = v54;
      v56 = v54 + v42;
      if (v55 != v56)
      {
        v57 = v365[0];
        v58 = (v49 + 2 * v55);
        v59 = 2 * v56 - 2 * v55;
        do
        {
          v60 = *v58++;
          *v57++ = v60;
          v59 -= 2;
        }

        while (v59);
      }

      cblas_ddot_NEWLAPACK();
      v62 = v61;
      cblas_ddot_NEWLAPACK();
      v64 = v63;
      v65 = sqrt(v63 / v42);
      *(v370 + v41) = v65;
      v66 = DSP::gradient_index(v365);
      v67 = v367[0];
      *(v367[0] + v41) = v66 * 0.5 / v65;
      if (v64 == 0.0)
      {
        v67[v41] = *(a1 + 18) + *(a1 + 18);
      }

      v68 = DSP::zero_crossing_rate_plus_zero(v365);
      *(v368 + v41) = v68 / v42;
      if (v40 - v328 < 1)
      {
        v73 = v362;
        if (v363 - v362 >= 1)
        {
          bzero(v362, v363 - v362);
        }

        if (v39 < 1)
        {
          goto LABEL_73;
        }

        v74 = v366[0];
        v75 = &v73[8 * v328];
        v76 = v39;
        do
        {
          v77 = *v74++;
          *v75 = v77;
          v75 += 8;
          v76 = (v76 - 1);
        }

        while (v76);
      }

      else if (v316 >= 1)
      {
        v69 = v362;
        v70 = (v385 + 2 * v46);
        v71 = v316;
        do
        {
          v72 = *v70++;
          *v69++ = v72;
          --v71;
        }

        while (v71);
      }

      if (v39 >= 1)
      {
        v78 = v366[0];
        v79 = v355[0];
        v80 = v39;
        do
        {
          v81 = *v79++;
          *v78 = *v78 * v81;
          ++v78;
          v80 = (v80 - 1);
        }

        while (v80);
      }

LABEL_73:
      DSP::LP(v366, a1[64], &v351);
      if (v330)
      {
        operator delete(v330);
      }

      v349 = 0;
      v350 = 0;
      v348 = 0;
      v330 = v351;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v348, v351, *(&v351 + 1), (*(&v351 + 1) - v351) >> 3);
      DSP::firfilter(&v348, &v362, &v351);
      if (v360)
      {
        *(&v360 + 1) = v360;
        operator delete(v360);
      }

      v360 = v351;
      v361 = v352;
      v352 = 0;
      v351 = 0uLL;
      if (v348)
      {
        v349 = v348;
        operator delete(v348);
      }

      if (v39 >= 1)
      {
        v82 = v364[0];
        v83 = (v360 + 8 * v328);
        v84 = 0.0;
        v85 = v39;
        v86 = v364[0];
        do
        {
          v87 = *v83++;
          *v86++ = v87;
          v84 = v84 + v87 * v87;
          v85 = (v85 - 1);
        }

        while (v85);
        if (v84 != 0.0)
        {
          v88 = sqrt(v62 / v84);
          v89 = v39;
          v90 = v82;
          do
          {
            *v90 = v88 * *v90;
            ++v90;
            v89 = (v89 - 1);
          }

          while (v89);
        }

        v91 = 0.0;
        v92 = v355[0];
        v93 = v39;
        v94 = v82;
        do
        {
          v95 = *v92++;
          v96 = v95 * *v94;
          *v94++ = v96;
          v91 = v91 + v96;
          v93 = (v93 - 1);
        }

        while (v93);
        v97 = v39;
        v98 = v91 / v45;
        do
        {
          *v82 = *v82 - v98;
          ++v82;
          v97 = (v97 - 1);
        }

        while (v97);
      }

      v99 = a1[72];
      if ((v99 & 0x80000000) == 0)
      {
        bzero(v325, (8 * ((((2 * v99) & ~((2 * v99) >> 31)) >> 1) & 0x7FFFFFFF)) | 4);
      }

      if (*(v370 + v41) > *(a1 + 24) * *(a1 + 16))
      {
        if (v39 >= 1)
        {
          v100 = v364[0];
          v101 = v39;
          v102 = (v325 + 4);
          do
          {
            v103 = *v100++;
            v104 = v103;
            *v102 = v104;
            v102 += 2;
            v101 = (v101 - 1);
          }

          while (v101);
        }

        DSP::fft(v325, v99, 1);
        v99 = a1[72];
      }

      if ((v99 & 0x80000000) == 0)
      {
        v105 = 0;
        v106 = v358[0];
        v107 = 0.0;
        v108 = (v325 + 8);
        do
        {
          v109 = sqrtf((*v108 * *v108) + (*(v108 - 1) * *(v108 - 1)));
          *&v106[v105] = v109;
          v107 = v107 + v109 * v109;
          v108 += 2;
          v105 += 8;
        }

        while (((4 * v99) & 0x3FFFFFFF8) + 8 != v105);
        if (v107 != 0.0)
        {
          cblas_dscal_NEWLAPACK();
        }
      }

      if ((v317 & 0x80000000) == 0 && a1[68] > v35)
      {
        v110 = v358[0];
        v111 = *(v378 + 24 * v41);
        v112 = (v317 + 1);
        do
        {
          v113 = *v110++;
          *v111++ = v113;
          --v112;
        }

        while (v112);
      }

      v114 = v356;
      if (v318 >= v326)
      {
        v115 = v358[0];
        v116 = a1[65];
        v117 = 8 * v326;
        v118 = (v358[0] + 16 * v326);
        v119 = v326;
        do
        {
          v120 = v115[v119];
          v114[v119 - v326] = v120;
          if (v116 >= 2)
          {
            v121 = v118;
            v122 = 2;
            do
            {
              v120 = v120 + *v121 - v115[((v122 + -0.5) * v119)];
              v114[v119 - v326] = v120;
              ++v122;
              v121 = (v121 + v117);
            }

            while (v116 + 1 != v122);
          }

          ++v119;
          v118 += 2;
          v117 += 8;
        }

        while (v318 + 1 != v119);
      }

      if (v357 == v114)
      {
        v129 = -1.0;
        v125 = -INFINITY;
      }

      else
      {
        if ((v357 - v114) <= 1)
        {
          v123 = 1;
        }

        else
        {
          v123 = v357 - v114;
        }

        v124 = -1;
        v125 = -INFINITY;
        v126 = v326;
        do
        {
          v127 = *v114++;
          v128 = v127;
          if (v127 > v125)
          {
            v125 = v128;
            v124 = v126;
          }

          ++v126;
          --v123;
        }

        while (v123);
        v129 = v124;
      }

      *(*(a1 + 7) + 8 * v41) = v129 * (*a1 / a1[72]);
      v130 = *(a1 + 10);
      v130[v41++] = v125;
      v40 += v321;
      v43 += 2 * v321;
      v46 += v321;
      if (v324 <= v320 + v41 * v321)
      {
        v131 = v330;
        v36 = v313;
        v33 = v311;
        goto LABEL_124;
      }
    }
  }

  v131 = 0;
  LODWORD(v41) = 0;
  v130 = *(a1 + 10);
LABEL_124:
  v132 = *(a1 + 11);
  v133 = v132 - v130;
  if (v132 == v130)
  {
    v135 = -INFINITY;
  }

  else
  {
    if (v133 <= 1)
    {
      v134 = 1;
    }

    else
    {
      v134 = v132 - v130;
    }

    v135 = -INFINITY;
    v136 = v130;
    do
    {
      v137 = *v136++;
      v138 = v137;
      if (v137 > v135)
      {
        v135 = v138;
      }

      --v134;
    }

    while (v134);
  }

  *(a1 + 29) = v135;
  if (v135 <= *(a1 + 25))
  {
    v153 = v312;
    goto LABEL_250;
  }

  if (a1[66])
  {
    v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Re-estimate SRH and f0 again using refined f0 limits", 52);
    std::ios_base::getloc((v139 + *(*v139 - 24)));
    v140 = std::locale::use_facet(&v351, &std::ctype<char>::id);
    (v140->__vftable[2].~facet_0)(v140, 10);
    std::locale::~locale(&v351);
    std::ostream::put();
    std::ostream::flush();
  }

  v351 = 0uLL;
  v352 = 0;
  locale = v131;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v351, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 3);
  v143 = *(a1 + 10);
  v142 = *(a1 + 11);
  if (v142 != v143)
  {
    v144 = 0;
    v145 = 0;
    do
    {
      v141 = *(v143 + 8 * v144);
      if (v141 >= *(a1 + 25))
      {
        ++v145;
      }

      else
      {
        v146 = v351 + 8 * v145;
        v147 = *(&v351 + 1) - (v146 + 8);
        if (*(&v351 + 1) != v146 + 8)
        {
          memmove((v351 + 8 * v145), (v146 + 8), *(&v351 + 1) - (v146 + 8));
          v143 = *(a1 + 10);
          v142 = *(a1 + 11);
        }

        *(&v351 + 1) = v146 + v147;
      }

      ++v144;
    }

    while (v144 < (v142 - v143) >> 3);
  }

  v148 = v351;
  v149 = *(&v351 + 1) - v351;
  v150 = (v351 + 8 * ((*(&v351 + 1) - v351) >> 4));
  if (v150 == *(&v351 + 1))
  {
    v151 = v39;
    v152 = v316;
  }

  else
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v351, v150, *(&v351 + 1), v141);
    v152 = v316;
    v148 = v351;
    v149 = *(&v351 + 1) - v351;
    v151 = v39;
  }

  v154 = *(v148 + ((v149 >> 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = *(a1 + 22);
  if (v154 * 0.5 > v155)
  {
    *(a1 + 22) = v154 * 0.5;
    v155 = v154 * 0.5;
  }

  v156 = v154 + v154;
  v157 = *(a1 + 23);
  if (v156 < v157)
  {
    *(a1 + 23) = v156;
    v157 = v156;
  }

  v158 = *a1;
  v159 = a1[72];
  v319 = llround(v157 / v158 * v159);
  v160 = v319 + 1;
  v327 = llround(v155 / v158 * v159);
  std::vector<double>::vector[abi:ne200100](&v345, v319 + 1 - v327);
  if (a1[68] > v35)
  {
    if (v314 <= 0x7FFFFFFE)
    {
      v161 = 0;
      v162 = v378;
      v163 = v345;
      v164 = v346;
      v165 = (v346 - v345) >> 3;
      v166 = *a1 / a1[72];
      v167 = *(a1 + 7);
      v168 = *(a1 + 10);
      if (v165 <= 1)
      {
        v165 = 1;
      }

      v169 = v313;
      if (v313 <= 1)
      {
        v169 = 1;
      }

      do
      {
        if (v327 <= v319)
        {
          v170 = *(v162 + 24 * v161);
          v171 = a1[65];
          v172 = (v170 + 16 * v327);
          v173 = 8 * v327;
          v174 = v327;
          do
          {
            v175 = *(v170 + 8 * v174);
            v163[v174 - v327] = v175;
            if (v171 >= 2)
            {
              v176 = v172;
              v177 = 2;
              do
              {
                v175 = v175 + *v176 - *(v170 + 8 * ((v177 + -0.5) * v174));
                v163[v174 - v327] = v175;
                ++v177;
                v176 = (v176 + v173);
              }

              while (v171 + 1 != v177);
            }

            ++v174;
            v172 += 2;
            v173 += 8;
          }

          while (v160 != v174);
        }

        if (v164 == v163)
        {
          v185 = -1.0;
          v179 = -INFINITY;
        }

        else
        {
          v178 = -1;
          v179 = -INFINITY;
          v180 = v165;
          v181 = v163;
          v182 = v327;
          do
          {
            v183 = *v181++;
            v184 = v183;
            if (v183 > v179)
            {
              v179 = v184;
              v178 = v182;
            }

            ++v182;
            --v180;
          }

          while (v180);
          v185 = v178;
        }

        *(v167 + 8 * v161) = v166 * v185;
        *(v168 + 8 * v161++) = v179;
      }

      while (v161 != v169);
    }

    goto LABEL_245;
  }

  v186 = v41 * v321;
  v187 = v41 * v321 + v151;
  if (v324 > v187)
  {
    v188 = v322;
    v189 = v187;
    v190 = round(v33 + v322 * -0.5);
    v191 = v151;
    v41 = v41;
    v315 = v152;
    v192 = v186 - v328;
    do
    {
      if (a1[66] == 1 && a1[67] == 1 && a1[70] < v323)
      {
        v193 = a1[71];
        v194 = a1[69];
        boost::filesystem::path::path(v343, "Progress: ");
        utils::update_progress_bar(v41, v323, v193, v194, v343);
        if (v344 < 0)
        {
          operator delete(v343[0]);
        }
      }

      *(*(a1 + 4) + 8 * v41) = (v186 / *a1);
      v195 = v385;
      if (v39)
      {
        v196 = (v385 + 2 * v186);
        v197 = 2 * v189 - 2 * v186;
        v198 = v366[0];
        do
        {
          v199 = *v196++;
          *v198++ = v199;
          v197 -= 2;
        }

        while (v197);
      }

      v200 = v190 + v186;
      v201 = v200;
      v202 = v200 + v188;
      if (v201 != v202)
      {
        v203 = v365[0];
        v204 = (v195 + 2 * v201);
        v205 = 2 * v202 - 2 * v201;
        do
        {
          v206 = *v204++;
          *v203++ = v206;
          v205 -= 2;
        }

        while (v205);
      }

      cblas_ddot_NEWLAPACK();
      v208 = v207;
      cblas_ddot_NEWLAPACK();
      *(v370 + v41) = sqrt(v209 / v188);
      if (v186 - v328 < 1)
      {
        v214 = v362;
        if (v363 - v362 >= 1)
        {
          bzero(v362, v363 - v362);
        }

        if (v39 < 1)
        {
          goto LABEL_200;
        }

        v215 = v366[0];
        v216 = &v214[8 * v328];
        v217 = v39;
        do
        {
          v218 = *v215++;
          *v216 = v218;
          v216 += 8;
          v217 = (v217 - 1);
        }

        while (v217);
      }

      else if (v316 >= 1)
      {
        v210 = v362;
        v211 = (v385 + 2 * v192);
        v212 = v315;
        do
        {
          v213 = *v211++;
          *v210++ = v213;
          --v212;
        }

        while (v212);
      }

      if (v39 >= 1)
      {
        v219 = v366[0];
        v220 = v355[0];
        v221 = v39;
        do
        {
          v222 = *v220++;
          *v219 = *v219 * v222;
          ++v219;
          v221 = (v221 - 1);
        }

        while (v221);
      }

LABEL_200:
      DSP::LP(v366, a1[64], v341);
      if (locale)
      {
        operator delete(locale);
      }

      v339 = 0;
      v340 = 0;
      v338 = 0;
      locale = v341[0].__locale_;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v338, v341[0].__locale_, v341[1].__locale_, (v341[1].__locale_ - v341[0].__locale_) >> 3);
      DSP::firfilter(&v338, &v362, v341);
      if (v360)
      {
        *(&v360 + 1) = v360;
        operator delete(v360);
      }

      v360 = *&v341[0].__locale_;
      v361 = v342;
      v341[1].__locale_ = 0;
      v342 = 0;
      v341[0].__locale_ = 0;
      if (v338)
      {
        v339 = v338;
        operator delete(v338);
      }

      if (v39 >= 1)
      {
        v223 = v364[0];
        v224 = (v360 + 8 * v328);
        v225 = 0.0;
        v226 = v39;
        v227 = v364[0];
        do
        {
          v228 = *v224++;
          *v227++ = v228;
          v225 = v225 + v228 * v228;
          v226 = (v226 - 1);
        }

        while (v226);
        if (v225 != 0.0)
        {
          v229 = sqrt(v208 / v225);
          v230 = v39;
          v231 = v223;
          do
          {
            *v231 = v229 * *v231;
            ++v231;
            v230 = (v230 - 1);
          }

          while (v230);
        }

        v232 = 0.0;
        v233 = v355[0];
        v234 = v39;
        v235 = v223;
        do
        {
          v236 = *v233++;
          v237 = v236 * *v235;
          *v235++ = v237;
          v232 = v232 + v237;
          v234 = (v234 - 1);
        }

        while (v234);
        v238 = v39;
        v239 = v232 / v191;
        do
        {
          *v223 = *v223 - v239;
          ++v223;
          v238 = (v238 - 1);
        }

        while (v238);
      }

      v240 = a1[72];
      if ((v240 & 0x80000000) == 0)
      {
        bzero(v325, (8 * ((((2 * v240) & ~((2 * v240) >> 31)) >> 1) & 0x7FFFFFFF)) | 4);
      }

      if (*(v370 + v41) > *(a1 + 24) * *(a1 + 16))
      {
        if (v39 >= 1)
        {
          v241 = v364[0];
          v242 = v39;
          v243 = (v325 + 4);
          do
          {
            v244 = *v241++;
            v245 = v244;
            *v243 = v245;
            v243 += 2;
            v242 = (v242 - 1);
          }

          while (v242);
        }

        DSP::fft(v325, v240, 1);
        v246 = std::ostream::operator<<();
        std::ios_base::getloc((v246 + *(*v246 - 24)));
        v247 = std::locale::use_facet(v341, &std::ctype<char>::id);
        (v247->__vftable[2].~facet_0)(v247, 10);
        std::locale::~locale(v341);
        std::ostream::put();
        std::ostream::flush();
        v240 = a1[72];
      }

      if ((v240 & 0x80000000) == 0)
      {
        v248 = 0;
        v249 = v358[0];
        v250 = 0.0;
        v251 = (v325 + 8);
        do
        {
          v252 = sqrtf((*v251 * *v251) + (*(v251 - 1) * *(v251 - 1)));
          *&v249[v248] = v252;
          v250 = v250 + v252 * v252;
          v251 += 2;
          v248 += 8;
        }

        while (((4 * v240) & 0x3FFFFFFF8) + 8 != v248);
        if (v250 != 0.0)
        {
          cblas_dscal_NEWLAPACK();
        }
      }

      v253 = v356;
      if (v327 <= v319)
      {
        v254 = v358[0];
        v255 = a1[65];
        v256 = (v358[0] + 16 * v327);
        v257 = 8 * v327;
        v258 = v327;
        do
        {
          v259 = v254[v258];
          v253[v258 - v327] = v259;
          if (v255 >= 2)
          {
            v260 = v256;
            v261 = 2;
            do
            {
              v259 = v259 + *v260 - v254[((v261 + -0.5) * v258)];
              v253[v258 - v327] = v259;
              ++v261;
              v260 = (v260 + v257);
            }

            while (v255 + 1 != v261);
          }

          ++v258;
          v256 += 2;
          v257 += 8;
        }

        while (v160 != v258);
      }

      if (v357 == v253)
      {
        v268 = -1.0;
        v264 = -INFINITY;
      }

      else
      {
        if ((v357 - v253) <= 1)
        {
          v262 = 1;
        }

        else
        {
          v262 = v357 - v253;
        }

        v263 = -1;
        v264 = -INFINITY;
        v265 = v327;
        do
        {
          v266 = *v253++;
          v267 = v266;
          if (v266 > v264)
          {
            v264 = v267;
            v263 = v265;
          }

          ++v265;
          --v262;
        }

        while (v262);
        v268 = v263;
      }

      *(*(a1 + 7) + 8 * v41) = v268 * (*a1 / a1[72]);
      *(*(a1 + 10) + 8 * v41++) = v264;
      v189 = v320 + v41 * v321;
      v186 += v321;
      v192 += v321;
    }

    while (v324 > v189);
  }

LABEL_245:
  if (v345)
  {
    v346 = v345;
    operator delete(v345);
  }

  v153 = v312;
  v36 = v313;
  v131 = locale;
  v35 = v314 + 1;
  if (v351)
  {
    *(&v351 + 1) = v351;
    operator delete(v351);
  }

  v130 = *(a1 + 10);
  v132 = *(a1 + 11);
  v133 = v132 - v130;
LABEL_250:
  if (v132 == v130)
  {
    v272 = 0.0;
    v270 = 0.0;
  }

  else
  {
    if (v133 <= 1)
    {
      v269 = 1;
    }

    else
    {
      v269 = v133;
    }

    v270 = 0.0;
    v271 = v130;
    v272 = 0.0;
    do
    {
      v273 = *v271++;
      v272 = v272 + v273;
      v270 = v270 + v273 * v273;
      --v269;
    }

    while (v269);
  }

  if (sqrt(v270 / v35 - v272 / v35 * (v272 / v35)) > *(a1 + 26))
  {
    *(a1 + 27) = *(a1 + 28);
  }

  if (v314 <= 0x7FFFFFFE)
  {
    v274 = *(a1 + 13);
    if (v36 <= 1)
    {
      v275 = 1;
    }

    else
    {
      v275 = v36;
    }

    v276 = v275;
    v277 = *(a1 + 13);
    v278 = v130;
    do
    {
      v279 = *v278++;
      if (v279 <= *(a1 + 27))
      {
        v280 = 0.0;
      }

      else
      {
        v280 = 1.0;
      }

      *v277++ = v280;
      --v276;
    }

    while (v276);
    v281 = v370;
    v282 = v368;
    v283 = v367[0];
    do
    {
      if (*v281 < *(a1 + 16))
      {
        *v274 = 0;
      }

      if (*v282 > *(a1 + 17))
      {
        *v274 = 0;
      }

      if (*v283 > *(a1 + 18))
      {
        *v274 = 0;
      }

      ++v281;
      ++v274;
      ++v282;
      ++v283;
      --v275;
    }

    while (v275);
  }

  if (v132 != v130)
  {
    v284 = log(a1[65]);
    if (v133 <= 1)
    {
      v285 = 1;
    }

    else
    {
      v285 = v133;
    }

    do
    {
      *v130 = fmax(fmin(*v130 / v284 * 6.4, 1.0), 0.0);
      ++v130;
      --v285;
    }

    while (v285);
  }

  v286 = *(a1 + 5);
  if ((v286 - *(a1 + 4)) >= 9 && *(v286 - 8) == 0.0)
  {
    *(a1 + 5) = v286 - 8;
    *(a1 + 8) -= 8;
    *(a1 + 14) -= 8;
    *(a1 + 11) = v132 - 1;
  }

  DSP::smooth_voiced_pitch_contour(a1 + 7, a1[7], &v351);
  v287 = *(a1 + 7);
  if (v287)
  {
    *(a1 + 8) = v287;
    operator delete(v287);
    *(a1 + 7) = 0;
    *(a1 + 8) = 0;
    *(a1 + 9) = 0;
  }

  *(a1 + 14) = v351;
  *(a1 + 9) = v352;
  free(v325);
  v351 = 0uLL;
  v352 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v351, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 3);
  v288 = v351;
  if (*(&v351 + 1) != v351)
  {
    v289 = (*(&v351 + 1) - v351) >> 3;
    v290 = *(a1 + 7);
    v291 = *(a1 + 13);
    if (v289 <= 1)
    {
      v289 = 1;
    }

    do
    {
      v292 = *v290++;
      v293 = v292;
      v294 = *v291++;
      *v288++ = v293 * v294;
      --v289;
    }

    while (v289);
  }

  v295 = *(a1 + 4);
  v296 = *(a1 + 5);
  v346 = 0;
  v347 = 0;
  v345 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v345, v295, v296, v296 - v295);
  v341[1].__locale_ = 0;
  v342 = 0;
  v341[0].__locale_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(v341, v351, *(&v351 + 1), (*(&v351 + 1) - v351) >> 3);
  v297 = *(a1 + 7);
  v298 = *(a1 + 8);
  v336 = 0;
  v337 = 0;
  v335 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v335, v297, v298, v298 - v297);
  v299 = *(a1 + 10);
  v300 = *(a1 + 11);
  v333 = 0;
  v334 = 0;
  v332 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v332, v299, v300, v300 - v299);
  if (a1[66])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Elapsed time: ", 14);
    clock();
    v301 = std::ostream::operator<<();
    v302 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, " s", 2);
    std::ios_base::getloc((v302 + *(*v302 - 24)));
    v303 = std::locale::use_facet(&v389, &std::ctype<char>::id);
    (v303->__vftable[2].~facet_0)(v303, 10);
    std::locale::~locale(&v389);
    std::ostream::put();
    std::ostream::flush();
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_S6_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS6_S6_S6_S6_EJEJEJRS6_S9_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(v153, &v345, v341, &v335, &v332);
  if (v332)
  {
    v333 = v332;
    operator delete(v332);
  }

  if (v335)
  {
    v336 = v335;
    operator delete(v335);
  }

  if (v341[0].__locale_)
  {
    v341[1] = v341[0];
    operator delete(v341[0].__locale_);
  }

  if (v345)
  {
    v346 = v345;
    operator delete(v345);
  }

  if (v351)
  {
    *(&v351 + 1) = v351;
    operator delete(v351);
  }

  if (v355[0])
  {
    v355[1] = v355[0];
    operator delete(v355[0]);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v358[0])
  {
    v358[1] = v358[0];
    operator delete(v358[0]);
  }

  if (v131)
  {
    operator delete(v131);
  }

  if (v359[0])
  {
    v359[1] = v359[0];
    operator delete(v359[0]);
  }

  if (v360)
  {
    *(&v360 + 1) = v360;
    operator delete(v360);
  }

  if (v362)
  {
    v363 = v362;
    operator delete(v362);
  }

  if (v364[0])
  {
    v364[1] = v364[0];
    operator delete(v364[0]);
  }

  if (v365[0])
  {
    v365[1] = v365[0];
    operator delete(v365[0]);
  }

  if (v366[0])
  {
    v366[1] = v366[0];
    operator delete(v366[0]);
  }

  if (v367[0])
  {
    v367[1] = v367[0];
    operator delete(v367[0]);
  }

  if (v368)
  {
    v369 = v368;
    operator delete(v368);
  }

  if (v370)
  {
    *v371 = v370;
    operator delete(v370);
  }

  v370 = &v378;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v370);
  if (v380)
  {
    v381 = v380;
    operator delete(v380);
  }

  if (v385)
  {
    *(&v385 + 1) = v385;
    operator delete(v385);
  }

  if (v387)
  {
    *(&v387 + 1) = v387;
    operator delete(v387);
  }
}

void sub_1A47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::locale a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a67)
  {
    STACK[0x200] = a67;
    operator delete(a67);
  }

  v69 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v69;
    operator delete(v69);
  }

  v70 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v76;
    operator delete(v76);
  }

  STACK[0x2B8] = &STACK[0x300];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B8]);
  v77 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v77;
    operator delete(v77);
  }

  v78 = *(v67 - 224);
  if (v78)
  {
    *(v67 - 216) = v78;
    operator delete(v78);
  }

  v79 = *(v67 - 192);
  if (v79)
  {
    *(v67 - 184) = v79;
    operator delete(v79);
  }

  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::convert_espbuffer_to_2d_vector(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v10 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v4, &v10);
  std::vector<std::vector<float>>::vector[abi:ne200100](a2, v5, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 4 * v4;
    do
    {
      v9 = &v7[v8];
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*a2 + v6), v7, &v7[v8], v4);
      v6 += 24;
      v7 = v9;
      --v5;
    }

    while (v5);
  }
}

void sub_1A4C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SiriTTS::ForcedAlignment::EspressoSession::EspressoSession(uint64_t *a1)
{
  *a1 = espresso_create_context();
  a1[3] = espresso_create_plan();
  espresso_plan_add_network();
  return a1;
}

void SiriTTS::ForcedAlignment::EspressoSession::forward(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a5@<X8>)
{
  espresso_network_change_blob_shape();
  espresso_plan_build();
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v8 = *a2;
  v16[1] = (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v16[2] = ((v8[1] - *v8) >> 2);
  espresso_buffer_pack_tensor_shape();
  memset(&v15, 0, sizeof(v15));
  std::vector<int>::reserve(&v15, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) * ((*(*a2 + 8) - **a2) >> 2));
  *(a1 + 192) = 65568;
  espresso_network_bind_buffer();
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v15, v15.__end_, *(v9 + v10), *(v9 + v10 + 8), (*(v9 + v10 + 8) - *(v9 + v10)) >> 2);
      ++v11;
      v9 = *a2;
      v10 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v11);
  }

  *(a1 + 32) = v15.__begin_;
  espresso_network_bind_buffer();
  espresso_plan_execute_sync();
  SiriTTS::ForcedAlignment::convert_espbuffer_to_2d_vector(v14, &v12);
  std::vector<std::vector<int>>::__vdeallocate(a5);
  *a5 = v12;
  a5[2] = v13;
  v13 = 0;
  v12 = 0uLL;
  v16[0] = &v12;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v16);
  espresso_plan_build_clean();
  if (v15.__begin_)
  {
    v15.__end_ = v15.__begin_;
    operator delete(v15.__begin_);
  }
}

void sub_1A4F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 - 120);
  if (v11)
  {
    *(v9 - 112) = v11;
    operator delete(v11);
  }

  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SiriTTS::ForcedAlignment::FeatureTransform::transform@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = 0u;
  v17 = 0u;
  v16 = off_276F88;
  v19 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = off_276F88;
  v15 = 0;
  memset(v10, 0, sizeof(v10));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v10, v11);
  v9[0] = v10;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v9);
  kaldi::CuMatrix<float>::operator=(&v16, v11);
  kaldi::nnet1::Nnet::Feedforward(*a1, &v16, &v12, 0xFFFFFFFF, 0);
  kaldi::Matrix<float>::Matrix(v9);
  kaldi::Matrix<float>::Resize(v9, HIDWORD(v13), DWORD2(v13), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(&v12, v9, 111, v5, v6);
  kaldi::Matrix<float>::Matrix(v8, v9);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v8, a3);
  kaldi::Matrix<float>::~Matrix(v8);
  kaldi::Matrix<float>::~Matrix(v9);
  kaldi::Matrix<float>::~Matrix(v11);
  kaldi::CuMatrix<float>::~CuMatrix(&v12);
  return kaldi::CuMatrix<float>::~CuMatrix(&v16);
}

void sub_1A5198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(v21 - 128);
  kaldi::CuMatrix<float>::~CuMatrix(v21 - 80);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::PdfPrior::PdfPrior(void *a1, const std::string *a2)
{
  *a1 = 0;
  boost::filesystem::path::path(&__p, "");
  v4 = 0x2EDBE6FF3F800000;
  std::string::operator=(&__p, a2);
  operator new();
}

uint64_t SiriTTS::ForcedAlignment::PdfPrior::subtract_on_logpost@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v7, 0, sizeof(v7));
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v7, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v7, v8);
  v9 = v7;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::nnet1::PdfPrior::SubtractOnLogpost(*a1, v8);
  kaldi::Matrix<float>::Matrix(v6, v8);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v6, a3);
  kaldi::Matrix<float>::~Matrix(v6);
  return kaldi::Matrix<float>::~Matrix(v8);
}

void sub_1A53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AcousticModel::AcousticModel(_OWORD *a1, const void **a2, _BYTE *a3)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v7;
  std::string::basic_string[abi:ne200100](v7, v4 + 5);
  if (v8 < 0)
  {
    v5 = v7[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "/tree");
  operator new();
}

void sub_1A5C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  STACK[0x360] = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  STACK[0x360] = v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  v54 = v50[9];
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v55 = v50[7];
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v56 = v50[5];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v57 = v50[3];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  v58 = v50[1];
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  kaldi::Input::~Input(va);
  JUMPOUT(0x1A5DB4);
}

uint64_t std::copy[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v10 = *a1;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, a1[1], a1[2]);
  }

  else
  {
    v11 = *(a1 + 1);
  }

  v5 = *a2;
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, a2[1], a2[2]);
    v5 = v8;
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v19 = v11;
  memset(&v11, 0, sizeof(v11));
  v16 = v5;
  v17 = v9;
  v18 = v10;
  memset(&v9, 0, sizeof(v9));
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>,0>(&v18, &v16, a3, v12);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v6 = v15;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1A5F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SiriTTS::ForcedAlignment::AcousticModel::forward(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  SiriTTS::ForcedAlignment::FeatureTransform::transform(*(a1 + 32), a2, &v21);
  memset(v20, 0, sizeof(v20));
  if ((-1431655765 * ((v22 - v21) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      SiriTTS::ForcedAlignment::get_submatrix(&v21, v6, 30000, v19);
      if (*a3 == 1)
      {
        v17 = 0uLL;
        v18 = 0;
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, 0, 0, 0);
        SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v14, &v15);
        std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](v20, &v15);
        kaldi::Matrix<float>::~Matrix(&v15);
        v12[0] = v14;
      }

      else
      {
        v17 = 0uLL;
        v18 = 0;
        v7 = *(a1 + 48);
        boost::filesystem::path::path(v12, "main_input");
        boost::filesystem::path::path(&__p, "output_layer_BiasAdd");
        SiriTTS::ForcedAlignment::EspressoSession::forward(v7, v19, &v15);
        std::vector<std::vector<int>>::__vdeallocate(&v17);
        v17 = v15;
        v18 = v16;
        v16 = 0;
        v15 = 0uLL;
        v23 = &v15;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v23);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v13 < 0)
        {
          operator delete(v12[0]);
        }

        memset(v9, 0, sizeof(v9));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v9, v17, *(&v17 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v17 + 1) - v17) >> 3));
        SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(v9, &v15);
        std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](v20, &v15);
        kaldi::Matrix<float>::~Matrix(&v15);
        v12[0] = v9;
      }

      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v12);
      *&v15 = &v17;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
      *&v15 = v19;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
      v6 += 30000;
    }

    while (v6 < (-1431655765 * ((v22 - v21) >> 3)));
  }

  SiriTTS::ForcedAlignment::concat_features(v20, &v15);
  SiriTTS::ForcedAlignment::PdfPrior::subtract_on_logpost(*(a1 + 64), &v15, a4);
  v19[0] = &v15;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v19);
  *&v15 = v20;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
  *&v15 = &v21;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_1A6240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  *(v36 - 168) = v35;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v36 - 168));
  a29 = v36 - 144;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = v36 - 120;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(a1, a2);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(*(a1 + 8), a2);
    result = v3 + 40;
    *(a1 + 8) = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *SiriTTS::ForcedAlignment::AcousticModel::context@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this[1];
  *a1 = *this;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *SiriTTS::ForcedAlignment::AcousticModel::transition_model@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this[3];
  *a1 = this[2];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *std::unique_ptr<kaldi::nnet1::PdfPrior>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    kaldi::CuVector<float>::~CuVector((v2 + 8));

    operator delete();
  }

  return result;
}

void std::__shared_ptr_emplace<kaldi::ContextDependency>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2830C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<kaldi::TransitionModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::EspressoSession>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::EspressoSession>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283168;
  SiriTTS::ForcedAlignment::EspressoSession::EspressoSession(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::EspressoSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::FeatureTransform>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::FeatureTransform>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_2831B8;
  SiriTTS::ForcedAlignment::FeatureTransform::FeatureTransform((a1 + 24), a2);
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::FeatureTransform>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2831B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::PdfPrior>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<SiriTTS::ForcedAlignment::PdfPrior>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283208;
  SiriTTS::ForcedAlignment::PdfPrior::PdfPrior(a1 + 3, a2);
}

void std::__shared_ptr_emplace<SiriTTS::ForcedAlignment::PdfPrior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a1 + 1));
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1A6990(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *a1;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, a1[1], a1[2]);
  }

  else
  {
    v28 = *(a1 + 1);
  }

  v24 = *a2;
  *__p = *(a2 + 1);
  v26 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::__unwrap_range[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(&v27, &v24, &v29);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v20 = v31;
  v15 = v32;
  *v19 = v30;
  v30 = 0uLL;
  v17 = v34;
  v18 = v29;
  *v16 = v33;
  v31 = 0;
  v33 = 0uLL;
  v34 = 0;
  std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>(&v18, &v15, a3, v21);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v8 = a1[1];
  v9 = *(a1 + 31);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v10 = *v21;
  v35[0] = v22;
  *(v35 + 7) = *(&v22 + 7);
  v11 = HIBYTE(v22);
  v22 = 0uLL;
  v21[1] = 0;
  *(v36 + 7) = *(v35 + 7);
  v36[0] = v35[0];
  if (v9 < 0)
  {
    v14 = v10;
    operator delete(v8);
    v10 = v14;
    v12 = v22 < 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v23;
  *a4 = v10;
  *(a4 + 16) = v36[0];
  *(a4 + 23) = *(v36 + 7);
  *(a4 + 31) = v11;
  *(a4 + 32) = v13;
  if (v12)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void std::__unwrap_range[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *v17 = *(a1 + 6);
  *&v17[3] = *(a1 + 27);
  v7 = *(a1 + 31);
  a1[1] = 0uLL;
  *(a1 + 1) = 0;
  v8 = *(&v5 + 1);
  *&v18 = v5;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external((&v18 + 8), *(&v5 + 1), v6);
    v15 = v18;
    v9 = v20;
  }

  else
  {
    v15 = v5;
    *(&v18 + 1) = *(&v5 + 1);
    *v19 = v6;
    *&v19[8] = *v17;
    *&v19[11] = *&v17[3];
    v9 = v7;
  }

  v22[0] = *v19;
  *(v22 + 7) = *&v19[7];
  v10 = *a2;
  v11 = *(a2 + 2);
  *v16 = *(a2 + 6);
  *&v16[3] = *(a2 + 27);
  v12 = *(a2 + 31);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v13 = *(&v10 + 1);
  *&v18 = v10;
  if (v12 < 0)
  {
    std::string::__init_copy_ctor_external((&v18 + 8), *(&v10 + 1), v11);
    v10 = v18;
    v14 = v20;
  }

  else
  {
    *(&v18 + 1) = *(&v10 + 1);
    *v19 = v11;
    *&v19[8] = *v16;
    *&v19[11] = *&v16[3];
    v14 = v12;
  }

  v21[0] = *v19;
  *(v21 + 7) = *&v19[7];
  *a3 = v15;
  *(a3 + 16) = v22[0];
  *(a3 + 23) = *(v22 + 7);
  *(a3 + 31) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v21[0];
  *(a3 + 55) = *(v21 + 7);
  *(a3 + 63) = v14;
  if ((v12 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v8);
    return;
  }

  operator delete(v13);
  if (v7 < 0)
  {
    goto LABEL_11;
  }
}

void sub_1A6DD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::back_insert_iterator<std::vector<std::string>>>@<Q0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  for (i = *a1; *a1 != *a2; i = *a1)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, (a1 + 1));
    std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](a1);
  }

  *a4 = i;
  result = *(a1 + 1);
  *(a4 + 8) = result;
  v10 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = a3;
  return result;
}

uint64_t **std::istream_iterator<std::string,char,std::char_traits<char>,long>::operator++[abi:ne200100](uint64_t **a1)
{
  v2 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, (a1 + 1));
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t std::pair<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>::~pair(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(uint64_t a1, unsigned int *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  kaldi::Matrix<float>::Matrix((40 * v2), a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = (40 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_1A7028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::AlignmentGraph::AlignmentGraph(SiriTTS::ForcedAlignment::AlignmentGraph *this, const kaldi::ContextDependency *a2, const kaldi::TransitionModel *a3, void *a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  std::allocate_shared[abi:ne200100]<kaldi::TrainingGraphCompiler,std::allocator<kaldi::TrainingGraphCompiler>,kaldi::TransitionModel const&,kaldi::ContextDependency const&,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::vector<int>,kaldi::TrainingGraphCompilerOptions &,0>();
}

void sub_1A70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = v10[5];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v10[3];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v10[1];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A71A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel const&,kaldi::ContextDependency const&,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::vector<int>,kaldi::TrainingGraphCompilerOptions &,std::allocator<kaldi::TrainingGraphCompiler>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_283258;
  kaldi::TrainingGraphCompiler::TrainingGraphCompiler(a1 + 3, a2, a3, *a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_283258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void kaldi::TrainingGraphCompiler::~TrainingGraphCompiler(kaldi::TrainingGraphCompiler *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst9VectorFstINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEEC2B8ne200100IJESC_Li0EEESC_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2832A8;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst(a1 + 3);
}

void std::__shared_ptr_emplace<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2832A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix@<X0>(kaldi::ContextDependency *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = kaldi::ContextDependency::CentralPosition(a1);
  v5 = kaldi::ContextDependency::ContextWidth(a1);
  result = std::vector<std::vector<float>>::vector[abi:ne200100](a2, v4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; result = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*a2 + 24 * i++), v9, &v9[4 * v5], v5))
    {
      std::vector<int>::resize((*a2 + 24 * i), v5);
      if (i >= *(a1 + 3))
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v8);
      }

      v9 = (*a1 + 4 * *(a1 + 4) * i);
    }
  }

  return result;
}

void sub_1A7600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SiriTTS::ForcedAlignment::kaldi_matrix_from_matrix(void *a1@<X0>, uint64_t a2@<X8>)
{
  kaldi::Matrix<float>::Matrix(a2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  kaldi::Matrix<float>::Resize(a2, v4, (*(*a1 + 8) - **a1) >> 2, 1, 0);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = v4 & 0x7FFFFFFF;
    v8 = 8;
    do
    {
      if (v6 >= *(a2 + 12))
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v5);
      }

      v9 = (*a1 + v8);
      v10 = *(v9 - 1);
      v11 = *v9;
      if (v11 != v10)
      {
        memmove((*a2 + 4 * *(a2 + 16) * v6), v10, v11 - v10);
      }

      ++v6;
      v8 += 24;
    }

    while (v7 != v6);
  }
}

uint64_t SiriTTS::ForcedAlignment::concat_features@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = kaldi::ContextDependency::CentralPosition(*a1);
  v5 = kaldi::ContextDependency::ContextWidth(*a1);
  v6 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) >= 2)
  {
    v7 = 1;
    v8 = 40;
    do
    {
      v4 = kaldi::ContextDependency::CentralPosition((v6 + v8)) + v4;
      ++v7;
      v6 = *a1;
      v8 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) > v7);
  }

  kaldi::Matrix<float>::Matrix(v20, v4, v5, 0, 0);
  v9 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = kaldi::ContextDependency::CentralPosition((v9 + v10));
      v14 = v13;
      kaldi::SubMatrix<float>::SubMatrix(v19, v20, v12, v13);
      kaldi::MatrixBase<float>::CopyFromMat<float>(v19, (*a1 + v10), 111, v15, v16);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v12 = (v14 + v12);
      ++v11;
      v9 = *a1;
      v10 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) > v11);
  }

  kaldi::Matrix<float>::Matrix(v18, v20);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v18, a2);
  kaldi::Matrix<float>::~Matrix(v18);
  return kaldi::Matrix<float>::~Matrix(v20);
}

void sub_1A78A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t SiriTTS::ForcedAlignment::get_submatrix@<X0>(void *a1@<X0>, int a2@<W1>, signed int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = -1431655765 * ((a1[1] - *a1) >> 3) - a2;
  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  kaldi::Matrix<float>::Matrix(&v17);
  kaldi::Matrix<float>::Resize(&v17, v8, (*(*a1 + 8) - **a1) >> 2, 1, 0);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 24 * a2;
    do
    {
      if (v10 >= v18)
      {
        kaldi::KaldiAssertFailure_("RowData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
      }

      v12 = *a1 + v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14 != v13)
      {
        memmove((v17 + 4 * v10 * v19), v13, v14 - v13);
      }

      ++v10;
      v11 += 24;
    }

    while (v8 != v10);
  }

  kaldi::Matrix<float>::Matrix(v16, &v17);
  SiriTTS::ForcedAlignment::matrix_from_kaldi_matrix(v16, a4);
  kaldi::Matrix<float>::~Matrix(v16);
  return kaldi::Matrix<float>::~Matrix(&v17);
}

void sub_1A7A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void MelBanks::MelBanks(MelBanks *this, int a2, int a3, int a4, int a5, int a6, int a7, char a8)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = a2;
  *(this + 7) = a3;
  *(this + 8) = a4;
  *(this + 9) = a5;
  *(this + 10) = a6;
  *(this + 11) = a7;
  *(this + 48) = a8;
  MelBanks::linspace(v17, a3, a4, a6);
  MelBanks::mel_frequencies(this, *(this + 11) + 2, v16);
  MelBanks::compute_diff(v16, v15);
  MelBanks::compute_ramps(v16, v17, v14);
  if (*(this + 11) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      MelBanks::compute_lower((v14[0] + v9), v13, *(v15[0] + v10));
      MelBanks::compute_upper((v14[0] + v9 + 48), v12, *(v15[0] + v10 + 1));
      MelBanks::intersection(v13, v12, __p, 0.0);
      std::vector<std::vector<double>>::push_back[abi:ne200100](this, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v12[0])
      {
        v12[1] = v12[0];
        operator delete(v12[0]);
      }

      if (v13[0])
      {
        v13[1] = v13[0];
        operator delete(v13[0]);
      }

      ++v10;
      v9 += 24;
    }

    while (v10 < *(this + 11));
  }

  MelBanks::normalize(this, v16);
  v13[0] = v14;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }
}

void sub_1A7BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  a16 = &a19;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  v26 = *(v24 - 80);
  if (v26)
  {
    *(v24 - 72) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  *(v24 - 56) = v23;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v24 - 56));
  _Unwind_Resume(a1);
}

void MelBanks::linspace(const void **__return_ptr a1@<X8>, double a2@<D0>, double a3@<D1>, int a4@<W1>)
{
  v10 = a3;
  v11 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a4)
  {
    v5 = a4 - 1;
    if (a4 == 1)
    {
      std::vector<double>::push_back[abi:ne200100](a1, &v11);
    }

    else
    {
      if (a4 >= 2)
      {
        v7 = 0;
        v8 = (a3 - a2) / v5;
        do
        {
          v9 = a2 + v8 * v7;
          std::vector<double>::push_back[abi:ne200100](a1, &v9);
          ++v7;
        }

        while (v5 != v7);
      }

      std::vector<double>::push_back[abi:ne200100](a1, &v10);
    }
  }
}

void sub_1A7D34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::mel_frequencies(MelBanks *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 7);
  v7 = v6;
  if (*(this + 48))
  {
    v8 = log10(v7 / 700.0 + 1.0) * 2595.0;
    v9 = log10(*(this + 8) / 700.0 + 1.0) * 2595.0;
  }

  else
  {
    if (v6 >= 1000)
    {
      v8 = log10(v7 / 1000.0) / 0.0298585176 + 15.0000006;
    }

    else
    {
      v8 = v7 / 66.6666641;
    }

    v10 = *(this + 8);
    v11 = v10;
    if (v10 >= 1000)
    {
      v9 = log10(v11 / 1000.0) / 0.0298585176 + 15.0000006;
    }

    else
    {
      v9 = v11 / 66.6666641;
    }
  }

  MelBanks::linspace(&v13, v8, v9, a2);
  v12 = v13;
  v15 = v13;
  v16 = v14;
  MelBanks::mel_to_hz(this, &v15, a3);
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_1A7EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::compute_diff(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (*a1 < (*(a1 + 8) - 8))
  {
    v5 = v3 + 1;
    do
    {
      v6 = *v5 - *v3;
      std::vector<double>::push_back[abi:ne200100](a2, &v6);
      ++v3;
      ++v5;
    }

    while (v3 < *(a1 + 8) - 8);
  }
}

void sub_1A7F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MelBanks::compute_ramps(uint64_t *a1@<X1>, double **a2@<X2>, uint64_t *a3@<X8>)
{
  std::vector<std::vector<double>>::vector[abi:ne200100](a3, (a1[1] - *a1) >> 3);
  if (a1[1] != *a1)
  {
    v6 = 0;
    v8 = *a2;
    v7 = a2[1];
    do
    {
      std::vector<std::pair<int,int>>::resize((*a3 + 24 * v6), v7 - v8);
      v8 = *a2;
      v7 = a2[1];
      v9 = *a1;
      if (v7 != *a2)
      {
        v10 = v7 - *a2;
        v11 = *(*a3 + 24 * v6);
        if (v10 <= 1)
        {
          v10 = 1;
        }

        v12 = *a2;
        do
        {
          v13 = *v12++;
          *v11++ = *(v9 + 8 * v6) - v13;
          --v10;
        }

        while (v10);
      }

      ++v6;
    }

    while (v6 < (a1[1] - v9) >> 3);
  }
}

void sub_1A8044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *MelBanks::compute_lower@<X0>(double **a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a2, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = -v10 / a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *MelBanks::compute_upper@<X0>(double **a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a2, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *result;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      *v9++ = v10 / a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

const void **std::vector<std::vector<double>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t *MelBanks::intersection@<X0>(double **a1@<X1>, double **a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = std::vector<double>::vector[abi:ne200100](a3, a1[1] - *a1);
  v8 = *a1;
  v9 = a1[1] - *a1;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = *a2;
    v12 = *result;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = *v8++;
      v16 = v15;
      if (v14 >= v15)
      {
        v14 = v16;
      }

      if (v14 <= a4)
      {
        v14 = a4;
      }

      *v12++ = v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

void MelBanks::normalize(uint64_t a1, void *a2)
{
  std::vector<double>::vector[abi:ne200100](__p, ((a2[1] - *a2) >> 3) - 2);
  v4 = *(a1 + 44);
  v5 = __p[0];
  if (v4 >= 1)
  {
    v6 = (*a2 + 16);
    v7 = *(a1 + 44);
    v8 = __p[0];
    do
    {
      *v8++ = 2.0 / (*v6 - *(v6 - 2));
      ++v6;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 40);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v4 >= 1)
      {
        v11 = *a1;
        v12 = v4;
        v13 = v5;
        do
        {
          v15 = *v11;
          v11 += 3;
          v14 = v15;
          v16 = *(v15 + 8 * i);
          v17 = *v13++;
          *(v14 + 8 * i) = v16 * v17;
          --v12;
        }

        while (v12);
      }
    }
  }

  if (v5)
  {
    __p[1] = v5;
    operator delete(v5);
  }
}

void MelBanks::mel_to_hz(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 48) == 1)
  {
    if (v6 < v5)
    {
      do
      {
        v11 = (__exp10(*v6 / 2595.0) + -1.0) * 700.0;
        std::vector<double>::push_back[abi:ne200100](a3, &v11);
        ++v6;
      }

      while (v6 < *(a2 + 8));
    }
  }

  else
  {
    if (v6 < v5)
    {
      do
      {
        v11 = *v6 * 66.6666641 + 0.0;
        std::vector<double>::push_back[abi:ne200100](a3, &v11);
        ++v6;
        v5 = *(a2 + 8);
      }

      while (v6 < v5);
      v6 = *a2;
    }

    v7 = v5 - v6;
    if (v7)
    {
      v8 = v7 >> 3;
      v9 = *a3;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      do
      {
        if (*v6 >= 15.0000006)
        {
          *v9 = exp((*v6 + -15.0000006) * 0.0687517774) * 1000.0;
        }

        ++v9;
        ++v6;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_1A8540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Mel::Mel(Mel *this, int a2)
{
  *this = -1027080192;
  *(this + 2) = 1064849900;
  *(this + 3) = a2;
  v2 = vmul_s32(vdup_n_s32(a2 / 1000), 0xA00000019);
  *(this + 2) = v2;
  *(this + 3) = 0x5000000800;
  *(this + 8) = 65793;
  *(this + 36) = 1;
  *(this + 10) = 1024;
  strcpy(this + 48, "reflective");
  *(this + 71) = 10;
  *(this + 72) = 0u;
  *(this + 168) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  Mel::buildNonSymHannWindow(this, v2.u32[0]);
  operator new();
}

void Mel::buildNonSymHannWindow(Mel *this, unsigned int a2)
{
  std::vector<std::pair<int,int>>::resize(this + 9, a2);
  if (a2 >= 1)
  {
    v4 = 0;
    v14 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_212100;
    v12 = vdupq_n_s64(2uLL);
    v13 = vdupq_n_s64(0x401921FB54442D18uLL);
    *&v6 = a2;
    v7 = (a2 + 1) & 0xFFFFFFFE;
    v11 = vdupq_lane_s64(v6, 0);
    v8 = (*(this + 9) + 8);
    do
    {
      v18 = v5;
      v17 = vmovn_s64(vcgeq_u64(v14, v5));
      v9.i64[0] = v4;
      v9.i64[1] = (v4 + 1);
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v9), v13), v11);
      v16 = cos(__x.f64[1]);
      v10 = cos(__x.f64[0]);
      if (v17.i8[0])
      {
        *(v8 - 1) = (1.0 - v10) * 0.5;
      }

      if (v17.i8[4])
      {
        *v8 = (1.0 - v16) * 0.5;
      }

      v4 += 2;
      v5 = vaddq_s64(v18, v12);
      v8 += 2;
    }

    while (v7 != v4);
  }
}

void Mel::Mel(Mel *this, int a2, unsigned int a3, int a4, int a5, int a6, char a7, char a8, float a9, char a10, char a11, char a12, int a13, __int128 *a14)
{
  *this = -1027080192;
  *(this + 2) = a9;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 32) = a7;
  *(this + 33) = a8;
  *(this + 34) = a10;
  *(this + 35) = a11;
  *(this + 36) = a12;
  *(this + 10) = a13;
  if (*(a14 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a14, *(a14 + 1));
    a3 = *(this + 4);
  }

  else
  {
    v15 = *a14;
    *(this + 8) = *(a14 + 2);
    *(this + 3) = v15;
  }

  *(this + 72) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  Mel::buildNonSymHannWindow(this, a3);
  operator new();
}

{
  Mel::Mel(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void Mel::~Mel(Mel *this)
{
  if (*(this + 27))
  {
    v5 = *(this + 27);
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
    operator delete();
  }

  vDSP_destroy_fftsetupD(*(this + 29));
  free(*(this + 30));
  free(*(this + 31));
  v5 = (this + 192);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 168);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 144);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

double Mel::padSignal@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = ((*(a2 + 8) - *a2) >> 3) + 2 * *(a1 + 40);
  v22 = 0;
  std::vector<double>::vector[abi:ne200100](__p, v8, &v22);
  if (!std::string::compare(a3, "none"))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!std::string::compare(a3, "reflective"))
    {
      v11 = *a2;
      v12 = *(a1 + 40);
      v13 = *a2 + 8 * v12 + 8;
      v14 = __p[0];
      if (v13 != *a2)
      {
        v15 = __p[0];
        do
        {
          v16 = *(v13 - 8);
          v13 -= 8;
          *v15++ = v16;
        }

        while (v13 != v11);
      }

      v17 = 8 * v12;
      v18 = *(a2 + 8);
      if (v18 != v11)
      {
        memmove(&v14[v17], v11, v18 - v11);
        v18 = *(a2 + 8);
        v17 = 8 * *(a1 + 40);
      }

      v19 = &v18[-v17 - 8];
      if (v19 != v18)
      {
        v20 = __p[1] - v17 - 8;
        do
        {
          v21 = *(v18 - 1);
          v18 -= 8;
          *v20++ = v21;
        }

        while (v18 != v19);
      }
    }

    else if (!std::string::compare(a3, "constant"))
    {
      v9 = *(a2 + 8);
      if (v9 != *a2)
      {
        memmove(__p[0] + 8 * *(a1 + 40), *a2, v9 - *a2);
      }
    }

    result = *__p;
    *a4 = *__p;
    a4[2] = v24;
  }

  return result;
}

void sub_1A8E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Mel::computeMagSpec(uint64_t a1, const DSPDoubleComplex **a2, double **a3)
{
  vDSP_ctozD(*a2, 2, (a1 + 240), 1, (*(a1 + 24) + (*(a1 + 24) >> 31)) >> 1);
  vDSP_fft_zripD(*(a1 + 232), (a1 + 240), 1, *(a1 + 224), 1);
  v6 = *(a1 + 240);
  v5 = *(a1 + 248);
  v7 = *v6 * 0.5;
  v8 = *a3;
  *v8 = fabsf(v7);
  v9 = *v5 * 0.5;
  v10 = *(a1 + 24);
  LODWORD(v11) = v10 / 2;
  v8[v10 / 2] = fabsf(v9);
  if (v10 >= 4)
  {
    if (v11 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v11;
    }

    v12 = v5 + 1;
    v13 = v6 + 1;
    v14 = v8 + 1;
    v15 = v11 - 1;
    do
    {
      v16 = *v13++;
      v17 = v16 * 0.5 * (v16 * 0.5);
      v18 = *v12++;
      *v14++ = sqrt(v17 + v18 * 0.5 * (v18 * 0.5));
      --v15;
    }

    while (v15);
  }
}

void Mel::applyFilterBank(uint64_t a1, const double **a2, void *a3)
{
  if (*(a1 + 28) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      vDSP_dotprD(*(*(a1 + 144) + v7), 1, *a2, 1, (*a3 + v6), *(a1 + 24) / 2 + 1);
      ++v8;
      v7 += 24;
      v6 += 8;
    }

    while (v8 < *(a1 + 28));
  }
}

void Mel::formatOutput(uint64_t a1, double **a2, double **a3)
{
  v3 = *(a1 + 28);
  if (v3 >= 1)
  {
    v5 = *a2;
    if (*(a1 + 34))
    {
      v6 = 20.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = *a3;
    v8 = *(a1 + 33);
    do
    {
      v9 = *v5;
      if (*v5 < 0.00001)
      {
        *v5 = 0.00001;
        v9 = 0.00001;
      }

      v10 = v6 * log10(v9);
      *v7 = v10;
      if (v8)
      {
        v11 = (v10 - *a1) / -*a1;
        *v7 = v11;
        v12 = 0.0;
        if (v11 < 0.0 || (v12 = 1.0, v11 > 1.0))
        {
          *v7 = v12;
        }
      }

      ++v5;
      ++v7;
      --v3;
    }

    while (v3);
  }
}

void Mel::preemphasis(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a2[1] - *a2;
  std::vector<std::pair<int,int>>::resize(a3, (v6 >> 3));
  v7 = *a2;
  v8 = *a3;
  **a3 = **a2;
  if ((v6 >> 3) >= 2)
  {
    v9 = -*(a1 + 8);
    v10 = (v7 + 1);
    v11 = (v8 + 1);
    v12 = ((v6 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      *v11++ = *v10 + v9 * *(v10 - 1);
      ++v10;
      --v12;
    }

    while (v12);
  }
}

void sub_1A9174(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Mel::compute_mel(uint64_t a1@<X0>, __int16 **a2@<X1>, uint64_t a3@<X8>)
{
  __src = 0;
  v20 = 0;
  v21 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v8 = vcvtd_n_f64_s32(*v5, 0xFuLL);
      if (v7 >= v21)
      {
        v9 = __src;
        v10 = v7 - __src;
        v11 = (v7 - __src) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v21 - __src;
        if ((v21 - __src) >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v14);
        }

        v15 = (v7 - __src) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = v8;
        v7 = v16 + 1;
        memcpy(v17, v9, v10);
        v18 = __src;
        __src = v17;
        v20 = v7;
        v21 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7++ = v8;
      }

      v20 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  Mel::compute_mel(a1, &__src, a3);
  if (__src)
  {
    v20 = __src;
    operator delete(__src);
  }
}

void sub_1A92E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Mel::compute_mel(uint64_t a1@<X0>, float **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 - *a2;
  v32 = 0;
  v31 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v31, v6, v5, v7);
  if (*(a1 + 32) == 1)
  {
    Mel::preemphasis(a1, &v31, &v29);
    if (v31)
    {
      *(&v31 + 1) = v31;
      operator delete(v31);
    }

    v31 = v29;
    v32 = v30;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v28 = *(a1 + 48);
  }

  Mel::padSignal(a1, &v31, &v28, &v29);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 24);
  v26[0] = 0;
  std::vector<double>::vector[abi:ne200100](v27, v8, v26);
  std::vector<double>::vector[abi:ne200100](v26, *(a1 + 24) / 2 + 1);
  std::vector<double>::vector[abi:ne200100](v25, *(a1 + 28));
  std::vector<double>::vector[abi:ne200100](&v23, *(a1 + 28));
  v9 = (((*(&v29 + 1) - v29) >> 3) - *(a1 + 24)) / *(a1 + 20);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + 16);
      if (v11 >= 1)
      {
        v12 = *(a1 + 24) - v11 + ((*(a1 + 24) - v11) >> 31);
        v13 = v11 + (*(a1 + 24) - v11) / 2;
        v14 = *(a1 + 72);
        v15 = v27[0];
        v16 = v12 >> 1;
        v17 = v29 + 8 * *(a1 + 20) * v10;
        do
        {
          v18 = *v14++;
          v15[v16] = v18 * *(v17 + 8 * v16);
          ++v16;
        }

        while (v16 < v13);
      }

      Mel::computeMagSpec(a1, v27, v26);
      Mel::applyFilterBank(a1, v26, v25);
      Mel::formatOutput(a1, v25, &v23);
      v21 = 0;
      v22 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, v23, v24, (v24 - v23) >> 3);
      std::vector<std::vector<double>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }

    while (v10++ < v9);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v29)
  {
    *(&v29 + 1) = v29;
    operator delete(v29);
  }

  if (v31)
  {
    *(&v31 + 1) = v31;
    operator delete(v31);
  }
}

void sub_1A958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  *(v31 - 80) = v30;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v31 - 80));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t *result, float *a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A96C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Preprocessing::Preprocessing(uint64_t a1, std::string *a2, std::string *a3, std::string *a4, std::string *a5, const std::string *a6)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v11 = (a1 + 8);
  *(a1 + 56) = 0u;
  v12 = (a1 + 56);
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 196) = 0xC20C0000C1E00000;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 304) = 0u;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a2);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a3);
  if (*(a1 + 31) < 0)
  {
    operator delete(v11->__r_.__value_.__l.__data_);
  }

  *v11 = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a4);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v12);
  }

  *v12 = v13;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13, a5);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  *(a1 + 272) = v13;
  std::string::operator=((a1 + 328), a6);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v13 = *v11;
  }

  std::allocate_shared[abi:ne200100]<Checkpointable,std::allocator<Checkpointable>,std::string,0>();
}

void sub_1A9FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (*(v36 + 351) < 0)
  {
    operator delete(*(v36 + 328));
  }

  *(v41 - 128) = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v41 - 128));
  if (*(v36 + 295) < 0)
  {
    operator delete(*(v36 + 272));
  }

  v43 = *(v36 + 264);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (*(v36 + 247) < 0)
  {
    operator delete(*v37);
  }

  if (*(v36 + 151) < 0)
  {
    operator delete(*(v36 + 128));
  }

  if (*(v36 + 127) < 0)
  {
    operator delete(*a9);
  }

  if (*(v36 + 103) < 0)
  {
    operator delete(*(v36 + 80));
  }

  if (*(v36 + 79) < 0)
  {
    operator delete(*v40);
  }

  if (*(v36 + 55) < 0)
  {
    operator delete(*(v36 + 32));
  }

  if (*(v36 + 31) < 0)
  {
    operator delete(*v39);
  }

  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *__return_ptr a1@<X8>, std::__fs::filesystem::path *this@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a1->__pn_, *a3, *(a3 + 8));
  }

  else
  {
    a1->__pn_ = *a3;
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a1, this);
}

void sub_1AA2E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,0>@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X2>, unsigned __int8 *a3@<X8>, const void **a4@<X1>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a4, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    a2 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
  }

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a3, a2);
}

void sub_1AA410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(unsigned __int8 *a1, const void **a2, std::string::value_type *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    v5 = *a3;
  }

  else
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
    v12.__r_.__value_.__s.__data_[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v6, &v12);
    v5 = v12.__r_.__value_.__s.__data_[0];
  }

  return v5 & 1;
}

void sub_1AA5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(unsigned __int8 *a1, const void **a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use value() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v12, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v11);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v12, &v11))
  {
    return *a3;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v12);
  v11.__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,double,0>(v6, &v11);
  return *&v11.__r_.__value_.__l.__data_;
}

void sub_1AA738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(unsigned __int8 *a1@<X0>, const void **a2@<X1>, char *__s@<X2>, std::string *a4@<X8>)
{
  boost::filesystem::path::path(__p, __s);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::string,0>(a1, a2, __p, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AA800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(unsigned __int8 *a1, const void **a2, unsigned int *a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use value() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v12, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v11);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v12, &v11))
  {
    return *a3;
  }

  v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v12);
  LODWORD(v11.__r_.__value_.__l.__data_) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v11);
  return LODWORD(v11.__r_.__value_.__l.__data_);
}

void sub_1AA934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<std::string>,0>(unsigned __int8 *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>, const void **a4@<X1>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use value() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v13, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a4, &v13);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v12);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v13, &v12))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  else
  {
    v7 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v7, a3);
  }
}

void sub_1AAACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void Preprocessing::stop(Preprocessing *this, uint64_t a2)
{
  LogObject = Diagnostics_GetLogObject(this, a2);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v4 = (this + 328);
    if (*(this + 351) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Stopping preprocessing.", &v5, 0xCu);
  }

  *this = 1;
}

uint64_t Preprocessing::extract_mels(unsigned __int8 *a1, uint64_t a2)
{
  boost::filesystem::path::path(v12, "extract_mels");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 32), v12) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v14.__pn_, &METADATA_MEL_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v11, &v14, (a1 + 8));
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &MEL_FEATURE_FOLDER_NAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__s, &__p, (a1 + 8));
    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    v14.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__create_directory(&v14, 0);
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v14.__pn_, &METADATA_FEATURE_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&pn, &v14, (a1 + 8));
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v14.__pn_ = pn;
    }

    TrainingUtils::read_metadata_from_file(&v14, v3, &__s);
    if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__pn_.__r_.__value_.__l.__data_);
    }

    std::allocate_shared[abi:ne200100]<Mel,std::allocator<Mel>,int &,0>();
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return 0;
}

void sub_1ABDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  *(v65 - 160) = &STACK[0x218];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v65 - 160));
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  *(v65 - 160) = v65 - 240;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v65 - 160));
  if (*(v65 - 185) < 0)
  {
    operator delete(*(v65 - 208));
  }

  if (*(v65 - 161) < 0)
  {
    operator delete(*(v65 - 184));
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, const std::string::value_type *a2)
{
  v13 = a2;
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v11, exception);
  }

  v3 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(*(a1 + 8), &v13);
  v4 = *(a1 + 8);
  if (v4 + 8 == v3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>();
  }

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(v4, &v13) + 56;
}

void sub_1AC388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

void *TrainingUtils::flatten_2d_to_1d<float>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 8) - **a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) * (v4 >> 2);
  v11 = 0;
  result = std::vector<float>::vector[abi:ne200100](a2, v5, &v11);
  v7 = *a1;
  if (a1[1] != *a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      result = memcpy((*a2 + v8), *(v7 + v9), v4);
      ++v10;
      v7 = *a1;
      v9 += 24;
      v8 += 4 * (v4 >> 2);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v10);
  }

  return result;
}

uint64_t TrainingUtils::write_vector_to_file<float>(uint64_t *a1, void *a2)
{
  std::ofstream::basic_ofstream(v3, a1, 20);
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v3 + *(v3[0] - 3)), *(&v3[4] + *(v3[0] - 3)) | 4);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

float Preprocessing::realign_durations@<S0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  v6 = *a1;
  v7 = (*(a1 + 8) - *a1) >> 2;
  for (i = 0.0; --v7; i = i + v9)
  {
    v9 = *v6++;
  }

  result = a3 - i;
  *(a2[1] - 4) = result;
  return result;
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<float>,0>(a1, a2);
}

void sub_1AC7D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, __p, exception);
  }

  v3 = *(a1 + 1);
  boost::filesystem::path::path(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p, &std::piecewise_construct, &v10, &v13);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 7;
}

void sub_1AC944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(a1, a2);
  }

  else
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(*(a1 + 8), a2);
    result = v3 + 16;
    *(a1 + 8) = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v5);
}

uint64_t Preprocessing::validate_input_audio(const void **this)
{
  boost::filesystem::path::path(__p, "validate_input_audio");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(this[32], __p))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v25.__pn_, &METADATA_DATA_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v22, &v25, (this + 1));
    if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v22.__pn_.__r_.__value_.__l.__data_, v22.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v22.__pn_;
    }

    v25.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    v4 = std::__fs::filesystem::__status(&v25, 0);
    if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (v21.__r_.__value_.__s.__data_[0] != 255 && v21.__r_.__value_.__s.__data_[0])
    {
      if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v25.__pn_, v22.__pn_.__r_.__value_.__l.__data_, v22.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = v22;
      }

      TrainingUtils::read_metadata_from_file(&v25, *&v5, &pn);
      if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__pn_.__r_.__value_.__l.__data_);
      }

      size = pn.__r_.__value_.__l.__size_;
      v7 = pn.__r_.__value_.__r.__words[0];
      if (pn.__r_.__value_.__r.__words[0] == pn.__r_.__value_.__l.__size_)
      {
LABEL_43:
        v2 = 0;
      }

      else
      {
        while (1)
        {
          v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v7, "utterance_name");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v9, &v21);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21.__r_.__value_.__l.__data_, this + 10, &v29);
          v25.__pn_ = v29;
          memset(&v29, 0, sizeof(v29));
          std::__fs::filesystem::operator/[abi:ne200100](&v20, &v25, (this + 1));
          if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v25.__pn_, v20.__pn_.__r_.__value_.__l.__data_, v20.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = v20;
          }

          reader = PCMFile::create_reader(&v25);
          v12 = reader;
          if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__pn_.__r_.__value_.__l.__data_);
          }

          if (!v12)
          {
            break;
          }

          v13 = *(v12 + 6);
          if (v13 != *(this + 38))
          {
            LogObject = Diagnostics_GetLogObject(reader, v11);
            if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
            {
              v17 = this + 41;
              if (*(this + 351) < 0)
              {
                v17 = *v17;
              }

              if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v29, v20.__pn_.__r_.__value_.__l.__data_, v20.__pn_.__r_.__value_.__l.__size_);
              }

              else
              {
                v29 = v20.__pn_;
              }

              v18 = &v29;
              if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v18 = v29.__r_.__value_.__r.__words[0];
              }

              v19 = *(this + 38);
              LODWORD(v25.__pn_.__r_.__value_.__l.__data_) = 136315906;
              *(v25.__pn_.__r_.__value_.__r.__words + 4) = v17;
              WORD2(v25.__pn_.__r_.__value_.__r.__words[1]) = 2080;
              *(&v25.__pn_.__r_.__value_.__r.__words[1] + 6) = v18;
              HIWORD(v25.__pn_.__r_.__value_.__r.__words[2]) = 1024;
              v26 = v19;
              v27 = 1024;
              v28 = v13;
              _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, The sample rate of the wavfile from %s should be %d, not %d", &v25, 0x22u);
              if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v29.__r_.__value_.__l.__data_);
              }
            }

            (*(*v12 + 8))(v12);
            goto LABEL_56;
          }

          (*(*v12 + 8))(v12);
          if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          v7 += 16;
          if (v7 == size)
          {
            goto LABEL_43;
          }
        }

        v14 = Diagnostics_GetLogObject(reader, v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = this + 41;
          if (*(this + 351) < 0)
          {
            v15 = *v15;
          }

          if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v25.__pn_, v20.__pn_.__r_.__value_.__l.__data_, v20.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = v20;
          }

          Preprocessing::validate_input_audio(v15, &v25, &v29, v14);
        }

LABEL_56:
        if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v2 = 1;
      }

      v21.__r_.__value_.__r.__words[0] = &pn;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v21);
    }

    else
    {
      v6 = Diagnostics_GetLogObject(*&v4, *&v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v25.__pn_, v22.__pn_.__r_.__value_.__l.__data_, v22.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          v25 = v22;
        }

        Preprocessing::validate_input_audio(&v25, &pn, v6);
      }

      v2 = 1;
    }

    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1ACF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  a33 = (v38 - 96);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::compute_audioquality_metrics(Preprocessing *this)
{
  boost::filesystem::path::path(v81, "compute_audioquality_metrics");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), v81))
  {
    goto LABEL_66;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v83, &METADATA_DATA_AUDIOQUALITY_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&v80, v83, this + 8);
  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

  v78 = 0uLL;
  v79 = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v83, &METADATA_DATA_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&v77, v83, this + 8);
  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

  if (SHIBYTE(v77.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v83, v77.__pn_.__r_.__value_.__l.__data_, v77.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v83 = v77;
  }

  metadata_from_file = TrainingUtils::read_metadata_from_file(v83, v2, v76);
  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

  v5 = *(this + 49);
  v75 = 0;
  v74 = 1;
  if ((*(this + 205) & 1) == 0)
  {
    v75 = 2;
    v74 = 3;
    v5 = 2143289344;
  }

  LogObject = Diagnostics_GetLogObject(metadata_from_file, v4);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v7 = (this + 328);
    if (*(this + 351) < 0)
    {
      v7 = *v7;
    }

    v8 = *(this + 205);
    v9 = *(this + 52);
    v10 = *(this + 53);
    *v83 = 136315906;
    *&v83[4] = v7;
    *&v83[12] = 1024;
    *&v83[14] = v8;
    *&v83[18] = 2048;
    *&v83[20] = v9;
    v84 = 2048;
    v85 = v10;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: enable_normalization=%d, spl_threshold=%f, snr_threshold=%f", v83, 0x26u);
  }

  checkpoint_stage_step = Checkpointable::get_checkpoint_stage_step(*(this + 32), v81);
  if (checkpoint_stage_step >= 1)
  {
    if (SHIBYTE(v80.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v80.__pn_.__r_.__value_.__l.__data_, v80.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v80.__pn_;
    }

    *v83 = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__status(v83, 0);
    if ((v83[23] & 0x80000000) != 0)
    {
      operator delete(*v83);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v13 = 0;
    if (!v72.__pn_.__r_.__value_.__s.__data_[0] || v72.__pn_.__r_.__value_.__s.__data_[0] == 255)
    {
      goto LABEL_34;
    }

    if (SHIBYTE(v80.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v80.__pn_.__r_.__value_.__l.__data_, v80.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v80.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, v12, v83);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(&v78);
    v78 = *v83;
    v79 = *&v83[16];
    memset(v83, 0, 24);
    v72.__pn_.__r_.__value_.__r.__words[0] = v83;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v72);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  v13 = checkpoint_stage_step;
LABEL_34:
  v14 = v13;
  v15 = v76[0];
  if (v13 < ((v76[1] - v76[0]) >> 4))
  {
    v16 = (this + 328);
    v17 = 16 * v13;
    v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v76[0] + v17, "utterance_name");
    v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v18, &pn);
    v21 = Diagnostics_GetLogObject(v19, v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v22)
    {
      v24 = this + 328;
      if (*(this + 351) < 0)
      {
        v24 = *v16;
      }

      p_pn = &pn;
      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_pn = pn.__r_.__value_.__r.__words[0];
      }

      *v83 = 136315394;
      *&v83[4] = v24;
      *&v83[12] = 2080;
      *&v83[14] = p_pn;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: %s", v83, 0x16u);
    }

    if (*this == 1)
    {
      v26 = Diagnostics_GetLogObject(v22, v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = this + 328;
        if (*(this + 351) < 0)
        {
          v27 = *v16;
        }

        *v83 = 136315138;
        *&v83[4] = v27;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "TaskId: %s, WARN: Exit due to stopping.", v83, 0xCu);
      }

      Checkpointable::write_checkpoint(*(this + 32), v81, v14);
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&pn.__r_.__value_.__l.__data_, this + 10, __p);
    *v83 = *__p;
    *&v83[16] = v71;
    __p[1] = 0;
    v71 = 0;
    __p[0] = 0;
    std::__fs::filesystem::operator/[abi:ne200100](&v72, v83, this + 8);
    if ((v83[23] & 0x80000000) != 0)
    {
      operator delete(*v83);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0x40D7700000000000;
    LODWORD(v71) = 1061997773;
    BYTE4(v71) = 1;
    __p[1] = __PAIR64__(*(this + 50), v5);
    if (SHIBYTE(v72.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v83, v72.__pn_.__r_.__value_.__l.__data_, v72.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v83 = v72;
    }

    assess_audio_quality(v83, __p, &v69);
    if ((v83[23] & 0x80000000) != 0)
    {
      operator delete(*v83);
    }

    v67[0] = 0;
    v68 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v67);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v67);
    v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15 + v17, "utterance_name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v65, v28);
    v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "utterance_name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v65);
    v30 = *v29;
    *v29 = v65[0];
    v65[0] = v30;
    v31 = *(v29 + 1);
    *(v29 + 1) = v66;
    v66 = v31;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v65);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v66, v65[0]);
    v32 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15 + v17, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v63, v32);
    v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
    v34 = *v33;
    *v33 = v63[0];
    v63[0] = v34;
    v35 = *(v33 + 1);
    *(v33 + 1) = v64;
    v64 = v35;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v64, v63[0]);
    v36 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15 + v17, "words");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v61, v36);
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "words");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
    v38 = *v37;
    *v37 = v61[0];
    v61[0] = v38;
    v39 = *(v37 + 1);
    *(v37 + 1) = v62;
    v62 = v39;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v62, v61[0]);
    v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15 + v17, "phone_sequence");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v59, v40);
    v41 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "phone_sequence");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
    v42 = *v41;
    *v41 = v59[0];
    v59[0] = v42;
    v43 = *(v41 + 1);
    *(v41 + 1) = v60;
    v60 = v43;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v60, v59[0]);
    v53.__r_.__value_.__r.__words[0] = &v75;
    v44 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&v69, &v75, &std::piecewise_construct, &v53)[5];
    v57[0] = 7;
    v58 = v44;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    v45 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "spl");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    v46 = *v45;
    *v45 = v57[0];
    v57[0] = v46;
    v47 = *(v45 + 1);
    *(v45 + 1) = v58;
    v58 = v47;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v45);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v57);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v58, v57[0]);
    v53.__r_.__value_.__r.__words[0] = &v74;
    v48 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&v69, &v74, &std::piecewise_construct, &v53)[5];
    v55[0] = 7;
    v56 = v48;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    v49 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "snr");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    v50 = *v49;
    *v49 = v55[0];
    v55[0] = v50;
    v51 = *(v49 + 1);
    *(v49 + 1) = v56;
    v56 = v51;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v49);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v55);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v56, v55[0]);
    boost::filesystem::path::path(&v53, "locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((v15 + v17), &v53.__r_.__value_.__l.__data_, "", v83);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(v54, v83);
  }

  if (SHIBYTE(v80.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v83, v80.__pn_.__r_.__value_.__l.__data_, v80.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v83 = v80;
  }

  TrainingUtils::write_metadata_to_file(v83, &v78);
  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

  *v83 = v76;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v83);
  if (SHIBYTE(v77.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__pn_.__r_.__value_.__l.__data_);
  }

  *v83 = &v78;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v83);
  if (SHIBYTE(v80.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_66:
  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  return 0;
}

void sub_1ADBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  *(v55 - 160) = &a47;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v55 - 160));
  if (a55 < 0)
  {
    operator delete(__p);
  }

  *(v55 - 160) = v55 - 256;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v55 - 160));
  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if (*(v55 - 177) < 0)
  {
    operator delete(*(v55 - 200));
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t Preprocessing::snr_spl_data_filtering(Preprocessing *this)
{
  boost::filesystem::path::path(v84, "snr_spl_data_filtering");
  if ((*this & 1) == 0 && (Checkpointable::should_skip_stage(*(this + 32), v84) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v86, &METADATA_DATA_FILTERED_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v83, v86, this + 8);
    if ((v86[23] & 0x80000000) != 0)
    {
      operator delete(*v86);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v86, &METADATA_DATA_AUDIOQUALITY_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v82, v86, this + 8);
    if ((v86[23] & 0x80000000) != 0)
    {
      operator delete(*v86);
    }

    if (SHIBYTE(v82.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v86, v82.__pn_.__r_.__value_.__l.__data_, v82.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v86 = v82;
    }

    v3 = TrainingUtils::read_metadata_from_file(v86, v2, &v80);
    if ((v86[23] & 0x80000000) != 0)
    {
      operator delete(*v86);
    }

    if (*(this + 204))
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      LogObject = Diagnostics_GetLogObject(v3, v4);
      v6 = os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v8 = (this + 328);
        if (*(this + 351) < 0)
        {
          v8 = *v8;
        }

        v9 = *(this + 205);
        v10 = *(this + 52);
        v11 = *(this + 53);
        *v86 = 136315906;
        *&v86[4] = v8;
        *&v86[12] = 1024;
        *&v86[14] = v9;
        *&v86[18] = 2048;
        *&v86[20] = v10;
        *&v86[28] = 2048;
        *&v86[30] = v11;
        _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Estimating SNR/SPL: enable_normalization=%d, spl_threshold=%f, snr_threshold=%f", v86, 0x26u);
      }

      v12 = v80;
      if (v80 != v81)
      {
        v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v80, "utterance_name");
        v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v13, &v73);
        v16 = Diagnostics_GetLogObject(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = &v73;
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = v73.__r_.__value_.__r.__words[0];
          }

          *v86 = 136315138;
          *&v86[4] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Filtering SNR/SPL: %s", v86, 0xCu);
        }

        v71[0] = 0;
        v72 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v71);
        v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v69, v18);
        v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v69);
        v20 = *v19;
        *v19 = v69[0];
        v69[0] = v20;
        v21 = *(v19 + 1);
        *(v19 + 1) = v70;
        v70 = v21;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v69);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v70, v69[0]);
        v22 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v67, v22);
        v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v67);
        v24 = *v23;
        *v23 = v67[0];
        v67[0] = v24;
        v25 = *(v23 + 1);
        *(v23 + 1) = v68;
        v68 = v25;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v67);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v68, v67[0]);
        v26 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "words");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v65, v26);
        v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "words");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v65);
        v28 = *v27;
        *v27 = v65[0];
        v65[0] = v28;
        v29 = *(v27 + 1);
        *(v27 + 1) = v66;
        v66 = v29;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v65);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v66, v65[0]);
        v30 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "phone_sequence");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v63, v30);
        v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "phone_sequence");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
        v32 = *v31;
        *v31 = v63[0];
        v63[0] = v32;
        v33 = *(v31 + 1);
        *(v31 + 1) = v64;
        v64 = v33;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v63);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v64, v63[0]);
        v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "spl");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v61, v34);
        v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "spl");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
        v36 = *v35;
        *v35 = v61[0];
        v61[0] = v36;
        v37 = *(v35 + 1);
        *(v35 + 1) = v62;
        v62 = v37;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v35);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v61);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v62, v61[0]);
        v38 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v12, "snr");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v59, v38);
        v39 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "snr");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
        v40 = *v39;
        *v39 = v59[0];
        v59[0] = v40;
        v41 = *(v39 + 1);
        *(v39 + 1) = v60;
        v60 = v41;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v39);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v59);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v60, v59[0]);
        boost::filesystem::path::path(__p, "locale");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(v12, __p, "", v86);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(v58, v86);
      }

      v42 = Diagnostics_GetLogObject(v6, v7);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = (this + 328);
        if (*(this + 351) < 0)
        {
          v43 = *v43;
        }

        *v86 = 136315906;
        *&v86[4] = v43;
        *&v86[12] = 2048;
        *&v86[14] = (((&v78[-v77] >> 4) / ((v81 - v80) >> 4)) * 100.0);
        *&v86[22] = 2048;
        *&v86[24] = &v78[-v77] >> 4;
        *&v86[32] = 2048;
        *&v86[34] = (v81 - v80) >> 4;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "TaskId: %s, SPL/SNR pass rate=%.2f%%, pass_file_number=%ld, total_file_number=%ld\n", v86, 0x2Au);
      }

      if (*(this + 54) > (&v78[-v77] >> 4))
      {
        v44 = (v75 - v74) >> 4;
        if (v44 < 1)
        {
          v49 = 0;
          v45 = 0;
        }

        else
        {
          v45 = (v75 - v74) >> 4;
          while (1)
          {
            v46 = operator new(16 * v45, &std::nothrow);
            if (v46)
            {
              break;
            }

            v47 = v45 >> 1;
            v48 = v45 > 1;
            v45 >>= 1;
            if (!v48)
            {
              v49 = 0;
              v45 = v47;
              goto LABEL_40;
            }
          }

          v49 = v46;
        }

LABEL_40:
        std::__stable_sort<std::_ClassicAlgPolicy,Preprocessing::snr_spl_data_filtering(void)::$_0 &,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>(v74, v75, v44, v49, v45);
        if (v49)
        {
          operator delete(v49);
        }

        if (*(this + 54) - (&v78[-v77] >> 4) >= ((v75 - v74) >> 4))
        {
          v52 = (v75 - v74) >> 4;
        }

        else
        {
          v52 = *(this + 54) - (&v78[-v77] >> 4);
        }

        v53 = Diagnostics_GetLogObject(v50, v51);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = (this + 328);
          if (*(this + 351) < 0)
          {
            v54 = *v54;
          }

          v55 = *(this + 54);
          *v86 = 136315650;
          *&v86[4] = v54;
          *&v86[12] = 1024;
          *&v86[14] = v52;
          *&v86[18] = 1024;
          *&v86[20] = v55;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "TaskId: %s, Not having enough filtered files, adding additional %d files, minimum_number_filtered_file=%d\n", v86, 0x18u);
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::__wrap_iter<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(&v77, v78, v74, &v74[16 * v52], v52);
      }

      if (SHIBYTE(v83.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v86, v83.__pn_.__r_.__value_.__l.__data_, v83.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *v86 = v83;
      }

      TrainingUtils::write_metadata_to_file(v86, &v77);
      if ((v86[23] & 0x80000000) != 0)
      {
        operator delete(*v86);
      }

      *v86 = &v74;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v86);
      *v86 = &v77;
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v86);
    }

    else
    {
      if (SHIBYTE(v83.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v86, v83.__pn_.__r_.__value_.__l.__data_, v83.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *v86 = v83;
      }

      TrainingUtils::write_metadata_to_file(v86, &v80);
      if ((v86[23] & 0x80000000) != 0)
      {
        operator delete(*v86);
      }
    }

    *v86 = &v80;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v86);
    if (SHIBYTE(v82.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v83.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  return 0;
}

void sub_1AE9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  *(v49 - 176) = &a43;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  *(v49 - 176) = &a46;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  *(v49 - 176) = &a49;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v49 - 176));
  if (*(v49 - 225) < 0)
  {
    operator delete(*(v49 - 248));
  }

  if (*(v49 - 201) < 0)
  {
    operator delete(*(v49 - 224));
  }

  if (*(v49 - 177) < 0)
  {
    operator delete(*(v49 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::apply_noise_reduction(unsigned __int8 *a1, uint64_t a2)
{
  boost::filesystem::path::path(v19, "apply_noise_reduction");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 32), v19) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &NOISE_REDUCED_WAV_FOLDER_NAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__s, &__p, (a1 + 8));
    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    v22.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::__create_directory(&v22, 0);
    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v22.__pn_, &METADATA_DATA_FILTERED_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&pn, &v22, (a1 + 8));
    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v22.__pn_ = pn;
    }

    TrainingUtils::read_metadata_from_file(&v22, v3, &__s);
    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v14, "preprocess");
    std::__fs::filesystem::operator/[abi:ne200100](&v15, &v14, (a1 + 32));
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v13.__pn_, "unet");
    std::__fs::filesystem::operator/[abi:ne200100](&v22, &v13, &v15);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v12, "model_config.json");
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &v12, &v22);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v13.__pn_, "preprocess");
    std::__fs::filesystem::operator/[abi:ne200100](&v14, &v13, (a1 + 32));
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v12, "cargan");
    std::__fs::filesystem::operator/[abi:ne200100](&v22, &v12, &v14);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v11.__pn_, "model_config.json");
    std::__fs::filesystem::operator/[abi:ne200100](&v15, &v11, &v22);
    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__pn_.__r_.__value_.__l.__data_);
    }

    v22.__pn_.__r_.__value_.__r.__words[0] = 0x3FEF0A3D70A3D70ALL;
    LODWORD(v14.__r_.__value_.__l.__data_) = 1024;
    LODWORD(v13.__pn_.__r_.__value_.__l.__data_) = 256;
    LODWORD(v12.__r_.__value_.__l.__data_) = 1024;
    LODWORD(v11.__pn_.__r_.__value_.__l.__data_) = 80;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v5.__r_.__value_.__s.__data_[0] = 0;
    buf[0] = 1;
    LODWORD(v10) = 384;
    std::allocate_shared[abi:ne200100]<Mel,std::allocator<Mel>,double,int &,int,int,int,int,BOOL,BOOL,BOOL,BOOL,BOOL,int,char const(&)[11],0>(&__src, &v22, (a1 + 176), &v14, &v13, &v12, &v11, &v8, &v7, &v6, &v5, buf, &v10, "reflective");
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return 0;
}

void sub_1AFF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 - 201) < 0)
  {
    operator delete(*(v65 - 224));
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  *(v65 - 224) = &STACK[0x278];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v65 - 224));
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  _Unwind_Resume(a1);
}

void Preprocessing::run_unet_inference(void x0_0, void (****a1)(void), uint64_t **a2)
{
  (***a1)();
  v5 = *a1;
  boost::filesystem::path::path(v15, "mel_bin");
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v5 + 48), v15);
  LODWORD(v13) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v7 = *a1;
  boost::filesystem::path::path(v15, "frame_length");
  v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v7 + 48), v15);
  LODWORD(v13) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v8, &v13);
  v9 = v13;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v10 = a2[1];
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, *(v10 - 24), *(v10 - 16), (*(v10 - 16) - *(v10 - 24)) >> 2);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v13, (v9 + 1431655765 * ((a2[1] - *a2) >> 3)), v15);
  std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(a2, a2[1], v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
  InferenceEngine::VectorOps::transpose_2d_array<float>(a2, v12);
  boost::filesystem::path::path(&__p, "input_mel");
  InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v12);
}

void sub_1B0898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, char **__p, char **a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, char *a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v27 - 72) = &a9;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v27 - 72));
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  __p = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a24 = &a27;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  v29 = *(v27 - 96);
  if (v29)
  {
    *(v27 - 88) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void Preprocessing::run_cargan_inference(void (****a1)(void)@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  (***a1)();
  v5 = *a1;
  boost::filesystem::path::path(v19, "conditioning_lookback");
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v5 + 48), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, v18);
  v7 = SLODWORD(v18[0]);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v8 = *a1;
  boost::filesystem::path::path(v19, "frames_per_chunk");
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v8 + 48), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v9, v18);
  v10 = SLODWORD(v18[0]);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v11 = *a1;
  boost::filesystem::path::path(v19, "mel_bin");
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]((v11 + 48), v19);
  LODWORD(v18[0]) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v12, v18);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v13 = (-1431655765 * ((a2[1] - *a2) >> 3)) / v10;
  LODWORD(v18[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v19, v7, v18);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v13 >= 1)
  {
    v14 = *a2;
    memset(v18, 0, sizeof(v18));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v18, v14, v14 + 24 * v10, v10);
    InferenceEngine::VectorOps::transpose_2d_array<float>(v18, v17);
    boost::filesystem::path::path(&__p, "input_mel");
    InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v17);
  }

  (**a1)[1]();
  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_1B0E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *v32;
  if (*v32)
  {
    *(v32 + 8) = v34;
    operator delete(v34);
  }

  v35 = *(v33 - 112);
  if (v35)
  {
    *(v33 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B0F6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B0F0CLL);
}

void sub_1B0F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (!a23)
  {
    JUMPOUT(0x1B0F00);
  }

  JUMPOUT(0x1B0EFCLL);
}

uint64_t Preprocessing::extract_speech_feature(char *a1, uint64_t a2)
{
  boost::filesystem::path::path(v19, "extract_speech_feature");
  if (*a1 & 1) != 0 || (Checkpointable::should_skip_stage(*(a1 + 32), v19))
  {
    v3 = 0;
    goto LABEL_58;
  }

  memset(v18, 0, 24);
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v21.__pn_, &METADATA_FEATURE_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&v17, &v21, (a1 + 8));
  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &SILENCE_TRIMMED_WAV_FOLDER_NAME);
  std::__fs::filesystem::operator/[abi:ne200100](&__s, &__p, (a1 + 8));
  if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = __s.__pn_;
  }

  v21.__pn_ = pn;
  memset(&pn, 0, sizeof(pn));
  std::__fs::filesystem::__create_directory(&v21, 0);
  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v21.__pn_, &METADATA_DATA_FILTERED_FILENAME);
  std::__fs::filesystem::operator/[abi:ne200100](&pn, &v21, (a1 + 8));
  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21.__pn_, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
  }

  else
  {
    v21.__pn_ = pn;
  }

  TrainingUtils::read_metadata_from_file(&v21, v4, &__s);
  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
  }

  if (__s.__pn_.__r_.__value_.__l.__size_ != __s.__pn_.__r_.__value_.__r.__words[0])
  {
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__s.__pn_.__r_.__value_.__l.__data_, "locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v6, &__p);
    std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v21.__pn_, "final.mlmodelc");
    std::__fs::filesystem::operator/[abi:ne200100](&v13, &v21, (a1 + 56));
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    if (a1[79] < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(a1 + 7), *(a1 + 8));
    }

    else
    {
      v12 = *(a1 + 56);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_49;
      }
    }

    else if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_49;
    }

    if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v13.__pn_.__r_.__value_.__l.__data_, v13.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v13.__pn_;
    }

    v21.__pn_ = v11;
    memset(&v11, 0, sizeof(v11));
    std::__fs::filesystem::__status(&v21, 0);
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (v10 == 255 || !v10)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v11, &__p);
      std::__fs::filesystem::operator/[abi:ne200100](&v21, &v11, (a1 + 56));
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v12 = v21.__pn_;
      *(&v21.__pn_.__r_.__value_.__s + 23) = 0;
      v21.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }

LABEL_49:
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21.__pn_, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v21.__pn_ = v12;
    }

    std::allocate_shared[abi:ne200100]<SiriTTS::SpeechFeature::SpeechFeatureExtractor,std::allocator<SiriTTS::SpeechFeature::SpeechFeatureExtractor>,std::string,BOOL,0>();
  }

  LogObject = Diagnostics_GetLogObject(__s.__pn_.__r_.__value_.__l.__data_, v5);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = a1 + 328;
    if (a1[351] < 0)
    {
      v9 = *v9;
    }

    LODWORD(v21.__pn_.__r_.__value_.__l.__data_) = 136315394;
    *(v21.__pn_.__r_.__value_.__r.__words + 4) = v9;
    WORD2(v21.__pn_.__r_.__value_.__r.__words[1]) = 2048;
    *(&v21.__pn_.__r_.__value_.__r.__words[1] + 6) = (__s.__pn_.__r_.__value_.__l.__size_ - __s.__pn_.__r_.__value_.__r.__words[0]) >> 4;
    _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is empty after filtering! metadta_size=%lu", &v21, 0x16u);
  }

  v3 = 1;
  v21.__pn_.__r_.__value_.__r.__words[0] = &__s;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__pn_.__r_.__value_.__l.__data_);
  }

  v21.__pn_.__r_.__value_.__r.__words[0] = v18;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v21);
LABEL_58:
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return v3;
}

void sub_1B2EBC(_Unwind_Exception *a1)
{
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  STACK[0x400] = &STACK[0x418];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x45F]) < 0)
  {
    operator delete(STACK[0x448]);
  }

  STACK[0x448] = &STACK[0x460];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x448]);
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SiriTTS::SpeechFeature::WordData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SiriTTS::SpeechFeature::WordData>::__emplace_back_slow_path<SiriTTS::SpeechFeature::WordData>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL std::__fs::filesystem::operator!=[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

void **Preprocessing::trim_silence_and_adjust_speechfeature@<X0>(unsigned __int16 **a1@<X1>, void *a2@<X2>, int a3@<W3>, void **a4@<X8>, float a5@<S0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = a3 / 1000;
  v8 = *a1;
  v7 = a1[1];
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
    v11 = v10 - 1;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = &v8[48 * v11];
    v13 = 0.0;
    v14 = 32;
    while (1)
    {
      if (v9)
      {
        goto LABEL_6;
      }

      v17 = v8[23];
      if (v17 < 0)
      {
        if (*(v8 + 1) != 3)
        {
          goto LABEL_6;
        }

        v18 = *v8;
      }

      else
      {
        v18 = v8;
        if (v17 != 3)
        {
          goto LABEL_6;
        }
      }

      v23 = *v18;
      v24 = v18[2];
      if (v23 == 26995 && v24 == 108)
      {
        v26 = *(v8 + 9);
        if (v26 > a5)
        {
          v13 = v26 - a5;
          *(v8 + 8) = a5;
          *(v8 + 9) = a5;
          goto LABEL_23;
        }
      }

LABEL_6:
      if (v11 != v9)
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 23);
      if (v15 < 0)
      {
        if (*(v12 + 1) != 3)
        {
          goto LABEL_22;
        }

        v16 = *v12;
      }

      else
      {
        v16 = &v8[48 * v11];
        if (v15 != 3)
        {
          goto LABEL_22;
        }
      }

      v19 = *v16;
      v20 = v16[2];
      v21 = v19 == 26995 && v20 == 108;
      if (!v21 || (v22 = v12[9], v22 <= a5))
      {
LABEL_22:
        *&v8[v14] = *&v8[v14] - v13;
        goto LABEL_23;
      }

      v12[8] = (v12[8] - v13) - (v22 - a5);
      v12[9] = a5;
LABEL_23:
      ++v9;
      v14 += 48;
      if (v10 == v9)
      {
        goto LABEL_35;
      }
    }
  }

  v13 = 0.0;
LABEL_35:
  v27 = (*(v7 - 4) * v6);
  return std::vector<short>::__assign_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(a4, (*a2 + 2 * (v13 * v6)), (*a2 + 2 * (v27 + (v13 * v6))), v27);
}

void sub_1B38FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Preprocessing::remove_silence_from_speechfeatures(const void ***a1@<X1>, const void **a2@<X2>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v7 = *(v3 + 23);
      if (v7 >= 0)
      {
        v8 = *(v3 + 23);
      }

      else
      {
        v8 = *(v3 + 8);
      }

      v9 = *(a2 + 23);
      v10 = v9;
      if (v9 < 0)
      {
        v9 = a2[1];
      }

      if (v8 != v9 || (v7 >= 0 ? (v11 = v3) : (v11 = *v3), v10 >= 0 ? (v12 = a2) : (v12 = *a2), memcmp(v11, v12, v8)))
      {
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, v3);
      }

      v3 += 48;
    }

    while (v3 != v4);
  }
}

void sub_1B39C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Preprocessing::align_speech_features(void *a1@<X1>, void *a2@<X2>, unint64_t *a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v7 = (a2[1] - *a2) >> 3;
  a3[1] = 0;
  a3[2] = 0;
  v8 = -1431655765 * v7;
  *a3 = 0;
  if (v8 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = (v8 - 1);
    v17 = v8 & 0x7FFFFFFF;
    v18 = 0.0;
    do
    {
      v19 = (*a2 + v14);
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v19, *(v19 + 1));
      }

      else
      {
        v20 = *v19;
        __str.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&__str.__r_.__value_.__l.__data_ = v20;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) <= v15)
      {
        goto LABEL_20;
      }

      v21 = *a1 + 48 * v15;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v23 = *(v21 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v21 + 8);
      }

      if (size == v23 && ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v24 >= 0 ? (v26 = (*a1 + 48 * v15)) : (v26 = *v21), !memcmp(p_str, v26, size)))
      {
        v29 = *(v21 + 32);
        memset(&__p, 0, sizeof(__p));
        std::string::operator=(&__p, &__str);
        v28 = (v29 / a6) * a6;
        v31 = v28 - v18;
        v32 = *(*a1 + 48 * v15 + 40);
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v15;
      }

      else
      {
LABEL_20:
        if (v16)
        {
          v27 = v18 + a5;
        }

        else
        {
          v27 = a4;
        }

        memset(&__p, 0, sizeof(__p));
        std::string::operator=(&__p, &__str);
        v28 = (v27 / a6) * a6;
        v31 = v28 - v18;
        v32 = *(a3[1] - 8);
        std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::push_back[abi:ne200100](a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v18 = v28;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      --v16;
      v14 += 24;
      --v17;
    }

    while (v17);
  }
}

void sub_1B3C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::vector<SiriTTS::SpeechFeature::SpeechFeatureData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t Preprocessing::validate_data(Preprocessing *this)
{
  boost::filesystem::path::path(__p, "validate_data");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), __p))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, &METADATA_MEL_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v12, &pn, this + 8);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v12.__pn_.__r_.__value_.__l.__data_, v12.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v12.__pn_;
    }

    v5 = TrainingUtils::read_metadata_from_file(&pn, v4, &v10);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (*(this + 47) <= ((v11 - v10) >> 4))
    {
      v2 = 0;
    }

    else
    {
      LogObject = Diagnostics_GetLogObject(v5, v6);
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
      {
        v8 = (this + 328);
        if (*(this + 351) < 0)
        {
          v8 = *v8;
        }

        v9 = *(this + 47);
        LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
        *(pn.__r_.__value_.__r.__words + 4) = v8;
        WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
        *(&pn.__r_.__value_.__r.__words[1] + 6) = (v11 - v10) >> 4;
        HIWORD(pn.__r_.__value_.__r.__words[2]) = 1024;
        v16 = v9;
        _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is invalid due to not enough data! metadta_size=%lu, minimum_size=%d", &pn, 0x1Cu);
      }

      v2 = 1;
    }

    pn.__r_.__value_.__r.__words[0] = &v10;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&pn);
    if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1B3E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Preprocessing::getPriorityforPrompts(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= 3)
    {
      v3 = *(a2 + 23);
      goto LABEL_5;
    }

    return 5;
  }

  v3 = a2[1];
  if (v3 < 3)
  {
    return 5;
  }

LABEL_5:
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *(v4 + v3 - 3);
  if (v5 > 45)
  {
    if (v5 != 46)
    {
      if (v5 == 63)
      {
        return 2;
      }

      return 5;
    }

    return 1;
  }

  else
  {
    if (v5 != 33)
    {
      if (v5 == 44)
      {
        return 3;
      }

      return 5;
    }

    return 4;
  }
}

uint64_t Preprocessing::prompt_generation(Preprocessing *this)
{
  boost::filesystem::path::path(v59, "prompt_generation");
  if (*this & 1) != 0 || (Checkpointable::should_skip_stage(*(this + 32), v59))
  {
    v2 = 0;
  }

  else
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, &METADATA_FEATURE_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&v58, &pn, this + 8);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v58.__pn_.__r_.__value_.__l.__data_, v58.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v58.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, v4, &v56);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v5 = (v57 - v56) >> 4;
    if (v5 >= *(this + 47))
    {
      __ptr = 0;
      __dst = 0;
      v55 = 0;
      memset(v52, 0, sizeof(v52));
      memset(__x, 0, sizeof(__x));
      v7 = 126 - 2 * __clz(v5);
      if (v57 == v56)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      pn.__r_.__value_.__r.__words[0] = this;
      std::__introsort<std::_ClassicAlgPolicy,Preprocessing::prompt_generation(void)::$_0 &,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,false>(v56, v57, &pn, v8, 1);
      v11 = v56;
      if (v57 != v56)
      {
        v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v56, "utterance_name");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v12, &buf);
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v49.__pn_, &SILENCE_TRIMMED_WAV_FOLDER_NAME);
        std::__fs::filesystem::operator/[abi:ne200100](&pn, &v49, this + 8);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v47, size + 4);
        if ((v47.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v47;
        }

        else
        {
          v14 = v47.__pn_.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          memmove(v14, p_buf, size);
        }

        strcpy(v14 + size, ".wav");
        __p = v47;
        memset(&v47, 0, sizeof(v47));
        std::__fs::filesystem::operator/[abi:ne200100](&v50, &__p, &pn);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
        }

        else
        {
          pn = v50;
        }

        reader = PCMFile::create_reader(&pn);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        v17 = *(reader + 6);
        std::vector<float>::vector[abi:ne200100](&v49, v17);
        PCMFile::Reader::read_samples(reader, v17, v49.__pn_.__r_.__value_.__l.__data_, 4, 1, 1.0);
        v18 = *(reader + 6);
        v19 = std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&__ptr, __dst, v49.__pn_.__r_.__value_.__l.__data_, v49.__pn_.__r_.__value_.__l.__size_, (v49.__pn_.__r_.__value_.__l.__size_ - v49.__pn_.__r_.__value_.__r.__words[0]) >> 2);
        LogObject = Diagnostics_GetLogObject(v19, v20);
        v22 = v17 / v18;
        if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
        {
          v23 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
          *(pn.__r_.__value_.__r.__words + 4) = v23;
          WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
          *(&pn.__r_.__value_.__r.__words[1] + 6) = v22;
          HIWORD(pn.__r_.__value_.__r.__words[2]) = 2048;
          v63 = (v22 + 0.0);
          _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Added an utterance %s: %f seconds - total duration: %f seconds", &pn, 0x20u);
        }

        v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v11, "fa_phone_list");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v24, &__p);
        v25 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v11, "fa_duration_list");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>(v25, &v47);
        v26 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v11, "transcription");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v26, &__str);
        memset(&v44, 0, sizeof(v44));
        v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (p_str->__r_.__value_.__s.__data_[0] == 42)
        {
          std::string::erase(&__str, 0, 2uLL);
          v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if ((v27 & 0x80) != 0)
        {
          v27 = __str.__r_.__value_.__l.__size_;
          v29 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
        }

        else
        {
          v29 = *(&v45 + v27);
        }

        if (v29 == 126)
        {
          std::string::erase(&__str, v27 - 2, 2uLL);
        }

        v42 = 0uLL;
        v43 = 0;
        pn.__r_.__value_.__r.__words[0] = " ";
        pn.__r_.__value_.__l.__size_ = "";
        boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__src, &pn);
        boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(&v42, &__str, __src, 0);
      }

      v30 = Diagnostics_GetLogObject(v9, v10);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v31)
      {
        LODWORD(pn.__r_.__value_.__l.__data_) = 134217984;
        *(pn.__r_.__value_.__r.__words + 4) = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "The full prompt duration: %f seconds.", &pn, 0xCu);
      }

      v33 = Diagnostics_GetLogObject(v31, v32);
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
      if (v34)
      {
        boost::algorithm::join<std::vector<std::string>,char [4]>(&pn, " # ", v52);
        v36 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v36;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "The full prompt transcription %s.", &buf, 0xCu);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      v37 = Diagnostics_GetLogObject(v34, v35);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        boost::algorithm::join<std::vector<std::string>,char [4]>(&pn, " ", __x);
        v38 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v38;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "The full prompt locale %s.", &buf, 0xCu);
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }
      }

      memset(&pn, 0, sizeof(pn));
      v49.__pn_.__r_.__value_.__s.__data_[0] = 0;
      v49.__pn_.__r_.__value_.__l.__size_ = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(v41, "prompt");
    }

    v6 = Diagnostics_GetLogObject(v56, v57);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v39 = (this + 328);
      if (*(this + 351) < 0)
      {
        v39 = *v39;
      }

      v40 = *(this + 47);
      LODWORD(pn.__r_.__value_.__l.__data_) = 136315650;
      *(pn.__r_.__value_.__r.__words + 4) = v39;
      WORD2(pn.__r_.__value_.__r.__words[1]) = 2048;
      *(&pn.__r_.__value_.__r.__words[1] + 6) = (v57 - v56) >> 4;
      HIWORD(pn.__r_.__value_.__r.__words[2]) = 1024;
      LODWORD(v63) = v40;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "TaskId: %s, Training metadata is invalid due to not enough data! metadta_size=%lu, minimum_size=%d", &pn, 0x1Cu);
    }

    v2 = 1;
    pn.__r_.__value_.__r.__words[0] = &v56;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&pn);
    if (SHIBYTE(v58.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  return v2;
}

void sub_1B4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char **a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, char *a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (*(v68 - 121) < 0)
  {
    operator delete(*(v68 - 144));
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a52);
  a52 = (v68 - 176);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a52);
  a52 = &a58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a52);
  a58 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a58);
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  __p = &a66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  a67 = &STACK[0x200];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a67);
  if (*(v68 - 225) < 0)
  {
    operator delete(*(v68 - 248));
  }

  if (*(v68 - 201) < 0)
  {
    operator delete(*(v68 - 224));
  }

  _Unwind_Resume(a1);
}

void sub_1B5284()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1B5154);
}

void sub_1B52A4()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1B51DCLL);
}

void sub_1B52BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v63 - 153) < 0)
  {
    operator delete(*(v63 - 176));
  }

  if (a63 < 0)
  {
    JUMPOUT(0x1B51E8);
  }

  JUMPOUT(0x1B51ECLL);
}

void Preprocessing::splitBySubstring(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X1>, char *a3@<X2>)
{
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = a3[23];
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = a3[23];
  }

  else
  {
    v11 = *(a3 + 1);
  }

  while (1)
  {
    v12 = v6;
    if (v11)
    {
      break;
    }

LABEL_22:
    if (v12 != -1)
    {
      std::string::basic_string(&__p, __str, v6, v12 - v6, &v21);
      std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v19 = a3[23];
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v8 = __str;
      }

      else
      {
        v8 = __str->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = __str->__r_.__value_.__l.__size_;
      }

      v11 = v19 >= 0 ? a3[23] : *(a3 + 1);
      v6 = v11 + v12;
      v10 = v19 >= 0 ? a3 : *a3;
      if (size >= v6)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  v13 = size - v6;
  if ((size - v6) >= v11)
  {
    v14 = v8 + size;
    v15 = v8 + v6;
    v16 = *v10;
    do
    {
      if (v13 - v11 == -1)
      {
        break;
      }

      v17 = memchr(v15, v16, v13 - v11 + 1);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (!memcmp(v17, v10, v11))
      {
        if (v18 == v14)
        {
          break;
        }

        v12 = v18 - v8;
        goto LABEL_22;
      }

      v15 = v18 + 1;
      v13 = v14 - (v18 + 1);
    }

    while (v13 >= v11);
  }

LABEL_37:
  std::string::basic_string(&__p, __str, v6, 0xFFFFFFFFFFFFFFFFLL, &v21);
  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B54F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v24.__end_cap_.__value_ = this;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v15);
    }

    v24.__first_ = 0;
    v24.__begin_ = (8 * (v12 >> 3));
    v24.__end_ = v24.__begin_;
    v24.__end_cap_.__value_ = 0;
    std::__split_buffer<std::string>::emplace_back<std::string const&>(&v24, __x);
    v16 = v24.__begin_;
    memcpy(v24.__end_, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v24.__begin_;
    v24.__end_ = (v24.__end_ + this->__end_ - i);
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = *&v24.__end_;
    v24.__end_ = v21;
    v24.__end_cap_.__value_ = v22;
    v24.__first_ = v21;
    v24.__begin_ = v21;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
    return v16;
  }

  else if (__position.__i_ == end)
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(this, __x);
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    v8 = this->__end_ <= __x || i > __x;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(i, &__x[v9]);
  }

  return i;
}

uint64_t **boost::algorithm::join<std::vector<std::string>,char [4]>@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, uint64_t **result@<X0>)
{
  v5 = *result;
  v6 = result[1];
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a1, v8, &v8[v9], v9); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(__s);
    std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, v11 + size, __s, &__s[v13], v13);
    v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_1B57D0(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t Preprocessing::prepare_p2a_asset(uint64_t a1, uint64_t a2)
{
  boost::filesystem::path::path(v18, "prepare_p2a_asset");
  if ((*a1 & 1) == 0 && (Checkpointable::should_skip_stage(*(a1 + 256), v18) & 1) == 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &METADATA_P2A_PROMPT_FILENAME);
    std::__fs::filesystem::operator/[abi:ne200100](&__s, &__p, a1 + 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __s.__pn_.__r_.__value_.__l.__data_, __s.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = __s.__pn_;
    }

    TrainingUtils::read_metadata_from_file(&pn, v3, &__p);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "transcription");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v4, &pn);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_list");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v5, &v14);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_duration");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<float>,std::vector<float>,0>(v6, &v13);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(__p.__r_.__value_.__l.__data_, "phone_locale");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v7, &v12);
    v10 = 0uLL;
    v11 = 0;
    v9[0] = " ";
    v9[1] = "";
    boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v9);
    boost::algorithm::split<std::vector<std::string>,std::string&,boost::algorithm::detail::is_any_ofF<char>>(&v10, &pn, __dst, 0);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return 0;
}

void sub_1B70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (*(v74 - 169) < 0)
  {
    operator delete(*(v74 - 192));
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a69)
  {
    operator delete(a69);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  v76 = a72;
  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(v76);
  }

  a72 = &STACK[0x210];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a72);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  v77 = *(v74 - 160);
  if (v77)
  {
    *(v74 - 152) = v77;
    operator delete(v77);
  }

  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  v78 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v78;
    operator delete(v78);
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(&STACK[0x2A0], STACK[0x2A8]);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  STACK[0x2A0] = &STACK[0x2D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  STACK[0x2D0] = &STACK[0x2E8];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D0]);
  v79 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v79;
    operator delete(v79);
  }

  STACK[0x300] = &STACK[0x318];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  STACK[0x330] = &STACK[0x350];
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x330]);
  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (*(v74 - 217) < 0)
  {
    operator delete(*(v74 - 240));
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::map<std::string,int>,std::map<std::string,int>,0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::map<std::string,int>,0>(a1, a2);
}

void Preprocessing::run_anetec_encoder_inference(uint64_t a1, void (****a2)(void), uint64_t *a3)
{
  (***a2)();
  InferenceEngine::VectorOps::reshape_1d_to_3d<float>(a3, 1, (a3[1] - *a3) >> 2, v9);
  LogObject = Diagnostics_GetLogObject(v4, v5);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v7 = (0xAAAAAAAAAAAAAAABLL * ((*(v9[0] + 1) - *v9[0]) >> 3));
    v8 = ((*(*v9[0] + 8) - **v9[0]) >> 2);
    buf[0] = 134218496;
    *&buf[1] = (0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
    v11 = 2048;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "The input sample shape: %f x %f x %f.", buf, 0x20u);
  }

  boost::filesystem::path::path(buf, "inputs");
  InferenceEngine::DataTensor::build_from_3d_array<float>(buf, v9);
}

void sub_1B7D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  __p = &a16;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void Preprocessing::align_fa_speech_features(uint64_t *a1@<X1>, void *a2@<X2>, float **a3@<X3>, _DWORD *a4@<X4>, int *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v9 = *a1;
  v8 = a1[1];
  std::vector<float>::vector[abi:ne200100](&__p, a3[1] - *a3);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = __p;
    v14 = *v10;
    v13 = v10 + 1;
    v15 = v14;
    *__p = v14;
    if (v13 != v11)
    {
      v16 = (v12 + 4);
      do
      {
        v17 = *v13++;
        v15 = v15 + v17;
        *v16++ = v15;
      }

      while (v13 != v11);
    }
  }

  boost::filesystem::path::path(&v64, ".");
  boost::filesystem::path::path(&v65, ",");
  boost::filesystem::path::path(&v66, "!");
  boost::filesystem::path::path(&v67, "?");
  boost::filesystem::path::path(&v68, ":");
  boost::filesystem::path::path(&v69, ";");
  boost::filesystem::path::path(&v70, "£");
  boost::filesystem::path::path(&v71, "¿");
  boost::filesystem::path::path(v72, "¡");
  v59 = 0;
  v60 = 0;
  v61 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v59, &v64, &v73, 9uLL);
  v18 = 0;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  do
  {
    if (v72[v18 + 23] < 0)
    {
      operator delete(*&v72[v18]);
    }

    v18 -= 24;
  }

  while (v18 != -216);
  v53 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (v19 > v22)
  {
    v23 = *a1 + 24 * v22;
    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v64.__r_.__value_.__r.__words[2] = *(v23 + 16);
      *&v64.__r_.__value_.__l.__data_ = v24;
    }

    v25 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v64.__r_.__value_.__l.__size_ != 1)
      {
        goto LABEL_25;
      }

      v26 = *v64.__r_.__value_.__l.__data_;
    }

    else
    {
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_25;
      }

      v26 = v64.__r_.__value_.__s.__data_[0];
    }

    if (v26 == 42)
    {
      v27 = (*a2 + 24 * v21);
      v28 = *(v27 + 23);
      if (v28 < 0)
      {
        if (*(v27 + 1) != 3)
        {
          goto LABEL_74;
        }

        v27 = *v27;
      }

      else if (v28 != 3)
      {
        goto LABEL_74;
      }

      v46 = *v27;
      v47 = *(v27 + 2);
      if (v46 == 26995 && v47 == 108)
      {
        v51 = *a5;
        if (*(__p + v21) / v51 * v51 <= *a5)
        {
          v20 = *a5;
        }

        else
        {
          v20 = *(__p + v21) / v51 * v51;
        }

        v58 = v20;
        std::vector<float>::push_back[abi:ne200100](v7, &v58);
        ++v21;
      }

      else
      {
LABEL_74:
        v20 = *a4 / *a5 * *a5;
        v58 = v20;
        std::vector<float>::push_back[abi:ne200100](v7, &v58);
      }

      ++v22;
LABEL_76:
      v29 = 1;
      goto LABEL_84;
    }

    if (v26 != 126)
    {
LABEL_25:
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v21)
      {
        goto LABEL_49;
      }

      v30 = *a2 + 24 * v21;
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v64.__r_.__value_.__l.__size_;
      }

      v32 = *(v30 + 23);
      v33 = v32;
      v34 = *(v30 + 8);
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v30 + 8);
      }

      if (size == v32)
      {
        v35 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v64 : v64.__r_.__value_.__r.__words[0];
        v36 = v33 >= 0 ? (*a2 + 24 * v21) : *v30;
        if (!memcmp(v35, v36, size))
        {
          if (*(__p + v21) / *a5 * *a5 <= *a5 + v20)
          {
            v50 = *a5 + v20;
          }

          else
          {
            v50 = *(__p + v21) / *a5 * *a5;
          }

          v58 = (v50 - v20);
          v7 = a6;
          std::vector<float>::push_back[abi:ne200100](a6, &v58);
          ++v22;
          ++v21;
LABEL_83:
          v29 = 1;
          v20 = v50;
          goto LABEL_84;
        }
      }

      if (v33 < 0)
      {
        v37 = v34 == 3;
        v7 = a6;
        if (!v37)
        {
          goto LABEL_49;
        }

        v30 = *v30;
      }

      else
      {
        v7 = a6;
        if (v33 != 3)
        {
          goto LABEL_49;
        }
      }

      v37 = *v30 == 26995 && *(v30 + 2) == 108;
      if (!v37)
      {
LABEL_49:
        if (v19 - 1 == v22)
        {
          v38 = *(v63 - 1);
        }

        else
        {
          if (v53 <= v20)
          {
            goto LABEL_78;
          }

          v39 = v59;
          v40 = v60;
          if (v59 != v60)
          {
            if ((v25 & 0x80000000) == 0)
            {
              v41 = v25;
            }

            else
            {
              v41 = v64.__r_.__value_.__l.__size_;
            }

            if ((v25 & 0x80000000) == 0)
            {
              v42 = &v64;
            }

            else
            {
              v42 = v64.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v43 = *(v39 + 23);
              v44 = v43;
              if ((v43 & 0x80u) != 0)
              {
                v43 = *(v39 + 8);
              }

              if (v43 == v41)
              {
                v45 = v44 >= 0 ? v39 : *v39;
                if (!memcmp(v45, v42, v41))
                {
                  break;
                }
              }

              v39 += 24;
              if (v39 == v40)
              {
                goto LABEL_78;
              }
            }
          }

          v38 = v53;
          if (v39 == v40)
          {
LABEL_78:
            v38 = *a4 + v20;
          }
        }

        v49 = v38 / *a5 * *a5;
        if (v49 <= *a5 + v20)
        {
          v50 = *a5 + v20;
        }

        else
        {
          v50 = v49;
        }

        v58 = (v50 - v20);
        std::vector<float>::push_back[abi:ne200100](v7, &v58);
        ++v22;
        goto LABEL_83;
      }

      v53 = *(__p + v21++) / *a5 * *a5;
      goto LABEL_76;
    }

    v58 = 0.0;
    std::vector<float>::push_back[abi:ne200100](v7, &v58);
    v29 = 0;
LABEL_84:
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if ((v29 & 1) == 0)
      {
        break;
      }
    }

    else if ((v29 & 1) == 0)
    {
      break;
    }
  }

  v64.__r_.__value_.__r.__words[0] = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v64);
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }
}

void sub_1B8418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  v29 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}