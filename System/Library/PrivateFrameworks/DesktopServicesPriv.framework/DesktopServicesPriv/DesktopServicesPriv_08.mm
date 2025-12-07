void sub_1E570CFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<unsigned long>(const std::string::value_type **a1, std::string *this, unint64_t *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &(*a1)[v3];
  v9 = 1;
  v10 = *a1;
  while (2)
  {
    for (i = 0; i != 3; ++i)
    {
      if (*v10 == asc_1E57B78C0[i])
      {
        v12 = 0;
        v9 = 1;
        if (v10 == v8)
        {
          return v12 | v9;
        }

        v13 = v10 - v7;
        if (v10 - v7 == -1)
        {
          return v12 | v9;
        }

        std::string::append(this, v7, v10 - v7);
        v14 = a1[1];
        v15 = v14 >= v13;
        v16 = v14 - v13;
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        *a1 += v13;
        a1[1] = v16;
        ParseFormat(&__src, a1);
        v17 = __len;
        if (!__len)
        {
          v12 = 0;
          v9 = 2;
          return v12 | v9;
        }

        if (v43 > 4)
        {
          if (v43 <= 6)
          {
            if (v43 == 5)
            {
              std::to_string(&v40, *a3);
              RedactForPrivacy(&__src, &v40, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }
            }

            else
            {
              std::to_string(&v40, *a3);
              RedactForPrivacy(&__src, &v40, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_111;
          }

          if (v43 == 8)
          {
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&v40.__r_.__value_.__s + 23) = __len;
            memmove(&v40, __src, __len);
            v40.__r_.__value_.__s.__data_[v17] = 0;
            ExtractEmbeddedFormat(__str, &v40);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            v29 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
            v30 = __str;
            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = __str[0].__r_.__value_.__l.__size_;
              v30 = __str[0].__r_.__value_.__r.__words[0];
            }

            __dst.__r_.__value_.__r.__words[0] = v30;
            __dst.__r_.__value_.__l.__size_ = v29;
            FormatDetails<unsigned long>(&__dst, a3, &v40);
            v31 = __len;
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            v38 = __len;
            if (__len)
            {
              memmove(&__p, __src, __len);
            }

            *(&__p + v31) = 0;
            ExtendedFormatAdaptor(&__p, &v40, &__dst);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = __dst.__r_.__value_.__l.__size_;
            }

            std::string::append(this, p_dst, v33);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (v38 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (v43 != 7)
            {
LABEL_58:
              std::to_string(&v40, *a3);
              RedactForPrivacy(&__src, &v40, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }

LABEL_111:
              std::string::append(this, v18, size);
              if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str[0].__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_132;
              }

              v28 = v40.__r_.__value_.__r.__words[0];
              goto LABEL_131;
            }

            DeEscapeFormatFragment(&__src, __str);
            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = __str;
            }

            else
            {
              v20 = __str[0].__r_.__value_.__r.__words[0];
            }

            if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              v21 = __str[0].__r_.__value_.__l.__size_;
            }

            std::string::append(this, v20, v21);
          }

          if ((SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_132:
            v34 = a1[1];
            v35 = v34 - __len;
            if (v34 < __len)
            {
              std::__throw_out_of_range[abi:ne200100]("string_view::substr");
            }

            v9 = 0;
            *a1 += __len;
            a1[1] = v35;
            v12 = v43 << 32;
            return v12 | v9;
          }

          v28 = __str[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v43 > 2)
          {
            if (v43 != 3)
            {
              if (__len > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (__len >= 0x17)
              {
                operator new();
              }

              *(&v40.__r_.__value_.__s + 23) = __len;
              memmove(&v40, __src, __len);
              v40.__r_.__value_.__s.__data_[v17] = 0;
              HexDescriptionPrinterGlue<unsigned long,void>::dump(&v40, a3, __str);
              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __str;
              }

              else
              {
                v18 = __str[0].__r_.__value_.__r.__words[0];
              }

              if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str[0].__r_.__value_.__l.__size_;
              }

              goto LABEL_111;
            }

            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = __len;
            memmove(&__dst, __src, __len);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            v27 = *a3;
            v23 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v24 = __dst.__r_.__value_.__r.__words[0];
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              snprintf(__str, 0x64uLL, &__dst, v27);
            }

            else
            {
              snprintf(__str, 0x64uLL, __dst.__r_.__value_.__l.__data_, v27);
            }

            std::string::basic_string[abi:ne200100]<0>(&v40, __str);
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v40;
            }

            else
            {
              v25 = v40.__r_.__value_.__r.__words[0];
            }

            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v40.__r_.__value_.__l.__size_;
            }
          }

          else
          {
            if (v43 != 1)
            {
              if (v43 == 2)
              {
                if (__len > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (__len >= 0x17)
                {
                  operator new();
                }

                *(&v40.__r_.__value_.__s + 23) = __len;
                memmove(&v40, __src, __len);
                v40.__r_.__value_.__s.__data_[v17] = 0;
                std::to_string(__str, *a3);
                if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v18 = __str;
                }

                else
                {
                  v18 = __str[0].__r_.__value_.__r.__words[0];
                }

                if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __str[0].__r_.__value_.__l.__size_;
                }

                goto LABEL_111;
              }

              goto LABEL_58;
            }

            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = __len;
            memmove(&__dst, __src, __len);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            v22 = *a3;
            v23 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v24 = __dst.__r_.__value_.__r.__words[0];
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              snprintf(__str, 0x64uLL, &__dst, v22);
            }

            else
            {
              snprintf(__str, 0x64uLL, __dst.__r_.__value_.__l.__data_, v22);
            }

            std::string::basic_string[abi:ne200100]<0>(&v40, __str);
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v40;
            }

            else
            {
              v25 = v40.__r_.__value_.__r.__words[0];
            }

            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v40.__r_.__value_.__l.__size_;
            }
          }

          std::string::append(this, v25, v26);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_132;
          }

          v28 = v24;
        }

LABEL_131:
        operator delete(v28);
        goto LABEL_132;
      }
    }

    if (++v10 != v8)
    {
      continue;
    }

    break;
  }

  v12 = 0;
  return v12 | v9;
}

void sub_1E570D800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<unsigned long>(_OWORD *a1@<X0>, unint64_t *a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  *&v10.__r_.__value_.__l.__data_ = *a1;
  do
  {
    v5 = FormatOneDetails<unsigned long>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
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

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E570D9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *HexDescriptionPrinterGlue<unsigned long,void>::dump@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v10 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "0x", 2);
    MEMORY[0x1E692CAF0](v7, *a2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, a3);
    *__str = *MEMORY[0x1E69E54D8];
    v8 = *(MEMORY[0x1E69E54D8] + 72);
    *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    v12 = v8;
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    return MEMORY[0x1E692CCA0](v16);
  }
}

void sub_1E570DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FINode *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FINode *>>>(v6, v5);

  return v3;
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<FINode *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

__n128 std::__function::__func<void TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [30],NSString * {__strong},unsigned long>(unsigned long long,char [30],NSString * {__strong},unsigned long const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [30],NSString * {__strong},unsigned long>(unsigned long long,char [30],NSString * {__strong},unsigned long const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F3E840;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [30],NSString * {__strong},unsigned long>(unsigned long long,char [30],NSString * {__strong},unsigned long const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [30],NSString * {__strong},unsigned long>(unsigned long long,char [30],NSString * {__strong},unsigned long const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [30],NSString * {__strong},unsigned long>(unsigned long long,char [30],NSString * {__strong},unsigned long const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = **a1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    *&v11 = v6;
    *(&v11 + 1) = strlen(v6);
    FormatDetails<NSString * {__strong},unsigned long>(&v11, v7, v8, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v13 = p_p;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "FetchNodeAsync", "%{public}s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void FormatDetails<NSString * {__strong},unsigned long>(__int128 *a1@<X0>, void **a2@<X1>, unint64_t *a3@<X2>, std::string *a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v12 = *a1;
  do
  {
    v7 = FormatOneDetails<NSString * {__strong}>(&v12, &__p, a2);
    if (v7)
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v7 == 0x700000000);
  FormatDetails<unsigned long>(&v12, a3, &v11);
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

  v10 = std::string::insert(&v11, 0, p_p, size);
  *a4 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E570E134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<std::vector<std::optional<FINode * {__strong}>>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::nullopt_t const&,std::allocator<std::vector<std::optional<FINode * {__strong}>>>,0>(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3E8C0;
  std::construct_at[abi:ne200100]<std::vector<std::optional<FINode * {__strong}>>,unsigned long,std::nullopt_t const&,std::vector<std::optional<FINode * {__strong}>>*>(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::optional<FINode * {__strong}>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3E8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t *std::construct_at[abi:ne200100]<std::vector<std::optional<FINode * {__strong}>>,unsigned long,std::nullopt_t const&,std::vector<std::optional<FINode * {__strong}>>*>(uint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  LOBYTE(v5) = 0;
  v6 = 0;
  std::vector<std::optional<FINode * {__strong}>>::vector[abi:ne200100](a1, v3, &v5);
  if (v6 == 1)
  {
  }

  return a1;
}

void sub_1E570E334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10)
{
  if (a10 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::optional<FINode * {__strong}>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::optional<FINode * {__strong}>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::optional<FINode * {__strong}>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::optional<FINode * {__strong}>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::optional<FINode * {__strong}>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::optional<FINode * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::optional<FINode * {__strong}>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::optional<FINode * {__strong}>>::clear[abi:ne200100](id **a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 8);
    v3 -= 2;
    if (v4 == 1)
    {
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__hash_table<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<NSURL * {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,void *>>>::destroy[abi:ne200100]<std::pair<NSURL * const {__strong},std::pair<NSProgress * {__strong},TNSWeakPtr<FINode>>>,void,0>(a1, v2 + 2);
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void sub_1E570EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void sub_1E570EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void sub_1E570ECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t SourceInodeXattrName()
{
  {
    SourceInodeXattrName(BOOL)::sSourceInodeXattrName = xattr_name_without_flags("com.apple.finder.copy.source.inode");
  }

  return SourceInodeXattrName(BOOL)::sSourceInodeXattrName;
}

BOOL TCFURLInfo::AreOnSameVolume(TCFURLInfo ***a1, const __CFURL *a2)
{
  VolumeIdentifier = TCFURLInfo::GetVolumeIdentifier(**a1, a2);
  cf1 = VolumeIdentifier;
  v5 = VolumeIdentifier == 0;
  if (VolumeIdentifier)
  {
    CFRetain(VolumeIdentifier);
  }

  v6 = TCFURLInfo::GetVolumeIdentifier(**a2, v4);
  v7 = v6;
  v9 = v6;
  if (v6)
  {
    CFRetain(v6);
    if (cf1)
    {
      v5 = CFEqual(cf1, v7) != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v9);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf1);
  return v5;
}

void sub_1E570F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::IsOnSystemVolume(TCFURLInfo **this, const __CFURL *a2)
{
  VolumeIdentifier = TCFURLInfo::GetVolumeIdentifier(*this, a2);
  v3 = VolumeIdentifier;
  v8 = VolumeIdentifier;
  if (VolumeIdentifier)
  {
    CFRetain(VolumeIdentifier);
  }

  ROSPVolumeID::BootVolumeID(&cf2);
  v4 = (v3 | cf2) == 0;
  if (v3)
  {
    v5 = cf2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 = CFEqual(v3, cf2) != 0;
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf2);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v8);
  return v4;
}

void sub_1E570F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetgidToUse(TCFURLInfo *this)
{
  if (TCFURLInfo::gDSHelperRunning == 1)
  {
    return TCFURLInfo::ggidToUse;
  }

  else
  {
    return getgid();
  }
}

void TCFURLInfo::TCFURLInfo(TCFURLInfo *this)
{
  *this = 0;
  *(this + 1) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 2) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 3) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 12) = 0;
  v2 = *(this + 54);
  *(this + 26) &= 0x100u;
  *(this + 54) = v2 & 0xE0;
}

void sub_1E570F448(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

void TCFURLInfo::TCFURLInfo(TCFURLInfo *this, const TCFURLInfo *a2)
{
  *this = 0;
  *(this + 1) = &stru_1F5F42870;
  v4 = (this + 8);
  CFRetain(&stru_1F5F42870);
  *(this + 2) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 3) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 12) = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(this, *a2);
  if (this != a2)
  {
    TString::SetStringRefAsImmutable(v4, *(a2 + 1));
    TString::SetStringRefAsImmutable(this + 2, *(a2 + 2));
    TString::SetStringRefAsImmutable(this + 3, *(a2 + 3));
  }

  v5 = *(this + 26) & 0xFEFF | ((HIBYTE(*(a2 + 26)) & 1) << 8);
  *(this + 26) = v5;
  v6 = v5 & 0xFFFFFFFE | *(a2 + 26) & 1;
  *(this + 26) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*(a2 + 26) >> 1) & 1));
  *(this + 26) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a2 + 26) >> 2) & 1));
  *(this + 26) = v8;
  v9 = v8 & 0xFFFFFFF7 | (8 * ((*(a2 + 26) >> 3) & 1));
  *(this + 26) = v9;
  v10 = v9 & 0xFFFFFFEF | (16 * ((*(a2 + 26) >> 4) & 1));
  *(this + 26) = v10;
  v11 = v10 & 0xFFFFFFDF | (32 * ((*(a2 + 26) >> 5) & 1));
  *(this + 26) = v11;
  v12 = v11 & 0xFFFFFFBF | (((*(a2 + 26) >> 6) & 1) << 6);
  *(this + 26) = v12;
  v13 = v12 & 0xFFFFFF7F | (((*(a2 + 26) >> 7) & 1) << 7);
  *(this + 26) = v13;
  v14 = v13 & 0xFFFFFDFF | (((*(a2 + 26) >> 9) & 1) << 9);
  *(this + 26) = v14;
  v15 = *(this + 54) & 0xEF | (16 * ((*(a2 + 54) >> 4) & 1));
  *(this + 54) = v15;
  v16 = v14 & 0xFFFFFBFF | (((*(a2 + 26) >> 10) & 1) << 10);
  *(this + 26) = v16;
  LOWORD(v16) = v16 & 0xF7FF | (((*(a2 + 26) >> 11) & 1) << 11);
  *(this + 26) = v16;
  v17 = *(a2 + 26) & 0x8000 | v16 & 0x7FFF;
  *(this + 26) = v17;
  v18 = v17 & 0xFFFFEFFF | (((*(a2 + 26) >> 12) & 1) << 12);
  *(this + 26) = v18;
  LOWORD(v18) = v18 & 0xDFFF | (((*(a2 + 26) >> 13) & 1) << 13);
  *(this + 26) = v18;
  *(this + 26) = v18 & 0xBFFF | *(a2 + 26) & 0x4000;
  v19 = v15 & 0xFFFFFFFE | *(a2 + 54) & 1;
  *(this + 54) = v19;
  v20 = v19 & 0xFFFFFFFD | (2 * ((*(a2 + 54) >> 1) & 1));
  *(this + 54) = v20;
  v21 = v20 & 0xFFFFFFFB | (4 * ((*(a2 + 54) >> 2) & 1));
  *(this + 54) = v21;
  *(this + 54) = v21 & 0xF7 | *(a2 + 54) & 8;
  *(this + 12) = *(a2 + 12);
}

void sub_1E570F69C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetObjectIdentifier(TCFURLInfo *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v1 = TCFURLInfo::CopyPropertyValues(*this, 8, &v4, v5);
  if (v1)
  {
    v2 = v1 == -5000;
  }

  else
  {
    v2 = 1;
  }

  if (v2 && (v4 & 8) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void TCFURLInfo::Path(TCFURLInfo **this@<X0>, TString *a2@<X8>)
{
  v3 = *this;
  if (v3)
  {

    TCFURLInfo::FileSystemRepresentation(a2, v3, 1);
  }

  else
  {
    v4 = TString::KEmptyString(0);
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *v4);
  }
}

uint64_t TCFURLInfo::CopyExtendedAttribute(TCFURLInfo *this, CFStringRef theString, const __CFString *a3, CFDataRef *a4, const __CFData **a5)
{
  v20 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v5 = 4294959224;
  if (!this || !theString)
  {
    return v5;
  }

  v8 = a3;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CStringPtr)
  {
    CStringPtr = buffer;
    if (!CFStringGetCString(theString, buffer, 127, 0x8000100u))
    {
      CStringPtr = 0;
    }
  }

  std::vector<char>::vector[abi:ne200100](&bytes, 4096);
  if (!strcmp("com.apple.ResourceFork", CStringPtr))
  {
LABEL_9:
    v12 = getxattr(this, CStringPtr, 0, 0, 0, v8);
    if ((v12 & 0x8000000000000000) == 0)
    {
      begin = bytes.__begin_;
      end = bytes.__end_;
      if (v12 <= bytes.__end_ - bytes.__begin_)
      {
        if (v12 < bytes.__end_ - bytes.__begin_)
        {
          end = &bytes.__begin_[v12];
          bytes.__end_ = &bytes.__begin_[v12];
        }
      }

      else
      {
        std::vector<char>::__append(&bytes, v12 - (bytes.__end_ - bytes.__begin_));
        begin = bytes.__begin_;
        end = bytes.__end_;
      }

      v11 = getxattr(this, CStringPtr, begin, end - begin, 0, v8);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    v16 = __error();
    v5 = *v16;
    if (v5)
    {
      if (v5 == 93)
      {
        v5 = 4294965869;
      }

      else if (v5 == 45)
      {
        v5 = 4294965870;
      }

      else
      {
        v5 = TCFURLInfo::TranslatePOSIXError(*v16, 0, v17);
      }
    }

    goto LABEL_16;
  }

  v11 = getxattr(this, CStringPtr, bytes.__begin_, bytes.__end_ - bytes.__begin_, 0, v8);
  if (v11 < 0)
  {
    if (*__error() != 34)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_15:
  v5 = 0;
  *a4 = CFDataCreate(0, bytes.__begin_, v11);
LABEL_16:
  if (bytes.__begin_)
  {
    bytes.__end_ = bytes.__begin_;
    operator delete(bytes.__begin_);
  }

  return v5;
}

void sub_1E570F9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

TCFURLInfo *TCFURLInfo::CheckPrefetchState(TCFURLInfo *result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2 || v2 == 0)
  {
    return TCFURLInfo::FetchProperties(result, 1);
  }

  return result;
}

CFIndex TCFURLInfo::FetchProperties(const void **this, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*this)
  {
    return 4294959236;
  }

  error = 0;
  if (a2)
  {
    CopyItemRequestedPropertyKeys = TCFURLInfo::GetCopyItemRequestedPropertyKeys(this);
    v33 = CFURLCopyResourcePropertiesForKeys(v2, CopyItemRequestedPropertyKeys, &error);
    if (error)
    {
      CFRelease(error);
      error = 0;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = TCFURLInfo::GetCopyItemRequestedPropertyKeys(v6);
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v8)
      {
        v9 = *v30;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v27 = 0;
            propertyValueTypeRefPtr = 0;
            CFURLCopyResourcePropertyForKey(*this, v11, &propertyValueTypeRefPtr, &v27);
            TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&v27);
            TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&propertyValueTypeRefPtr);
          }

          v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v33 = 0;
  }

  propertyValueTypeRefPtr = 0;
  if (_CFURLGetResourcePropertyFlags())
  {
    v15 = propertyValueTypeRefPtr;
    v16 = propertyValueTypeRefPtr & 0xFFFE;
    v17 = propertyValueTypeRefPtr >> 1;
    v18 = *(this + 26);
    v19 = *(this + 54) & 0xFE | propertyValueTypeRefPtr & 1;
    *(this + 54) = v19;
    v20 = v18 & 0xFFFFFFFC | (v16 >> 1) & 2 | (v16 >> 1) & 1;
    *(this + 26) = v20;
    if (v17)
    {
      if (TCFURLInfo::GetBooleanProperty(*this, *MEMORY[0x1E695EB50], v14))
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      LOWORD(v20) = *(this + 26) & 0xFFFB | v21;
      *(this + 26) = v20;
      v15 = propertyValueTypeRefPtr;
      v19 = *(this + 54);
    }

    *(this + 54) = v19 & 0xFD | (v15 >> 4) & 2;
    v22 = ((v15 >> 2) & 0x20 | (((v15 & 8) != 0) << 7) | (v15 >> 10 << 15) | (v15 >> 2) & 0x10 | v20 & 0x7F4F) ^ 0x20;
    *(this + 26) = v22;
    *(this + 12) = 1;
    if (a2)
    {
      *(this + 26) = (v15 >> 2) & 0x40 | v15 & 0x7000 | (v15 >> 6) & 8 | v22 & 0x8FB7;
      *(this + 12) = 2;
    }

    v27 = 0;
    if (CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EBE8], &v27, &error))
    {
      v23 = v27;
      cf = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&cf, v23);
      if (this + 1 != &cf)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(this + 1, &cf);
        CFRetain(&stru_1F5F42870);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_1F5F42870;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }

    TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v27);
  }

  v24 = atomic_load(sUseFileProviderFramework);
  if (v24)
  {
    *(this + 54) = *(this + 54) & 0xFB | (TCFURLInfo::GetNumericalProperty(*this, *MEMORY[0x1E695E2A8], v14) >> 28) & 4;
  }

  v12 = TCFURLInfo::TranslateCFError(error, v13);
  TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&v33);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
  return v12;
}

void sub_1E570FD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v23 = va_arg(va1, const void *);

  TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(va);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetCopyItemRequestedPropertyKeys(TCFURLInfo *this)
{
  {
    if (v2)
    {
      TCFURLInfo::GetCopyItemRequestedPropertyKeys(void)::copyKeys = TCFURLInfo::GetCopyItemRequestedPropertyKeys(void)::$_0::operator()(v2);
    }
  }

  return TCFURLInfo::GetCopyItemRequestedPropertyKeys(void)::copyKeys;
}

CFIndex TCFURLInfo::TranslateCFError(TCFURLInfo *this, __CFError *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v2 = this;
    Domain = CFErrorGetDomain(v2);
    v23.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v23, Domain);
    FileProviderErrorDomain(buf);
    LODWORD(Domain) = CFEqual(v23.fString.fRef, *buf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
    if (Domain)
    {
      v5 = TCFURLInfo::TranslateFileProviderError(v2, v4);
    }

    else
    {
      v7 = CFErrorCopyUserInfo(v2);
      *buf = v7;
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, *MEMORY[0x1E695E670]);
        v9 = static_cf_cast<__CFString const*,void const*>(Value);
        if (v9)
        {
          v6 = TCFURLInfo::OSStatusFromCFErrorShallow(v9, v10);
          TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(buf);
LABEL_10:
          if (operator==(&v23.fString.fRef, *MEMORY[0x1E696A250]) && [(TCFURLInfo *)v2 code]== 260)
          {
            v12 = [(TCFURLInfo *)v2 userInfo];
            v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A998]];

            v16 = 0;
            if (v13)
            {
              v14 = [v13 lastPathComponent];
              TCFURLInfo::GetPropertyStoreName(v14);
              v15 = operator==(&TCFURLInfo::GetPropertyStoreName(void)::propertyStoreName, v14);

              if (!v15)
              {
                v16 = 1;
              }
            }

            {
              TCFURLInfo::TranslateCFError(__CFError *)::$_0::operator()();
            }

            if (!v16)
            {
              v20 = v13;
LABEL_27:

              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
              return v6;
            }

            v17 = v13;
            v18 = TCFURLInfo::TranslateCFError(__CFError *)::ignoredDirectories;
            v19 = *algn_1ECFF4788;
            v20 = v17;
            while (1)
            {
              if (v18 == v19)
              {

                goto LABEL_27;
              }

              if (IsEqual(v20, *v18))
              {
                break;
              }

              ++v18;
            }
          }

          v20 = LogObj(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [MEMORY[0x1E696AD98] numberWithInt:v6];
            *buf = 138543618;
            *&buf[4] = v21;
            v25 = 2112;
            v26 = v2;
            _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_ERROR, "TCFURLInfo::TranslateCFError -- status: %{public}@, CFError = %@", buf, 0x16u);
          }

          goto LABEL_27;
        }
      }

      TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(buf);
      v5 = TCFURLInfo::OSStatusFromCFErrorShallow(v2, v11);
    }

    v6 = v5;
    goto LABEL_10;
  }

  return 0;
}

void sub_1E5710174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TCFURLInfo::ForceNameFetch(const void **this)
{
  v2 = *this;
  if (v2)
  {
    PathComponent = CFURLCopyLastPathComponent(v2);
    v7 = PathComponent;
    if (PathComponent)
    {
      v4 = PathComponent;
      cf = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&cf, v4);
      if (this + 1 != &cf)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(this + 1, &cf);
        CFRetain(&stru_1F5F42870);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_1F5F42870;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }
  }

  else
  {
    v7 = 0;
  }

  return TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v7);
}

void sub_1E57102E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&a10);
  _Unwind_Resume(a1);
}

CFIndex TCFURLInfo::Initialize(TString *this, const __CFURL *a2, int a3, int a4)
{
  TString::SetStringRefAsImmutable(this + 1, 0);
  TString::SetFromUTF8(this + 1, "", 0);
  TString::SetStringRefAsImmutable(this + 2, 0);
  TString::SetFromUTF8(this + 2, "", 0);
  TString::SetStringRefAsImmutable(this + 3, 0);
  TString::SetFromUTF8(this + 3, "", 0);
  WORD2(this[6].fString.fRef) &= ~0x100u;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, a2);
  if (!this->fString.fRef || !a3)
  {
    return 0;
  }

  return TCFURLInfo::FetchProperties(&this->fString.fRef, a4);
}

CFIndex TCFURLInfo::Initialize(TString *this, const char *__s)
{
  if (!__s)
  {
    return 4294959224;
  }

  v4 = strlen(__s);
  v5 = CFURLCreateFromFileSystemRepresentation(0, __s, v4, 0);
  v8 = v5;
  if (v5)
  {
    v6 = TCFURLInfo::Initialize(this, v5, 1, 1);
  }

  else
  {
    v6 = 4294959238;
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v8);
  return v6;
}

void sub_1E5710480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetSizerPropertyKeys(TCFURLInfo *this)
{
  v23[21] = *MEMORY[0x1E69E9840];
  {
    v22 = TString::operator NSString *(MEMORY[0x1E695EBE8]);
    v23[0] = v22;
    v21 = TString::operator NSString *(MEMORY[0x1E695E2B8]);
    v23[1] = v21;
    v20 = TString::operator NSString *(MEMORY[0x1E695E2A0]);
    v23[2] = v20;
    v19 = TString::operator NSString *(MEMORY[0x1E695E2C0]);
    v23[3] = v19;
    v18 = TString::operator NSString *(MEMORY[0x1E695E2F8]);
    v23[4] = v18;
    v17 = TString::operator NSString *(MEMORY[0x1E695EAF0]);
    v23[5] = v17;
    v16 = TString::operator NSString *(MEMORY[0x1E695EA68]);
    v23[6] = v16;
    v15 = TString::operator NSString *(MEMORY[0x1E695EBB8]);
    v23[7] = v15;
    v14 = TString::operator NSString *(MEMORY[0x1E695EB40]);
    v23[8] = v14;
    v13 = TString::operator NSString *(MEMORY[0x1E695EB90]);
    v23[9] = v13;
    v12 = TString::operator NSString *(MEMORY[0x1E695EB80]);
    v23[10] = v12;
    v11 = TString::operator NSString *(MEMORY[0x1E695E348]);
    v23[11] = v11;
    v2 = TString::operator NSString *(MEMORY[0x1E695E320]);
    v23[12] = v2;
    v3 = TString::operator NSString *(MEMORY[0x1E695E318]);
    v23[13] = v3;
    v4 = TString::operator NSString *(MEMORY[0x1E695E340]);
    v23[14] = v4;
    v5 = TString::operator NSString *(MEMORY[0x1E695EB98]);
    v23[15] = v5;
    v6 = TString::operator NSString *(MEMORY[0x1E695EB78]);
    v23[16] = v6;
    v7 = TString::operator NSString *(MEMORY[0x1E695EB28]);
    v23[17] = v7;
    v8 = TString::operator NSString *(MEMORY[0x1E695EB68]);
    v23[18] = v8;
    v9 = TString::operator NSString *(MEMORY[0x1E695EB18]);
    v23[19] = v9;
    v10 = TString::operator NSString *(MEMORY[0x1E695E3A8]);
    v23[20] = v10;
    TCFURLInfo::GetSizerPropertyKeys(void)::sizerKeys = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:21];
  }

  return TCFURLInfo::GetSizerPropertyKeys(void)::sizerKeys;
}

__CFArray *TCFURLInfo::GetCopyItemRequestedPropertyKeys(void)::$_0::operator()(TCFURLInfo *a1)
{
  v1 = *MEMORY[0x1E695E480];
  BasicInfoPropertyKeys = TCFURLInfo::GetBasicInfoPropertyKeys(a1);
  MutableCopy = CFArrayCreateMutableCopy(v1, 0, BasicInfoPropertyKeys);
  CFArrayAppendValue(MutableCopy, *MEMORY[0x1E695EAE8]);
  return MutableCopy;
}

uint64_t TCFURLInfo::GetBasicInfoPropertyKeys(TCFURLInfo *this)
{
  v39[39] = *MEMORY[0x1E69E9840];
  {
    v38 = TString::operator NSString *(MEMORY[0x1E695EBE8]);
    v39[0] = v38;
    v37 = TString::operator NSString *(MEMORY[0x1E695E448]);
    v39[1] = v37;
    v36 = TString::operator NSString *(MEMORY[0x1E695E2B0]);
    v39[2] = v36;
    v35 = TString::operator NSString *(MEMORY[0x1E695E2B8]);
    v39[3] = v35;
    v34 = TString::operator NSString *(MEMORY[0x1E695E2A0]);
    v39[4] = v34;
    v33 = TString::operator NSString *(MEMORY[0x1E695E2C0]);
    v39[5] = v33;
    v32 = TString::operator NSString *(MEMORY[0x1E695E2F8]);
    v39[6] = v32;
    v31 = TString::operator NSString *(MEMORY[0x1E695EAF0]);
    v39[7] = v31;
    v30 = TString::operator NSString *(MEMORY[0x1E695EA68]);
    v39[8] = v30;
    v29 = TString::operator NSString *(MEMORY[0x1E695EA50]);
    v39[9] = v29;
    v28 = TString::operator NSString *(MEMORY[0x1E695EA48]);
    v39[10] = v28;
    v27 = TString::operator NSString *(MEMORY[0x1E695EA00]);
    v39[11] = v27;
    v26 = TString::operator NSString *(MEMORY[0x1E695EA08]);
    v39[12] = v26;
    v25 = TString::operator NSString *(MEMORY[0x1E695EBB0]);
    v39[13] = v25;
    v24 = TString::operator NSString *(MEMORY[0x1E695EBB8]);
    v39[14] = v24;
    v23 = TString::operator NSString *(MEMORY[0x1E695EB10]);
    v39[15] = v23;
    v22 = TString::operator NSString *(MEMORY[0x1E695EB98]);
    v39[16] = v22;
    v21 = TString::operator NSString *(MEMORY[0x1E695EB40]);
    v39[17] = v21;
    v20 = TString::operator NSString *(MEMORY[0x1E695EB90]);
    v39[18] = v20;
    v19 = TString::operator NSString *(MEMORY[0x1E695EB80]);
    v39[19] = v19;
    v18 = TString::operator NSString *(MEMORY[0x1E695E348]);
    v39[20] = v18;
    v17 = TString::operator NSString *(MEMORY[0x1E695E320]);
    v39[21] = v17;
    v16 = TString::operator NSString *(MEMORY[0x1E695E318]);
    v39[22] = v16;
    v15 = TString::operator NSString *(MEMORY[0x1E695E340]);
    v39[23] = v15;
    v14 = TString::operator NSString *(MEMORY[0x1E695EB78]);
    v39[24] = v14;
    v2 = TString::operator NSString *(MEMORY[0x1E695EB28]);
    v39[25] = v2;
    v3 = TString::operator NSString *(MEMORY[0x1E695EB68]);
    v39[26] = v3;
    v4 = TString::operator NSString *(MEMORY[0x1E695EB18]);
    v39[27] = v4;
    v5 = TString::operator NSString *(MEMORY[0x1E695EB20]);
    v39[28] = v5;
    v6 = TString::operator NSString *(MEMORY[0x1E695EB60]);
    v39[29] = v6;
    v7 = TString::operator NSString *(MEMORY[0x1E695EBA0]);
    v39[30] = v7;
    v8 = TString::operator NSString *(MEMORY[0x1E695EB38]);
    v39[31] = v8;
    v9 = TString::operator NSString *(MEMORY[0x1E695E2A8]);
    v39[32] = v9;
    v10 = TString::operator NSString *(MEMORY[0x1E695E430]);
    v11 = *MEMORY[0x1E695DAF0];
    v39[33] = v10;
    v39[34] = v11;
    v12 = *MEMORY[0x1E695DAC8];
    v39[35] = *MEMORY[0x1E695DC28];
    v39[36] = v12;
    v13 = *MEMORY[0x1E695DC20];
    v39[37] = *MEMORY[0x1E695DBC0];
    v39[38] = v13;
    TCFURLInfo::GetBasicInfoPropertyKeys(void)::basicKeys = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:39];
  }

  return TCFURLInfo::GetBasicInfoPropertyKeys(void)::basicKeys;
}

void TCFURLInfo::Name(TString *__return_ptr a1@<X8>, TCFURLInfo *this@<X0>)
{
  if (!CFStringGetLength(*(this + 1)) && !*(this + 12))
  {
    TCFURLInfo::ForceNameFetch(this);
  }

  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *(this + 1));
}

void TCFURLInfo::DisplayName(TCFURLInfo *this@<X0>, TString *a2@<X8>)
{
  v4 = *(this + 26);
  if ((v4 & 0x100) != 0)
  {
    if (CFStringGetLength(*(this + 2)))
    {
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, *(this + 2));
      return;
    }

    v4 = *(this + 26);
  }

  if ((v4 & 0x100) != 0)
  {
    goto LABEL_16;
  }

  LOBYTE(v5) = v4;
  *(this + 26) = v4 | 0x100;
  if (!*this)
  {
    goto LABEL_16;
  }

  if ((v4 & 1) == 0 && (*(this + 54) & 4) == 0)
  {
    if ((TCFURLInfo::gShowAllExtensions & 1) == 0)
    {
      if (*(this + 12) <= 1)
      {
        TCFURLInfo::FetchProperties(this, 1);
        v5 = *(this + 26);
      }

      if ((v5 & 0x40) != 0)
      {
        StripSuffix(&cf1, this + 1);
        TString::operator=(this + 2, &cf1);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
        TString::TString(a2, this + 2);
        return;
      }
    }

    goto LABEL_16;
  }

  TCFURLInfo::StringProperty(&cf1, *this, *MEMORY[0x1E695EBC8]);
  if (CFEqual(cf1, *(this + 1)))
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
LABEL_16:
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a2, *(this + 1));
    return;
  }

  v6 = (this + 16);
  if (v6 != &cf1)
  {
    TString::SetStringRefAsImmutable(v6, cf1);
  }

  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v6->fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
}

void sub_1E5711324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **StripSuffix@<X0>(TString *__return_ptr a1@<X8>, TString *a2@<X0>)
{
  FileSuffix(&theString, a2);
  if (CFStringGetLength(theString))
  {
    Length = CFStringGetLength(a2->fString.fRef);
    v5 = CFStringGetLength(theString);
    TString::SubString(a1, a2, 0, Length - v5);
  }

  else
  {
    a1->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a1, a2->fString.fRef);
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E57113F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::GetType(CFURLRef *this)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695E2C0], &propertyValueTypeRefPtr, 0) && propertyValueTypeRefPtr && CFDataGetLength(propertyValueTypeRefPtr) == 32)
  {
    v1 = *CFDataGetBytePtr(propertyValueTypeRefPtr);
  }

  else
  {
    v1 = 0;
  }

  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  return v1;
}

void sub_1E5711490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

double TCFURLInfo::GetCreationDate(CFURLRef *this)
{
  propertyValueTypeRefPtr = 0;
  CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EA50], &propertyValueTypeRefPtr, 0);
  v3 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr)
  {
    v1 = MEMORY[0x1E692BF40](propertyValueTypeRefPtr);
  }

  else
  {
    v1 = 0.0;
  }

  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&v3);
  return v1;
}

uint64_t TCFURLInfo::GetOwner(CFURLRef *this)
{
  owner = 0;
  fileSec = 0;
  if (CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EAE8], &fileSec, 0) && fileSec)
  {
    CFFileSecurityGetOwner(fileSec, &owner);
    v1 = owner;
  }

  else
  {
    v1 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&fileSec);
  return v1;
}

uint64_t TCFURLInfo::GetUserGroups(CFURLRef *this)
{
  group = 0;
  fileSec = 0;
  if (CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EAE8], &fileSec, 0) && fileSec)
  {
    CFFileSecurityGetGroup(fileSec, &group);
    v1 = group;
  }

  else
  {
    v1 = 0;
  }

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&fileSec);
  return v1;
}

id TCFURLInfo::GetNumberProperty(TCFURLInfo *this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    propertyValueTypeRefPtr = 0;
    if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0))
    {
      v3 = propertyValueTypeRefPtr;
      if (propertyValueTypeRefPtr)
      {
        propertyValueTypeRefPtr = 0;
        TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&propertyValueTypeRefPtr);
        goto LABEL_7;
      }
    }

    TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_1E57116B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

id TCFURLInfo::ObjectProperty(TCFURLInfo *this, const __CFString *a2, const __CFString *a3)
{
  propertyValueTypeRefPtr = 0;
  if (this)
  {
    if (a3)
    {
      CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0);
    }

    else
    {
      _CFURLCopyResourcePropertyForKeyFromCache();
    }
  }

  v3 = propertyValueTypeRefPtr;

  return v3;
}

uint64_t TCFURLInfo::IsClone(const void **this, unint64_t *a2, BOOL *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (*(this + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  if ((*(this + 54) & 1) == 0)
  {
    return 0;
  }

  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EBE0], &propertyValueTypeRefPtr, 0) && ([propertyValueTypeRefPtr BOOLValue] & 1) != 0)
  {
    number = 0;
    if (a3 || !CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EA70], &number, 0))
    {
      TCFURLInfo::Path(this, &theString);
      if (CFStringGetLength(theString))
      {
        v12 = 0;
        v13 = 0;
        v7 = TString::c_str(&theString);
        v8 = fsctl(v7, 0x40104A0EuLL, &v12, 0);
        v9 = v12;
        v10 = v8 < 0 || v12 == 0;
        v6 = !v10;
        if (!v10)
        {
          if (a2)
          {
            *a2 = v13;
          }

          if (a3 && (v9 & 2) != 0)
          {
            *a3 = 1;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    }

    else
    {
      if (a2)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, a2);
      }

      v6 = 1;
    }

    TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&number);
  }

  else
  {
    v6 = 0;
  }

  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  return v6;
}

void sub_1E57118BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(va);
  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::FileSystemRepresentationRelativeToSource(TCFURLInfo **this, const TString *a2, TString *a3)
{
  TString::SetStringRefAsImmutable(a3, 0);
  TCFURLInfo::FileSystemRepresentation(&theString, *this, 1);
  if (CFStringGetLength(theString))
  {
    cf = a2;
    v10 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v10, theString);
    v11.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v11, v10);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10);
    v6 = TString::BeginsWith(&v11, a2);
    if (v6)
    {
      Length = CFStringGetLength(a2->fString.fRef);
      TString::SubStringFrom(&cf, &v11, Length);
      if (&cf != a3)
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a3->fString.fRef, &cf);
        CFRetain(&stru_1F5F42870);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = &stru_1F5F42870;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
  }

  else
  {
    v6 = 0;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v6;
}

void sub_1E5711A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::CreateCFURLInfoWithFileSystemRepresentationRelativeToBase(TCFURLInfo **a1, const TString *a2, const __CFString **a3, void *a4)
{
  TCFURLInfo::Path(a1, &v15);
  v7 = *a3;
  v16.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
  CFRelease(&stru_1F5F42870);
  v16.fString.fRef = MutableCopy;
  TString::Append(&v16, a2);
  AppendPath(&cf, &v15, &v16);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
  v9 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (cf && (v10 = CFRetain(cf), (v11 = static_cf_cast<__CFString const*,void const*>(v10)) != 0))
  {
    v12 = CFAutorelease(v11);
    v13 = static_cf_cast<__CFString const*,void const*>(v12);
  }

  else
  {
    v13 = 0;
  }

  v16.fString.fRef = CFURLCreateWithFileSystemPath(0, v13, kCFURLPOSIXPathStyle, 1u);
  if (v16.fString.fRef)
  {
    _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v16.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  return 4294959236;
}

void sub_1E5711BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

CFIndex TCFURLInfo::GetVolumeInfoRecord(CFURLRef *a1, unsigned int *a2)
{
  if (*a1)
  {
    v3 = CFURLCreateFilePathURL(0, *a1, 0);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  VolumeInfoRecord = TCFURLInfo::GetVolumeInfoRecord(v3, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v6);
  return VolumeInfoRecord;
}

void sub_1E5711C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::CheckDestinationModificationDates(CFURLRef *a1, CFURLRef **a2, char a3, uint64_t a4, char a5)
{
  propertyValueTypeRefPtr = 0;
  v9 = *MEMORY[0x1E695EA48];
  CFURLCopyResourcePropertyForKey(*a1, *MEMORY[0x1E695EA48], &propertyValueTypeRefPtr, 0);
  v10 = propertyValueTypeRefPtr;
  v19 = propertyValueTypeRefPtr;
  v11 = *a2;
  if (*a2)
  {
    propertyValueTypeRefPtr = 0;
    CFURLCopyResourcePropertyForKey(*v11, v9, &propertyValueTypeRefPtr, 0);
    v10 = v19;
    v12 = propertyValueTypeRefPtr;
  }

  else
  {
    v12 = 0;
  }

  v18 = v12;
  if (v10)
  {
    v13 = (v12 != 0) + 1;
  }

  else
  {
    v13 = v12 != 0;
  }

  if (!v13)
  {
    goto LABEL_22;
  }

  if (v13 == 1)
  {
    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = CFDateCompare(v10, v12, 0);
    if (a3)
    {
      goto LABEL_22;
    }
  }

  if (v13 == 1)
  {
    v14 = MEMORY[0x1E692BF40](v19);
    MEMORY[0x1E692BF40](v18);
    v16 = *&a4;
    if ((a5 & 1) == 0)
    {
      v16 = 1.0;
    }

    v13 = v14 - v15 >= v16 || floor(v14 / v16) != v15 / v16;
  }

LABEL_22:
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&v18);
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&v19);
  return v13;
}

void sub_1E5711E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(va);
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::XattrValuesEqual(TCFURLInfo *this, TCFURLInfo *a2, TCFURLInfo *a3, CFStringRef theString, __CFString *a5)
{
  v13 = 0;
  v14 = 0;
  v8 = TCFURLInfo::CopyExtendedAttribute(a2, theString, a5, &v14, a5);
  v10 = TCFURLInfo::CopyExtendedAttribute(a3, theString, a5, &v13, v9);
  if (v8 == -1427 && v10 == -1427)
  {
    v11 = 1;
  }

  else if (v8 | v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = CFEqual(v14, v13) != 0;
  }

  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v13);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v14);
  return v11;
}

void sub_1E5711EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&a9);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&a10);
  _Unwind_Resume(a1);
}

void ListXattrs(TString *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::vector<char>::vector[abi:ne200100](&namebuff, 1024);
  v6 = TString::c_str(a1);
  v7 = listxattr(v6, namebuff.__begin_, 0x400uLL, a2);
  if (v7 == -1)
  {
    if (*__error() != 34 || (v25 = TString::c_str(a1), v26 = listxattr(v25, 0, 0, a2), v27 = v26, v26 < 1))
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      goto LABEL_25;
    }

    if (v26 <= (namebuff.__end_ - namebuff.__begin_))
    {
      if (v26 < (namebuff.__end_ - namebuff.__begin_))
      {
        namebuff.__end_ = &namebuff.__begin_[v26];
      }
    }

    else
    {
      std::vector<char>::__append(&namebuff, v26 - (namebuff.__end_ - namebuff.__begin_));
    }

    v28 = TString::c_str(a1);
    v7 = listxattr(v28, namebuff.__begin_, v27, a2);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v7 >= 1)
  {
    begin = namebuff.__begin_;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, begin);
      v10 = *(a3 + 8);
      v9 = *(a3 + 16);
      if (v10 >= v9)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a3) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v32.__end_cap_.__value_ = a3;
        if (v15)
        {
          std::allocator<std::string>::allocate_at_least[abi:ne200100](a3, v15);
        }

        v16 = 24 * v12;
        v17 = *__p;
        *(v16 + 16) = v30;
        *v16 = v17;
        __p[1] = 0;
        v30 = 0;
        __p[0] = 0;
        v18 = 24 * v12 + 24;
        v19 = *(a3 + 8) - *a3;
        v20 = 24 * v12 - v19;
        memcpy((v16 - v19), *a3, v19);
        v21 = *a3;
        *a3 = v20;
        *(a3 + 8) = v18;
        v22 = *(a3 + 16);
        *(a3 + 16) = 0;
        v32.__end_ = v21;
        v32.__end_cap_.__value_ = v22;
        v32.__first_ = v21;
        v32.__begin_ = v21;
        std::__split_buffer<std::string>::~__split_buffer(&v32);
        v23 = SHIBYTE(v30);
        *(a3 + 8) = v18;
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v11 = *__p;
        *(v10 + 16) = v30;
        *v10 = v11;
        *(a3 + 8) = v10 + 24;
      }

      begin += strlen(begin) + 1;
      v24 = namebuff.__begin_;
    }

    while (begin < &namebuff.__begin_[v7]);
    if (namebuff.__begin_)
    {
      goto LABEL_18;
    }

    return;
  }

LABEL_25:
  v24 = namebuff.__begin_;
  if (namebuff.__begin_)
  {
LABEL_18:
    namebuff.__end_ = v24;
    operator delete(v24);
  }
}

void sub_1E5712168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xattr_intent(const char *a1, xattr_operation_intent_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  {
    {
      TString::TString(&v7, "com.apple.favorite-rank.number#PS");
      xattr_intent(char const*,unsigned int)::sharedXATTRs = 0;
      qword_1ECFF4748 = 0;
      qword_1ECFF4750 = 0;
      std::vector<TString>::__init_with_size[abi:ne200100]<TString const*,TString const*>(&xattr_intent(char const*,unsigned int)::sharedXATTRs, &v7, &v8, 1uLL);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
    }
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    return xattr_preserve_for_intent(a1, a2);
  }

  v4 = xattr_intent(char const*,unsigned int)::sharedXATTRs;
  v5 = qword_1ECFF4748;
  if (xattr_intent(char const*,unsigned int)::sharedXATTRs != qword_1ECFF4748)
  {
    while (!operator==(v4, a1))
    {
      if (++v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = qword_1ECFF4748;
  }

  if (v4 == v5)
  {
    return xattr_preserve_for_intent(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_1E57122E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  _Unwind_Resume(a1);
}

__CFSet *TCFURLInfo::CopyXattrNamesForCompare(TCFURLInfo *this, const char *a2)
{
  TString::TString(&v50, a2);
  ListXattrs(&v50, 1, &v51);
  v3 = v51;
  v2 = v52;
  if (v51 != v52)
  {
    Mutable = 0;
    v5 = *MEMORY[0x1E695E480];
    while (1)
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, *v3, *(v3 + 1));
      }

      else
      {
        v6 = *v3;
        v49.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v49.__r_.__value_.__l.__data_ = v6;
      }

      v7 = (v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v49 : v49.__r_.__value_.__r.__words[0];
      if (xattr_intent(v7, 1u) == 1)
      {
        break;
      }

LABEL_116:
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
      if (v3 == v2)
      {
        goto LABEL_121;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, "com.apple.mtm.");
    std::string::basic_string[abi:ne200100]<0>(v44, "com.apple.acl.text.");
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v49.__r_.__value_.__l.__size_ != 20)
      {
        goto LABEL_22;
      }

      v8 = v49.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) != 20)
      {
        goto LABEL_22;
      }

      v8 = &v49;
    }

    v9 = v8->__r_.__value_.__r.__words[0];
    size = v8->__r_.__value_.__l.__size_;
    v11 = v8->__r_.__value_.__r.__words[2];
    if (v9 == 0x6C7070612E6D6F63 && size == 0x6E61726175712E65 && v11 == 1701734772)
    {
      goto LABEL_112;
    }

LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.metadata:_kTimeMachine");
    v14 = v43;
    if ((v43 & 0x80u) == 0)
    {
      v15 = v43;
    }

    else
    {
      v15 = __p[1];
    }

    v16 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v15 == -1)
      {
        goto LABEL_122;
      }

      v18 = v49.__r_.__value_.__r.__words[0];
      if (v49.__r_.__value_.__l.__size_ >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v49.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (v15 == -1)
      {
        goto LABEL_122;
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      v18 = &v49;
    }

    if ((v43 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (memcmp(v18, v19, v17) || v17 < v15)
    {
      if ((v16 & 0x80000000) != 0)
      {
        v22 = v49.__r_.__value_.__l.__size_;
        if (v49.__r_.__value_.__l.__size_ == 42 && !memcmp(v49.__r_.__value_.__l.__data_, "com.apple.metadata:_kMDItemTimeMachinePath", 0x2AuLL))
        {
          goto LABEL_80;
        }

        v21 = v48;
        v20 = v46;
        if ((v48 & 0x8000000000000000) != 0)
        {
          v21 = v47;
          if (v47 == -1)
          {
            goto LABEL_122;
          }

          LODWORD(v23) = 1;
        }

        else
        {
          LODWORD(v23) = 0;
        }

        if (v22 >= v21)
        {
          v22 = v21;
        }

        v24 = v49.__r_.__value_.__r.__words[0];
      }

      else
      {
        v20 = v46;
        if ((v48 & 0x8000000000000000) != 0)
        {
          v21 = v47;
          if (v47 == -1)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v21 = v48;
        }

        v23 = v48 >> 63;
        if (v16 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v16;
        }

        v24 = &v49;
      }

      if (v23)
      {
        v25 = v20;
      }

      else
      {
        v25 = &v46;
      }

      if (memcmp(v24, v25, v22) || v22 < v21)
      {
        v26 = (v45 & 0x80u) == 0 ? v45 : v44[1];
        if ((v16 & 0x80000000) != 0)
        {
          if (v26 == -1)
          {
LABEL_122:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v28 = v49.__r_.__value_.__r.__words[0];
          v27 = v49.__r_.__value_.__l.__size_ >= v26 ? v26 : v49.__r_.__value_.__l.__size_;
        }

        else
        {
          if (v26 == -1)
          {
            goto LABEL_122;
          }

          v27 = v16 >= v26 ? v26 : v16;
          v28 = &v49;
        }

        v29 = (v45 & 0x80u) == 0 ? v44 : v44[0];
        if (memcmp(v28, v29, v27) || v27 < v26)
        {
          std::string::basic_string[abi:ne200100]<0>(v40, "com.apple.timemachine.private.");
          v31 = v41;
          v32 = v40[0];
          if ((v41 & 0x80u) == 0)
          {
            v33 = v41;
          }

          else
          {
            v33 = v40[1];
          }

          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (v33 == -1)
            {
LABEL_123:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v35 = v49.__r_.__value_.__r.__words[0];
            if (v49.__r_.__value_.__l.__size_ >= v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = v49.__r_.__value_.__l.__size_;
            }
          }

          else
          {
            if (v33 == -1)
            {
              goto LABEL_123;
            }

            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) >= v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
            }

            v35 = &v49;
          }

          if ((v41 & 0x80u) == 0)
          {
            v36 = v40;
          }

          else
          {
            v36 = v40[0];
          }

          v30 = memcmp(v35, v36, v34) || v34 < v33;
          if (v31 < 0)
          {
            operator delete(v32);
          }

          if ((v43 & 0x80) == 0)
          {
LABEL_81:
            if (!v30)
            {
              goto LABEL_112;
            }

            goto LABEL_109;
          }

LABEL_108:
          operator delete(__p[0]);
          if (!v30)
          {
LABEL_112:
            if (v45 < 0)
            {
              operator delete(v44[0]);
            }

            if (v48 < 0)
            {
              operator delete(v46);
            }

            goto LABEL_116;
          }

LABEL_109:
          v38 = CFStringCreateWithCString(v5, v7, 0x8000100u);
          __p[0] = v38;
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]);
            v38 = __p[0];
          }

          CFSetAddValue(Mutable, v38);
          TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(__p);
          goto LABEL_112;
        }
      }
    }

LABEL_80:
    v30 = 0;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_108;
  }

  Mutable = 0;
LABEL_121:
  v49.__r_.__value_.__r.__words[0] = &v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v50.fString.fRef);
  return Mutable;
}

void sub_1E571274C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, const void *a39)
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

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  a33 = (v39 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a39);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::XattrsEqual(TCFURLInfo **a1, TCFURLInfo ***a2)
{
  v25 = *MEMORY[0x1E69E9840];
  TCFURLInfo::FileSystemRepresentation(&v23, *a1, 1);
  TCFURLInfo::FileSystemRepresentation(&v22, **a2, 1);
  v3 = TString::c_str(&v23);
  theSet = TCFURLInfo::CopyXattrNamesForCompare(v3, v3);
  v4 = TString::c_str(&v22);
  v5 = TCFURLInfo::CopyXattrNamesForCompare(v4, v4);
  v20 = v5;
  if (!theSet)
  {
    Count = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Count = CFSetGetCount(theSet);
  v5 = v20;
  if (v20)
  {
LABEL_5:
    v5 = CFSetGetCount(v5);
  }

LABEL_6:
  if (Count == v5)
  {
    if (Count < 1)
    {
      v14 = 1;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = theSet;
      v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            if (!CFSetContainsValue(v20, v11))
            {

LABEL_22:
              v14 = 0;
              goto LABEL_23;
            }

            v12 = TString::c_str(&v23);
            v13 = TString::c_str(&v22);
            LODWORD(v12) = TCFURLInfo::XattrValuesEqual(v13, v12, v13, v11, 1);

            if (!v12)
            {
              goto LABEL_22;
            }
          }

          v8 = [(__CFSet *)v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
          v14 = 1;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 1;
      }

LABEL_23:
    }
  }

  else
  {
    v14 = 0;
  }

  TAutoRef<__CFSet *,TRetainReleasePolicy<__CFSet *>>::~TAutoRef(&v20);
  TAutoRef<__CFSet *,TRetainReleasePolicy<__CFSet *>>::~TAutoRef(&theSet);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
  return v14;
}

void sub_1E5712A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va3, a17);
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v21 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v23 = va_arg(va3, const void *);

  TAutoRef<__CFSet *,TRetainReleasePolicy<__CFSet *>>::~TAutoRef(va);
  TAutoRef<__CFSet *,TRetainReleasePolicy<__CFSet *>>::~TAutoRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::LessThan(TCFURLInfo *a1, TCFURLInfo **a2)
{
  TCFURLInfo::Name(&v6, a1);
  TCFURLInfo::Name(&v5, *a2);
  v3 = TString::StringCompare(&v6, &v5) == kCFCompareLessThan;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  return v3;
}

void sub_1E5712AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

unint64_t TCFURLInfo::IsDatalessNow(CFURLRef url, const __CFURL *a2)
{
  if (!url)
  {
    return 0;
  }

  v2 = CFURLCreateFilePathURL(0, url, 0);
  v6 = v2;
  if (v2)
  {
    v4 = (TCFURLInfo::GetNumericalProperty(v2, *MEMORY[0x1E695E2A8], v3) >> 30) & 1;
  }

  else
  {
    v4 = 0;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v6);
  return v4;
}

void sub_1E5712B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::ShouldSkip(const void **this, uint64_t a2, int a3)
{
  if (*(this + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  v6 = *(this + 26);
  if (v6)
  {
    return 0;
  }

  if (a3)
  {
    if (*(this + 12) <= 1)
    {
      TCFURLInfo::FetchProperties(this, 1);
      v6 = *(this + 26);
    }

    if ((v6 & 0x1000) == 0)
    {
      return 1;
    }
  }

  if (TCFURLInfo::GetType(this) == 1651666795 && (*(this + 26) & 0x400) == 0)
  {
    return 1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v8 = *MEMORY[0x1E695E2B8];
  NumericalProperty = TCFURLInfo::GetNumericalProperty(*this, *MEMORY[0x1E695E2B8], v7);
  if (NumericalProperty + TCFURLInfo::GetNumericalProperty(*this, *MEMORY[0x1E695EAF0], v10) > a2)
  {
    return 1;
  }

  return TCFURLInfo::GetNumericalProperty(*this, v8, v11) > a2;
}

uint64_t TCFURLInfo::EffectiveUserCanRead(const void **this, BOOL *a2)
{
  if (!a2)
  {
    return 0;
  }

  *a2 = 1;
  if (TCFURLInfo::gDSHelperRunning == 1)
  {
    v4 = TCFURLInfo::guidToUse;
  }

  else
  {
    v4 = getuid();
  }

  if (*(this + 12) <= 1)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  v5 = (*(this + 26) >> 12) & 1;
  *a2 = TCFURLInfo::GetOwner(this) == v4;
  return v5;
}

uint64_t TCFURLInfo::GetParent(const void **this, void *a2)
{
  if (*(this + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  if ((*(this + 26) & 0x80) != 0 || (v4 = *this) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    return 0;
  }

  else
  {
    propertyValueTypeRefPtr = 0;
    CFURLCopyResourcePropertyForKey(v4, *MEMORY[0x1E695EBF0], &propertyValueTypeRefPtr, 0);
    if (propertyValueTypeRefPtr)
    {
      _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v6 = 4294959236;
    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  }

  return v6;
}

void sub_1E5712E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::SetImmutableAndAppendFlags(id *a1, int a2)
{
  if (!*a1)
  {
    return 4294959238;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  theDict = Mutable;
  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E695E4C0];
  if (a2)
  {
    v8 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695EB90], v8);
  if ((a2 & 0x100) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  CFDictionaryAddValue(v5, *MEMORY[0x1E695EB80], v9);
  if ((*&a2 & 0x10000) != 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  CFDictionaryAddValue(theDict, *MEMORY[0x1E695E348], v10);
  if ((a2 & 0x1000000) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  CFDictionaryAddValue(theDict, *MEMORY[0x1E695E320], v11);
  if (TCFURLInfo::SetResourceProperties(a1, theDict))
  {
    v12 = 4294967260;
  }

  else
  {
    v12 = 0;
  }

  TAutoRef<__CFDictionary *,TRetainReleasePolicy<__CFDictionary *>>::~TAutoRef(&theDict);
  return v12;
}

void sub_1E5712F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFDictionary *,TRetainReleasePolicy<__CFDictionary *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

CFIndex TCFURLInfo::SetResourceProperties(id *this, const __CFDictionary *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (!v3)
  {
    return 4294959238;
  }

  error = 0;
  if (!CFURLSetResourcePropertiesForKeys(v3, a2, &error))
  {
    v5 = LogObj(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *this;
      v7 = SanitizedURL(v6);
      if (*(this + 12) <= 0)
      {
        TCFURLInfo::FetchProperties(this, 1);
      }

      v8 = (*(this + 26) >> 4) & 1;
      *buf = 138544130;
      v17 = v7;
      v18 = 2114;
      v19 = a2;
      v20 = 1024;
      v21 = v8;
      v22 = 2114;
      v23 = error;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "CFURLSetResourcePropertiesForKeys failed %{public}@, %{public}@, locked=%d error: %{public}@", buf, 0x26u);
    }

    v10 = TCFURLInfo::TranslateCFError(error, v9);
    if (v10 != -5000)
    {
      goto LABEL_12;
    }

    v11 = LogObj(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(__CFDictionary *)a2 allKeys];
      v13 = [v12 description];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_INFO, "Ignoring SetResourcePropertiesForKeys error due to permissions error when setting keys %{public}@", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_12:
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
  return v10;
}

void sub_1E571315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::IsTrash(TCFURLInfo *this)
{
  {
    operator new();
  }

  {
    operator new();
  }

  TCFURLInfo::Name(&cf1, this);
  if (CFEqual(cf1, *TCFURLInfo::IsTrash(void)const::trashName))
  {
    v2 = 1;
  }

  else
  {
    TCFURLInfo::Name(&v4, this);
    v2 = CFEqual(v4, *TCFURLInfo::IsTrash(void)const::trashesName) != 0;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v4);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  return v2;
}

void sub_1E571330C(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::TranslateFileProviderError(TCFURLInfo *this, __CFError *a2)
{
  Code = CFErrorGetCode(this);
  if ((Code + 1004) > 4)
  {
    return 4294959279;
  }

  else
  {
    return *(&unk_1E5794448 + Code + 1004);
  }
}

CFIndex TCFURLInfo::OSStatusFromCFErrorShallow(TCFURLInfo *this, __CFError *a2)
{
  Domain = CFErrorGetDomain(this);
  cf1 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf1, Domain);
  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v15, *MEMORY[0x1E695E640]);
  LODWORD(Domain) = CFEqual(cf1, v15.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
  if (Domain)
  {
    Code = CFErrorGetCode(this);
    v6 = TCFURLInfo::TranslatePOSIXError(Code, 0, v5);
  }

  else
  {
    v15.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v15, *MEMORY[0x1E695E638]);
    v8 = CFEqual(cf1, v15.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
    if (v8)
    {
      v7 = CFErrorGetCode(this);
      goto LABEL_6;
    }

    FileProviderErrorDomain(&v15);
    if (CFEqual(cf1, v15.fString.fRef))
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
    }

    else
    {
      cf2 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&cf2, *MEMORY[0x1E696A978]);
      v11 = CFEqual(cf1, cf2);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
      if (!v11)
      {
        v15.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v15, *MEMORY[0x1E695E628]);
        v12 = CFEqual(cf1, v15.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
        if (v12)
        {
          v13 = CFErrorGetCode(this);
          if (v13 > 639)
          {
            if (v13 > 4352)
            {
              if (v13 == 4353 || v13 == 4355)
              {
                v7 = 4294959289;
                goto LABEL_6;
              }
            }

            else
            {
              if (v13 == 640)
              {
                v7 = 4294967262;
                goto LABEL_6;
              }

              if (v13 == 3072)
              {
                v7 = 4294967168;
                goto LABEL_6;
              }
            }
          }

          else
          {
            v7 = 4294967253;
            if (v13 > 259)
            {
              if (v13 == 260)
              {
                goto LABEL_6;
              }

              if (v13 == 516)
              {
                v7 = 4294967248;
                goto LABEL_6;
              }
            }

            else
            {
              if (v13 == 4)
              {
                goto LABEL_6;
              }

              if (v13 == 257)
              {
                v7 = 4294967242;
                goto LABEL_6;
              }
            }
          }
        }

        v7 = 4294967260;
        goto LABEL_6;
      }
    }

    v6 = TCFURLInfo::TranslateFileProviderError(this, v10);
  }

  v7 = v6;
LABEL_6:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  return v7;
}

void sub_1E5713610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

uint64_t *TCFURLInfo::GetPropertyStoreName(TCFURLInfo *this)
{
  {
    operator"" _t(&TCFURLInfo::GetPropertyStoreName(void)::propertyStoreName, ".DS_Store", 9);
  }

  return &TCFURLInfo::GetPropertyStoreName(void)::propertyStoreName;
}

void TCFURLInfo::TranslateCFError(__CFError *)::$_0::operator()()
{
  TCFURLInfo::TranslateCFError(__CFError *)::ignoredDirectories = 0;
  *algn_1ECFF4788 = 0;
  qword_1ECFF4790 = 0;
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Applications"];
  v5 = [v0 fileURLWithPath:v2 isDirectory:1];

  std::vector<NSURL * {__strong}>::push_back[abi:ne200100](&TCFURLInfo::TranslateCFError(__CFError *)::ignoredDirectories, &v5);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Developer" isDirectory:1];
  std::vector<NSURL * {__strong}>::push_back[abi:ne200100](&TCFURLInfo::TranslateCFError(__CFError *)::ignoredDirectories, &v4);
  v3 = [v4 URLByAppendingPathComponent:@"Applications"];
  std::vector<NSURL * {__strong}>::push_back[abi:ne200100](&TCFURLInfo::TranslateCFError(__CFError *)::ignoredDirectories, &v3);
}

uint64_t TCFURLInfo::CopySecurityForCopy(uint64_t a1, int a2, void *a3, int a4, int a5, int a6)
{
  *a3 = 0;
  propertyValueTypeRefPtr = 0;
  cf = 0;
  v12 = a2 == 1 || a2 == 4;
  if (a6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = CFURLCopyResourcePropertyForKey(*a1, *MEMORY[0x1E695EAE8], &propertyValueTypeRefPtr, 0);
  v15 = propertyValueTypeRefPtr;
  if (!v14)
  {
    v21 = -8058;
    if (propertyValueTypeRefPtr)
    {
      goto LABEL_59;
    }

LABEL_26:
    Copy = CFFileSecurityCreate(0);
    v23 = cf;
    if (cf)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (!propertyValueTypeRefPtr)
  {
    v21 = -8058;
    goto LABEL_58;
  }

  cf = CFFileSecurityCreateCopy(0, propertyValueTypeRefPtr);
  accessControlList = 0;
  if (CFFileSecurityCopyAccessControlList(cf, &accessControlList))
  {
    if (a5)
    {
      entry_p = 0;
      if (!acl_get_entry(accessControlList, 0, &entry_p))
      {
        if (*(a1 + 48) <= 0)
        {
          TCFURLInfo::FetchProperties(a1, 1);
        }

        entry_d = 0;
        entry = acl_get_entry(accessControlList, 0, &entry_d);
        v19 = 0;
        v20 = 0;
        while (!entry)
        {
          flagset_p = 0;
          tag_type_p = ACL_UNDEFINED_TAG;
          v41 = 0;
          if (!acl_get_tag_type(entry_d, &tag_type_p) && !acl_get_permset(entry_d, &v41) && !acl_get_flagset_np(entry_d, &flagset_p))
          {
            if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
            {
              v19 = acl_delete_entry(accessControlList, entry_d);
              v20 = 1;
            }
          }

          entry = acl_get_entry(accessControlList, -1, &entry_d);
        }

        if (!v19)
        {
          if (a2 == 4 || a2 == 1)
          {
            v37 = accessControlList;
            if (*(a1 + 48) <= 0)
            {
              TCFURLInfo::FetchProperties(a1, 1);
            }

            v19 = TCFURLInfo::AddBackupGuardACE(v37, (*(a1 + 52) & 1));
            v20 = 1;
          }

          else
          {
            v19 = 0;
          }

          if (!v19 && a4)
          {
            v38 = propertyValueTypeRefPtr;
            if (*(a1 + 48) <= 0)
            {
              TCFURLInfo::FetchProperties(a1, 1);
            }

            if ((TCFURLInfo::ContainsCopyACE(v38, (*(a1 + 52) & 1)) & 1) == 0)
            {
              v39 = accessControlList;
              if (*(a1 + 48) <= 0)
              {
                TCFURLInfo::FetchProperties(a1, 1);
              }

              TCFURLInfo::AddCopyACE(v39, (*(a1 + 52) & 1));
            }

            v19 = 0;
            v20 = 1;
          }
        }

        v21 = TCFURLInfo::TranslateACLError(v19, v17, v18);
        if (((v21 == 0) & v20) == 1)
        {
          if (TCFURLInfo::FileSecuritySetAccessControlList(cf, accessControlList, v40))
          {
            v21 = 0;
          }

          else
          {
            v21 = -50;
          }
        }

        goto LABEL_49;
      }

LABEL_48:
      v21 = 0;
      goto LABEL_49;
    }

    v25 = CFFileSecuritySetAccessControlList(cf, 1);
LABEL_37:
    if (v25)
    {
      v21 = 0;
    }

    else
    {
      v21 = -50;
    }

    goto LABEL_49;
  }

  if (a4)
  {
    LOWORD(entry_p) = 0;
    CFFileSecurityGetMode(cf, &entry_p);
    if (*(a1 + 48) <= 0)
    {
      TCFURLInfo::FetchProperties(a1, 1);
    }

    if (*(a1 + 52))
    {
      v24 = 448;
    }

    else
    {
      v24 = 384;
    }

    LOWORD(entry_p) = v24 | entry_p;
    v25 = CFFileSecuritySetMode(cf, entry_p);
    goto LABEL_37;
  }

  if (!v13)
  {
    goto LABEL_48;
  }

  v26 = acl_init(1);
  entry_p = v26;
  if (*(a1 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(a1, 1);
  }

  v27 = TCFURLInfo::AddBackupGuardACE(v26, (*(a1 + 52) & 1));
  v21 = TCFURLInfo::TranslateACLError(v27, v28, v29);
  if (!v21)
  {
    if (TCFURLInfo::FileSecuritySetAccessControlList(cf, entry_p, v30))
    {
      v21 = 0;
    }

    else
    {
      v21 = -50;
    }
  }

  TACLRef<_acl *>::~TACLRef(&entry_p);
LABEL_49:
  if (v21 | a2)
  {
    TACLRef<_acl *>::~TACLRef(&accessControlList);
    if (!v21)
    {
LABEL_56:
      v33 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    if (geteuid())
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v32 = CFFileSecurityClearProperties(cf, v31);
    TACLRef<_acl *>::~TACLRef(&accessControlList);
    if (v32)
    {
      goto LABEL_56;
    }

    v21 = -50;
  }

LABEL_58:
  v15 = propertyValueTypeRefPtr;
  if (!propertyValueTypeRefPtr)
  {
    goto LABEL_26;
  }

LABEL_59:
  Copy = CFFileSecurityCreateCopy(0, v15);
  v23 = cf;
  if (cf)
  {
LABEL_60:
    CFRelease(v23);
  }

LABEL_61:
  cf = Copy;
  if (*(a1 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(a1, 1);
    Copy = cf;
  }

  if (*(a1 + 52))
  {
    v34 = 448;
  }

  else
  {
    v34 = 384;
  }

  if (CFFileSecuritySetMode(Copy, v34))
  {
    v33 = v21;
  }

  else
  {
    v33 = 4294967246;
  }

LABEL_69:
  v35 = cf;
  cf = 0;
  *a3 = v35;
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&propertyValueTypeRefPtr);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&cf);
  return v33;
}

void sub_1E5713CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, void *);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  TACLRef<_acl *>::~TACLRef(va);
  TACLRef<_acl *>::~TACLRef(va1);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va2);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va3);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::TranslateACLError(uint64_t this, int a2, const char *a3)
{
  if (this <= 21)
  {
    if (!this)
    {
      return this;
    }

    if (this == 2)
    {
      return 4294965868;
    }

    return TCFURLInfo::TranslatePOSIXError(this, 0, a3);
  }

  if (this != 22)
  {
    if (this == 93)
    {
      return 4294965869;
    }

    return TCFURLInfo::TranslatePOSIXError(this, 0, a3);
  }

  return 4294967246;
}

uint64_t TCFURLInfo::TranslateXAttrError(uint64_t this, int a2, const char *a3)
{
  if (this)
  {
    if (this == 93)
    {
      return 4294965869;
    }

    else if (this == 45)
    {
      return 4294965870;
    }

    else
    {
      return TCFURLInfo::TranslatePOSIXError(this, 0, a3);
    }
  }

  return this;
}

CFBundleRef DesktopServicesCFBundle(void)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.desktopservices");
  v5 = BundleWithIdentifier;
  if (BundleWithIdentifier)
  {
    v1 = BundleWithIdentifier;
    CFRetain(BundleWithIdentifier);
  }

  else
  {
    v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PrivateFrameworks/DesktopServicesPriv.framework" isDirectory:1];
    v4 = CFBundleCreate(0, v2);
    TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::operator=<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>(&v5, &v4);
    TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TRef(&v4);

    v1 = v5;
  }

  v5 = 0;
  TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TRef(&v5);
  return v1;
}

void sub_1E5713E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::operator=<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

const void **TCFURLInfo::LocalizedCopyErrorMessage@<X0>(TCFURLInfo *this@<X0>, const void **a2@<X1>, TString *a3@<X8>)
{
  if (this > -1310)
  {
    if (this > -44)
    {
      if (this <= -36)
      {
        if (this != -43)
        {
          if (this != -37)
          {
            if (this == -36)
            {
              v6 = 0;
              v7 = 1;
              v8 = @"IOError";
              goto LABEL_44;
            }

            goto LABEL_43;
          }

LABEL_38:
          v6 = 0;
          v7 = 1;
          v8 = @"BadName";
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      if (this == -35)
      {
        goto LABEL_30;
      }

      if (this != -34)
      {
        if (this == 100006)
        {
          v7 = 0;
          v6 = 0;
          v8 = @"DeviceDisappeared";
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_37:
      v7 = 0;
      v6 = 0;
      v8 = @"DiskFull";
      goto LABEL_44;
    }

    if (this <= -62)
    {
      if (this == -1309)
      {
        v7 = 0;
        v6 = 0;
        v8 = @"FileTooBig";
        goto LABEL_44;
      }

      if (this != -120)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (this == -61)
    {
      v7 = 0;
      v6 = 0;
      v8 = @"WritePermission";
      goto LABEL_44;
    }

    if (this == -48)
    {
      v6 = 0;
      v7 = 1;
      v8 = @"DuplicateFileName";
      goto LABEL_44;
    }

    if (this != -47)
    {
      goto LABEL_43;
    }

LABEL_18:
    v7 = 0;
    v6 = 0;
    v8 = @"FileBusy";
    goto LABEL_44;
  }

  if (this > -5009)
  {
    if (this <= -1430)
    {
      if (this != -5008)
      {
        if (this == -5000)
        {
          v7 = 0;
          v6 = 0;
          v8 = @"AccessDenied";
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    switch(this)
    {
      case 0xFFFFFA6B:
        goto LABEL_37;
      case 0xFFFFFA7E:
        goto LABEL_38;
      case 0xFFFFFA87:
LABEL_30:
        v7 = 0;
        v6 = 1;
        v8 = @"FileNotFound";
        goto LABEL_44;
    }
  }

  else if (this <= -8088)
  {
    if (this == -8095)
    {
      v7 = 0;
      v6 = 0;
      v8 = @"ReservationError";
      goto LABEL_44;
    }

    if (this == -8089)
    {
      v6 = 0;
      v7 = 1;
      v8 = @"CaseSensitivity";
      goto LABEL_44;
    }
  }

  else
  {
    switch(this)
    {
      case 0xFFFFE069:
        goto LABEL_18;
      case 0xFFFFEC66:
        goto LABEL_30;
      case 0xFFFFEC6E:
        goto LABEL_18;
    }
  }

LABEL_43:
  v7 = 0;
  v6 = 1;
  v8 = @"UnknownError";
LABEL_44:
  v9 = DesktopServicesCFBundle();
  v10 = CFBundleCopyLocalizedString(v9, v8, v8, 0);
  v17 = v10;
  if (v7)
  {
    v11 = RetainCF<__CFString const*>(a2);
    if (v11)
    {
      v12 = CFAutorelease(v11);
      v11 = static_cf_cast<__CFString const*,void const*>(v12);
    }

    v13 = CFStringCreateWithFormat(0, 0, v10, v11);
    goto LABEL_50;
  }

  if (v6)
  {
    v13 = CFStringCreateWithFormat(0, 0, v10, this);
LABEL_50:
    v16 = v13;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v17, &v16);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16);
  }

  v14 = v17;
  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a3, v14);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17);
}

void sub_1E57141B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5714250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

const void **TCFURLInfo::LocalizedCopyErrorMessage@<X0>(TCFURLInfo *this@<X0>, TCFURLInfo *a2@<X1>, TString *a3@<X8>)
{
  TCFURLInfo::DisplayName(this, &theString);
  if (CFStringGetLength(theString))
  {
    v7.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v7, theString);
  }

  else
  {
    TCFURLInfo::Name(&v7, this);
  }

  TCFURLInfo::LocalizedCopyErrorMessage(a2, &v7.fString.fRef, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E5714300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

const void **TCFURLInfo::LocalizedStringWithFileName@<X0>(TString *__return_ptr a1@<X8>, const __CFString *this@<X0>, __CFString *a3@<X1>)
{
  TCFURLInfo::StringProperty(&cf, a3, *MEMORY[0x1E695EBC8]);
  v5 = DesktopServicesCFBundle();
  v6 = CFBundleCopyLocalizedString(v5, this, this, 0);
  v13 = v6;
  v7 = cf;
  if (cf)
  {
    v8 = CFRetain(cf);
    v7 = static_cf_cast<__CFString const*,void const*>(v8);
    if (v7)
    {
      v9 = CFAutorelease(v7);
      v7 = static_cf_cast<__CFString const*,void const*>(v9);
    }
  }

  v10 = CFStringCreateWithFormat(0, 0, v6, v7);
  v12 = v10;
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
}

void sub_1E57143F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::DeleteDeep(const void **this, int a2, char a3)
{
  if (*(this + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  if (*(this + 26))
  {
    if (*(this + 12) <= 0)
    {
      TCFURLInfo::FetchProperties(this, 1);
      if (*(this + 12) <= 0)
      {
        TCFURLInfo::FetchProperties(this, 1);
      }
    }

    std::allocate_shared[abi:ne200100]<TCFURLInfo,std::allocator<TCFURLInfo>,TCFURLInfo&,0>();
  }

  return TCFURLInfo::Delete(this, a2, a3);
}

void sub_1E57145F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  MEMORY[0x1E692CD30](v11, 0x1060C40CE86CDCBLL, a3, a4, a5, a6, a7, a8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

CFIndex TCFURLIterator::Next(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  if (!*(a1 + 16))
  {
    v17 = MEMORY[0x1E692C4F0](0, **a1, *(a1 + 24), *(a1 + 32));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v4, v17);
    if (*(a1 + 74) == 1)
    {
      _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    TAutoRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TAutoRef(&v17);
  }

  if ((*(a1 + 74) & 1) == 0)
  {
    v11 = *MEMORY[0x1E695E2A8];
    while (1)
    {
      Raw = TCFURLIterator::NextRaw(a1, a2);
      if (!Raw)
      {
        v13 = *a2;
        if (*(*a2 + 48) <= 0)
        {
          TCFURLInfo::FetchProperties(*a2, 1);
        }

        if (!v13->fString.fRef || TCFURLInfo::gRootlessEnabled != 1 || !TCFURLInfo::IsOnSystemVolume(v13, v12) || (TCFURLInfo::GetNumericalProperty(v13->fString.fRef, v11, v14) & 0x80) == 0)
        {
          v15 = WORD2(v13[6].fString.fRef);
          if (v15)
          {
            return 0;
          }

          Raw = 0;
          if (v15 & 2) != 0 || (BYTE6(v13[6].fString.fRef))
          {
            return Raw;
          }
        }

        Raw = 4294959234;
      }

      if (Raw != -8062)
      {
        return Raw;
      }
    }
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  if (v5 >= (*(a1 + 48) - v6) >> 4)
  {
    return 4294965879;
  }

  v7 = *(v6 + 16 * v5);
  v8 = *(v6 + 16 * v5 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 8);
  *a2 = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  Raw = 0;
  ++*(a1 + 64);
  return Raw;
}

void sub_1E57148D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TAutoRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<TCFURLIterator>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 40);
    std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v5);
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v2 + 32));
    TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E692CD30](v2, 0x1060C40CE86CDCBLL);
  }

  return a1;
}

uint64_t TCFURLInfo::Delete(TCFURLInfo **this, int a2, char a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    TCFURLInfo::Path(this, &theString);
    if (CFStringGetLength(theString))
    {
      if (*(this + 12) < 1)
      {
        TCFURLInfo::FetchProperties(this, 1);
        v8 = this + 26;
        v7 = *(this + 26);
        if (*(this + 12) <= 0)
        {
          TCFURLInfo::FetchProperties(this, 1);
        }
      }

      else
      {
        v8 = this + 26;
        v7 = *(this + 26);
      }

      v10 = *(this + 54);
      BooleanProperty = TCFURLInfo::GetBooleanProperty(*this, *MEMORY[0x1E695E348], v6);
      v13 = TCFURLInfo::GetBooleanProperty(*this, *MEMORY[0x1E695E320], v12);
      v14 = v13;
      v15 = v7 & 0x10;
      v16 = v10 & 2;
      if (a2)
      {
        if (((v15 | v16) != 0) | BooleanProperty & 1 | v13 & 1)
        {
          appended = TCFURLInfo::SetImmutableAndAppendFlags(this, 0);
          if (appended)
          {
            goto LABEL_40;
          }
        }
      }

      if (*(this + 12) <= 0)
      {
        TCFURLInfo::FetchProperties(this, 1);
      }

      if (*v8)
      {
        v29 = TString::c_str(&theString);
        appended = TCFURLInfo::RmDir(v29, v29);
        if (appended)
        {
          v30 = LogObj(2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = SanitizedPath(&theString);
            LODWORD(cf1) = 67109378;
            HIDWORD(cf1) = appended;
            v39 = 2114;
            v40 = v31;
            _os_log_impl(&dword_1E5674000, v30, OS_LOG_TYPE_ERROR, "RmDir returned %d for %{public}@ ", &cf1, 0x12u);
          }

          goto LABEL_25;
        }

LABEL_40:
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        return appended;
      }

      if ((a3 & 1) != 0 || (TCFURLInfo::Name(&cf1, this), TCFURLInfo::GetPropertyStoreName(v17), v18 = CFEqual(cf1, TCFURLInfo::GetPropertyStoreName(void)::propertyStoreName), TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1), v18))
      {
        v19 = TString::c_str(&theString);
        v20 = unlink(v19);
        if (v20)
        {
          v21 = v20;
          v22 = LogObj(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = SanitizedPath(&theString);
            LODWORD(cf1) = 67109378;
            HIDWORD(cf1) = v21;
            v39 = 2114;
            v40 = v23;
            _os_log_impl(&dword_1E5674000, v22, OS_LOG_TYPE_ERROR, "unlink returned %d for %{public}@ ", &cf1, 0x12u);
          }

LABEL_19:

          v24 = __error();
          appended = TCFURLInfo::TranslatePOSIXError(*v24, 0, v25);
          if ((TCFURLInfo::IsSystemRestrictionEffective(this, v26, v27) & 1) != 0 || TCFURLInfo::gRootlessEnabled == 1 && TCFURLInfo::GetBooleanProperty(*this, *MEMORY[0x1E695E340], v28))
          {
            appended = 4294959217;
          }

LABEL_25:
          if (appended && a2 && ((v15 | v16) != 0) | BooleanProperty & 1 | v14 & 1)
          {
            v32 = 0x1000000;
            if (!v14)
            {
              v32 = 0;
            }

            v33 = 0x10000;
            if (!BooleanProperty)
            {
              v33 = 0;
            }

            TCFURLInfo::SetImmutableAndAppendFlags(this, v32 | (v15 >> 4) | (v16 << 7) | v33);
          }

          goto LABEL_40;
        }
      }

      else
      {
        TString::c_str(&theString);
        v34 = __carbon_delete();
        if (v34)
        {
          v22 = LogObj(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v35 = SanitizedPath(&theString);
            LODWORD(cf1) = 67109378;
            HIDWORD(cf1) = v34;
            v39 = 2114;
            v40 = v35;
            _os_log_impl(&dword_1E5674000, v22, OS_LOG_TYPE_ERROR, "Delete if not open retuned %d for %{public}@ ", &cf1, 0x12u);
          }

          goto LABEL_19;
        }
      }
    }

    appended = 0;
    goto LABEL_40;
  }

  return 4294959238;
}

void sub_1E5714D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TCFURLInfo::RmDir(TCFURLInfo *this, const char *a2)
{
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    v6 = TCFURLInfo::TranslatePOSIXError(*v4, a2, v5);
    if (unlinkat(-2, a2, 256))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TCFURLInfo::IsSystemRestrictionEffective(TCFURLInfo **this, const __CFURL *a2, const __CFString *a3)
{
  if (TCFURLInfo::gRootlessEnabled == 1 && (TCFURLInfo::GetBooleanProperty(*this, *MEMORY[0x1E695E318], a3) & 1) != 0)
  {
    return 1;
  }

  result = TCFURLInfo::IsOnSystemVolume(this, a2);
  if (result)
  {
    return TCFURLInfo::gROSPState != 3;
  }

  return result;
}

uint64_t TCFURLInfo::RenameWithoutReplacing(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2, const char *a3)
{
  if (strcmp(this, a2))
  {
    std::mutex::lock(&TCFURLInfo::RenameWithoutReplacing(char const*,char const*)::sLocalMutex);
    if (!lstat(a2, &v23))
    {
      v6 = strlen(this);
      v21 = CFURLCreateFromFileSystemRepresentation(0, this, v6, 0);
      v7 = strlen(a2);
      v22 = CFURLCreateFromFileSystemRepresentation(0, a2, v7, 0);
      v8 = *MEMORY[0x1E695E2B0];
      NumericalProperty = TCFURLInfo::GetNumericalProperty(v21, *MEMORY[0x1E695E2B0], v9);
      v12 = TCFURLInfo::GetNumericalProperty(v22, v8, v11);
      v13 = *MEMORY[0x1E695E448];
      v15 = TCFURLInfo::GetNumericalProperty(v21, *MEMORY[0x1E695E448], v14);
      v17 = TCFURLInfo::GetNumericalProperty(v22, v13, v16);
      if (NumericalProperty != v12 || v15 != v17)
      {
        *__error() = 17;
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v22);
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v21);
        goto LABEL_12;
      }

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v22);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v21);
    }

    rename(this, a2, v5);
    v19 = v18;
    if ((v18 & 0x80000000) == 0 || *__error() != 18)
    {
      goto LABEL_13;
    }

    if ((copyfile(this, a2, 0, 0x6800Fu) & 0x80000000) == 0)
    {
      _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

LABEL_12:
    v19 = 0xFFFFFFFFLL;
LABEL_13:
    std::mutex::unlock(&TCFURLInfo::RenameWithoutReplacing(char const*,char const*)::sLocalMutex);
    return v19;
  }

  return 0;
}

void TCFURLInfo::SourcePathForResumableCopy(TString *__return_ptr a1@<X8>, TString *this@<X0>)
{
  v3 = TString::KEmptyString(this);
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, *v3);
}

uint64_t TCFURLInfo::IsSuspendedCopyOfSource(TCFURLInfo **a1, uint64_t a2, void *a3)
{
  TCFURLInfo::FileSystemRepresentation(&theString, *a1, 1);
  if (CFStringGetLength(theString))
  {
    *a3 = 0;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return 0;
}

void sub_1E57151B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

BOOL TCFURLInfo::ModifiedAfterCheckPoint(CFURLRef *this, double a2, BOOL *a3)
{
  *a3 = 0;
  propertyValueTypeRefPtr = 0;
  CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EA08], &propertyValueTypeRefPtr, 0);
  v8 = propertyValueTypeRefPtr;
  v5 = MEMORY[0x1E692BF40](propertyValueTypeRefPtr);
  if (v5 < a2 + 120.0)
  {
    *a3 = 1;
  }

  v6 = v5 > a2;
  TAutoRef<__CFDate const*,TRetainReleasePolicy<__CFDate const*>>::~TAutoRef(&v8);
  return v6;
}

uint64_t TFileDescriptor::Close(TFileDescriptor *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    return 4294967242;
  }

  result = close(v2);
  if (result)
  {
    result = TCFURLInfo::TranslatePOSIXError(result, 0, v4);
  }

  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *(this + 2) = v5;
  return result;
}

uint64_t TCFURLInfo::CompareForMerge(uint64_t a1, CFURLRef **a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = TCFURLInfo::CheckDestinationModificationDates(a1, a2, a5, *a6, a6[1]);
  *a3 = v9;
  if (v9)
  {
    return 0;
  }

  v11 = *MEMORY[0x1E695E2B8];
  NumericalProperty = TCFURLInfo::GetNumericalProperty(*a1, *MEMORY[0x1E695E2B8], v10);
  v13 = *MEMORY[0x1E695EAF0];
  v15 = (NumericalProperty + TCFURLInfo::GetNumericalProperty(*a1, *MEMORY[0x1E695EAF0], v14));
  v16 = *a2;
  v18 = TCFURLInfo::GetNumericalProperty(**a2, v11, v17);
  if (v15 != (v18 + TCFURLInfo::GetNumericalProperty(*v16, v13, v19)))
  {
    return 0;
  }

  v21 = TCFURLInfo::GetNumericalProperty(*a1, v11, v20);
  if (v21 != TCFURLInfo::GetNumericalProperty(**a2, v11, v22))
  {
    return 0;
  }

  if (*(a1 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(a1, 1);
  }

  v24 = *(a1 + 52);
  v25 = *a2;
  if (*(*a2 + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(*a2, 1);
  }

  if ((v24 ^ *(v25 + 26)))
  {
    return 0;
  }

  v27 = *MEMORY[0x1E695ED38];
  if (!TCFURLInfo::GetBooleanProperty(*a1, *MEMORY[0x1E695ED38], v23) || !TCFURLInfo::GetBooleanProperty(**a2, v27, v28))
  {
    return 1;
  }

  return TCFURLInfo::XattrsEqual(a1, a2);
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

BOOL operator==(CFTypeRef *a1, const char *a2)
{
  TString::TString(&cf2, a2);
  v3 = CFEqual(*a1, cf2) != 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
  return v3;
}

void sub_1E57154F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL TCFURLInfo::FileSecuritySetAccessControlList(CFFileSecurityRef fileSec, acl_t acl, _acl *a3)
{
  if (acl && (entry_p = 0, !acl_get_entry(acl, 0, &entry_p)) && CFFileSecuritySetAccessControlList(fileSec, acl))
  {
    return 1;
  }

  else
  {
    return CFFileSecuritySetAccessControlList(fileSec, 1) != 0;
  }
}

uint64_t TCFURLInfo::IsCopyOperationACE(TCFURLInfo *this, _acl_entry *a2, int *a3, _acl_permset *a4, int a5)
{
  v6 = a4;
  v8 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if (TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::once != -1)
  {
    TCFURLInfo::IsCopyOperationACE();
  }

  if (v8 != 1)
  {
    return 0;
  }

  flagset_p = 0;
  if (acl_get_flagset_np(this, &flagset_p) || acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
  {
    return 0;
  }

  qualifier = acl_get_qualifier(this);
  if (qualifier && ((memset(uu, 0, sizeof(uu)), TCFURLInfo::gDSHelperRunning != 1) ? (v12 = getuid()) : (v12 = TCFURLInfo::guidToUse), (mbr_uid_to_uuid(v12, uu), *qualifier == *uu) ? (v13 = qualifier[1] == *&uu[8]) : (v13 = 0), v13))
  {
    v14 = *a3;
    if (v6)
    {
      if (a5)
      {
        v15 = TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderPermset;
      }

      else
      {
        v15 = TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFilePermset;
      }

      v17 = *v15 == v14;
    }

    else
    {
      if (a5)
      {
        v16 = TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderPermset;
      }

      else
      {
        v16 = TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFilePermset;
      }

      v17 = (*v16 & ~v14) == 0;
    }

    v10 = v17;
  }

  else
  {
    v10 = 0;
  }

  TACLRef<unsigned char (*)[16]>::~TACLRef(&qualifier);
  return v10;
}

void sub_1E5715748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TACLRef<unsigned char (*)[16]>::~TACLRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10TCFURLInfo18IsCopyOperationACEEP10_acl_entry9acl_tag_tP12_acl_permsetbb_block_invoke()
{
  TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFileACL = acl_init(1);
  TCFURLInfo::AddCopyACE(TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFileACL, 0);
  entry_p = 0;
  acl_get_entry(TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFileACL, 0, &entry_p);
  acl_get_permset(entry_p, &TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFilePermset);
  TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderACL = acl_init(1);
  TCFURLInfo::AddCopyACE(TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderACL, 1);
  acl_get_entry(TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderACL, 0, &entry_p);
  return acl_get_permset(entry_p, &TCFURLInfo::IsCopyOperationACE(_acl_entry *,acl_tag_t,_acl_permset *,BOOL,BOOL)::localFolderPermset);
}

_acl *TCFURLInfo::AddCopyACE(_acl *this, _acl *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  acl_p = this;
  if (this)
  {
    v2 = a2;
    permset_d = 0;
    entry_p = 0;
    this = acl_create_entry_np(&acl_p, &entry_p, 0);
    if (!this)
    {
      this = acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW);
      if (!this)
      {
        memset(uu, 0, sizeof(uu));
        v3 = TCFURLInfo::gDSHelperRunning == 1 ? TCFURLInfo::guidToUse : getuid();
        this = mbr_uid_to_uuid(v3, uu);
        if (!this)
        {
          this = acl_set_qualifier(entry_p, uu);
          if (!this)
          {
            this = acl_get_permset(entry_p, &permset_d);
            if (!this)
            {
              this = acl_clear_perms(permset_d);
              if (!this)
              {
                acl_add_perm(permset_d, ACL_DELETE);
                acl_add_perm(permset_d, ACL_WRITE_DATA);
                acl_add_perm(permset_d, ACL_WRITE_DATA);
                acl_add_perm(permset_d, ACL_APPEND_DATA);
                v4 = permset_d;
                if (v2)
                {
                  acl_add_perm(permset_d, ACL_DELETE_CHILD);
                  v4 = permset_d;
                }

                acl_add_perm(v4, ACL_WRITE_ATTRIBUTES);
                acl_add_perm(permset_d, ACL_WRITE_EXTATTRIBUTES);
                acl_add_perm(permset_d, ACL_CHANGE_OWNER);
                return acl_set_permset(entry_p, permset_d);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t TCFURLInfo::ContainsCopyACE(TCFURLInfo *this, __CFFileSecurity *a2)
{
  v2 = a2;
  accessControlList = 0;
  CFFileSecurityCopyAccessControlList(this, &accessControlList);
  if (!accessControlList || (entry_p = 0, acl_get_entry(accessControlList, 0, &entry_p)) || (flagset_p = 0, tag_type_p = ACL_UNDEFINED_TAG, permset_p = 0, acl_get_tag_type(entry_p, &tag_type_p)) || acl_get_permset(entry_p, &permset_p) || acl_get_flagset_np(entry_p, &flagset_p))
  {
    IsCopyOperationACE = 0;
  }

  else
  {
    IsCopyOperationACE = TCFURLInfo::IsCopyOperationACE(entry_p, tag_type_p, permset_p, 0, v2);
  }

  TACLRef<_acl *>::~TACLRef(&accessControlList);
  return IsCopyOperationACE;
}

uint64_t TCFURLInfo::AddBackupGuardACE(TCFURLInfo *this, _acl *a2)
{
  acl_p = this;
  if (!this)
  {
    return 22;
  }

  v2 = a2;
  permset_p = 0;
  entry_p = 0;
  result = acl_create_entry_np(&acl_p, &entry_p, 0);
  if (!result)
  {
    result = acl_set_tag_type(entry_p, ACL_EXTENDED_DENY);
    if (!result)
    {
      v4 = entry_p;
      if (TCFURLInfo::EverybodyUUID(void)::once != -1)
      {
        v6 = entry_p;
        TCFURLInfo::AddBackupGuardACE();
        v4 = v6;
      }

      result = acl_set_qualifier(v4, TCFURLInfo::EverybodyUUID(void)::everybodyUUID);
      if (!result)
      {
        result = acl_get_permset(entry_p, &permset_p);
        if (!result)
        {
          result = acl_clear_perms(permset_p);
          if (!result)
          {
            acl_add_perm(permset_p, ACL_WRITE_DATA);
            acl_add_perm(permset_p, ACL_DELETE);
            acl_add_perm(permset_p, ACL_APPEND_DATA);
            v5 = permset_p;
            if (v2)
            {
              acl_add_perm(permset_p, ACL_DELETE_CHILD);
              v5 = permset_p;
            }

            acl_add_perm(v5, ACL_WRITE_ATTRIBUTES);
            acl_add_perm(permset_p, ACL_WRITE_EXTATTRIBUTES);
            acl_add_perm(permset_p, ACL_CHANGE_OWNER);
            return acl_set_permset(entry_p, permset_p);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TCFURLInfo::GetZeroCreationDate(TCFURLInfo *this)
{
  if (TCFURLInfo::GetZeroCreationDate(void)::once != -1)
  {
    TCFURLInfo::GetZeroCreationDate();
  }

  return TCFURLInfo::GetZeroCreationDate(void)::zeroCreationDate;
}

CFDateRef ___ZN10TCFURLInfo19GetZeroCreationDateEv_block_invoke()
{
  result = CFDateCreate(0, -3061152000.0);
  TCFURLInfo::GetZeroCreationDate(void)::zeroCreationDate = result;
  return result;
}

uint64_t TCFURLInfo::GetMagicBusyCreationDate(TCFURLInfo *this)
{
  if (TCFURLInfo::GetMagicBusyCreationDate(void)::once != -1)
  {
    TCFURLInfo::GetMagicBusyCreationDate();
  }

  return TCFURLInfo::GetMagicBusyCreationDate(void)::magicBusyCreationDate;
}

CFDateRef ___ZN10TCFURLInfo24GetMagicBusyCreationDateEv_block_invoke()
{
  result = CFDateCreate(0, -534528000.0);
  TCFURLInfo::GetMagicBusyCreationDate(void)::magicBusyCreationDate = result;
  return result;
}

uint64_t TCFURLInfo::CopyVolumeURL(CFURLRef *this)
{
  propertyValueTypeRefPtr = 0;
  CFURLCopyResourcePropertyForKey(*this, *MEMORY[0x1E695EE48], &propertyValueTypeRefPtr, 0);
  return propertyValueTypeRefPtr;
}

BOOL TCFURLInfo::IsLockFile(CFURLRef *this)
{
  if (TCFURLInfo::GetCreationDate(this) == -534528000.0)
  {
    return 1;
  }

  if (*(this + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(this, 1);
  }

  return (*(this + 26) & 1) == 0 && TCFURLInfo::GetType(this) == 1651666795;
}

void TCFURLInfo::DecodeEncodedTagString(uint64_t *__return_ptr a1@<X8>, TCFURLInfo *this@<X0>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_cast<NSString,void const*>(this);
  if ([v4 length] && !objc_msgSend(v4, "hasPrefix:", @"\n"))
  {
    v5 = [v4 componentsSeparatedByString:@"\n"];
    v6 = [v5 count];
    v7 = [v5 firstObject];
    if (v6 < 2)
    {
      v22 = 0;
    }

    else
    {
      v23 = [v5 objectAtIndexedSubscript:1];
      [v23 componentsSeparatedByString:@"."];
      v24 = v5;
      v25 = v4;
      __src = 0;
      v31 = 0;
      v32 = 0;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = v29 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v9)
      {
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            if ([v12 length])
            {
              v13 = [v12 intValue];
              v14 = v31;
              if (v31 >= v32)
              {
                v16 = __src;
                v17 = v31 - __src;
                v18 = (v31 - __src) >> 1;
                if (v18 <= -2)
                {
                  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
                }

                if (v32 - __src <= v18 + 1)
                {
                  v19 = v18 + 1;
                }

                else
                {
                  v19 = v32 - __src;
                }

                if (v32 - __src >= 0x7FFFFFFFFFFFFFFELL)
                {
                  v20 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  std::allocator<unsigned short>::allocate_at_least[abi:ne200100](&__src, v20);
                }

                *(2 * v18) = v13;
                v15 = 2 * v18 + 2;
                memcpy(0, v16, v17);
                v21 = __src;
                __src = 0;
                v31 = v15;
                v32 = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              else
              {
                *v31 = v13;
                v15 = (v14 + 2);
              }

              v31 = v15;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v9);
      }

      v5 = v24;
      v4 = v25;
      v22 = [MEMORY[0x1E695DEF0] dataWithBytes:__src length:v31 - __src];
      if (__src)
      {
        v31 = __src;
        operator delete(__src);
      }
    }

    *a1 = v7;
    a1[1] = v22;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_1E5715F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id objc_cast<NSString,void const*>(void *a1)
{
  v1 = objc_cast<NSString,objc_object * {__strong}>(a1);

  return v1;
}

CFTypeRef TCFURLInfo::CreateEncodedTagString(void *cf, CFDataRef theData, const __CFData *a3)
{
  if (theData && (Length = CFDataGetLength(theData)) != 0 && (v6 = Length, (Length & 1) == 0))
  {
    BytePtr = CFDataGetBytePtr(theData);
    v8 = BytePtr;
    v9 = v6 - 2;
    if (v9)
    {
      v10 = [cf mutableCopy];
      [v10 appendFormat:@"%c%u", 10, *v8];
      v12 = v8 + 1;
      while (v9)
      {
        v13 = *v12++;
        v9 -= 2;
        [v10 appendFormat:@".%u", v13];
      }
    }

    else
    {
      [cf stringByAppendingFormat:@"%c%u", 10, *BytePtr];
      return objc_claimAutoreleasedReturnValue();
    }

    return v10;
  }

  else
  {

    return CFRetain(cf);
  }
}

CFTypeRef TCFURLInfo::CreateEncodedTag(TCFURLInfo *this, const __CFString *a2)
{
  *bytes = a2;
  v6 = CFDataCreate(0, bytes, 2);
  EncodedTagString = TCFURLInfo::CreateEncodedTagString(this, v6, v3);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v6);
  return EncodedTagString;
}

CFDictionaryRef TCFURLInfo::CreateTagDictionary(TCFURLInfo *this, const __CFString *a2, const __CFData *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *keys = xmmword_1E877F190;
    v7[0] = this;
    v7[1] = a2;
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    v5 = 2;
  }

  else
  {
    keys[0] = @"TagName";
    v7[0] = this;
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    v5 = 1;
  }

  return CFDictionaryCreate(0, keys, v7, v5, v3, v4);
}

uint64_t TCFURLInfo::DecodeLabelColorFromTagDictionary(TCFURLInfo *this, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(this, @"TagColor");
  v3 = cf_cast<__CFData const*,void const*>(Value);
  if (v3 && (v4 = v3, CFDataGetLength(v3) == 2))
  {
    v5 = *CFDataGetBytePtr(v4);
    v6 = v5 < 8;
    if (v5 >= 8)
    {
      v5 = 0;
    }

    v7 = v6 << 16;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return v7 | v5;
}

const void *cf_cast<__CFData const*,void const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDataGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFArray *TCFURLInfo::TagsFromAttributes@<X0>(const __CFArray *theArray@<X0>, uint64_t **a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  if (theArray)
  {
    v3 = theArray;
    for (i = 0; ; ++i)
    {
      theArray = CFArrayGetCount(v3);
      if (i >= theArray)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v6 = cf_cast<__CFDictionary const*,void const*>(ValueAtIndex);
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"TagName");
        v8 = cf_cast<__CFString const*,void const*>(Value);
        v9 = v8;
        if (v8)
        {
          if (CFStringGetLength(v8) >= 1)
          {
            v10.fString.fRef = &stru_1F5F42870;
            CFRetain(&stru_1F5F42870);
            TString::SetStringRefAsImmutable(&v10, v9);
            std::__tree<TString,TTagCompare,std::allocator<TString>>::__emplace_unique_key_args<TString,TString>(a2, &v10.fString.fRef, &v10.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
          }
        }
      }
    }
  }

  return theArray;
}

void sub_1E57163F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(v3, *(v3 + 8));
  _Unwind_Resume(a1);
}

uint64_t TCFURLIterator::TCFURLIterator(uint64_t a1, void *a2, CFTypeRef cf, char a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 73) = a4;
  *(a1 + 74) = 0;
  return a1;
}

void sub_1E57164A8(_Unwind_Exception *a1)
{
  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

CFIndex TCFURLIterator::NextRaw(uint64_t a1, TString **a2)
{
  v9 = 0;
  v10 = 0;
  v4 = MEMORY[0x1E692C500](*(a1 + 16), &v9, &v10);
  if (v4 == 1)
  {
    v7 = TCFURLInfo::Initialize(*a2, v9, 1, *(a1 + 73));
  }

  else if (v4 == 3)
  {
    v6 = TCFURLInfo::TranslateCFError(v10, v5);
    if (v6 == -43)
    {
      v7 = 4294959234;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 4294965879;
  }

  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&v10);
  return v7;
}

void sub_1E571655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

uint64_t TDeepCFURLIterator::TDeepCFURLIterator(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, uint64_t *a14, int a15)
{
  *(a1 + 8) = *a2;
  v20 = *(a2 + 8);
  *(a1 + 16) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = a6;
  *(a1 + 55) = a10;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 120) = a7;
  *(a1 + 128) = a8;
  *(a1 + 144) = 0;
  v21 = (a1 + 144);
  *(a1 + 152) = 0;
  *(a1 + 160) = &stru_1F5F42870;
  v22 = (a1 + 160);
  CFRetain(&stru_1F5F42870);
  *(a1 + 168) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(a1 + 176) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 232) = a15;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a1 + 40), a5);
  *(a1 + 216) = a11;
  *(a1 + 136) = a9;
  *(a1 + 217) = a3;
  *(a1 + 218) = a4;
  v24 = *a14;
  v23 = a14[1];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(a1 + 152);
  *(a1 + 144) = v24;
  *(a1 + 152) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(a1 + 217) == 1 && *v21)
  {
    TCFURLInfo::FileSystemRepresentation(&cf, **a2, 1);
    if (v22 != &cf)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>((a1 + 160), &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (*v21)
    {
      *(a1 + 224) = TCFURLInfo::GetNumericalProperty(**v21, *MEMORY[0x1E695ED68], v26);
    }
  }

  TCFURLInfo::Name(&cf, *a2);
  if ((a1 + 168) != &cf)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>((a1 + 168), &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  v27 = *(a1 + 208);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  *a1 = 0;
  *(a1 + 219) = a12;
  *(a1 + 220) = a13;
  TDeepCFURLIterator::Reset(a1);
  return a1;
}

{
  return TDeepCFURLIterator::TDeepCFURLIterator(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_1E57167C4(_Unwind_Exception *a1, void **a2, void **a3, ...)
{
  va_start(va, a3);
  v8 = v3[26];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v5);
  v9 = v3[19];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = v3[13];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *a3;
  if (*a3)
  {
    v3[10] = v11;
    operator delete(v11);
  }

  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(v4);
  v12 = v3[4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v3[2];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

uint64_t TDeepCFURLIterator::Reset(TDeepCFURLIterator *this)
{
  v2 = *this;
  if (*this)
  {
    *&v17 = v2 + 40;
    std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v17);
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v2 + 32));
    TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E692CD30](v2, 0x1060C40CE86CDCBLL);
  }

  v4 = (this + 8);
  v5 = *(this + 1);
  if (*(v5 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(*(this + 1), 1);
  }

  if (*(v5 + 52))
  {
    operator new();
  }

  *this = 0;
  if (*(this + 218) == 1 && *(this + 18))
  {
    TDeepCFURLIterator::CreateDestinationListForSource();
  }

  v6 = *v4;
  if (*(*v4 + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(*v4, 1);
  }

  v7 = *(v6 + 26);
  *(this + 49) = (v7 & 4) != 0;
  *(this + 52) = 0;
  *(this + 54) = 0;
  if ((v7 & 4) != 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 13);
    *(this + 12) = v9;
    *(this + 13) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v11 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(this + 29) = *(this + 49);
  *(this + 30) = *(this + 52);
  *(this + 31) = *(this + 54);
  *(this + 32) = 1;
  *(this + 25) = 0;
  *(this + 53) = 0;
  v12 = *(this + 15);
  if (v12)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    TCloneCache::RemoveAll(v13);
  }

  result = TDeepCFURLIterator::ResetReservationStack(this);
  if (*(this + 217) == 1)
  {
    if (*(this + 18))
    {
      LOBYTE(v17) = 1;
      if (*(this + 55) == 1 && (*(this + 56) & 1) == 0)
      {
        v15 = *v4;
        if (*(*v4 + 12) <= 0)
        {
          result = TCFURLInfo::FetchProperties(*v4, 1);
        }

        if (*(v15 + 26))
        {
          result = TCFURLInfo::EffectiveUserCanRead(*v4, &v17);
          if (!result)
          {
            goto LABEL_36;
          }

          v16 = *v4;
          if (*(v16 + 12) <= 1)
          {
            result = TCFURLInfo::FetchProperties(v16, 1);
          }

          if ((*(v16 + 26) & 0x4000) == 0)
          {
LABEL_36:
            *(this + 56) = 1;
          }
        }
      }
    }
  }

  return result;
}

void TDeepCFURLIterator::~TDeepCFURLIterator(const void **this)
{
  TDeepCFURLIterator::DestroyIterators(this);
  TDeepCFURLIterator::ResetReservationStack(this);
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v8 = (this + 22);
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 21);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 20);
  v3 = this[19];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[13];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[9];
  if (v5)
  {
    this[10] = v5;
    operator delete(v5);
  }

  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(this + 5);
  v6 = this[4];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void *TDeepCFURLIterator::DestroyIterators(void *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    v9 = (v2 + 40);
    std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v9);
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v2 + 32));
    TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    this = MEMORY[0x1E692CD30](v2, 0x1060C40CE86CDCBLL);
  }

  *v1 = 0;
  v4 = v1[9];
  v5 = v1[10];
  if (v5 != v4)
  {
    do
    {
      v7 = *(v5 - 8);
      v5 -= 8;
      v6 = v7;
      if (v7)
      {
        v9 = (v6 + 40);
        std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v9);
        TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v6 + 32));
        TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef((v6 + 16));
        v8 = *(v6 + 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        this = MEMORY[0x1E692CD30](v6, 0x1060C40CE86CDCBLL);
      }
    }

    while (v5 != v4);
    v4 = v1[9];
  }

  v1[10] = v4;
  return this;
}

void *TDeepCFURLIterator::ResetReservationStack(TDeepCFURLIterator *this)
{
  result = *(this + 17);
  if (result)
  {
    v3 = result[5];
    if (v3)
    {
      for (i = *(*(result[1] + (((v3 + result[4] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + result[4] - 1) & 0x1FF)); i; i = *(*(result[1] + (((v3 + result[4] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + result[4] - 1) & 0x1FF)))
      {
        result[5] = v3 - 1;
        std::deque<TReservationRecord *>::__maybe_remove_back_spare[abi:ne200100](result, 1);
        v6 = *(i + 16);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *i;
        *i = 0;
        if (v7)
        {
          TFileCoordinationRecord::~TFileCoordinationRecord(v7, v5);
          MEMORY[0x1E692CD30]();
        }

        MEMORY[0x1E692CD30](i, 0x60C40A44E5E0CLL);
        result = *(this + 17);
        v3 = result[5];
        if (!v3)
        {
          break;
        }
      }
    }
  }

  return result;
}

void sub_1E5716F3C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t TDeepCFURLIterator::Cancel(uint64_t this)
{
  *(this + 112) = 1;
  if (*this)
  {
    *(*this + 72) = 1;
  }

  v1 = *(this + 72);
  for (i = *(this + 80); v1 != i; *(v3 + 72) = 1)
  {
    v3 = *v1++;
  }

  return this;
}

void TDeepCFURLIterator::PushIterator(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v24 = *a2;
  v25 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 58);
  if (!v5)
  {
    if (*(v3 + 12) <= 0)
    {
      TCFURLInfo::FetchProperties(v3, 1);
    }

    if ((*(v3 + 26) & 4) != 0)
    {
LABEL_9:
      if (*(a1 + 136))
      {
        operator new();
      }

      if (!*(a1 + 96))
      {
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = *(a1 + 104);
        *(a1 + 96) = v3;
        *(a1 + 104) = v4;
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }

      ++*(a1 + 58);
LABEL_17:
      v7 = *(a1 + 60);
      if (!v7 && (IsTrash = TCFURLInfo::IsTrash(v3), v7 = *(a1 + 60), IsTrash) || v7 >= 1)
      {
        *(a1 + 60) = v7 + 1;
      }

      v9 = *(a1 + 62);
      if (!v9 && (*(v24 + 12) <= 0 ? (TCFURLInfo::FetchProperties(v24, 1), v9 = *(a1 + 62)) : (v9 = 0), (*(v24 + 26) & 0x20) == 0) || v9 >= 1)
      {
        *(a1 + 62) = v9 + 1;
      }

      ++*(a1 + 64);
      v11 = *(a1 + 80);
      v10 = *(a1 + 88);
      if (v11 >= v10)
      {
        v13 = *(a1 + 72);
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1 + 72, v17);
        }

        *(8 * v14) = *a1;
        v12 = 8 * v14 + 8;
        v18 = *(a1 + 72);
        v19 = *(a1 + 80) - v18;
        v20 = (8 * v14 - v19);
        memcpy(v20, v18, v19);
        v21 = *(a1 + 72);
        *(a1 + 72) = v20;
        *(a1 + 80) = v12;
        *(a1 + 88) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v11 = *a1;
        v12 = (v11 + 1);
      }

      *(a1 + 80) = v12;
      v23 = 1;
      if (*(a1 + 217) == 1 && *(a1 + 144) && *(a1 + 55) == 1 && (*(a1 + 56) & 1) == 0)
      {
        v22 = v24;
        if (!TCFURLInfo::EffectiveUserCanRead(v24, &v23))
        {
          goto LABEL_54;
        }

        if (*(v22 + 12) <= 1)
        {
          TCFURLInfo::FetchProperties(v22, 1);
        }

        if ((*(v22 + 26) & 0x4000) == 0)
        {
LABEL_54:
          if (!*(a1 + 60))
          {
            *(a1 + 56) = 1;
          }
        }
      }

      operator new();
    }

    v5 = *(a1 + 58);
  }

  if (v5 < 1)
  {
    goto LABEL_17;
  }

  goto LABEL_9;
}

void sub_1E571740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

CFIndex TDeepCFURLIterator::Next(uint64_t a1, TCFURLInfo **a2, _DWORD *a3, _DWORD *a4, BOOL *a5, _BYTE *a6, void *a7, _BYTE *a8, uint64_t **a9)
{
  result = TDeepCFURLIterator::NextInternal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (*(a1 + 48) == 1 && result == 0)
  {
    while (TCFURLInfo::IsTrash(*a2) || *(a1 + 53) == 1)
    {
      result = TDeepCFURLIterator::NextInternal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      if (result)
      {
        return result;
      }
    }

    v22 = *MEMORY[0x1E695E480];
    v21 = *MEMORY[0x1E695E498];
    while (*(a1 + 232) == 3)
    {
      TCFURLInfo::Name(&v26, *a2);
      v19 = CFStringCreateWithBytesNoCopy(v22, ".com.apple.backupd.mvlist.plist", 31, 0x8000100u, 0, v21);
      v27 = v19;
      v25.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v25, v19);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v27);
      if (CFEqual(v26.fString.fRef, v25.fString.fRef))
      {
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v25.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v26.fString.fRef);
      }

      else
      {
        TCFURLInfo::Name(&v24, *a2);
        v20 = CFStringCreateWithBytesNoCopy(v22, ".com.apple.backupd.mdmv", 23, 0x8000100u, 0, v21);
        v27 = v20;
        v23.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v23, v20);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v27);
        LOBYTE(v20) = TString::BeginsWith(&v24, &v23);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v24.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v25.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v26.fString.fRef);
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      result = TDeepCFURLIterator::NextInternal(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_1E57176A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va3);
  _Unwind_Resume(a1);
}

CFIndex TDeepCFURLIterator::NextInternal(uint64_t **a1, uint64_t a2, _DWORD *a3, _DWORD *a4, BOOL *a5, _BYTE *a6, void *a7, _BYTE *a8, uint64_t **a9)
{
  v15 = a7[1];
  *a7 = 0;
  a7[1] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *a8 = 0;
  v16 = a9[1];
  *a9 = 0;
  a9[1] = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *a1;
  if (!*a1)
  {
    goto LABEL_72;
  }

  v47 = a3;
  while (1)
  {
    *(a1 + 50) = *(a1 + 29) > 0;
    *(a1 + 53) = *(a1 + 30) > 0;
    *(a1 + 51) = *(a1 + 31) > 0;
    v18 = TCFURLIterator::Next(v17, a2);
    v20 = **a1;
    v19 = (*a1)[1];
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    v21 = a1[4];
    a1[3] = v20;
    a1[4] = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (!v18)
    {
      break;
    }

    if (!*a9 && (*(a1 + 50) & 1) == 0)
    {
      v22 = a1[25];
      if (v22)
      {
        v23 = *v22;
        if (*v22 != v22[1])
        {
          v22 = *v23;
          v24 = *(v23 + 8);
          if (v24)
          {
            atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
          }

          goto LABEL_30;
        }

        v22 = 0;
      }

      v24 = 0;
LABEL_30:
      v30 = a9[1];
      *a9 = v22;
      a9[1] = v24;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    TDeepCFURLIterator::PopIterator(a1);
    ++*a4;
    *a8 = 1;
LABEL_33:
    v17 = *a1;
    if (!*a1 || v18 != -1417)
    {
      goto LABEL_71;
    }
  }

  TDeepCFURLIterator::RecordHardlink(a1[15], a2, *(a1 + 58));
  v25 = a1[16];
  v26 = *(a1 + 58);
  v27 = *a2;
  if (*(*a2 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(*a2, 1);
  }

  TDeepCFURLIterator::RecordClone(v25, a2, v26 == 1, *(v27 + 26) >> 15);
  v29 = *a2;
  if (*(*a2 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(*a2, 1);
  }

  if ((*(v29 + 26) & 1) != 0 && (TCFURLInfo::ShouldSkip(*a2, a1[28], 0) || *(a1 + 48) == 1 && (TCFURLInfo::IsTrash(*a2) || *(a1 + 53) == 1)))
  {
    v18 = 4294965879;
    goto LABEL_33;
  }

  if (TCFURLInfo::GetNumericalProperty(**a2, *MEMORY[0x1E695EBB8], v28) < 2)
  {
    v33 = a5;
    *a5 = 0;
    v52 = 0;
    v51 = 0;
    v31 = *a2;
  }

  else
  {
    v31 = *a2;
    v32 = *(*a2 + 52);
    v33 = a5;
    *a5 = (v32 & 0x200) != 0;
    v52 = 0;
    v51 = 0;
    if ((v32 & 0x200) != 0)
    {
      goto LABEL_46;
    }
  }

  if (*(v31 + 12) <= 0)
  {
    TCFURLInfo::FetchProperties(v31, 1);
  }

  if ((*(v31 + 26) & 1) == 0 && TCFURLInfo::IsClone(*a2, &v52, &v51) && v51)
  {
    v34 = (*(*a2 + 54) >> 4) & 1;
  }

  else
  {
LABEL_46:
    LOBYTE(v34) = 0;
  }

  *a6 = v34;
  if (*(a1 + 218) == 1)
  {
    if (a1[18])
    {
      if ((*(a1 + 50) & 1) == 0)
      {
        TCFURLInfoList::FindAndRemove(a1[25], a2, &v50);
        v35 = a7[1];
        *a7 = v50;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }
    }
  }

  v36 = *a2;
  if (*(*a2 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(*a2, 1);
  }

  if ((*(v36 + 26) & 1) == 0 || *v33)
  {
    goto LABEL_66;
  }

  v37 = *a2;
  if (*(*a2 + 48) <= 0)
  {
    TCFURLInfo::FetchProperties(*a2, 1);
  }

  if ((*(v37 + 26) & 0x80) != 0 || !*a1)
  {
LABEL_66:
    v18 = 0;
  }

  else
  {
    v38 = *(a2 + 8);
    *&v50 = *a2;
    *(&v50 + 1) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    TDeepCFURLIterator::PushIterator(a1, &v50);
    v18 = v39;
    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
    }

    if (!v18)
    {
      ++*v47;
    }
  }

  if (*(a1 + 50))
  {
    v40 = 1024;
  }

  else
  {
    v40 = 0;
  }

  *(*a2 + 52) = *(*a2 + 52) & 0xFBFF | v40;
LABEL_71:
  if (v18 == -1417)
  {
LABEL_72:
    v41 = a1[25];
    if (v41)
    {
      *a8 = 1;
      if (!*a9 && (*(a1 + 50) & 1) == 0)
      {
        v42 = *v41;
        if (*v41 == v41[1])
        {
          v43 = 0;
          v44 = 0;
        }

        else
        {
          v43 = *v42;
          v44 = v42[1];
          if (v44)
          {
            atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
          }
        }

        v45 = a9[1];
        *a9 = v43;
        a9[1] = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }
    }

    return 4294965879;
  }

  return v18;
}

void sub_1E5717B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TDeepCFURLIterator::PopIterator(TDeepCFURLIterator *this)
{
  v2 = *this;
  if (*this)
  {
    v29 = (v2 + 40);
    std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v29);
    TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v2 + 32));
    TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E692CD30](v2, 0x1060C40CE86CDCBLL);
  }

  v4 = *(this + 10);
  if (*(this + 9) == v4)
  {
    *this = 0;
  }

  else
  {
    v5 = *(this + 30);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v7 < 0 == v6)
    {
      *(this + 30) = v7;
    }

    v8 = *(this + 31);
    v6 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (v9 < 0 == v6)
    {
      *(this + 31) = v9;
    }

    v10 = *(v4 - 8);
    *this = v10;
    *(this + 10) = v4 - 8;
    v11 = *(this + 23);
    if (*(this + 22) != v11)
    {
      v13 = *(v11 - 16);
      v12 = *(v11 - 8);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(this + 26);
      *(this + 25) = v13;
      *(this + 26) = v12;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v15 = *(this + 23);
      v16 = *(v15 - 8);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      *(this + 23) = v15 - 16;
      v10 = *this;
    }

    if (v10)
    {
      v17 = *v10;
      v18 = *v10;
      if (*(*v10 + 12) <= 0)
      {
        TCFURLInfo::FetchProperties(*v10, 1);
        v18 = **this;
      }

      *(this + 49) = (*(v17 + 52) & 4) != 0;
      *(this + 52) = TCFURLInfo::IsTrash(v18);
      --*(this + 32);
    }

    else
    {
      *(this + 49) = 0;
      *(this + 52) = 0;
    }

    v19 = *(this + 29);
    v6 = __OFSUB__(v19, 1);
    v20 = v19 - 1;
    if (v20 < 0 == v6)
    {
      *(this + 29) = v20;
      if (!v20)
      {
        v21 = *(this + 13);
        *(this + 12) = 0;
        *(this + 13) = 0;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      v22 = *(this + 17);
      if (v22)
      {
        v23 = v22[5];
        if (v23)
        {
          v24 = v23 - 1;
          v25 = *(*(v22[1] + (((v22[4] + v24) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v22[4] + v24) & 0x1FF));
          v22[5] = v24;
          std::deque<TReservationRecord *>::__maybe_remove_back_spare[abi:ne200100](v22, 1);
          if (v25)
          {
            v27 = *(v25 + 16);
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }

            v28 = *v25;
            *v25 = 0;
            if (v28)
            {
              TFileCoordinationRecord::~TFileCoordinationRecord(v28, v26);
              MEMORY[0x1E692CD30]();
            }

            MEMORY[0x1E692CD30](v25, 0x60C40A44E5E0CLL);
          }
        }
      }
    }
  }
}

uint64_t TDeepCFURLIterator::RecordHardlink(uint64_t result, const void ***a2, const __CFString *a3)
{
  if (result)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = result;
      v6 = a3 & 0xFFFFFFFB;
      if (*(v4 + 12) <= 0)
      {
        result = TCFURLInfo::FetchProperties(*a2, 1);
      }

      if (v6 == 2 || (*(v4 + 26) & 1) == 0)
      {
        v7 = *MEMORY[0x1E695EBB8];
        result = TCFURLInfo::GetNumericalProperty(**a2, *MEMORY[0x1E695EBB8], a3);
        if (result >= 2)
        {
          ObjectIdentifier = TCFURLInfo::GetObjectIdentifier(*a2);
          v8 = *a2;
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v5, &ObjectIdentifier, &ObjectIdentifier);
          v10 = v9;
          result = TCFURLInfo::GetNumericalProperty(*v8, v7, v11);
          if (result >= 2)
          {
            if (v10)
            {
              v12 = 0;
            }

            else
            {
              v12 = 512;
            }

            *(v8 + 26) = *(v8 + 26) & 0xFDFF | v12;
          }
        }
      }
    }
  }

  return result;
}

const __CFURL **TDeepCFURLIterator::RecordClone(const __CFURL **result, uint64_t a2, int a3, char a4)
{
  if (result)
  {
    v5 = result;
    result = *a2;
    if (*a2)
    {
      v15 = 0;
      result = TCFURLInfo::IsClone(result, &v15, 0);
      if (result)
      {
        if ((!a3 || (result = TCFURLInfo::GetNumericalProperty(**a2, *MEMORY[0x1E695EAF0], v8)) != 0) && (a4 & 1) == 0)
        {
          HasCloneID = TCloneCache::HasCloneID(v5, &v15);
          if (!HasCloneID)
          {
            v10 = *(a2 + 8);
            v13 = *a2;
            v14 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            TCloneCache::RecordClone(v5, &v15, &v13);
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }
          }

          v11 = *a2;
          result = TCFURLInfo::IsClone(v11, 0, 0);
          if (result)
          {
            if (HasCloneID)
            {
              v12 = 16;
            }

            else
            {
              v12 = 0;
            }

            *(v11 + 54) = *(v11 + 54) & 0xEF | v12;
          }
        }
      }
    }
  }

  return result;
}

void sub_1E5717F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void TCFURLInfoList::FindAndRemove(TCFURLInfo ***a1@<X0>, uint64_t a2@<X1>, TCFURLInfo **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v7 = *a1;
  v6 = a1[1];
  v8 = (v6 - *a1) >> 4;
  if (v8 >= 1)
  {
    do
    {
      v9 = (v7 + 16 * (v8 >> 1));
      v10 = *v9;
      v11 = *(a2 + 8);
      v21[0] = *a2;
      v21[1].fString.fRef = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->info, 1uLL, memory_order_relaxed);
      }

      v12 = TCFURLInfo::LessThan(v10, v21);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v12)
      {
        v7 = (v9 + 2);
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 = v8 >> 1;
      }
    }

    while (v8 > 0);
    v6 = a1[1];
  }

  if (v7 != v6)
  {
    TCFURLInfo::Name(v21, *v7);
    TCFURLInfo::Name(&v20, *a2);
    v13 = CFEqual(v21[0].fString.fRef, v20.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21[0].fString.fRef);
    if (v13)
    {
      v15 = *v7;
      v14 = *(v7 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
      }

      *a3 = v15;
      a3[1] = v14;
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TCFURLInfo> *,std::shared_ptr<TCFURLInfo> *,std::shared_ptr<TCFURLInfo> *>(v21, (v7 + 16), a1[1], v7);
      v17 = v16;
      for (i = a1[1]; i != v17; i -= 2)
      {
        v19 = *(i - 1);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      a1[1] = v17;
    }
  }
}

void sub_1E57180F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

const void **TDeepCFURLIterator::MapSourceToDestination@<X0>(uint64_t a1@<X0>, TCFURLInfo ***a2@<X1>, _OWORD *a3@<X8>)
{
  v10 = 0uLL;
  v9.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v6 = TCFURLInfo::FileSystemRepresentationRelativeToSource(*a2, (a1 + 160), &v9);
  v7 = 0uLL;
  if (v6)
  {
    TCFURLInfo::CreateCFURLInfoWithFileSystemRepresentationRelativeToBase(*(a1 + 144), &v9, (a1 + 168), &v10);
    v7 = v10;
  }

  *a3 = v7;
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
}

void sub_1E57181CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void TFileDescriptor::~TFileDescriptor(TFileDescriptor *this)
{
  if (*(this + 2) >= 1)
  {
    TFileDescriptor::Close(this);
  }
}

uint64_t ReturnToSenderEnabled(void)
{
  {
    ReturnToSenderEnabled(void)::enabled = getSYDocumentWorkflowsClass() != 0;
  }

  return ReturnToSenderEnabled(void)::enabled;
}

unint64_t TCFURLInfo::GetFlatItemDirEntryCount(TCFURLInfo *this, const __CFURL *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v8 = 0;
LABEL_19:
    v11 = 0;
    return v11 | v8;
  }

  v3 = a2;
  if (!IsEnhancedAPFSEnabled())
  {
    if (v3)
    {
      TCFURLInfo::FileSystemRepresentation(&theString, this, 1);
      if (CFStringGetLength(theString))
      {
        v12 = TString::c_str(&theString);
        if (v12)
        {
          if (!stat(v12, &buf) && (buf.st_nlink + 1) >= 3u)
          {
            v8 = LOBYTE(buf.st_nlink) - 2;
            v11 = (buf.st_nlink + 4294967294) & 0xFFFFFF00;
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
            return v11 | v8;
          }
        }
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
    }

    v13 = LogObj(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = SanitizedURL(this);
      buf.st_dev = 138543362;
      *&buf.st_mode = v14;
      _os_log_impl(&dword_1E5674000, v13, OS_LOG_TYPE_ERROR, "Failed to get item count for directory: %{public}@", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  v5 = TCFURLInfo::GetNumberProperty(this, *MEMORY[0x1E695EA58], v4);
  v6 = v5;
  if (!v5)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v7 = [v5 unsignedLongLongValue];
  v8 = v7;
  if (v7 == 65533)
  {
    v9 = LogObj(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = SanitizedURL(this);
      buf.st_dev = 138543362;
      *&buf.st_mode = v10;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_DEBUG, "Unknown child item count found for %{public}@", &buf, 0xCu);
    }

    v8 = 0;
    v11 = 0;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFFF00;
  }

  return v11 | v8;
}

uint64_t TCFURLInfo::GetFlatItemCountWithIteration(TCFURLInfo *this, const __CFURL *a2, int a3)
{
  v24 = a2;
  v30[3] = *MEMORY[0x1E69E9840];
  if (!this)
  {
    return -2;
  }

  v4 = *MEMORY[0x1E695EAC8];
  v30[0] = v4;
  v5 = *MEMORY[0x1E695EB40];
  v30[1] = v5;
  v6 = *MEMORY[0x1E695EBE8];
  v30[2] = v6;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];

  v7 = MEMORY[0x1E692C4F0](*MEMORY[0x1E695E480], this, 0, v25);
  v8 = 0;
  if (*MEMORY[0x1E695EAD0])
  {
    v9 = *MEMORY[0x1E695EAD0];
  }

  else
  {
    v9 = &stru_1F5F42870;
  }

  v10 = *MEMORY[0x1E695EAC0];
  if (!*MEMORY[0x1E695EAC0])
  {
    v10 = &stru_1F5F42870;
  }

  cf2 = v10;
  v11 = *MEMORY[0x1E695EAD8];
  if (!*MEMORY[0x1E695EAD8])
  {
    v11 = &stru_1F5F42870;
  }

  v21 = v11;
  v29 = v7;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  while (v12 != 2)
  {
    v28 = 0;
    v12 = MEMORY[0x1E692C500](v29, &v28, 0);
    if (v12 != 1)
    {
      goto LABEL_31;
    }

    v13 = TCFURLInfo::StringProperty(&cf1, v28, v6);
    TCFURLInfo::GetPropertyStoreName(v13);
    if (!CFEqual(cf1, TCFURLInfo::GetPropertyStoreName(void)::propertyStoreName) && (operator==(&cf1, @".localized") & 1) == 0)
    {
      if (!operator==(&cf1, @"Inbox") || (v15 = v28, v16 = IsAppInbox(v15), v15, !v16))
      {
        TCFURLInfo::StringProperty(&v26, v28, v4);
        if ((CFEqual(v26, v9) || CFEqual(v26, cf2) || CFEqual(v26, v21)) && (!v24 ? (v18 = 1) : (v18 = TCFURLInfo::GetBooleanProperty(v28, v5, v17) ^ 1), (v8 += v18, a3) && v8))
        {
          v19 = 0;
          v14 = 3;
        }

        else
        {
          v14 = 0;
          v19 = 1;
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v26);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
        if ((v19 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        v14 = 0;
        goto LABEL_32;
      }

      MEMORY[0x1E692C510](v29);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    v14 = 2;
LABEL_32:
    if (v14 == 3)
    {
      break;
    }
  }

  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(&v29);

  return v8;
}

void sub_1E57187F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  v14 = va_arg(va2, void);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(va2);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1E57188C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

id std::vector<NSURL * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
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

    v13[4] = a1;
    if (v11)
    {
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<NSURL * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<TNodePtr>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1E5718C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void TCFURLIterator::~TCFURLIterator(const void **this)
{
  v3 = (this + 5);
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v3);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(this + 4);
  TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(this + 2);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TCFURLInfo> *,std::shared_ptr<TCFURLInfo> *,std::shared_ptr<TCFURLInfo> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

Class initSYDocumentWorkflows(void)
{
  if (SynapseLibrary(void)::frameworkLibrary || (SynapseLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 2)) != 0)
  {
    Class = objc_getClass("SYDocumentWorkflows");
    classSYDocumentWorkflows = Class;
    getSYDocumentWorkflowsClass = SYDocumentWorkflowsFunction;
  }

  else
  {
    Class = classSYDocumentWorkflows;
  }

  return Class;
}

{
  if (SynapseLibrary(void)::frameworkLibrary || (SynapseLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 2)) != 0)
  {
    Class = objc_getClass("SYDocumentWorkflows");
    classSYDocumentWorkflows = Class;
    getSYDocumentWorkflowsClass = SYDocumentWorkflowsFunction;
  }

  else
  {
    Class = classSYDocumentWorkflows;
  }

  return Class;
}

id SYDocumentWorkflowsFunction(void)
{
  return classSYDocumentWorkflows;
}

{
  return classSYDocumentWorkflows;
}

const void **TAutoRef<__CFSet *,TRetainReleasePolicy<__CFSet *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TAutoRef<__CFDictionary *,TRetainReleasePolicy<__CFDictionary *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TRef<__CFBundle *,TRetainReleasePolicy<__CFBundle *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TRef<__CFURLEnumerator const*,TRetainReleasePolicy<__CFURLEnumerator const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void **TACLRef<unsigned char (*)[16]>::~TACLRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    acl_free(v2);
    *a1 = 0;
  }

  return a1;
}

void std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(uint64_t a1, const void **a2)
{
  if (a2)
  {
    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(a1, *a2);
    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(a1, a2[1]);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(a2 + 4);

    operator delete(a2);
  }
}

uint64_t std::__tree<TString,TTagCompare,std::allocator<TString>>::__emplace_unique_key_args<TString,TString>(uint64_t **a1, const void **a2, CFTypeRef *a3)
{
  v3 = *std::__tree<TString,TTagCompare,std::allocator<TString>>::__find_equal<TString>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<TString,TTagCompare,std::allocator<TString>>::__find_equal<TString>(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!TTagCompare::operator()(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!TTagCompare::operator()(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<TString,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<TString,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL TTagCompare::operator()(uint64_t a1, const void **a2, const void **a3)
{
  v4 = RetainCF<__CFString const*>(a2);
  if (v4)
  {
    v5 = CFAutorelease(v4);
    v6 = static_cf_cast<__CFString const*,void const*>(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = RetainCF<__CFString const*>(a3);
  if (v7)
  {
    v8 = CFAutorelease(v7);
    v9 = static_cf_cast<__CFString const*,void const*>(v8);
  }

  else
  {
    v9 = 0;
  }

  return SpotlightStringCompare(v6, v9) == kCFCompareLessThan;
}

uint64_t std::deque<TReservationRecord *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::deque<TReservationRecord *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<TReservationRecord *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<TReservationRecord *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<TReservationRecord **>::emplace_back<TReservationRecord **&>(a1, &v9);
}

void sub_1E5719590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<TReservationRecord **>::emplace_back<TReservationRecord **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<TReservationRecord **>::emplace_front<TReservationRecord **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<TReservationRecord **>::emplace_back<TReservationRecord **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<TReservationRecord **>::emplace_front<TReservationRecord **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__shared_ptr_emplace<TCFURLInfoList>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3E9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__introsort<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,false>(TCFURLInfo **a1, TCFURLInfo **a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v163 = a2 - 2;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (v6 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(v7, (v7 + 2), v163);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(v7, (v7 + 2), (v7 + 4), v163);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(v7, (v7 + 2), (v7 + 4), (v7 + 6), v163);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      v6 = a2;
      if (v8 == 2)
      {
        v69 = *(a2 - 2);
        v70 = v7[1];
        v170 = *v7;
        v171 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v71 = TCFURLInfo::LessThan(v69, &v170);
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        if (v71)
        {
          v72 = *v7;
          *v7 = *(a2 - 2);
          *(a2 - 2) = v72;
          v73 = v7[1];
          v7[1] = *(a2 - 1);
          *(a2 - 1) = v73;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v90 = v9 >> 1;
      v91 = v9 >> 1;
      v162 = v7;
      do
      {
        v92 = v91;
        if (v90 >= v91)
        {
          v93 = (2 * v91) | 1;
          v94 = &a1[2 * v93];
          if (2 * v91 + 2 < v8)
          {
            v95 = *v94;
            v170 = v94[2];
            v96 = v94[3];
            v171 = v96;
            if (v96)
            {
              atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v97 = TCFURLInfo::LessThan(v95, &v170);
            if (v96)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v96);
            }

            if (v97)
            {
              v94 += 2;
              v93 = 2 * v92 + 2;
            }
          }

          v98 = &a1[2 * v92];
          v99 = *v94;
          v170 = *v98;
          v100 = v98[1];
          v171 = v100;
          if (v100)
          {
            atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v101 = TCFURLInfo::LessThan(v99, &v170);
          if (v100)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          }

          if (!v101)
          {
            v102 = v98[1];
            v164 = v92;
            v167 = *v98;
            *v98 = 0;
            v98[1] = 0;
            do
            {
              v103 = v94;
              v104 = *v94;
              *v94 = 0;
              v94[1] = 0;
              v105 = v98[1];
              *v98 = v104;
              if (v105)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v105);
              }

              if (v90 < v93)
              {
                break;
              }

              v106 = (2 * v93) | 1;
              v94 = &a1[2 * v106];
              v107 = 2 * v93 + 2;
              if (v107 >= v8)
              {
                v93 = (2 * v93) | 1;
              }

              else
              {
                v108 = *v94;
                v170 = v94[2];
                v109 = v94[3];
                v171 = v109;
                if (v109)
                {
                  atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v110 = TCFURLInfo::LessThan(v108, &v170);
                if (v109)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v109);
                }

                if (v110)
                {
                  v94 += 2;
                  v93 = v107;
                }

                else
                {
                  v93 = v106;
                }

                a1 = v162;
              }

              v111 = *v94;
              v170 = v167;
              v171 = v102;
              if (v102)
              {
                atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v112 = TCFURLInfo::LessThan(v111, &v170);
              if (v102)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v102);
              }

              v98 = v103;
            }

            while (!v112);
            v113 = v103[1];
            *v103 = v167;
            v103[1] = v102;
            v92 = v164;
            if (v113)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v113);
            }
          }
        }

        v91 = v92 - 1;
      }

      while (v92);
      while (2)
      {
        v114 = 0;
        v161 = *a1;
        v165 = a2;
        v168 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v115 = a1;
        do
        {
          v116 = &v115[2 * v114];
          v117 = v116 + 2;
          v118 = (2 * v114) | 1;
          v119 = 2 * v114 + 2;
          if (v119 >= v8)
          {
            v114 = (2 * v114) | 1;
          }

          else
          {
            v120 = v116[2];
            v122 = v116[4];
            v121 = v116 + 4;
            v170 = v122;
            v123 = v121[1];
            v171 = v123;
            if (v123)
            {
              atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v124 = TCFURLInfo::LessThan(v120, &v170);
            if (v123)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v123);
            }

            if (v124)
            {
              v117 = v121;
              v114 = v119;
            }

            else
            {
              v114 = v118;
            }
          }

          v125 = *v117;
          *v117 = 0;
          v117[1] = 0;
          v126 = v115[1];
          *v115 = v125;
          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }

          v115 = v117;
        }

        while (v114 <= ((v8 - 2) >> 1));
        v127 = a2 - 2;
        a2 -= 2;
        if (v117 == v165 - 2)
        {
          v146 = v117[1];
          *v117 = v161;
          v117[1] = v168;
          if (!v146)
          {
            goto LABEL_223;
          }
        }

        else
        {
          v128 = *(v165 - 1);
          *v127 = 0;
          v127[1] = 0;
          v129 = v117[1];
          *v117 = v128;
          if (v129)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v129);
          }

          v130 = *(v165 - 1);
          *(v165 - 2) = v161;
          *(v165 - 1) = v168;
          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v130);
          }

          v131 = ((v117 + 2) - a1) >> 4;
          v132 = v131 < 2;
          v133 = v131 - 2;
          if (v132)
          {
            goto LABEL_223;
          }

          v134 = v133 >> 1;
          v135 = &a1[2 * (v133 >> 1)];
          v136 = *v135;
          v137 = v117[1];
          v170 = *v117;
          v171 = v137;
          if (v137)
          {
            atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v138 = TCFURLInfo::LessThan(v136, &v170);
          if (v137)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v137);
          }

          if (!v138)
          {
            goto LABEL_223;
          }

          v140 = *v117;
          v139 = v117[1];
          *v117 = 0;
          v117[1] = 0;
          do
          {
            v141 = v135;
            v142 = *v135;
            *v135 = 0;
            v135[1] = 0;
            v143 = v117[1];
            *v117 = v142;
            if (v143)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v143);
            }

            if (!v134)
            {
              break;
            }

            v134 = (v134 - 1) >> 1;
            v135 = &a1[2 * v134];
            v144 = *v135;
            v170 = v140;
            v171 = v139;
            if (v139)
            {
              atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v145 = TCFURLInfo::LessThan(v144, &v170);
            if (v139)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v139);
            }

            v117 = v141;
          }

          while (v145);
          v146 = v141[1];
          *v141 = v140;
          v141[1] = v139;
          if (!v146)
          {
LABEL_223:
            v132 = v8-- <= 2;
            if (v132)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v146);
      goto LABEL_223;
    }

    v10 = v8 >> 1;
    v11 = &v7[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(&a1[2 * (v8 >> 1)], a1, v163);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, &a1[2 * (v8 >> 1)], v163);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>((a1 + 2), (v11 - 2), (a2 - 4));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>((a1 + 4), &a1[2 * v10 + 2], (a2 - 6));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>((v11 - 2), &a1[2 * (v8 >> 1)], &a1[2 * v10 + 2]);
      v12 = *a1;
      *a1 = *v11;
      *v11 = v12;
    }

    --a3;
    if (a4)
    {
      goto LABEL_20;
    }

    v13 = *(a1 - 2);
    v14 = a1[1];
    v170 = *a1;
    v171 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = TCFURLInfo::LessThan(v13, &v170);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v15)
    {
LABEL_20:
      v16 = 0;
      v17 = *a1;
      v18 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v19 = a1[v16 + 2];
        v170 = v17;
        v171 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = TCFURLInfo::LessThan(v19, &v170);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v16 += 2;
      }

      while (v20);
      v21 = &a1[v16];
      if (v16 == 2)
      {
        v6 = a2;
        do
        {
          if (v21 >= v6)
          {
            break;
          }

          v26 = *(v6 - 2);
          v6 -= 2;
          v25 = v26;
          v170 = v17;
          v171 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = TCFURLInfo::LessThan(v25, &v170);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        while (!v27);
      }

      else
      {
        do
        {
          v23 = *(v6 - 2);
          v6 -= 2;
          v22 = v23;
          v170 = v17;
          v171 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = TCFURLInfo::LessThan(v22, &v170);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        while (!v24);
      }

      v7 = &a1[v16];
      if (v21 < v6)
      {
        v28 = v6;
        do
        {
          v29 = *v7;
          *v7 = *v28;
          *v28 = v29;
          v30 = v7[1];
          v7[1] = v28[1];
          v28[1] = v30;
          do
          {
            v32 = v7[2];
            v7 += 2;
            v31 = v32;
            v170 = v17;
            v171 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = TCFURLInfo::LessThan(v31, &v170);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }

          while (v33);
          do
          {
            v35 = *(v28 - 2);
            v28 -= 2;
            v34 = v35;
            v170 = v17;
            v171 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v36 = TCFURLInfo::LessThan(v34, &v170);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }

          while (!v36);
        }

        while (v7 < v28);
      }

      v37 = v7 - 2;
      if (v7 - 2 != a1)
      {
        v38 = *v37;
        *v37 = 0;
        *(v7 - 1) = 0;
        v39 = a1[1];
        *a1 = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }
      }

      v40 = *(v7 - 1);
      *(v7 - 2) = v17;
      *(v7 - 1) = v18;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      v41 = v21 >= v6;
      v6 = a2;
      if (!v41)
      {
        goto LABEL_63;
      }

      v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *>(a1, (v7 - 2));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *>(v7, a2))
      {
        a2 = v7 - 2;
        if (v42)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v42)
      {
LABEL_63:
        std::__introsort<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,false>(a1, v7 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v44 = *a1;
      v43 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v170 = *(v6 - 2);
      v45 = *(v6 - 1);
      v171 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = TCFURLInfo::LessThan(v44, &v170);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (v46)
      {
        v7 = a1;
        do
        {
          v47 = v7[2];
          v48 = v7[3];
          v7 += 2;
          v170 = v47;
          v171 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = TCFURLInfo::LessThan(v44, &v170);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }
        }

        while (!v49);
      }

      else
      {
        v50 = a1 + 2;
        do
        {
          v7 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v170 = *v50;
          v51 = v50[1];
          v171 = v51;
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = TCFURLInfo::LessThan(v44, &v170);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          v50 = v7 + 2;
        }

        while (!v52);
      }

      v53 = a2;
      if (v7 < a2)
      {
        v53 = a2;
        do
        {
          v54 = *(v53 - 2);
          v53 -= 2;
          v170 = v54;
          v55 = v53[1];
          v171 = v55;
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v56 = TCFURLInfo::LessThan(v44, &v170);
          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }
        }

        while (v56);
      }

      while (v7 < v53)
      {
        v57 = *v7;
        *v7 = *v53;
        *v53 = v57;
        v58 = v7[1];
        v7[1] = v53[1];
        v53[1] = v58;
        do
        {
          v59 = v7[2];
          v60 = v7[3];
          v7 += 2;
          v170 = v59;
          v171 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = TCFURLInfo::LessThan(v44, &v170);
          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }
        }

        while (!v61);
        do
        {
          v62 = *(v53 - 2);
          v53 -= 2;
          v170 = v62;
          v63 = v53[1];
          v171 = v63;
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64 = TCFURLInfo::LessThan(v44, &v170);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }
        }

        while (v64);
      }

      v65 = v7 - 2;
      if (v7 - 2 != a1)
      {
        v66 = *v65;
        *v65 = 0;
        *(v7 - 1) = 0;
        v67 = a1[1];
        *a1 = v66;
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }
      }

      a4 = 0;
      v68 = *(v7 - 1);
      *(v7 - 2) = v44;
      *(v7 - 1) = v43;
      v6 = a2;
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        a4 = 0;
      }
    }
  }

  if (a4)
  {
    if (v7 != v6)
    {
      v74 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v75 = 0;
        do
        {
          v76 = v7;
          v7 = v74;
          v78 = v76[1];
          v77 = v76[2];
          v170 = *v76;
          v171 = v78;
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v79 = TCFURLInfo::LessThan(v77, &v170);
          if (v78)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          if (v79)
          {
            v80 = *v7;
            v81 = v76[3];
            v82 = v75;
            *v7 = 0;
            v7[1] = 0;
            while (1)
            {
              v83 = a1 + v82;
              v84 = *(a1 + v82);
              *v83 = 0;
              *(v83 + 1) = 0;
              v85 = *(a1 + v82 + 24);
              *(v83 + 1) = v84;
              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v85);
              }

              if (!v82)
              {
                break;
              }

              v170 = *(a1 + v82 - 16);
              v86 = *(a1 + v82 - 8);
              v171 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v87 = TCFURLInfo::LessThan(v80, &v170);
              if (v86)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v86);
              }

              v82 -= 16;
              if (!v87)
              {
                v88 = (a1 + v82 + 16);
                goto LABEL_145;
              }
            }

            v88 = a1;
LABEL_145:
            v89 = v88[1];
            *v88 = v80;
            v88[1] = v81;
            if (v89)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v89);
            }
          }

          v74 = v7 + 2;
          v75 += 16;
        }

        while (v7 + 2 != a2);
      }
    }
  }

  else if (v7 != v6)
  {
    v147 = v7 + 2;
    if (v7 + 2 != a2)
    {
      v148 = (v7 + 3);
      do
      {
        v149 = a1;
        a1 = v147;
        v151 = v149[1];
        v150 = v149[2];
        v170 = *v149;
        v171 = v151;
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v152 = TCFURLInfo::LessThan(v150, &v170);
        if (v151)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v151);
        }

        if (v152)
        {
          v153 = *a1;
          v154 = v149[3];
          v155 = v148;
          *a1 = 0;
          a1[1] = 0;
          do
          {
            v156 = *(v155 - 3);
            *(v155 - 3) = 0;
            *(v155 - 2) = 0;
            v157 = *v155;
            *(v155 - 1) = v156;
            if (v157)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v157);
            }

            v170 = *(v155 - 5);
            v158 = *(v155 - 4);
            v171 = v158;
            if (v158)
            {
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v159 = TCFURLInfo::LessThan(v153, &v170);
            if (v158)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v158);
            }

            v155 -= 2;
          }

          while (v159);
          v160 = *v155;
          *(v155 - 1) = v153;
          *v155 = v154;
          if (v160)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v160);
          }
        }

        v147 = a1 + 2;
        v148 += 2;
      }

      while (a1 + 2 != a2);
    }
  }
}

void sub_1E571A704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  v29 = *a1;
  v30 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = TCFURLInfo::LessThan(v6, &v29);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v10 = *a3;
  v11 = (a2 + 8);
  if (v9)
  {
    v12 = *(a2 + 8);
    v29 = *a2;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = TCFURLInfo::LessThan(v10, &v29);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
      *a3 = v14;
      v15 = (a3 + 8);
LABEL_29:
      v11 = v15;
      goto LABEL_30;
    }

    *a1 = *a2;
    *a2 = v14;
    v24 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v24;
    v25 = *a3;
    v29 = *a2;
    v30 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = TCFURLInfo::LessThan(v25, &v29);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v26)
    {
      v27 = *a2;
      *a2 = *a3;
      *a3 = v27;
      v15 = (a3 + 8);
      v8 = (a2 + 8);
      goto LABEL_29;
    }
  }

  else
  {
    v16 = *(a2 + 8);
    v29 = *a2;
    v30 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = TCFURLInfo::LessThan(v10, &v29);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v19;
      v20 = *a2;
      v21 = *(a1 + 8);
      v29 = *a1;
      v30 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = TCFURLInfo::LessThan(v20, &v29);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v22)
      {
        v23 = *a1;
        *a1 = *a2;
        *a2 = v23;
LABEL_30:
        v28 = *v8;
        *v8 = *v11;
        *v11 = v28;
      }
    }
  }
}

void sub_1E571A9FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *(a3 + 8);
  v23 = *a3;
  v24 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = TCFURLInfo::LessThan(v8, &v23);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v10)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    v13 = *a3;
    v14 = *(a2 + 8);
    v23 = *a2;
    v24 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = TCFURLInfo::LessThan(v13, &v23);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v15)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v17;
      v18 = *a2;
      v19 = *(a1 + 8);
      v23 = *a1;
      v24 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = TCFURLInfo::LessThan(v18, &v23);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v20)
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v22;
      }
    }
  }
}

void sub_1E571AB80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *(a4 + 8);
  v30 = *a4;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = TCFURLInfo::LessThan(v10, &v30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v14;
    v15 = *a4;
    v16 = *(a3 + 8);
    v30 = *a3;
    v31 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = TCFURLInfo::LessThan(v15, &v30);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v17)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v19;
      v20 = *a3;
      v21 = *(a2 + 8);
      v30 = *a2;
      v31 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = TCFURLInfo::LessThan(v20, &v30);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v22)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        v24 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v24;
        v25 = *a2;
        v26 = *(a1 + 8);
        v30 = *a1;
        v31 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v27 = TCFURLInfo::LessThan(v25, &v30);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v27)
        {
          v28 = *a1;
          *a1 = *a2;
          *a2 = v28;
          v29 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v29;
        }
      }
    }
  }
}

void sub_1E571AD6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *(a1 + 8);
        v30 = *a1;
        v31 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = TCFURLInfo::LessThan(v5, &v30);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (v7)
        {
          v8 = *a1;
          *a1 = *(v2 - 16);
          *(v2 - 16) = v8;
          v9 = *(a1 + 8);
          *(a1 + 8) = *(v2 - 8);
          *(v2 - 8) = v9;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a2 - 16);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
  }

LABEL_15:
  v10 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TDeepCFURLIterator::CreateDestinationListForSource(std::shared_ptr<TCFURLInfo const> const&)::$_0 &,std::shared_ptr<TCFURLInfo> *,0>(a1, a1 + 16, a1 + 32);
  v11 = (a1 + 48);
  if (a1 + 48 == v2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v15 = *v10;
    v16 = v10[1];
    v30 = v15;
    v31 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = TCFURLInfo::LessThan(v14, &v30);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v17)
    {
      v18 = v2;
      v19 = *v11;
      v29 = v11[1];
      v20 = v12;
      *v11 = 0;
      v11[1] = 0;
      while (1)
      {
        v21 = a1 + v20;
        v22 = *(a1 + v20 + 32);
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        v23 = *(a1 + v20 + 56);
        *(v21 + 48) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v20 == -32)
        {
          break;
        }

        v24 = *(a1 + v20 + 24);
        v30 = *(a1 + v20 + 16);
        v31 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = TCFURLInfo::LessThan(v19, &v30);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v20 -= 16;
        if (!v25)
        {
          v26 = (a1 + v20 + 48);
          goto LABEL_33;
        }
      }

      v26 = a1;
LABEL_33:
      v27 = v26[1];
      *v26 = v19;
      v26[1] = v29;
      v2 = v18;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (++v13 == 8)
      {
        return v11 + 2 == v18;
      }
    }

    v10 = v11;
    v12 += 16;
    v11 += 2;
    if (v11 == v2)
    {
      return 1;
    }
  }
}

void sub_1E571B00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}