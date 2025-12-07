void sub_18F660698(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F660648);
}

CFTypeID applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(a2);
  if (TypeID == result)
  {
    result = applesauce::CF::details::CFString_get_value<false>(&v7, a2);
    *a1 = v7;
    *(a1 + 16) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v6;
  return result;
}

void *applesauce::CF::details::CFString_get_value<false>(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(theString, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  std::string::basic_string[abi:ne200100](a1, maxBufLen);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

const void *applesauce::CF::details::at_key<char const*&>(const __CFDictionary *a1, char *__s)
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

void sub_18F660908(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F6608F4);
}

unint64_t DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(const __CFDictionary **a1, char *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = applesauce::CF::details::at_key<char const*&>(v3, a2);
  if (v5)
  {
    v6 = applesauce::CF::convert_as<unsigned int,0>(v5);
    v7 = v6;
    v8 = v6 >> 8;
    v9 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      return v7 | (v8 << 8) | (v9 << 32);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v8 = 0;
    v7 = 0;
  }

  if (!*a1)
  {
LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v10 = applesauce::CF::details::at_key<char const*&>(*a1, a2);
  if (v10)
  {
    applesauce::CF::convert_as<std::string,0>(__p, v10);
    if (v19)
    {
      *v16 = 0;
      v12 = v18 >= 0 ? __p : __p[0];
      if (DSPGraph::StrToOSType(v12, v16, v11))
      {
        v13 = 0;
        v7 = v16[0];
        v8 = *v16 >> 8;
        LOBYTE(v9) = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v19 = 0;
  }

  v13 = 1;
LABEL_16:
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    LOBYTE(v9) = 0;
    v7 = 0;
  }

  return v7 | (v8 << 8) | (v9 << 32);
}

void sub_18F660AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *applesauce::CF::details::at_key<__CFString const*>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

void std::vector<AudioStreamPacketDescription>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F660C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioConverterServer::setup(AudioConverterServer *this, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  MEMORY[0x193ADEE30](v33, this);
  std::string::basic_string[abi:ne200100]<0>(&v29, " (");
  v4 = strlen(a2);
  v5 = std::string::insert(&v29, 0, a2, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if ((v36 & 0x10) != 0)
  {
    v8 = v35;
    if (v35 < v34)
    {
      v35 = v34;
      v8 = v34;
    }

    v9 = v33[6];
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v7 = 0;
      v28 = 0;
      goto LABEL_14;
    }

    v9 = v33[3];
    v8 = v33[5];
  }

  v7 = v8 - v9;
  if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v8 - v9;
  if (v7)
  {
    memmove(__dst, v9, v7);
  }

LABEL_14:
  *(__dst + v7) = 0;
  if ((v28 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::string::append(&v30, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v20, ")", 1uLL);
  v15 = v14->__r_.__value_.__r.__words[0];
  size = v14->__r_.__value_.__l.__size_;
  v31[0] = v14->__r_.__value_.__r.__words[2];
  *(v31 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
  v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
LABEL_28:
    v20.__r_.__value_.__r.__words[0] = v15;
    v20.__r_.__value_.__l.__size_ = size;
    LODWORD(v20.__r_.__value_.__r.__words[2]) = v31[0];
    *(&v20.__r_.__value_.__r.__words[2] + 3) = *(v31 + 3);
    *(&v20.__r_.__value_.__s + 23) = v17;
    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external(&v20, v15, size);
LABEL_31:
  v21 = 1;
  v22 = xmmword_18F901970;
  v23 = 1;
  v24 = 1;
  v25 = 0;
  v26 = 0;
  *(this + 6) = xmmword_18F901970;
  v18 = voucher_copy();
  v19 = v18;
  if (v18)
  {
    CFRetain(v18);
  }

  v29.__r_.__value_.__l.__size_ = this;
  if (*(this + 88) == 1)
  {
    caulk::thread::~thread((this + 72));
    *(this + 88) = 0;
  }

  *(this + 9) = 0;
  *(this + 80) = 0;
  v29.__r_.__value_.__r.__words[0] = 0;
  v30.__r_.__value_.__r.__words[0] = v19;
  v30.__r_.__value_.__l.__size_ = this;
  operator new();
}

void sub_18F661114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  operator delete(v58);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a42);
  MEMORY[0x193ADF120](&a58);
  _Unwind_Resume(a1);
}

void sub_18F6615A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf, int a12, int a13, __int16 a14, int a15, __int16 a16, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_18F661A64(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_18F661AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

uint64_t TMarshaller<AudioStreamBasicDescription>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 40 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x28uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

swix::data *swix::data::data(swix::data *this, xpc_object_t object)
{
  *this = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

void pooledRenderer::AudioConverterOOP::Impl::updateSpanDetailsAndPropertyConfig(uint64_t a1, int **a2, unsigned int **a3)
{
  v6 = **a2;
  v7 = **a3;
  if (v6)
  {
    *(a1 + 296) = v6;
  }

  *(a1 + 288) = v7 != 0;
  std::vector<AudioStreamPacketDescription>::resize(*(a1 + 272), v7);
  v8 = (*a2)[1];
  v9 = (*a3)[1];
  if (v8)
  {
    *(a1 + 392) = v8;
  }

  *(a1 + 384) = v9 != 0;
  std::vector<AudioStreamPacketDescription>::resize(*(a1 + 368), v9);
  v10 = *a2;
  v11 = **a2;
  *(a1 + 200) = v11;
  *(a1 + 72) = v11;
  *(a1 + 128) = v10[1];
}

void **std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(void **result, char *__src, char *a3)
{
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if ((v6 - *result) < 5)
  {
    if (v7)
    {
      result[1] = v7;
      operator delete(v7);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v8 = v6 >> 1;
    if ((v6 >> 1) <= 2)
    {
      v8 = 2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<float>::__vallocate[abi:ne200100](v5, v9);
  }

  v10 = result[1];
  v11 = v10 - v7;
  if ((v10 - v7) > 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v7[v16];
  }

  else
  {
    if (v10 != v7)
    {
      result = memmove(*result, __src, v10 - v7);
      v10 = v5[1];
    }

    v12 = &__src[v11];
    v13 = v10;
    if (&__src[v11] != a3)
    {
      v13 = v10;
      do
      {
        v14 = *v12;
        v12 += 4;
        *v13 = v14;
        v13 += 4;
      }

      while (v12 != a3);
    }

    v15 = v13;
  }

  v5[1] = v15;
  return result;
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F661E70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void *swix::coder<std::span<unsigned int const,18446744073709551615ul>>::decode(void *a1, const char *a2)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  result = 0;
  if (data && length)
  {
    if ((length & 0xFFFFFFFFFFFFFFFCLL) != length)
    {
      std::to_string(&v13, length & 0xFFFFFFFFFFFFFFFCLL);
      v4 = std::string::insert(&v13, 0, "invalid array size (", 0x14uLL);
      v5 = *&v4->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v14, "/", 1uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v12, length);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v12;
      }

      else
      {
        v8 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      v10 = std::string::append(&v15, v8, size);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      swix::decode_message::throw_error(&v16);
    }

    return data;
  }

  return result;
}

void sub_18F661FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
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

uint64_t acv2::CodecConverter::GetProperty(acv2::CodecConverter *this, signed int a2, unsigned int *a3, AudioFormatListItem *a4)
{
  if (HIBYTE(a2) == 94 && acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    goto LABEL_3;
  }

  if (a2 <= 1668114274)
  {
    if (a2 > 1634038641)
    {
      if (a2 > 1651663219)
      {
        if (a2 == 1651663220)
        {
          if (*a3 == 4)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            v8 = *(this + 21);
            v9 = 1651663220;
            goto LABEL_4;
          }
        }

        else
        {
          if (a2 != 1667527029)
          {
            goto LABEL_95;
          }

          if (*a3 == 4)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            v8 = *(this + 21);
            v9 = 1936876401;
            goto LABEL_4;
          }
        }

        return 561211770;
      }

      if (a2 == 1634038642)
      {
        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x6F737261u, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v27 = 1869836897;
            goto LABEL_91;
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 != 1634366322)
        {
          goto LABEL_95;
        }

        if (*(this + 204) == 1)
        {
          if (*(this + 208) != 1)
          {
            return 1869627199;
          }

          if (*a3 == 8)
          {
            acv2::CodecConverter::CheckInitialize(this, 0, 0);
            LODWORD(outPropertyData[0]) = 0;
            LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 4;
            if (!AudioCodecGetProperty(*(this + 21), 0x75727372u, &ioPropertyDataSize, outPropertyData) && LODWORD(outPropertyData[0]))
            {
              PropertyInfo = 0;
              a4->mASBD.mSampleRate = 0.0;
              return PropertyInfo;
            }

            LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 8;
            v25 = *(this + 21);
            p_ioPropertyDataSize = &ioPropertyDataSize;
            v27 = 1668248434;
            return AudioCodecGetProperty(v25, v27, p_ioPropertyDataSize, a4);
          }

          return 561211770;
        }
      }
    }

    else
    {
      if (a2 <= 1634034289)
      {
        if (a2 == 1633904996)
        {
          if (*a3 != 40)
          {
            return 561211770;
          }

          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          if (*(this + 204) == 1)
          {
            v29 = *(this + 20);
            v14 = *v29;
            v15 = v29[1];
            v16 = *(v29 + 4);
          }

          else
          {
            v14 = *(this + 1);
            v15 = *(this + 2);
            v16 = *(this + 6);
          }
        }

        else
        {
          if (a2 != 1633906532)
          {
            goto LABEL_95;
          }

          if (*a3 != 40)
          {
            return 561211770;
          }

          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          if (*(this + 205) == 1)
          {
            v13 = *(this + 20);
            v14 = *(v13 + 40);
            v15 = *(v13 + 56);
            v16 = *(v13 + 72);
          }

          else
          {
            v14 = *(this + 56);
            v15 = *(this + 72);
            v16 = *(this + 11);
          }
        }

        *&a4->mASBD.mBitsPerChannel = v16;
        *&a4->mASBD.mSampleRate = v14;
        *&a4->mASBD.mBytesPerPacket = v15;
        return PropertyInfo;
      }

      if (a2 == 1634034290)
      {
        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x62727461u, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v27 = 1651668065;
            goto LABEL_91;
          }

          return 561211770;
        }
      }

      else
      {
        if (a2 != 1634034540)
        {
          goto LABEL_95;
        }

        if (*(this + 204) == 1)
        {
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          LOBYTE(outPropertyData[0]) = 0;
          LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
          PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x616F636Cu, &ioPropertyDataSize, outPropertyData);
          if (PropertyInfo)
          {
            return PropertyInfo;
          }

          if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
          {
            v25 = *(this + 21);
            v26 = 25452;
LABEL_63:
            v27 = v26 | 0x616F0000;
LABEL_91:
            p_ioPropertyDataSize = a3;
            return AudioCodecGetProperty(v25, v27, p_ioPropertyDataSize, a4);
          }

          return 561211770;
        }
      }
    }

    return 1886547824;
  }

  if (a2 > 1986355825)
  {
    if (a2 > 2020172402)
    {
      switch(a2)
      {
        case 2020172403:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          PropertyInfo = 0;
          v12 = *(this + 90);
          goto LABEL_98;
        case 2020175987:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          if (*(this + 205) != 1)
          {
            PropertyInfo = 0;
            v12 = *(this + 8);
            goto LABEL_98;
          }

          goto LABEL_72;
        case 2020569203:
          acv2::CodecConverter::CheckInitialize(this, 0, 0);
          if (*(this + 204) != 1)
          {
            PropertyInfo = 0;
            v12 = *(this + 18);
LABEL_98:
            LODWORD(a4->mASBD.mSampleRate) = v12;
            return PropertyInfo;
          }

LABEL_72:
          PropertyInfo = 0;
          v12 = *(this + 91);
          goto LABEL_98;
      }

      goto LABEL_95;
    }

    if (a2 == 1986355826)
    {
      if (*(this + 204) == 1)
      {
        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LOBYTE(outPropertyData[0]) = 0;
        LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
        PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x61627274u, &ioPropertyDataSize, outPropertyData);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
        {
          v25 = *(this + 21);
          v27 = 1633841780;
          goto LABEL_91;
        }

        return 561211770;
      }
    }

    else
    {
      if (a2 != 1986360178)
      {
        goto LABEL_95;
      }

      if (*(this + 204) == 1)
      {
        acv2::CodecConverter::CheckInitialize(this, 0, 0);
        LOBYTE(outPropertyData[0]) = 0;
        LODWORD(ioPropertyDataSize.mASBD.mSampleRate) = 0;
        PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x616F7372u, &ioPropertyDataSize, outPropertyData);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (*a3 == LODWORD(ioPropertyDataSize.mASBD.mSampleRate))
        {
          v25 = *(this + 21);
          v26 = 29554;
          goto LABEL_63;
        }

        return 561211770;
      }
    }

    return 1886547824;
  }

  if (a2 <= 1835623026)
  {
    if (a2 == 1668114275)
    {
      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      acv2::CodecConverter::CheckInitialize(this, 0, 0);
      PropertyInfo = AudioCodecGetProperty(*(this + 21), 0x6B756B69u, a3, a4);
      v28 = *(this + 19);
      if (!v28 || PropertyInfo)
      {
        return PropertyInfo;
      }

      if (*a3)
      {
        AudioConverterCapturer::setDecompressionCookie(v28, a4, *a3);
      }
    }

    else
    {
      if (a2 != 1718383476)
      {
        goto LABEL_95;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      if (*a3 < 0x30)
      {
        return 561211770;
      }

      acv2::CodecConverter::GetCodecCookie(outPropertyData, this);
      v17 = *(this + 72);
      *&ioPropertyDataSize.mASBD.mSampleRate = *(this + 56);
      *&ioPropertyDataSize.mASBD.mBytesPerPacket = v17;
      v18 = outPropertyData[0];
      *&ioPropertyDataSize.mASBD.mBitsPerChannel = *(this + 11);
      ioPropertyDataSize.mMagicCookie = outPropertyData[0];
      ioPropertyDataSize.mMagicCookieSize = gsl::narrow<unsigned int,unsigned long>(outPropertyData[1] - outPropertyData[0]);
      v19 = *a3;
      v20 = *(this + 21);
      outSize = 0;
      if (AudioCodecGetPropertyInfo(v20, 0x6163666Cu, &outSize, 0))
      {
        goto LABEL_31;
      }

      v21 = outSize;
      if (v19 < outSize)
      {
        v21 = v19;
      }

      v33 = v21;
      if (GetFormatListFromCodec(*(this + 21), &ioPropertyDataSize, &v33, a4))
      {
LABEL_31:
        v22 = *(this + 56);
        v23 = *(this + 72);
        *&a4->mASBD.mBitsPerChannel = *(this + 11);
        *&a4->mASBD.mSampleRate = v22;
        *&a4->mASBD.mBytesPerPacket = v23;
        a4->mChannelLayoutTag = a4->mASBD.mChannelsPerFrame | 0xFFFF0000;
        v24 = 48;
      }

      else
      {
        v24 = v33;
      }

      *a3 = v24;
      if (v18)
      {
        operator delete(v18);
      }
    }

    return 0;
  }

  if (a2 == 1835623027)
  {
    PropertyInfo = 0;
    LODWORD(a4->mASBD.mSampleRate) = 0;
    return PropertyInfo;
  }

  if (a2 == 1886353266)
  {
    if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), 0x706F7772u))
    {
      v8 = *(this + 21);
      v9 = 1886353266;
      goto LABEL_4;
    }

    return 1886547824;
  }

LABEL_95:
  if (acv2::CodecConverter::CodecSupportsProperty(*(this + 21), a2))
  {
    acv2::CodecConverter::CheckInitialize(this, 0, 0);
LABEL_3:
    v8 = *(this + 21);
    v9 = a2;
LABEL_4:

    return AudioCodecGetProperty(v8, v9, a3, a4);
  }

  PropertyInfo = 1886547824;
  v31 = *(this + 90);
  if (!v31 || !acv2::PostDecodeRenderer::SupportsProperty(*(v31 + 8), a2))
  {
    return PropertyInfo;
  }

  v32 = *(*(this + 90) + 8);

  return AudioUnitGetProperty(v32, a2, 0, 0, a4, a3);
}

void sub_18F66285C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSimpleMarshaller<AudioStreamBasicDescription>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

BOOL TMarshaller<AudioStreamBasicDescription>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 40)
  {
    (*(*a1 + 32))(a1, a2, a3);
  }

  return a4 == 40;
}

uint64_t acv2::CodecWrapper::GetCodecProperty<unsigned char>(AudioCodec *a1, AudioCodecPropertyID a2, std::vector<char> *a3)
{
  outSize = 0;
  outWritable = 0;
  result = AudioCodecGetPropertyInfo(*a1, a2, &outSize, &outWritable);
  if (!result)
  {
    begin = a3->__begin_;
    v8 = a3->__end_ - a3->__begin_;
    if (outSize <= v8)
    {
      if (outSize < v8)
      {
        a3->__end_ = &begin[outSize];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a3, outSize - v8);
      begin = a3->__begin_;
    }

    result = AudioCodecGetProperty(*a1, a2, &outSize, begin);
    if (!result)
    {
      v9 = a3->__end_ - a3->__begin_;
      if (outSize <= v9)
      {
        if (outSize < v9)
        {
          result = 0;
          a3->__end_ = &a3->__begin_[outSize];
          return result;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a3, outSize - v9);
      }

      return 0;
    }
  }

  return result;
}

uint64_t acv2::AudioConverterChain::AddCodec(void *a1, uint64_t *a2)
{
  v2 = *a2;
  a1[43] = *a2;
  *a2 = 0;
  v5 = v2;
  acv2::AudioConverterChain::AddStep(a1, &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

void sub_18F662A64(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t acv2::CodecConverter::GetOutputLayout(acv2::CodecConverter *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  if (*(this + 90))
  {
    if ((this + 760) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 95), *(this + 96), *(this + 96) - *(this + 95));
    }
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
    Codec = acv2::CodecWrapper::GetCodecProperty<unsigned char>(this + 21, 0x6F636C20u, &__p);
    begin = __p.__begin_;
    if (Codec)
    {
      if (__p.__begin_)
      {
        operator delete(__p.__begin_);
      }

      goto LABEL_16;
    }

    v8 = *(__p.__begin_ + 2);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(__p.__begin_ + 2);
    }

    v10 = 20 * v9 + 12;
    v11 = a2->__begin_;
    v12 = a2->__end_ - a2->__begin_;
    if (v10 <= v12)
    {
      if (v10 < v12)
      {
        a2->__end_ = &v11[v10];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v10 - v12);
      v11 = a2->__begin_;
      v8 = *(begin + 2);
    }

    memcpy(v11, begin, 20 * v8 + 12);
    operator delete(begin);
  }

  LODWORD(__p.__begin_) = 0;
  if (AudioFormatProperty_NumberOfChannelsForLayout(a2->__begin_, &__p))
  {
LABEL_16:
    if ((this + 760) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 95), *(this + 96), *(this + 96) - *(this + 95));
    }

    v13 = 0;
    *a3 = 1;
    return v13;
  }

  v15 = __p.__begin_;
  if (LODWORD(__p.__begin_) == *(this + 21))
  {
    return 0;
  }

  v13 = 1718449215;
  v16 = _os_log_pack_size();
  message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
  if (message)
  {
    v18 = message;
    v19 = _os_log_pack_fill(message + 40, v16, 0, &dword_18F5DF000, "AudioCodec returned an output channel layout incompatible with its output format.  %d != %d\n", v21, LODWORD(__p.__begin_));
    v20 = *(this + 21);
    *v19 = 67109376;
    *(v19 + 4) = v15;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v20;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v18);
  }

  return v13;
}

audioipc::eventlink_primitive *audioipc::eventlink_primitive::eventlink_primitive(audioipc::eventlink_primitive *this, id a2)
{
  *this = 0;
  *(this + 2) = 0;
  applesauce::dispatch::v1::queue::operator*(a2);
  objc_claimAutoreleasedReturnValue();
  v4 = xpc_dictionary_copy_mach_send();

  v5 = os_eventlink_create_with_port();
  v6 = *this;
  *this = v5;

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  return this;
}

IOSurfaceRef *audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(IOSurfaceRef *a1, xpc_object_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(*a2, "sharedMemory");
  v6 = caulk::mach::details::retain_os_object(value, v5);
  caulk::mach::details::release_os_object(0, v7);
  *a1 = 0;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no object");
  }

  v8 = v6;
  v9 = xpc_dictionary_get_value(v8, "surface");
  v11 = caulk::mach::details::retain_os_object(v9, v10);
  caulk::mach::details::release_os_object(0, v12);

  v13 = v11;
  v14 = IOSurfaceLookupFromXPCObject(v13);
  v15 = *a1;
  *a1 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  if (!*a1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v23 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "unilaterally_billed_shared_memory.mm";
      v28 = 1024;
      v29 = 50;
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceLookupFromXPCObject", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "bad IOSurface");
  }

  v16 = v8;
  v25 = xpc_dictionary_copy_mach_send();

  v17 = IOSurfaceSetOwnershipIdentity();
  if (v17)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v18 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "unilaterally_billed_shared_memory.mm";
      v28 = 1024;
      v29 = 67;
      v30 = 1024;
      v31 = v17;
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d unilaterally_billed_shared_memory - error on IOSurfaceSetOwnershipIdentity, memory will most likely be billed to both processes: %u", buf, 0x18u);
    }
  }

  caulk::mach::mach_port::~mach_port(&v25);
  caulk::mach::details::release_os_object(v13, v19);
  caulk::mach::details::release_os_object(v16, v20);
  a1[1] = (unilaterally_billed_shared_memory::get_raw_ptr(a1, 0) + 8);
  a1[2] = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0);
  a1[3] = unilaterally_billed_shared_memory::get_raw_ptr(a1, 0x10uLL);
  *(a1 + 16) = 1;
  audioipc::eventlink_primitive::eventlink_primitive((a1 + 5), *a2);
  return a1;
}

void sub_18F6630F0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  caulk::mach::details::release_os_object(v13, a2);
  applesauce::CF::ObjectRef<__IOSurface *>::~ObjectRef(v11);
  caulk::mach::details::release_os_object(v12, v15);
  _Unwind_Resume(a1);
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *this);
  }
}

uint64_t AudioFileObject::CreateDataFile(AudioFileObject *this, CFURLRef url, int *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    return 4294967253;
  }

  if (!stat(buffer, &v7))
  {
    return 1886547263;
  }

  v4 = open(buffer, 2562, 420);
  *a3 = v4;
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = *__error();
  if (v6 > 0x1F)
  {
    return 2003334207;
  }

  if (((1 << v6) & 0x40022002) != 0)
  {
    return 4294967242;
  }

  if (((1 << v6) & 0x1800000) != 0)
  {
    return 4294967254;
  }

  if (v6 == 31)
  {
    return 561017960;
  }

  else
  {
    return 2003334207;
  }
}

uint64_t acv2::CodecConverter::GetInputLayout(acv2::CodecConverter *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  memset(&__p, 0, sizeof(__p));
  Codec = acv2::CodecWrapper::GetCodecProperty<unsigned char>(this + 21, 0x69636C20u, &__p);
  begin = __p.__begin_;
  if (Codec)
  {
    if (!__p.__begin_)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *(__p.__begin_ + 2);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(__p.__begin_ + 2);
  }

  v10 = 20 * v9 + 12;
  v11 = a2->__begin_;
  v12 = a2->__end_ - a2->__begin_;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      a2->__end_ = &v11[v10];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 - v12);
    v11 = a2->__begin_;
    v8 = *(begin + 2);
  }

  memcpy(v11, begin, 20 * v8 + 12);
  v22 = 0;
  if (AudioFormatProperty_NumberOfChannelsForLayout(a2->__begin_, &v22))
  {
LABEL_12:
    operator delete(begin);
LABEL_13:
    if ((this + 736) != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 92), *(this + 93), *(this + 93) - *(this + 92));
    }

    v13 = 0;
    *a3 = 1;
    return v13;
  }

  v15 = v22;
  if (v22 == *(this + 11))
  {
    v13 = 0;
  }

  else
  {
    v13 = 1718449215;
    v16 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
    if (message)
    {
      v18 = message;
      v19 = _os_log_pack_fill(message + 40, v16, 0, &dword_18F5DF000, "AudioCodec returned an input channel layout incompatible with its input format.  %d != %d\n", v21, LODWORD(__p.__begin_));
      v20 = *(this + 11);
      *v19 = 67109376;
      *(v19 + 4) = v15;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v20;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v18);
    }
  }

  operator delete(begin);
  return v13;
}

void std::vector<AudioStreamPacketDescription>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1 == 1)
  {
    AudioComponentInstanceDispose(**(a1 + 8));
  }

  return a1;
}

uint64_t CAFAudioFile::UpdateSize(CAFAudioFile *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(this + 18);
  v2 = *(this + 19) - v1;
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v28 = 0;
  v27 = 0;
  v6 = 2;
  while (1)
  {
    v7 = v1 + 24 * v4;
    if (*v7 == 1684108385)
    {
      break;
    }

    v4 = v6++ - 1;
    if (v5 <= v4)
    {
      return 0;
    }
  }

  v9 = *(v7 + 8) - 16;
  if ((*(*this + 232))(this) >= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - (*(*this + 232))(this);
  }

  *(v7 + 8) = (*(*this + 232))(this) + 16;
  result = (*(*this + 776))(this, v7, &v28);
  if (!result)
  {
    if (v10 >= 1)
    {
      v11 = *(this + 18);
      if (v11)
      {
        v12 = v6 - 1;
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v11) >> 3) > v12)
        {
          while (1)
          {
            v13 = v11 + 24 * v12;
            CADeprecated::CAAutoFree<char>::CAAutoFree(&v30, *(v13 + 8));
            v29 = 0;
            v14 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v13 + 16), *(v13 + 8), v30, &v29);
            if (v14)
            {
              break;
            }

            if (*(v13 + 8) != v29)
            {
              v23 = 2003334207;
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_38;
              }

              *buf = 136315394;
              v32 = "CAFAudioFile.cpp";
              v33 = 1024;
              v34 = 317;
              v24 = MEMORY[0x1E69E9C10];
              v25 = "%25s:%-5d  chunk size is wrong";
LABEL_37:
              _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
              goto LABEL_38;
            }

            *(v13 + 16) -= v10;
            v15 = (*(**(this + 13) + 56))(*(this + 13), 0);
            if (v15)
            {
              v23 = v15;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v32 = "CAFAudioFile.cpp";
                v33 = 1024;
                v34 = 323;
                v24 = MEMORY[0x1E69E9C10];
                v25 = "%25s:%-5d  MoveUpTrailingChunks write failed";
                goto LABEL_37;
              }

LABEL_38:
              exception = __cxa_allocate_exception(4uLL);
              *exception = v23;
              __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
            }

            if (v30)
            {
              free(v30);
            }

            v11 = *(this + 18);
            if (v11)
            {
              v12 = v6++;
              if (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v11) >> 3) > v12)
              {
                continue;
              }
            }

            goto LABEL_21;
          }

          v23 = v14;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 136315394;
          v32 = "CAFAudioFile.cpp";
          v33 = 1024;
          v34 = 316;
          v24 = MEMORY[0x1E69E9C10];
          v25 = "%25s:%-5d  MoveUpTrailingChunks read failed";
          goto LABEL_37;
        }
      }

LABEL_21:
      result = (*(**(this + 13) + 24))(*(this + 13), &v27);
      if (result)
      {
        return result;
      }

      (*(**(this + 13) + 32))(*(this + 13), v27 - v10);
    }

    if (*(this + 208) == 1)
    {
      *buf = bswap32(*(this + 42) + 1);
      v16 = *(this + 18);
      v17 = *(this + 19) - v16;
      if (v17)
      {
        v18 = 0;
        v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
        v20 = 1;
        while (1)
        {
          v21 = v16 + 24 * v18;
          if (*v21 == 1684108385)
          {
            break;
          }

          v18 = v20;
          if (v19 <= v20++)
          {
            goto LABEL_30;
          }
        }

        (*(**(this + 13) + 56))(*(this + 13), 0, *(v21 + 16) + 12, 4, buf, 0);
      }
    }

LABEL_30:
    CAFAudioFile::UpdatePacketTableChunk(this);
    return 0;
  }

  return result;
}

void CAFAudioFile::UpdatePacketTableChunk(CAFAudioFile *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  if (!v2 || *(this + 46) || *(this + 47))
  {
    if (v3)
    {
      v4 = v2 == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(this + 15);
    if (v4 && v5 == 0)
    {
      operator new();
    }

    v29 = 0;
    if (v5)
    {
      v7 = 0;
      if (v3)
      {
        v9 = 5;
      }

      else
      {
        v9 = 10;
      }

      v8 = (*(v5 + 24) * v9 + 24);
    }

    else
    {
      v7 = 1;
      v8 = 24;
    }

    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v29, v8, 0);
    v10 = v29;
    v29->i64[0] = 0;
    v10->i64[1] = CAFAudioFile::NumberValidFrames(this);
    v10[1].i64[0] = *(this + 23);
    if (v7)
    {
      v11 = 24;
LABEL_57:
      v26 = v29;
      *v29 = vrev64q_s8(*v29);
      v26[2] = vrev32_s8(v26[2]);
      (*(*this + 768))(this, 1885432692, v11, v26);
      free(v26);
      return;
    }

    v10->i64[0] = (*(*this + 248))(this);
    v13 = (*(*this + 640))(this);
    if (*(v5 + 24) < 1)
    {
      v11 = 24;
LABEL_56:
      (*(*this + 656))(this, v13, v12);
      goto LABEL_57;
    }

    v12 = 0;
    v14 = &v10[1].i8[8];
    v15 = 1;
    v11 = 24;
    while (1)
    {
      CompressedPacketTable::operator[](v27, v5, v12);
      v16 = v27[2];
      v17 = v28;
      v13 = v28 <= v13 ? v13 : v28;
      v18 = v28 >> 21;
      v19 = v28 >> 14;
      if (v28 >> 28)
      {
        break;
      }

      if (v18)
      {
        v20 = 4;
        goto LABEL_32;
      }

      if (v19)
      {
        v20 = 3;
        goto LABEL_33;
      }

      if (v28 < 0x80)
      {
        v20 = 1;
        goto LABEL_35;
      }

      v20 = 2;
LABEL_34:
      *v14++ = (v17 >> 7) | 0x80;
LABEL_35:
      *v14 = v17 & 0x7F;
      v21 = v14 + 1;
      if (!v3)
      {
        v23 = v16 >> 21;
        v24 = v16 >> 14;
        if (v16 >> 28)
        {
          v21 = v14 + 2;
          v14[1] = (v16 >> 28) | 0x80;
          v22 = 5;
        }

        else
        {
          if (!v23)
          {
            if (!v24)
            {
              if (v16 < 0x80)
              {
                v22 = 1;
LABEL_48:
                *v21++ = v16 & 0x7F;
                goto LABEL_49;
              }

              v22 = 2;
LABEL_47:
              *v21++ = (v16 >> 7) | 0x80;
              goto LABEL_48;
            }

            v22 = 3;
LABEL_46:
            *v21++ = v24 | 0x80;
            goto LABEL_47;
          }

          v22 = 4;
        }

        *v21++ = v23 | 0x80;
        goto LABEL_46;
      }

      v22 = 0;
LABEL_49:
      v11 += v22 + v20;
      v12 = v15;
      v25 = *(v5 + 24) <= v15++;
      v14 = v21;
      if (v25)
      {
        goto LABEL_56;
      }
    }

    *v14++ = (v28 >> 28) | 0x80;
    v20 = 5;
LABEL_32:
    *v14++ = v18 | 0x80;
LABEL_33:
    *v14++ = v19 | 0x80;
    goto LABEL_34;
  }
}

void sub_18F663E08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F663D88);
}

void sub_18F663E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x18F663E1CLL);
  }

  JUMPOUT(0x18F663E14);
}

uint64_t CAFAudioFile::AddUniqueChunk(CAFAudioFile *this, uint64_t a2, uint64_t a3, const void *a4)
{
  result = CAFAudioFile::ReplaceChunk(this, a2, 0, a3, a4);
  if (result == -1)
  {
    v9 = *(*this + 760);

    return v9(this, a2, a3, a4);
  }

  return result;
}

uint64_t CAFAudioFile::ReplaceChunk(CAFAudioFile *this, uint64_t a2, int a3, uint64_t a4, const void *a5)
{
  v5 = *(this + 18);
  v6 = *(this + 19);
  v7 = v6 - v5;
  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v20 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v5 + 24 * v12;
    if (*v16 == a2)
    {
      break;
    }

LABEL_6:
    v12 = v15;
    if (v14 <= v15++)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v13 != a3)
  {
    ++v13;
    goto LABEL_6;
  }

  if (a4 + 12 == *(v16 + 8))
  {
    result = (*(*this + 776))(this, v16, &v20);
    if (!result)
    {
      return (*(*this + 784))(this, v16, a5, &v20);
    }
  }

  else
  {
    *v16 = 1718773093;
    CAFAudioFile::ConsolidateFillerChunks(this);
    v19 = *(*this + 760);

    return v19(this, a2, a4, a5);
  }

  return result;
}

uint64_t CAFAudioFile::AddUserChunk(CAFAudioFile *this, int a2, unsigned int a3, const void *a4)
{
  v24 = 0;
  LODWORD(v25) = a2;
  v6 = a3 + 12;
  *(&v25 + 1) = v6;
  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = (this + 144);
  v10 = v8 - v7;
  if (v8 == v7)
  {
    goto LABEL_18;
  }

  LODWORD(v11) = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v13 = (v7 + 8);
  v14 = 0x7FFFFFFF;
  v15 = -1;
  do
  {
    if (*(v13 - 2) == 1718773093)
    {
      v16 = *v13 - v6;
      v18 = *v13 == v6 || v16 > 12;
      if (v18 && v16 < v14)
      {
        v14 = *v13 - v6;
        v15 = v11;
      }
    }

    v11 = (v11 + 1);
    v13 += 3;
  }

  while (v12 > v11);
  if (v15 == -1)
  {
LABEL_18:
    v23 = 0;
    result = (*(**(this + 13) + 24))(*(this + 13), &v23);
    if (!result)
    {
      v26 = v23;
      std::vector<ChunkInfo64>::push_back[abi:ne200100](v9, &v25);
      result = (*(*this + 776))(this, &v25, &v24);
      if (!result)
      {
        result = (*(*this + 784))(this, &v25, a4, &v24);
        if (!result)
        {
          if ((*(*this + 232))(this))
          {
            *(this + 20) = 0;
          }

          else
          {
            (*(*this + 64))(this);
          }

          return 0;
        }
      }
    }
  }

  else
  {
    v19 = v7 + 24 * v15;
    v20 = *(v19 + 8) - v6;
    if (v20)
    {
      v26 = *(v19 + 16);
      v22 = v26 + v6;
      *(v19 + 8) = v20;
      *(v19 + 16) = v22;
      result = (*(*this + 776))(this, v19, &v24);
      if (!result)
      {
        result = (*(*this + 776))(this, &v25, &v24);
        if (!result)
        {
          result = (*(*this + 784))(this, &v25, a4, &v24);
          if (!result)
          {
            std::vector<Chunk64Info>::insert(v9, (*v9 + 24 * v15), &v25);
            return 0;
          }
        }
      }
    }

    else
    {
      *v19 = a2;
      result = (*(*this + 776))(this, v19, &v24);
      if (!result)
      {
        result = (*(*this + 784))(this, v19, a4, &v24);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void std::vector<Chunk64Info>::insert(uint64_t a1, char *__src, __int128 *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = 8 * (v13 >> 3);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 3);
        }

        std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = 8 * (v13 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 16) = *(a3 + 2);
    *v17 = v24;
    v25 = v18 + 24;
    memcpy((v18 + 24), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 16) = *(a3 + 2);
    *v6 = v16;
    *(a1 + 8) = v6 + 24;
  }

  else
  {
    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 24;
      v10 = *(v6 - 24);
      *(v6 + 16) = *(v6 - 8);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 24, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 24;
    if (v19)
    {
      v20 = 0;
    }

    v21 = (a3 + v20);
    v22 = *v21;
    *(__src + 2) = *(v21 + 2);
    *__src = v22;
  }
}

void sub_18F6646FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::CodecConverter::Reset(acv2::CodecConverter *this)
{
  *(this + 102) = 0;
  *(this + 104) = 0;
  ACBaseAudioSpan::resetMetadataEvents((this + 408));
  v2 = 0;
  if (*(this + 388) == 1)
  {
    v2 = *(this + 95);
  }

  *(this + 98) = v2;
  *(this + 396) = 0;
  *(this + 207) = 0;
  *(this + 105) = 0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  v3 = *(this + 90);
  if (v3)
  {
    *(v3 + 152) = 0uLL;
    *(v3 + 136) = 0uLL;
    *(v3 + 120) = 0uLL;
    *(v3 + 104) = 0uLL;
  }

  v4 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *(this + 27);
  *(this + 27) = v5;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 21);

  return AudioCodecReset(v7);
}

void sub_18F664820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

OSStatus AudioCodecReset(AudioCodec inCodec)
{
  if (!inCodec)
  {
    return -50;
  }

  v1 = (*(*inCodec + 8))(inCodec);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  v3 = *(*((**v1)(v1) + 112) + 56);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

void CompressedPacketTable::~CompressedPacketTable(CompressedPacketTable *this)
{
  v2 = *this;
  v4 = *(this + 1) - v2;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 16;
    do
    {
      free(*(*this + v7));
      v7 += 24;
      --v6;
    }

    while (v6);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void pooledRenderer::AudioConverterOOP::~AudioConverterOOP(pooledRenderer::AudioConverterOOP *this)
{
  pooledRenderer::AudioConverterOOP::~AudioConverterOOP(this);

  JUMPOUT(0x193ADF220);
}

{
  v13 = *MEMORY[0x1E69E9840];
  *this = &unk_1F033CC60;
  if ((*(this + 12) & 1) == 0)
  {
    if (*(this + 80) == 1)
    {
      AT::ScopedTrace::~ScopedTrace((this + 40));
      *(this + 80) = 0;
    }

    *(this + 40) = 1;
    *(this + 11) = 2757;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    kdebug_trace();
    *(this + 80) = 1;
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v2 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "AudioConverterOOP.cpp";
    v9 = 1024;
    v10 = 628;
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Disposing of service.", &v7, 0x1Cu);
  }

  v3 = **(this + 11);
  os_unfair_lock_lock((v3 + 16));
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  if (v5 != v4)
  {
    while (*v5 != this)
    {
      if (++v5 == v4)
      {
        v5 = *(v3 + 32);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = v4 - (v5 + 1);
    if (v4 != v5 + 1)
    {
      memmove(v5, v5 + 1, v4 - (v5 + 1));
    }

    *(v3 + 32) = v5 + v6;
  }

  os_unfair_lock_unlock((v3 + 16));
  std::unique_ptr<pooledRenderer::AudioConverterOOP::Impl>::~unique_ptr[abi:ne200100](this + 11);
  if (*(this + 80) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((this + 40));
  }

  AudioConverterAPI::~AudioConverterAPI(this);
}

void sub_18F664BB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::unique_ptr<pooledRenderer::AudioConverterOOP::Impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  if (*(v2 + 176) == 1)
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      goto LABEL_18;
    }

    v4 = atomic_load((v2 + 416));
    if (v4)
    {
      v5 = *(v2 + 8);
      v6 = atomic_load((v5 + 64));
      if (v6)
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v7 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v5 + 22) - 1;
          v9 = *(v5 + 8);
          v10 = *(v5 + 20);
          *v45 = 136316418;
          *&v45[4] = "ACResourcePoolManager.h";
          *&v45[12] = 1024;
          *&v45[14] = 56;
          v46 = 2048;
          *v47 = v5;
          *&v47[8] = 1024;
          *&v47[10] = v8;
          v48 = 2080;
          v49 = v9;
          v50 = 1024;
          v51 = v10;
          _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter Resource Manager %p -> Converter disappeared. Current number of converters: %u, number of %ss: %u.", v45, 0x32u);
        }

        os_unfair_lock_lock((v5 + 16));
        v11 = *(v5 + 22) - 1;
        *(v5 + 22) = v11;
        if (*v5 <= v11)
        {
          v3 = 0;
        }

        else
        {
          --*(v5 + 20);
          v12 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v5, 1);
          v3 = (v13 & 1) != 0 ? v12 : 0;
        }

        os_unfair_lock_unlock((v5 + 16));
        if (v3)
        {
LABEL_18:
          v14 = atomic_load((v2 + 416));
          if ((v14 & 1) == 0)
          {
LABEL_32:
            AudioConverterRenderClient::~AudioConverterRenderClient(v3);
            MEMORY[0x193ADF220]();
            goto LABEL_33;
          }

          v15 = *(v2 + 16);
          v16 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v15, 1);
          v17 = v16;
          if (v18)
          {
            if (!v16)
            {
              v20 = 0;
              goto LABEL_30;
            }

            v19 = AudioConverterXPC_Client::deleteRenderer(v16, v3);
            v20 = v17;
            LODWORD(v17) = v19;
            if (HIDWORD(v19))
            {
LABEL_30:
              if (v15)
              {
                ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v15, v20);
              }

              goto LABEL_32;
            }
          }

          else
          {
            v20 = 0;
          }

          if (v17)
          {
            if (gAudioConverterDeferredLogOnce != -1)
            {
              dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
            }

            v21 = *gAudioConverterLog;
            if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_FAULT))
            {
              *v45 = 136315906;
              *&v45[4] = "AudioConverterOOP.cpp";
              *&v45[12] = 1024;
              *&v45[14] = 278;
              v46 = 2048;
              *v47 = v2;
              *&v47[8] = 1024;
              *&v47[10] = v17;
              _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_FAULT, "%25s:%-5d AudioConverterOOP -> %p: Unable to delete renderer, with error %u. The connection was likely severed.", v45, 0x22u);
            }
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v3 = *(v2 + 168);
      if (v3)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_33:
  v22 = atomic_load((v2 + 416));
  if (v22)
  {
    if (!*(v2 + 208))
    {
      goto LABEL_40;
    }

    v23 = *(v2 + 16);
    v24 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v23, 1);
    if (v25)
    {
      v26 = v24;
      if (v24)
      {
        AudioConverterXPC_Client::stopMessengerForProperties(v24, *(v2 + 208));
      }

      if (v23)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v26 = 0;
      if (v23)
      {
LABEL_39:
        ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v23, v26);
      }
    }

LABEL_40:
    v27 = *(v2 + 16);
    v28 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v27, 1);
    if (v29)
    {
      v30 = v28;
      if (v28)
      {
        AudioConverterXPC_Client::dispose(v28, *(v2 + 184));
      }

      if (!v27)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = 0;
      if (!v27)
      {
LABEL_45:
        v31 = *(v2 + 16);
        v32 = atomic_load((v31 + 64));
        if (v32)
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v33 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(v31 + 22) - 1;
            v35 = *(v31 + 8);
            v36 = *(v31 + 20);
            *v45 = 136316418;
            *&v45[4] = "ACResourcePoolManager.h";
            *&v45[12] = 1024;
            *&v45[14] = 56;
            v46 = 2048;
            *v47 = v31;
            *&v47[8] = 1024;
            *&v47[10] = v34;
            v48 = 2080;
            v49 = v35;
            v50 = 1024;
            v51 = v36;
            _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter Resource Manager %p -> Converter disappeared. Current number of converters: %u, number of %ss: %u.", v45, 0x32u);
          }

          os_unfair_lock_lock((v31 + 16));
          v37 = *(v31 + 22) - 1;
          *(v31 + 22) = v37;
          if (*v31 > v37 && (--*(v31 + 20), v38 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v31, 1), (v39 & 1) != 0))
          {
            v40 = v38;
            os_unfair_lock_unlock((v31 + 16));
            if (v40)
            {
              *v45 = &unk_1F033CE00;
              *&v45[8] = v2;
              *&v47[4] = v45;
              v41 = *(v40 + 1);
              if (!v41)
              {
                std::terminate();
              }

              std::function<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator=(v41 + 24, v45);
              std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v45);
              atomic_store(0, (v2 + 416));
              AudioConverterXPC_Client::disconnect(v40);
              (*(*v40 + 8))(v40);
            }
          }

          else
          {
            os_unfair_lock_unlock((v31 + 16));
          }
        }

        goto LABEL_58;
      }
    }

    ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v27, v30);
    goto LABEL_45;
  }

LABEL_58:
  std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100]((v2 + 408), 0);
  v42 = *(v2 + 376);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ExtendedAudioBufferList_Destroy(*(v2 + 352));
  v43 = *(v2 + 280);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  ExtendedAudioBufferList_Destroy(*(v2 + 256));
  std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((v2 + 208), 0);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v2 + 160));
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v2 + 152));
  MEMORY[0x193ADF220](v2, 0x1060C40E6A37438);
  return a1;
}

void sub_18F665170(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    os_unfair_lock_unlock(v2 + 4);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AudioConverterXPC_Client::deleteRenderer(AudioConverterXPC_Client *this, uint64_t a2)
{
  MEMORY[0x193ADE6A0](v9, 62370775);
  xpc_dictionary_set_uint64(xdict, "clientRenderer", a2);
  v4 = *(this + 1);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v7, v4, v9);
  v5 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v5 == 0) << 32) | v5;
}

void sub_18F66525C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F665230);
}

void AudioConverterRenderServer::~AudioConverterRenderServer(AudioConverterRenderServer *this)
{
  *this = &unk_1F032F998;
  AudioConverterServer::shutdown(this);
  v2 = (this + 496);
  std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  AudioConverterServer::~AudioConverterServer(this);
}

{
  AudioConverterRenderServer::~AudioConverterRenderServer(this);

  JUMPOUT(0x193ADF220);
}

void AudioConverterServer::shutdown(AudioConverterServer *this)
{
  v2 = atomic_load(*(this + 2));
  if (v2 != 2)
  {
    atomic_store(1u, this + 41);
    os_eventlink_cancel();
  }

  if (*(this + 88) == 1)
  {
    caulk::thread::join((this + 72));
    if (*(this + 88) == 1)
    {
      caulk::thread::~thread((this + 72));
      *(this + 88) = 0;
    }
  }
}

void AudioConverterRenderClient::~AudioConverterRenderClient(AudioConverterCapturer **this)
{
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](this + 51);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](this + 50);
  if (*(this + 360) == 1)
  {
    v2 = (this + 35);
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender((this + 1));
}

void std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i = v5)
    {
      v5 = i - 11;
      ExtendedAudioBufferList_Destroy(*(i - 4));
    }

    v1[1] = v2;
    v6 = **a1;

    operator delete(v6);
  }
}

void audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(uint64_t a1)
{
  v2 = atomic_load((a1 + 33));
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(*(a1 + 8));
    if (v3 != 2)
    {
      atomic_store(1u, (a1 + 33));
      atomic_store(2u, *(a1 + 8));
      audioipc::eventlink_primitive::timed_wait_signal_or_error(*(a1 + 40), 0.02);
      os_eventlink_cancel();
    }
  }

  audioipc::eventlink_primitive::~eventlink_primitive((a1 + 40));

  unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(a1);
}

void AudioConverterServer::~AudioConverterServer(const void **this)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F032F9C8;
  if (*(this + 88) == 1)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v2 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_FAULT))
    {
      v3 = 136315394;
      v4 = "AudioConverterServer.h";
      v5 = 1024;
      v6 = 61;
      _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_FAULT, "%25s:%-5d Server destroyed before proper shutdown", &v3, 0x12u);
    }

    AudioConverterServer::shutdown(this);
  }

  caulk::mach::os_workgroup_managed::~os_workgroup_managed((this + 25));
  if (*(this + 192) == 1)
  {
    audioipc::os_workgroup_joiner::~os_workgroup_joiner((this + 15));
  }

  if (*(this + 88) == 1)
  {
    caulk::thread::~thread((this + 9));
  }

  audioipc::eventlink_primitive::~eventlink_primitive((this + 6));
  unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(this + 1);
}

void sub_18F665690(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void audioipc::eventlink_primitive::~eventlink_primitive(audioipc::eventlink_primitive *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    *(this + 2) = 0;
  }
}

void unilaterally_billed_shared_memory::~unilaterally_billed_shared_memory(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033CE00;
  a2[1] = v2;
  return result;
}

OSStatus AudioFileCreateWithURL(CFURLRef inFileRef, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inFormat, AudioFileFlags inFlags, AudioFileID *outAudioFile)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = -50;
  if (inFileRef)
  {
    if (inFormat)
    {
      if (outAudioFile)
      {
        v8 = *&inFlags;
        AudioFileFormatRegistry = GetAudioFileFormatRegistry();
        v12 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, inFileType);
        v13 = v12;
        v5 = 1954115647;
        if (v12)
        {
          if ((*(*v12 + 48))(v12))
          {
            v14 = NewAudioFileHandle(v13);
            if (v14)
            {
              if (CFURLGetFileSystemRepresentation(inFileRef, 1u, buffer, 1024))
              {
                if (stat(buffer, &v23))
                {
                  v15 = *&inFormat->mBytesPerPacket;
                  v20 = *&inFormat->mSampleRate;
                  v21 = v15;
                  v22 = *&inFormat->mBitsPerChannel;
                  if (inFormat->mFormatID == 1819304813 && inFormat->mChannelsPerFrame == 1)
                  {
                    HIDWORD(v20) &= ~0x20u;
                  }

                  v16 = (*(*v14 + 32))(v14, inFileRef, &v20, v8);
                }

                else
                {
                  if ((v8 & 1) == 0)
                  {
                    (*(*v14 + 8))(v14);
                    return -48;
                  }

                  v17 = *&inFormat->mBytesPerPacket;
                  v20 = *&inFormat->mSampleRate;
                  v21 = v17;
                  v22 = *&inFormat->mBitsPerChannel;
                  if (inFormat->mFormatID == 1819304813 && inFormat->mChannelsPerFrame == 1)
                  {
                    HIDWORD(v20) &= ~0x20u;
                  }

                  v16 = (*(*v14 + 40))(v14, inFileRef, &v20, v8);
                }

                v5 = v16;
                if (v16)
                {
                  (*(*v14 + 8))(v14);
                  v18 = 0;
                }

                else
                {
                  v18 = v14[2];
                }

                *outAudioFile = v18;
              }

              else
              {
                (*(*v14 + 8))(v14);
                *outAudioFile = 0;
                return -43;
              }
            }
          }

          else
          {
            return 1869627199;
          }
        }
      }
    }
  }

  return v5;
}

void sub_18F6659EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F6659B0);
  }

  _Unwind_Resume(a1);
}

unint64_t acv2::Resampler2Wrapper::ProduceOutput(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  v7 = *(a1 + 8);
  if ((*(v7 + 28) & 0x20) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 44);
  }

  v55 = v8;
  v56 = 1;
  if ((*(v7 + 68) & 0x20) == 0)
  {
    v56 = *(v7 + 84);
  }

  v9 = 0;
  v50 = *(a1 + 16);
  v10 = 1;
  while (*a2 < *(a2 + 4))
  {
    ACBaseAudioSpan::setAfter(v7 + 168, a2);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((v7 + 168), a2);
    v11 = *(v7 + 172);
    v12 = (*(*a1 + 80))(a1, v11);
    if (v12 <= 1)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    acv2::AudioConverterChain::ObtainInput(v59, *(*(a1 + 8) + 8), *(a1 + 8), v13, v4);
    if (v60)
    {
      v53 = v3;
      v54 = v9;
      v14 = v59[0];
      v52 = v59[1];
      v58 = 0;
      v15 = *v59[0];
      if (*v59[0] >= v13)
      {
        v13 = v13;
      }

      else
      {
        v13 = v15;
      }

      v17 = (*(***(a1 + 24) + 144))(**(a1 + 24), v13);
      v18 = *(a1 + 56);
      if (v18)
      {
        acv2::AudioConverterBase::writeCapture(v18, v14, v16);
      }

      if (v15 | v17)
      {
        v21 = 0;
      }

      else
      {
        if ((*(a1 + 52) & 1) != 0 || !*(a1 + 48))
        {
          v22 = 0;
          goto LABEL_62;
        }

        if (v50 == 2)
        {
          v19 = Resampler2::PushZeroes(**(a1 + 24));
        }

        else if (*(a1 + 16))
        {
          v23 = 0;
          do
          {
            v19 = Resampler2::PushZeroes(*(*(a1 + 24) + 8 * v23++));
          }

          while (v23 < *(a1 + 16));
        }

        else
        {
          v19 = 0;
        }

        *(a1 + 52) = 1;
        v21 = v19 != 0;
      }

      v57 = 0;
      if (v15 || v17 || v21)
      {
        if (v50 == 2)
        {
          v24 = *(v14 + 2);
          v25 = *(v24 + 16);
          if ((*(v7 + 28) & 0x20) != 0)
          {
            v26 = *(v24 + 32);
          }

          else
          {
            v26 = v25 + 4;
          }

          v35 = *(v7 + 184);
          v36 = *(v35 + 16);
          if ((*(v7 + 68) & 0x20) != 0)
          {
            v37 = *(v35 + 32);
          }

          else
          {
            v37 = v36 + 4;
          }

          v57 = v13;
          v58 = v11;
          (*(***(a1 + 24) + 32))(**(a1 + 24), v25, v26, v36, v37, &v57, &v58, v55, v56);
        }

        else if (*(a1 + 16))
        {
          v27 = 0;
          v28 = 0;
          v29 = 16;
          do
          {
            v30 = *(v14 + 2);
            if ((*(v7 + 28) & 0x20) != 0)
            {
              v31 = *(v30 + v29);
            }

            else
            {
              v31 = *(v30 + 16) + v27;
            }

            v32 = *(v7 + 184);
            if ((*(v7 + 68) & 0x20) != 0)
            {
              v33 = *(v32 + v29);
            }

            else
            {
              v33 = *(v32 + 16) + v27;
            }

            v57 = v13;
            v58 = v11;
            v34 = *(*(a1 + 24) + 8 * v28);
            (*(*v34 + 32))(v34, v31, 0, v33, 0, &v57, &v58, v55, v56);
            ++v28;
            v29 += 16;
            v27 += 4;
          }

          while (v28 < *(a1 + 16));
        }
      }

      else
      {
        v58 = 0;
      }

      v38 = v58;
      v39 = *(v7 + 72);
      *(v7 + 168) = v58;
      Packets = ACBaseAudioSpan::sizeOfFirstPackets((v7 + 168), v38, v39);
      if (HIDWORD(Packets))
      {
        *(v7 + 176) = Packets;
        v41 = *(a1 + 64);
        v4 = a3;
        if (v41)
        {
          acv2::AudioConverterBase::writeCapture(v41, (v7 + 168), v40);
        }

        Packets = acv2::AudioConverterChain::ConsumedInput(*(*(a1 + 8) + 8), *v14, v52, v57);
        if (HIDWORD(Packets))
        {
          v22 = v57 != 0;
LABEL_62:
          v3 = v53;
          v9 = (v22 | v54) & 1;
          if ((v10 & 1) == 0)
          {
            v10 = 1;
          }

          goto LABEL_64;
        }
      }

      else
      {
        v4 = a3;
      }
    }

    else
    {
      LODWORD(Packets) = v59[0];
    }

    v22 = 0;
    v3 = Packets >> 8;
    if (v10)
    {
      v10 = 0;
    }

    v9 = Packets;
LABEL_64:
    v42 = *(v7 + 168);
    if (v42 || v22)
    {
      v43 = *(v7 + 176);
      v44 = *a2;
      v45 = *(a2 + 8);
      if (v42)
      {
        v46 = *(a2 + 32);
        if (v46)
        {
          v47 = *a2;
          v48 = *(v7 + 168);
          do
          {
            *(v46 + 16 * v47++) += v45;
            --v48;
          }

          while (v48);
        }
      }

      *a2 = v44 + v42;
      *(a2 + 8) = v45 + v43;
      ACBaseAudioSpan::copyFilledMetadataEventsFrom(a2, v7 + 168, 0);
      if (v10)
      {
        continue;
      }
    }

    break;
  }

  ACBaseAudioSpan::completeMetadataFrame(a2);
  return v9 | ((v3 & 0xFFFFFF) << 8) | (v10 << 32);
}

uint64_t acv2::SampleRateConverter::ProduceOutput(uint64_t a1, AudioConverterCapturer *a2, unsigned __int8 a3)
{
  v6 = (*(**(a1 + 160) + 16))(*(a1 + 160), a2, a3);
  v7 = *(a1 + 152);
  if (v7)
  {
    acv2::AudioConverterBase::writeCapture(v7, a2, v5);
  }

  return v6 & 0xFFFFFFFFFFLL;
}

void acv2::CodecConverter::~CodecConverter(acv2::CodecConverter *this)
{
  acv2::CodecConverter::~CodecConverter(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0334648;
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 107);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 106);
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  v3 = *(this + 95);
  if (v3)
  {
    *(this + 96) = v3;
    operator delete(v3);
  }

  v4 = *(this + 92);
  if (v4)
  {
    *(this + 93) = v4;
    operator delete(v4);
  }

  v5 = *(this + 90);
  *(this + 90) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 608) == 1)
  {
    v6 = *(this + 68);
    if (v6)
    {
      *(this + 69) = v6;
      operator delete(v6);
    }

    v7 = *(this + 65);
    if (v7)
    {
      *(this + 66) = v7;
      operator delete(v7);
    }

    ExtendedAudioBufferList_Destroy(*(this + 64));
    ACAudioSpan::~ACAudioSpan((this + 408));
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  if (*(this + 328) == 1)
  {
    ACAudioSpan::~ACAudioSpan((this + 224));
  }

  v9 = *(this + 27);
  if (v9)
  {
    CFRelease(v9);
  }

  acv2::CodecWrapper::~CodecWrapper(this + 21);

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

void acv2::CodecWrapper::~CodecWrapper(OpaqueAudioComponentInstance **this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 8) = 0;
    AudioCodecUninitialize(v2);
    AudioComponentInstanceDispose(*this);
  }
}

caulk::rt_safe_memory_resource *std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if ((*(result + 2) - v1) >= 0 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void auoop::WorkgroupPropagator::~WorkgroupPropagator(os_unfair_lock_s **this)
{
  v2 = *this;
  os_unfair_lock_lock(*this + 8);
  v4 = *&v2[10]._os_unfair_lock_opaque;
  v3 = *&v2[12]._os_unfair_lock_opaque;
  if (v4 != v3)
  {
    while (*v4 != this)
    {
      if (++v4 == v3)
      {
        v4 = *&v2[12]._os_unfair_lock_opaque;
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = v3 - (v4 + 1);
    if (v3 != v4 + 1)
    {
      memmove(v4, v4 + 1, v3 - (v4 + 1));
    }

    *&v2[12]._os_unfair_lock_opaque = v4 + v5;
  }

  os_unfair_lock_unlock(v2 + 8);
  v6 = this[6];
  if (v6)
  {
    this[7] = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100]((this + 1));
}

void std::__shared_ptr_emplace<std::vector<AudioStreamPacketDescription>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t Resampler2::GetNumberOfSourceFrames(Resampler2 *this, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(this + 133) & 1) == 0)
  {
    if ((*(this + 132) & 1) == 0)
    {
      if (*(this + 264) == 1)
      {
        RateRamp::RateRamp(v12);
        v11 = a2;
        RateRamp::Segment((this + 208), *(this + 30) + a3, &v11, 1000000000.0, v12);
        RateRamp::InputDuration(v12);
        v8 = vcvtpd_u64_f64(v10);
      }

      else
      {
        v8 = *(this + 21) * a2;
      }

      goto LABEL_8;
    }

LABEL_7:
    v8 = a2;
LABEL_8:
    v6 = vcvtpd_s64_f64((*(*this + 152))(this) + -1.0 + *(this + 20) + v8 + -0.0001 - *(this + 18));
    return v6 & ~(v6 >> 31);
  }

  if (*(this + 132))
  {
    goto LABEL_7;
  }

  v5 = *(this + 27);
  v6 = (*(*this + 152))(this) + ~*(this + 18) + (*(this + 26) + v5 * a2 + *(this + 31) - 1) / *(this + 31);
  return v6 & ~(v6 >> 31);
}

unsigned int Resampler2::GetNumberOfOutputFrames(Resampler2 *this, int a2)
{
  if (*(this + 133) == 1 && (*(this + 132) & 1) == 0)
  {
    v5 = ((a2 - (*(*this + 152))(this) + *(this + 18) + 1) * *(this + 31) - *(this + 26)) / *(this + 27);
    return v5 & ~(v5 >> 31);
  }

  else
  {
    v3 = (*(this + 18) + a2) - ((*(*this + 152))(this) + -1.0) - *(this + 20);
    if ((*(this + 132) & 1) == 0)
    {
      v3 = v3 * *(this + 22);
    }

    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    return vcvtmd_u64_f64(v3 + 0.0001);
  }
}

uint64_t Resampler2::PushConvert(Resampler2 *this, const float *a2, const float *a3, float *a4, float *a5, unsigned int *a6, unsigned int *a7, int a8, unsigned int a9, char a10)
{
  *(this + 24) = 1;
  v17 = *a6;
  v80 = *a7;
  v81 = v17;
  (*(*this + 24))(this, &v81, &v80);
  v18 = v80;
  v69 = a7;
  if (v80)
  {
    v19 = 0;
    v20 = 0;
    v21 = a5;
    v22 = v81;
    v23 = *(this + 18);
    v67 = 4 * a9;
    v70 = v21;
    v71 = a3;
    v77 = v21;
    v24 = a4;
    while (1)
    {
      v25 = *(this + 19) - v23;
      if (v25 >= v22)
      {
        v25 = v22;
      }

      v78 = v18;
      v79 = v25;
      (*(*this + 24))(this, &v79, &v78);
      v26 = v79;
      v27 = *(this + 18);
      v28 = (*(this + 10) + 4 * v27);
      v76 = v78;
      if (a8 == 1)
      {
        memcpy(v28, &a2[v19], 4 * v79);
        if (a3)
        {
          memcpy((*(this + 11) + 4 * *(this + 18)), &a3[v19], 4 * v79);
        }
      }

      else if (a3)
      {
        if (v79)
        {
          v29 = (*(this + 11) + 4 * v27);
          v30 = v19 * a8;
          v31 = v79;
          do
          {
            *v28++ = a2[v30];
            *v29++ = a3[v30];
            v30 += a8;
            --v31;
          }

          while (v31);
        }
      }

      else if (v79)
      {
        v32 = v19 * a8;
        v33 = v79;
        do
        {
          *v28++ = a2[v32];
          v32 += a8;
          --v33;
        }

        while (v33);
      }

      v75 = v26;
      if (a10)
      {
        v34 = *(this + 18);
        v35 = v77;
        if ((*(this + 200) & 1) == 0)
        {
          *(this + 24) = v34;
        }
      }

      else
      {
        v34 = *(this + 18);
        v35 = v77;
      }

      *(this + 200) = a10 & 1;
      v36 = v78;
      *(this + 18) = v34 + v79;
      if (!v36)
      {
        goto LABEL_53;
      }

      v73 = v19;
      v74 = v20;
      v72 = v24;
      if ((a10 & 1) == 0 || (*(this + 264) & 1) != 0 || *(this + 24) > vcvtmd_s64_f64(*(this + 20)))
      {
        v37 = *(this + 1);
        v38 = *(this + 2);
        v39 = (this + (v38 >> 1));
        if (v38)
        {
          v37 = *(*v39 + v37);
        }

        v40 = v24;
        v41 = a9;
        v37(v39, v40, v77, v36, a9);
        v35 = v77;
        v42 = *(this + 20);
        goto LABEL_27;
      }

      if (a9 == 2)
      {
        break;
      }

      if (a9 != 1)
      {
        goto LABEL_42;
      }

      bzero(v24, 4 * v36);
      v35 = v77;
      if (v77)
      {
        v49 = 4 * v36;
LABEL_41:
        bzero(v35, v49);
        v35 = v77;
      }

LABEL_48:
      if (*(this + 133) == 1)
      {
        v54 = *(this + 26) + *(this + 27) * v36;
        *(this + 26) = v54;
        v42 = *(this + 19) * v54;
      }

      else
      {
        v42 = *(this + 20) + v36 * *(this + 21);
      }

      *(this + 20) = v42;
      v41 = a9;
LABEL_27:
      v44 = v78;
      v43 = v79;
      v45 = v78 * v41;
      v46 = &v35[v45];
      if (!v35)
      {
        v46 = 0;
      }

      v77 = v46;
      *(this + 34) = *(this + 34) + v78;
      v47 = v42;
      v48 = 4 * (*(this + 18) - v42);
      memmove(*(this + 10), (*(this + 10) + 4 * v47), v48);
      if (v70)
      {
        memmove(*(this + 11), (*(this + 11) + 4 * v47), v48);
      }

      *(this + 20) = *(this + 20) - v47;
      v23 = *(this + 18) - v47;
      *(this + 18) = v23;
      *(this + 24) -= v47;
      *(this + 17) = *(this + 17) + v47;
      if (*(this + 133) == 1)
      {
        *(this + 26) -= *(*(this + 7) + 16) * v47;
      }

      v22 -= v75;
      v24 = &v72[v45];
      v19 = v43 + v73;
      v20 = v44 + v74;
      v18 -= v76;
      a3 = v71;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    if (v35 - v24 == 4)
    {
      v49 = 4 * (2 * v36);
      v35 = v24;
      goto LABEL_41;
    }

LABEL_42:
    if (v35)
    {
      v50 = 0;
      v51 = v36;
      do
      {
        *(v24 + v50) = 0.0;
        *(v35 + v50) = 0.0;
        v50 += v67;
        --v51;
      }

      while (v51);
    }

    else
    {
      v52 = v24;
      v53 = v36;
      do
      {
        *v52 = 0.0;
        v52 = (v52 + v67);
        --v53;
      }

      while (v53);
    }

    goto LABEL_48;
  }

  v20 = 0;
  v19 = 0;
LABEL_53:
  v55 = *a6;
  NumberOfSourceFrames = Resampler2::GetNumberOfSourceFrames(this, 1u, v20);
  v57 = v55 - v19;
  if (v55 != v19 && v57 <= NumberOfSourceFrames)
  {
    if (a8 == 1)
    {
      memcpy((*(this + 10) + 4 * *(this + 18)), &a2[v19], 4 * (v55 - v19));
      if (a3)
      {
        memcpy((*(this + 11) + 4 * *(this + 18)), &a3[v19], 4 * (v55 - v19));
      }
    }

    else
    {
      v59 = *(this + 18);
      v60 = (*(this + 10) + 4 * v59);
      if (a3)
      {
        v61 = (*(this + 11) + 4 * v59);
        v62 = v19 * a8;
        v63 = v55 - v19;
        do
        {
          *v60++ = a2[v62];
          *v61++ = a3[v62];
          v62 += a8;
          --v63;
        }

        while (v63);
      }

      else
      {
        v64 = v19 * a8;
        v65 = v55 - v19;
        do
        {
          *v60++ = a2[v64];
          v64 += a8;
          --v65;
        }

        while (v65);
      }
    }

    *(this + 18) += v57;
  }

  *v69 = v20;
  *(this + 24) = 0;
  return 0;
}

uint64_t Resampler2::PreFlight(Resampler2 *this, unsigned int *a2, unsigned int *a3)
{
  NumberOfSourceFrames = Resampler2::GetNumberOfSourceFrames(this, *a3, 0);
  result = (*(*this + 144))(this, *a2);
  if (NumberOfSourceFrames >= *a2)
  {
    if (result < *a3)
    {
      *a3 = result;
    }
  }

  else
  {
    *a2 = NumberOfSourceFrames;
  }

  return result;
}

double Resampler2::ConvertSIMD_SmallIntegerRatio(Resampler2 *this, float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v93 = *MEMORY[0x1E69E9840];
  v10 = **(this + 7);
  v11 = (*(*this + 152))(this);
  if (v6)
  {
    v12 = *(*(this + 7) + 16);
    v14 = *(this + 26);
    v13 = *(this + 27);
    v15 = *(this + 19) * v12;
    if (v14 + v13 * v6 <= v15)
    {
      v16 = v13 / v12;
      v17 = v13 % v12;
      v18 = v14 / v12;
      v19 = v14 % v12;
      if (*(this + 29) == 1650553971)
      {
        v20 = *(this + 10);
        v21 = (4 * v11) & 0x3FFFFFFF0;
        if (a3)
        {
          v22 = *(this + 11);
          v23 = v6;
          do
          {
            v24 = v10 + 4 * v19 * v11;
            v25 = (v20 + 4 * v18);
            v26 = (v22 + 4 * v18);
            v27 = *(v24 + 16);
            v28 = vmulq_f32(v25[1], v27);
            v29 = vmulq_f32(*v25, *v24);
            v30 = vmulq_f32(v26[1], v27);
            v31 = vmulq_f32(*v26, *v24);
            v32 = *(v24 + 32);
            v33 = *(v24 + 48);
            v34 = v26[2];
            v35 = v26[3];
            v36 = v25[2];
            v37 = v25[3];
            v38 = 0uLL;
            if (v21 == 64)
            {
              v39 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
            }

            else
            {
              v42 = (v24 + v21);
              v43 = (v24 + 64);
              v44 = v26 + 4;
              v45 = v25 + 4;
              v40 = 0uLL;
              v41 = 0uLL;
              v39 = 0uLL;
              do
              {
                v39 = vaddq_f64(v39, vaddq_f64(vcvt_hight_f64_f32(v28), vcvt_hight_f64_f32(v29)));
                v38 = vaddq_f64(v38, vaddq_f64(vcvtq_f64_f32(*v28.f32), vcvtq_f64_f32(*v29.f32)));
                v46 = vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32));
                v41 = vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31)));
                v29 = vmulq_f32(v36, v32);
                v28 = vmulq_f32(v37, v33);
                v31 = vmulq_f32(v34, v32);
                v30 = vmulq_f32(v35, v33);
                v36 = *v45;
                v37 = v45[1];
                v45 += 2;
                v34 = *v44;
                v35 = v44[1];
                v44 += 2;
                v32 = *v43;
                v33 = v43[1];
                v40 = vaddq_f64(v40, v46);
                v43 += 2;
              }

              while (v43 != v42);
            }

            v47 = vmulq_f32(v33, v37);
            v48 = vmulq_f32(v32, v36);
            v49 = vmulq_f32(v33, v35);
            v50 = vmulq_f32(v32, v34);
            v51 = vaddq_f64(vaddq_f64(v41, vaddq_f64(vcvt_hight_f64_f32(v30), vcvt_hight_f64_f32(v31))), vaddq_f64(vcvt_hight_f64_f32(v49), vcvt_hight_f64_f32(v50)));
            v52 = vaddq_f64(vaddq_f64(v40, vaddq_f64(vcvtq_f64_f32(*v30.f32), vcvtq_f64_f32(*v31.f32))), vaddq_f64(vcvtq_f64_f32(*v49.f32), vcvtq_f64_f32(*v50.f32)));
            v49.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v38, vaddq_f64(vcvtq_f64_f32(*v28.f32), vcvtq_f64_f32(*v29.f32))), vaddq_f64(vcvtq_f64_f32(*v47.f32), vcvtq_f64_f32(*v48.f32))), vaddq_f64(vaddq_f64(v39, vaddq_f64(vcvt_hight_f64_f32(v28), vcvt_hight_f64_f32(v29))), vaddq_f64(vcvt_hight_f64_f32(v47), vcvt_hight_f64_f32(v48)))));
            *a2 = v49.f32[0];
            *v52.f64 = vaddvq_f64(vaddq_f64(v52, v51));
            *a3 = *v52.f64;
            a2 += v5;
            a3 += v5;
            v18 += v16;
            v53 = v19 + v17;
            if (v19 + v17 < v12)
            {
              v54 = 0;
            }

            else
            {
              v54 = v12;
            }

            if (v53 >= v12)
            {
              ++v18;
            }

            v19 = v53 - v54;
            --v23;
          }

          while (v23);
        }

        else
        {
          v55 = v6;
          do
          {
            v56 = v10 + 4 * v19 * v11;
            v57 = (v20 + 4 * v18);
            v58 = vmulq_f32(v57[1], *(v56 + 16));
            v59 = vmulq_f32(*v57, *v56);
            v60 = *(v56 + 32);
            v61 = *(v56 + 48);
            v62 = v57[2];
            v63 = v57[3];
            v64 = 0uLL;
            if (v21 == 64)
            {
              v65 = 0uLL;
            }

            else
            {
              v66 = (v56 + v21);
              v67 = (v56 + 64);
              v68 = v57 + 4;
              v65 = 0uLL;
              do
              {
                v65 = vaddq_f64(v65, vaddq_f64(vcvt_hight_f64_f32(v58), vcvt_hight_f64_f32(v59)));
                v64 = vaddq_f64(v64, vaddq_f64(vcvtq_f64_f32(*v58.f32), vcvtq_f64_f32(*v59.f32)));
                v59 = vmulq_f32(v62, v60);
                v58 = vmulq_f32(v63, v61);
                v62 = *v68;
                v63 = v68[1];
                v68 += 2;
                v60 = *v67;
                v61 = v67[1];
                v67 += 2;
              }

              while (v67 != v66);
            }

            v69 = vmulq_f32(v61, v63);
            v70 = vmulq_f32(v60, v62);
            v70.f32[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v64, vaddq_f64(vcvtq_f64_f32(*v58.f32), vcvtq_f64_f32(*v59.f32))), vaddq_f64(vcvtq_f64_f32(*v69.f32), vcvtq_f64_f32(*v70.f32))), vaddq_f64(vaddq_f64(v65, vaddq_f64(vcvt_hight_f64_f32(v58), vcvt_hight_f64_f32(v59))), vaddq_f64(vcvt_hight_f64_f32(v69), vcvt_hight_f64_f32(v70)))));
            *a2 = v70.f32[0];
            a2 += v5;
            v18 += v16;
            v71 = v19 + v17;
            if (v19 + v17 < v12)
            {
              v72 = 0;
            }

            else
            {
              v72 = v12;
            }

            if (v71 >= v12)
            {
              ++v18;
            }

            v19 = v71 - v72;
            --v55;
          }

          while (v55);
        }
      }

      else if (a3)
      {
        StereoMultiCoefsSRC_Neon((*(this + 10) + 4 * v18), (*(this + 11) + 4 * v18), v10, a2, a3, v6, v5, v16 | (v17 << 16), v19, v12, v11);
      }

      else if ((v11 & 3) == 0)
      {
        MonoMultiCoefsSRC_Neon((*(this + 10) + 4 * v18), v10, a2, v6, v5, v16 | (v17 << 16), v19, v12, v11);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 136317186;
      v76 = "Resampler2.cpp";
      v77 = 1024;
      v78 = 2300;
      v79 = 2080;
      v80 = "ConvertSIMD_SmallIntegerRatio";
      v81 = 1024;
      v82 = 2300;
      v83 = 1024;
      v84 = v15;
      v85 = 1024;
      v86 = v14;
      v87 = 1024;
      v88 = v14 + v12 * v6;
      v89 = 1024;
      v90 = v13;
      v91 = 1024;
      v92 = v12;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%25s:%-5d CADSPUtility:%s:%d: input buffer ticks %u but would read from %u to %u (tick rate %u, offsets %u)!", buf, 0x40u);
    }
  }

  v73 = *(this + 26) + *(this + 27) * v6;
  *(this + 26) = v73;
  result = *(this + 19) * v73;
  *(this + 20) = result;
  return result;
}

void sub_18F666FC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float MonoMultiCoefsSRC_Neon(_OWORD *a1, uint64_t a2, float *a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9)
{
  do
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = (a2 + 4 * (a7 * a9));
    v15 = *a1;
    v16 = *(a1 + 1);
    v14 = (a1 + 2);
    v18 = *v13;
    v19 = v13[1];
    v17 = v13 + 2;
    v20 = a9 - 16;
    if (a9 != 16)
    {
      do
      {
        v22 = *v14;
        v23 = v14[1];
        v21 = v14 + 2;
        v9 = vmlaq_f32(v9, v15, v18);
        v20 -= 16;
        v25 = *v17;
        v26 = v17[1];
        v24 = v17 + 2;
        v10 = vmlaq_f32(v10, v16, v19);
        v15 = *v21;
        v16 = v21[1];
        v14 = v21 + 2;
        v11 = vmlaq_f32(v11, v22, v25);
        v18 = *v24;
        v19 = v24[1];
        v17 = v24 + 2;
        v12 = vmlaq_f32(v12, v23, v26);
      }

      while (v20);
    }

    a1 = (a1 + 4 * a6);
    a7 += HIWORD(a6);
    v27 = vaddq_f32(vmlaq_f32(v9, v15, v18), vmlaq_f32(v10, v16, v19));
    v28 = vaddq_f32(vmlaq_f32(v11, *v14, *v17), vmlaq_f32(v12, v14[1], v17[1]));
    if (a7 >= a8)
    {
      a7 -= a8;
      a1 = (a1 + 4);
    }

    v29 = vaddq_f32(v27, v28);
    result = vaddv_f32(*&vpaddq_f32(v29, v29));
    --a4;
    *a3 = result;
    a3 += a5;
  }

  while (a4);
  return result;
}

float StereoMultiCoefsSRC_Neon(_OWORD *a1, _OWORD *a2, uint64_t a3, float *a4, float *a5, int a6, int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11)
{
  do
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = (a3 + 4 * (a9 * a11));
    v22 = *a1;
    v23 = *(a1 + 1);
    v21 = (a1 + 2);
    v25 = *a2;
    v26 = *(a2 + 1);
    v24 = (a2 + 2);
    v28 = *v20;
    v29 = v20[1];
    v27 = v20 + 2;
    v30 = a11 - 16;
    if (a11 != 16)
    {
      do
      {
        v32 = *v21;
        v33 = v21[1];
        v31 = v21 + 2;
        v12 = vmlaq_f32(v12, v22, v28);
        v35 = *v24;
        v36 = v24[1];
        v34 = v24 + 2;
        v16 = vmlaq_f32(v16, v25, v28);
        v30 -= 16;
        v38 = *v27;
        v39 = v27[1];
        v37 = v27 + 2;
        v13 = vmlaq_f32(v13, v23, v29);
        v17 = vmlaq_f32(v17, v26, v29);
        v22 = *v31;
        v23 = v31[1];
        v21 = v31 + 2;
        v14 = vmlaq_f32(v14, v32, v38);
        v25 = *v34;
        v26 = v34[1];
        v24 = v34 + 2;
        v18 = vmlaq_f32(v18, v35, v38);
        v28 = *v37;
        v29 = v37[1];
        v27 = v37 + 2;
        v15 = vmlaq_f32(v15, v33, v39);
        v19 = vmlaq_f32(v19, v36, v39);
      }

      while (v30);
    }

    v40 = v27[1];
    a1 = (a1 + 4 * a8);
    a2 = (a2 + 4 * a8);
    a9 += HIWORD(a8);
    v41 = vaddq_f32(vmlaq_f32(v12, v22, v28), vmlaq_f32(v13, v23, v29));
    v42 = vaddq_f32(vmlaq_f32(v16, v25, v28), vmlaq_f32(v17, v26, v29));
    v43 = vaddq_f32(vmlaq_f32(v14, *v21, *v27), vmlaq_f32(v15, v21[1], v40));
    v44 = vaddq_f32(vmlaq_f32(v18, *v24, *v27), vmlaq_f32(v19, v24[1], v40));
    if (a9 >= a10)
    {
      a9 -= a10;
      a1 = (a1 + 4);
      a2 = (a2 + 4);
    }

    v45 = vaddq_f32(v41, v43);
    v46 = vaddq_f32(v42, v44);
    result = vaddv_f32(*&vpaddq_f32(v45, v45));
    --a6;
    *a4 = result;
    *a5 = vaddv_f32(*&vpaddq_f32(v46, v46));
    a4 += a7;
    a5 += a7;
  }

  while (a6);
  return result;
}

unint64_t TDeinterleaver_SIMD<PCMSInt16_SIMD>::Deinterleave(unint64_t result, char *a2, void **a3, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a3;

    return memcpy(v5, a2, 2 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = 8 * result;
  v12 = 2 * result;
  while (result >= 8)
  {
    v13 = &a2[2 * v6];
    v14 = &a3[v6];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    v21 = v14[6];
    v22 = v14[7];
    if (v7 >= 7)
    {
      v23 = 0;
      v24 = v9;
      do
      {
        v25 = v13;
        v27 = *v13;
        v26 = *(v13 + 8);
        v28 = &v13[v12];
        v30 = *v28;
        v29 = v28[1];
        v31 = (v28 + v12);
        v33 = *v31;
        v32 = v31[1];
        v34 = (v31 + v12);
        v35 = v34[1];
        LODWORD(v36) = vzip1_s16(v27, v30).u32[0];
        WORD2(v36) = v33;
        HIWORD(v36) = *v34;
        LODWORD(v37) = vtrn2_s16(v27, v30).u32[0];
        WORD2(v37) = WORD1(v33);
        HIWORD(v37) = WORD1(*v34);
        LODWORD(v38) = vzip2_s16(v27, v30).u32[0];
        WORD2(v38) = WORD2(v33);
        HIWORD(v38) = WORD2(*v34);
        v27.i32[0] = vuzp2_s16(vuzp2_s16(v27, v30), v27).u32[0];
        v27.i16[2] = HIWORD(v33);
        v27.i16[3] = HIWORD(*v34);
        v30.i32[0] = vzip1_s16(v26, v29).u32[0];
        v30.i16[2] = v32.i16[0];
        v30.i16[3] = v35.i16[0];
        LODWORD(v33) = vtrn2_s16(v26, v29).u32[0];
        WORD2(v33) = v32.i16[1];
        HIWORD(v33) = v35.i16[1];
        LODWORD(v39) = vzip2_s16(v26, v29).u32[0];
        WORD2(v39) = v32.i16[2];
        HIWORD(v39) = v35.i16[2];
        v26.i32[0] = vuzp2_s16(vuzp2_s16(v26, v29), v26).u32[0];
        v26.i16[2] = v32.i16[3];
        *&v15[v23] = v36;
        *&v16[v23] = v37;
        v26.i16[3] = v35.i16[3];
        *&v18[v23] = v38;
        *&v17[v23] = v27;
        *&v19[v23] = v30;
        *&v20[v23] = v33;
        *&v21[v23] = v39;
        *&v22[v23] = v26;
        v23 += 4;
        v13 = v34 + v12;
        --v24;
      }

      while (v24);
      v13 = &v25[v11];
      v15 = (v15 + v23 * 2);
      v16 = (v16 + v23 * 2);
      v18 = (v18 + v23 * 2);
      v17 = (v17 + v23 * 2);
      v19 = (v19 + v23 * 2);
      v20 = (v20 + v23 * 2);
      v21 = (v21 + v23 * 2);
      v22 = (v22 + v23 * 2);
    }

    if ((a4 & 3) != 0)
    {
      v40 = (v13 + 8);
      v41 = a4 & 3;
      do
      {
        v42 = *(v40 - 1);
        v43 = *v40;
        *v15++ = v42;
        *v16++ = WORD1(v42);
        *v18++ = WORD2(v42);
        *v17++ = HIWORD(v42);
        *v19++ = v43;
        *v20++ = WORD1(v43);
        *v21++ = WORD2(v43);
        *v22++ = HIWORD(v43);
        v40 = (v40 + v12);
        --v41;
      }

      while (v41);
    }

    v44 = -8;
    v45 = 8;
LABEL_34:
    v6 += v45;
    result = (result + v44);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v46 = &a2[2 * v6];
    v47 = &a3[v6];
    v48 = *v47;
    v49 = v47[1];
    v51 = v47[2];
    v50 = v47[3];
    if (v7 >= 7)
    {
      v52 = 0;
      v53 = v9;
      do
      {
        v54 = v46;
        v55 = *v46;
        v56 = &v46[v12];
        v57 = *v56;
        v58 = (v56 + v12);
        v59 = *v58;
        v60 = (v58 + v12);
        LODWORD(v61) = vzip1_s16(v55, v57).u32[0];
        WORD2(v61) = v59;
        HIWORD(v61) = *v60;
        LODWORD(v62) = vtrn2_s16(v55, v57).u32[0];
        WORD2(v62) = WORD1(v59);
        HIWORD(v62) = WORD1(*v60);
        LODWORD(v63) = vzip2_s16(v55, v57).u32[0];
        WORD2(v63) = WORD2(v59);
        HIWORD(v63) = WORD2(*v60);
        v55.i32[0] = vuzp2_s16(vuzp2_s16(v55, v57), v55).u32[0];
        v55.i16[2] = HIWORD(v59);
        v55.i16[3] = HIWORD(*v60);
        *&v48[v52] = v61;
        *&v49[v52] = v62;
        *&v51[v52] = v63;
        *&v50[v52] = v55;
        v52 += 4;
        v46 = v60 + v12;
        --v53;
      }

      while (v53);
      v46 = &v54[v11];
      v50 = (v50 + v52 * 2);
      v51 = (v51 + v52 * 2);
      v49 = (v49 + v52 * 2);
      v48 = (v48 + v52 * 2);
    }

    v64 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v65 = *v46;
        *v48++ = *v46;
        *v49++ = v65.i16[1];
        *v51++ = v65.i16[2];
        *v50++ = v65.i16[3];
        v46 += v12;
        --v64;
      }

      while (v64);
    }

    v44 = -4;
    v45 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v66 = &a2[2 * v6];
    v67 = &a3[v6];
    v68 = *v67;
    v69 = v67[1];
    v70 = v9;
    if (v7 >= 7)
    {
      do
      {
        v71 = v66;
        LOWORD(v72) = *v66;
        v73 = *(v66 + 1);
        v74 = &v66[v12];
        v75 = *v74;
        v76 = *(v74 + 1);
        v77 = &v74[v12];
        v78 = *v77;
        v79 = *(v77 + 1);
        v80 = &v77[v12];
        v81 = v73;
        WORD1(v72) = v75;
        WORD2(v72) = v78;
        LOWORD(v82) = v81;
        WORD1(v82) = v76;
        HIWORD(v72) = *v80;
        WORD2(v82) = v79;
        HIWORD(v82) = HIWORD(*v80);
        *v68++ = v72;
        *v69++ = v82;
        v66 = &v80[v12];
        --v70;
      }

      while (v70);
      v66 = &v71[v11];
    }

    v83 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v84 = *(v66 + 1);
        *v68 = *v66;
        v68 = (v68 + 2);
        *v69 = v84;
        v69 = (v69 + 2);
        v66 += v12;
        --v83;
      }

      while (v83);
    }

    v44 = -2;
    v45 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v85 = a3[v6];
    v86 = 2 * v10;
    v87 = &a2[2 * v6];
    do
    {
      *v85++ = *v87;
      v87 += v86;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ExtAudioFile::Write(ExtAudioFile *this, UInt32 a2, const AudioBufferList *__src)
{
  v27 = *MEMORY[0x1E69E9840];
  ioNumPackets = a2;
  if (*(this + 19) && (*(this + 236) & 0x20) != 0)
  {
    v6 = *(this + 63);
  }

  else
  {
    v6 = 1;
  }

  if (__src->mNumberBuffers != v6)
  {
    return 4294967246;
  }

  if (!*(this + 14))
  {
    ExtAudioFile::AllocateBuffers(this, 0);
  }

  v7 = *(this + 8);
  if (v7 != 4)
  {
    if (v7 != 3)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v18, 0xFFFEFBFB);
        *buf = 136315906;
        v20 = "ExtAudioFile.cpp";
        v21 = 1024;
        v22 = 1422;
        v23 = 2080;
        v24 = v18;
        v25 = 2080;
        v26 = "can't write to this file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "can't write to this file", -66565);
    }

    *(this + 8) = 4;
  }

  *(this + 328) = 0;
  if (*(this + 19))
  {
    *(this + 78) = a2;
    v8 = *(this + 40);
    if (*(v8 + 8))
    {
      CAAssertRtn();
    }

    memcpy((v8 + 24), __src, (16 * __src->mNumberBuffers) | 8);

    return ExtAudioFile::WritePacketsFromCallback(this, this, v9);
  }

  else
  {
    if (*(this + 416) == 1)
    {
      v11 = mach_absolute_time();
    }

    else
    {
      v11 = 0;
    }

    v12 = AudioFileWritePackets(*(this + 2), *(this + 29), __src->mBuffers[0].mDataByteSize, 0, *(this + 6), &ioNumPackets, __src->mBuffers[0].mData);
    if (v12)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v18, v12);
        *buf = 136315906;
        v20 = "ExtAudioFile.cpp";
        v21 = 1024;
        v22 = 1432;
        v23 = 2080;
        v24 = v18;
        v25 = 2080;
        v26 = "write audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v16 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v16, "write audio file", v12);
    }

    if (*(this + 416) == 1)
    {
      *(this + 53) += mach_absolute_time() - v11;
    }

    v13 = ioNumPackets;
    *(this + 6) += ioNumPackets;
    v14 = *(this + 47);
    result = 0;
    if (v14)
    {
      *(this + 7) += v14 * v13;
    }
  }

  return result;
}

OSStatus ExtAudioFileWrite(ExtAudioFileRef inExtAudioFile, UInt32 inNumberFrames, const AudioBufferList *ioData)
{
  if (!ioData)
  {
    return -50;
  }

  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  CrashIfClientProvidedBogusAudioBufferList();
  return ExtAudioFile::Write(v6, inNumberFrames, ioData);
}

uint64_t AudioFileObject::WritePackets(AudioFileObject *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, const void *a7)
{
  v10 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if ((*(*this + 248))(this, a2, a3, a4) >= a5)
  {
    if (a6 && a7)
    {
      v16 = *(this + 10);
      v20 = v16 * *a6;
      if (v20 > v10)
      {
        v17 = v10 / v16;
        *a6 = v10 / v16;
        v16 = *(this + 10);
        v20 = v16 * v17;
      }

      v13 = (*(*this + 80))(this, a2, v16 * a5, &v20, a7);
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "AudioFileObject.cpp";
          v23 = 1024;
          v24 = 1190;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "%25s:%-5d  Write Bytes Failed";
          goto LABEL_13;
        }
      }

      else
      {
        v19 = *(this + 10);
        if (v20 != v19 * *a6)
        {
          *a6 = v20 / v19;
        }
      }
    }

    else
    {
      v13 = 2003334207;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "AudioFileObject.cpp";
        v23 = 1024;
        v24 = 1171;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d  invalid parameter";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "AudioFileObject.cpp";
      v23 = 1024;
      v24 = 1170;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  write past end";
LABEL_13:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }
  }

  return v13;
}

uint64_t AudioFileObject::WriteBytes(AudioFileObject *this, int a2, uint64_t a3, unsigned int *a4, const void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) == 0)
  {
    return 1886547263;
  }

  if (!a4 || !a5)
  {
    v5 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v21 = "AudioFileObject.cpp";
    v22 = 1024;
    v23 = 817;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  invalid parameters";
    goto LABEL_10;
  }

  v11 = (*(*this + 632))(this, *a4 + a3);
  if (v11)
  {
    v5 = v11;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v21 = "AudioFileObject.cpp";
    v22 = 1024;
    v23 = 823;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  invalid file position";
LABEL_10:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    return v5;
  }

  v15 = *a4 + a3;
  v16 = (*(*this + 232))(this);
  if (v15 > v16 && !*(this + 20))
  {
    v5 = 1869640813;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v21 = "AudioFileObject.cpp";
    v22 = 1024;
    v23 = 829;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  Can't write more data until the file is optimized";
    goto LABEL_10;
  }

  v17 = (*(**(this + 13) + 56))(*(this + 13), 32 * (a2 == 0), *(this + 9) + a3, *a4, a5, a4);
  if (v17)
  {
    v5 = v17;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v21 = "AudioFileObject.cpp";
    v22 = 1024;
    v23 = 837;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  couldn't write new data";
    goto LABEL_10;
  }

  if (v15 <= v16)
  {
    return 0;
  }

  v19 = 0;
  v18 = (*(**(this + 13) + 24))(*(this + 13), &v19);
  if (!v18)
  {
    return AudioFileObject::UpdateNumBytes(this, v19 - *(this + 9));
  }

  v5 = v18;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "AudioFileObject.cpp";
    v22 = 1024;
    v23 = 844;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  GetSize failed";
    goto LABEL_10;
  }

  return v5;
}

uint64_t ChunkyAudioFile::IsValidFilePosition(ChunkyAudioFile *this, uint64_t a2)
{
  v3 = (*(*this + 816))(this);
  if (a2 <= 0xFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1868981823;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t AudioFileObject::UpdateNumBytes(AudioFileObject *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return 4294967246;
  }

  if ((*(*this + 232))(this) != a2)
  {
    (*(*this + 240))(this, a2);
    v4 = (*(*this + 232))(this);
    (*(*this + 256))(this, v4 / *(this + 10));
    if ((*(this + 100) & 2) != 0)
    {
      if (*(this + 33))
      {
        result = 0;
        *(this + 136) = 1;
        return result;
      }

      (*(*this + 224))(this);
    }
  }

  return 0;
}

uint64_t std::function<BOOL ()(IConverterFactory const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

float32x4_t **StereoInterleaveFloat32ToInt16(float32x4_t *a1, float32x4_t *a2, __int16 *a3, uint64_t a4, __n128 a5)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v6[1] = a2;
  return StereoInterleaveFloat32ToNativeInt16Scaled_ARM(v6, a3, a4, 32768.0);
}

float32x4_t **StereoInterleaveFloat32ToNativeInt16Scaled_ARM(float32x4_t **result, __int16 *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    do
    {
      v7 = &a2[v4 / 2];
      v8 = llroundf(v5->f32[v4 / 4] * a4);
      v9 = llroundf(v6->f32[v4 / 4] * a4);
      if (v8 > 0)
      {
        v10 = 0x7FFF;
      }

      else
      {
        v10 = 0x8000;
      }

      if ((v8 ^ (v8 >> 31)) >= 0x8000)
      {
        LOWORD(v8) = v10;
      }

      *v7 = v8;
      if (v9 > 0)
      {
        v11 = 0x7FFF;
      }

      else
      {
        v11 = 0x8000;
      }

      if ((v9 ^ (v9 >> 31)) >= 0x8000)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      v7[1] = v12;
      v13 = a3 - 1;
      v14 = a2 + 4 + v4;
      v4 += 4;
      if ((v14 & 0xF) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
    a2 = (a2 + v4);
    *result = (v5 + v4);
    result[1] = (v6 + v4);
  }

  else
  {
    v13 = a3;
  }

  if (v13 >= 8)
  {
    v15 = v13 >> 3;
    v16 = *result;
    v17 = result[1];
    do
    {
      v29.val[0] = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(*v16, a4))), vcvtaq_s32_f32(vmulq_n_f32(v16[1], a4)));
      v29.val[1] = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(*v17, a4))), vcvtaq_s32_f32(vmulq_n_f32(v17[1], a4)));
      vst2q_s16(a2, v29);
      a2 += 16;
      v16 = *result + 2;
      v17 = result[1] + 2;
      *result = v16;
      result[1] = v17;
      --v15;
    }

    while (v15);
  }

  v18 = v13 & 7;
  if (v18)
  {
    v19 = *result;
    v20 = result[1];
    do
    {
      v21 = v19->f32[0];
      v19 = (v19 + 4);
      v22 = v21;
      v23 = v20->f32[0];
      v20 = (v20 + 4);
      v24 = llroundf(v22 * a4);
      v25 = llroundf(v23 * a4);
      if (v24 > 0)
      {
        v26 = 0x7FFF;
      }

      else
      {
        v26 = 0x8000;
      }

      if ((v24 ^ (v24 >> 31)) >= 0x8000)
      {
        LOWORD(v24) = v26;
      }

      *a2 = v24;
      if (v25 > 0)
      {
        v27 = 0x7FFF;
      }

      else
      {
        v27 = 0x8000;
      }

      if ((v25 ^ (v25 >> 31)) >= 0x8000)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      a2[1] = v28;
      a2 += 2;
      --v18;
    }

    while (v18);
    *result = v19;
    result[1] = v20;
  }

  return result;
}

uint64_t WAVEAudioFile::GetNumBytes(WAVEAudioFile *this)
{
  v1 = *(this + 13);
  v2 = *(this + 128);
  if (v1 >= v2)
  {
    return *(this + 1);
  }

  else
  {
    return (v1 / v2 * *(this + 1));
  }
}

uint64_t DSPGraph::SRCBox::uninitialize(DSPGraph::SRCBox *this)
{
  DSPGraph::Box::uninitialize(this);
  DSPGraph::SimpleABL::free((this + 912));
  result = *(this + 111);
  *(this + 111) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void DSPGraph::ResamplerSRCKernel::~ResamplerSRCKernel(DSPGraph::ResamplerSRCKernel *this)
{
  *this = &unk_1F0336098;
  v1 = (this + 8);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336098;
  v1 = (this + 8);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::uninitialize(DSPGraph::SingleRateLPCMConverterBox *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  return DSPGraph::Box::uninitialize(this);
}

DSPGraph::FCBox *DSPGraph::FCBox::asOperativeFCBox(DSPGraph::FCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

uint64_t DSPGraph::FCBox::isNoOp(DSPGraph::FCBox *this)
{
  v2 = DSPGraph::FCBox::upstreamSampleRate(this);
  if (v2 != DSPGraph::FCBox::downstreamSampleRate(this))
  {
    return 0;
  }

  v3 = DSPGraph::FCBox::upstreamBlockSize(this);
  if (v3 != DSPGraph::FCBox::downstreamBlockSize(this))
  {
    return 0;
  }

  IsCBR = DSPGraph::FCBox::upstreamIsCBR(this);
  return IsCBR ^ DSPGraph::FCBox::downstreamIsCBR(this) ^ 1u;
}

uint64_t DSPGraph::FCBox::upstreamSampleRate(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F668794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamSampleRate(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F6688B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::upstreamBlockSize(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 40);
}

void sub_18F6689D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamBlockSize(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 40);
}

void sub_18F668AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void *DSPGraph::FCBox::isogroup(DSPGraph::Box *a1, uint64_t a2, float *a3)
{
  if ((*(*a1 + 712))(a1))
  {

    return DSPGraph::Box::isogroup(a1, a2, a3);
  }

  else
  {
    result = std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(*a2, *(a2 + 8), a1);
    if (!result)
    {
      v8 = a1;
      std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(a2, a1, &v8);
      DSPGraph::IsoGroup::add(a3, a1);
      v8 = a1;
      std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(a3 + 34, a1, &v8);
      *(a1 + 106) = a3;
      v7 = *(*a1 + 424);

      return v7(a1, a2, a3);
    }
  }

  return result;
}

uint64_t DSPGraph::RingBufferBox::configureRingBuffer(uint64_t this, int a2, int a3)
{
  *(this + 772) = a2;
  *(this + 776) = a3;
  return this;
}

double DSPGraph::CalculationBox::setParameter(DSPGraph::CalculationBox *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5, unsigned int a6)
{
  if (a2)
  {
    DSPGraph::Box::setParameter(this, a5);
  }

  if (a3 != 1 || *(this + 194))
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v21, "setParameter");
    std::to_string(&v17, a3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, "CalculationBox can't get parameter in scope ", &v17);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v19, &v18, " with parameter ID ");
    std::to_string(&v16, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v16;
    }

    else
    {
      v10 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v19, v10, size);
    v20 = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10866, &v22, 178, &v21, &v20);
  }

  if (*(this + 103) <= a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v21, "setParameter");
    std::to_string(&v17, a4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, "CalculationBox can't set input scope element ", &v17);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v19, &v18, " with parameter ID ");
    std::to_string(&v16, 0);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v16.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v19, v13, v14);
    v20 = *v15;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10877, &v22, 173, &v21, &v20);
  }

  v7 = (this + 16 * a4);
  result = a5;
  v7[99] = result;
  *(v7 + 200) = 1;
  return result;
}

void sub_18F6692A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (*(v38 - 17) < 0)
  {
    operator delete(*(v38 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::initialize(DSPGraph::SingleRateLPCMConverterBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0x20 || ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox only supports 1 bus in 1 bus out");
    DSPGraph::ThrowException(1718449215, &v13, 3772, &v12, &v11);
  }

  if (v3 == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v12, "in");
    v8 = this + 32;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v4 = *((*(*v2 + 40))(v2) + 120);
  if (v4->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox input format must be LPCM");
    DSPGraph::ThrowException(1718449215, &v13, 3778, &v12, &v11);
  }

  if (!v4->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox input must have a non-zero number of channels");
    DSPGraph::ThrowException(1718449215, &v13, 3782, &v12, &v11);
  }

  v5 = *(this + 11);
  if (*(this + 12) == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v12, "out");
    v9 = this + 32;
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v9, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *((*(*v5 + 40))(v5) + 120);
  if (v6->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox output format must be non-interleaved float");
    DSPGraph::ThrowException(1718449215, &v13, 3788, &v12, &v11);
  }

  if (!v6->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox output must have a non-zero number of channels");
    DSPGraph::ThrowException(1718449215, &v13, 3792, &v12, &v11);
  }

  if (v4->mSampleRate != v6->mSampleRate)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "SingleRateLPCMConverterBox input and output sample rates must match");
    DSPGraph::ThrowException(1718449215, &v13, 3796, &v12, &v11);
  }

  result = AudioConverterNewWithOptions(v4, v6, 0, this + 97);
  if (result)
  {
    v10 = result;
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v11, "Error in AudioConverterNew");
    DSPGraph::ThrowException(v10, &v13, 3803, &v12, &v11);
  }

  return result;
}

void sub_18F6697A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SRCBox::initialize(DSPGraph::SRCBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0)
  {
    DSPGraph::RingBufferBox::initialize(this);
    v2 = *(this + 11);
    if (*(this + 12) != v2)
    {
      v3 = (*(*v2 + 40))(v2);
      v4 = *(this + 8);
      if (*(this + 9) != v4)
      {
        v5 = *(*(v3 + 120) + 28);
        if (*(*((*(*v4 + 40))(v4) + 120) + 28) == v5)
        {
          DSPGraph::FCBox::upstreamSampleRate(this);
          DSPGraph::FCBox::downstreamSampleRate(this);
          if (*(this + 904) == 1)
          {
            operator new();
          }

          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v9, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v8, "input and output channel counts don't match");
        DSPGraph::ThrowException(1667788321, &v10, 440, &v9, &v8);
      }

      std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v9, "in");
      v7 = this + 32;
      if (*(this + 55) < 0)
      {
        v7 = *v7;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v7, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v9, "out");
    v6 = this + 32;
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v9, "initialize");
  std::string::basic_string[abi:ne200100]<0>(&v8, "SRCBox has no inputs");
  DSPGraph::ThrowException(1970168609, &v10, 433, &v9, &v8);
}

void sub_18F669DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::numChannels(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F669FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::bytesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F66A100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  if (*(a1 + 72) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v29, "in");
    v12 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v12, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(a1 + 88);
  if (*(a1 + 96) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v29, "out");
    v13 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v13, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  v6 = *((*(*v4 + 40))(v4) + 120);
  *(a1 + 813) = 1;
  v7 = *(v5 + 8);
  if (v7 == 1819304813)
  {
    v8 = *(v5 + 12);
    if ((v8 & 1) == 0 || *(v5 + 32) != 32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v7 != 1718773105 || *(v5 + 32) != 64)
    {
LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v29, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v28, "GainBox input format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v30, 2615, &v29, &v28);
    }

    v8 = *(v5 + 12);
  }

  if ((v8 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(v6 + 8);
  if (v9 == 1819304813)
  {
    v10 = *(v6 + 12);
    if ((v10 & 1) == 0 || *(v6 + 32) != 32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v9 != 1718773105 || *(v6 + 32) != 64)
    {
LABEL_28:
      std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v29, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v28, "GainBox output format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v30, 2618, &v29, &v28);
    }

    v10 = *(v6 + 12);
  }

  if ((v10 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  result = CA::StreamDescription::IsEquivalent(v5, v6);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v29, "initialize");
    CA::StreamDescription::AsString(&v24, v5, v14, v15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, "GainBox input and output formats don't match (", &v24);
    *&v16 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, &v25, " != ").n128_u64[0];
    CA::StreamDescription::AsString(v22, v6, v16, v17);
    if ((v23 & 0x80u) == 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v19 = v23;
    }

    else
    {
      v19 = v22[1];
    }

    v20 = std::string::append(&v26, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v28, &v27, ")");
    DSPGraph::ThrowException(1718449215, &v30, 2623, &v29, &v28);
  }

  return result;
}

void sub_18F66A508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (*(v42 - 49) < 0)
  {
    operator delete(*(v42 - 72));
  }

  _Unwind_Resume(exception_object);
}

BOOL CA::StreamDescription::IsEquivalent(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0.0 && *a2 != 0.0 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (v4 && v3 != v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a2 + 20);
    if (v9)
    {
      if (v8 != v9)
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a2 + 24);
    if (v11)
    {
      if (v10 != v11)
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + 28);
  if (v12)
  {
    v13 = *(a2 + 28);
    if (v13)
    {
      if (v12 != v13)
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = *(a2 + 32);
    if (v16)
    {
      if (v14 != v16)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = *(a1 + 12);
      if (v20)
      {
        v21 = *(a2 + 12);
        if (v21)
        {
          if (v3 != 1819304813)
          {
            return v20 == v21;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(a1 + 12);
          }

          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v23 = 1;
            }

            else
            {
              v23 = *(a1 + 28);
            }

            if (v23)
            {
              v23 = 8 * (v10 / v23);
              v15 = v23 == v14;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v15)
          {
            v22 |= 8u;
          }

          if ((v14 & 7) == 0 && v23 == v14)
          {
            v22 &= ~0x10u;
          }

          if (v22)
          {
            v22 &= ~4u;
          }

          if ((v22 & 8) != 0 && v14 <= 8)
          {
            v22 &= 2u;
          }

          if (v12 == 1)
          {
            v22 &= ~0x20u;
          }

          if (!v22)
          {
            v22 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v22 == v21;
          }

          if ((v21 & 0x7FFFFFFF) != 0)
          {
            v27 = v21 & 0x7FFFFFFF;
          }

          else
          {
            v27 = *(a2 + 12);
          }

          v28 = *(a2 + 24);
          if (v28)
          {
            v29 = *(a2 + 28);
            if ((v21 & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = *(a2 + 28);
            }

            if (v30)
            {
              v30 = 8 * (v28 / v30);
              v31 = *(a2 + 32);
              v32 = v27 | 8;
              v33 = v30 == v31;
LABEL_77:
              if (v33)
              {
                v27 = v32;
              }

              v34 = (v31 & 7) == 0 && v30 == v31;
              v35 = v27 & 0xFFFFFFEF;
              if (!v34)
              {
                v35 = v27;
              }

              if (v35)
              {
                v35 &= ~4u;
              }

              v36 = (v35 & 8) == 0 || v31 > 8;
              v37 = v35 & 2;
              if (v36)
              {
                v37 = v35;
              }

              if (v29 == 1)
              {
                v38 = v37 & 0xFFFFFFDF;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                v21 = v38;
              }

              else
              {
                v21 = 0x80000000;
              }

              return v22 == v21;
            }

            v31 = *(a2 + 32);
            v32 = v27 | 8;
          }

          else
          {
            v30 = 0;
            v32 = v27 | 8;
            v29 = *(a2 + 28);
            v31 = *(a2 + 32);
          }

          v33 = v31 == 0;
          goto LABEL_77;
        }
      }
    }
  }

  return v17;
}

unint64_t DSPGraph::AUBox::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[106], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

uint64_t DSPGraph::AUBox::setUsesFixedBlockSize(DSPGraph::AUBox *this, int a2)
{
  result = (*(*this + 296))(this, 3700, 0, 0);
  if ((v5 & 1) != 0 && (result & 0x100000000) != 0)
  {
    v6 = a2;
    return (*(*this + 312))(this, 3700, 0, 0, 4, &v6);
  }

  return result;
}

uint64_t DSPGraph::TimeFreqBox::initialize(DSPGraph::TimeFreqBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v22, "in");
    v15 = this + 32;
    if (*(this + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v15, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v22, "out");
    v16 = this + 32;
    if (*(this + 55) < 0)
    {
      v16 = *v16;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v16, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  if (*(v5 + 28) != *(*((*(*v4 + 40))(v4) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v21, "channel mismatch.");
    DSPGraph::ThrowException(1718444833, &v23, 46, &v22, &v21);
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v22, "in");
    v17 = this + 32;
    if (*(this + 55) < 0)
    {
      v17 = *v17;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v17, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1819304813)
  {
    goto LABEL_9;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v22, "out");
    v20 = this + 32;
    if (*(this + 55) < 0)
    {
      v20 = *v20;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v20, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v7 + 40))(v7);
  if (*(*(result + 120) + 8) == 1718773105)
  {
    v9 = 0;
  }

  else
  {
LABEL_9:
    v10 = *(this + 8);
    if (*(this + 9) == v10)
    {
      std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v22, "in");
      v18 = this + 32;
      if (*(this + 55) < 0)
      {
        v18 = *v18;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    if (*(*((*(*v10 + 40))(v10) + 120) + 8) != 1718773105)
    {
      goto LABEL_39;
    }

    v11 = *(this + 11);
    if (*(this + 12) == v11)
    {
      std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v22, "out");
      v19 = this + 32;
      if (*(this + 55) < 0)
      {
        v19 = *v19;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v19, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    result = (*(*v11 + 40))(v11);
    if (*(*(result + 120) + 8) != 1819304813)
    {
LABEL_39:
      std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v22, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v21, "formats are not between freq and time domains.");
      DSPGraph::ThrowException(1718444833, &v23, 54, &v22, &v21);
    }

    v9 = 1;
  }

  *(this + 200) = v9;
  v12 = *(v5 + 28);
  if (v12 > (*(this + 99) - *(this + 97)) >> 4)
  {
    v24 = this + 776;
    std::allocator<std::unique_ptr<void,int (*)(void *)>>::allocate_at_least[abi:ne200100](v12);
  }

  if (v12)
  {
    *&v22 = 0;
    v13 = *(this + 2);
    v14 = *(v13 + 268);
    if (v14 == 1)
    {
      v14 = *(v13 + 272);
    }

    VPTimeFreqConverter_Create(*(this + 200), v14, &v22);
  }

  return result;
}

void sub_18F66B000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F66B228(_Unwind_Exception *a1)
{
  v6 = v2[20];
  if (v6)
  {
    v2[21] = v6;
    operator delete(v6);
  }

  v7 = v2[17];
  if (v7)
  {
    v2[18] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[15] = v8;
    operator delete(v8);
  }

  v9 = v2[11];
  if (v9)
  {
    v2[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v2[9] = v10;
    operator delete(v10);
  }

  v11 = v2[5];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x193ADF220](v2, v1);
  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

uint64x2_t CreateMagicalWindow(uint64_t a1, unsigned int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = xmmword_18F9016B0;
    result = xmmword_18F9016C0;
    v5 = xmmword_18F901740;
    v6 = (a1 + 8);
    __asm { FMOV            V1.4S, #4.0 }

    v43 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v51 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v41 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v42 = _Q4;
    v39 = vdupq_n_s64(4uLL);
    v40 = vdupq_n_s32(0x3FC90FDBu);
    do
    {
      v49 = result;
      v50 = v4;
      v14 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v4)));
      v48 = v5;
      v15 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v43), v44);
      v16 = vmovn_s32(vcgtq_f32(v51, v15));
      v17 = vbic_s8(v14, v16);
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v15));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v42, v15));
      v22 = vbic_s8(v20, v21);
      v23 = vsubq_f32(v18, v15);
      v24 = vand_s8(v20, v21);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v17, v19);
      v47 = vorr_s8(vorr_s8(v22, vorr_s8(vand_s8(v14, v16), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vaddq_f32(v23, v18), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v15, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), v23, v15)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v24, v26))), 0x1FuLL));
      v55 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v27.f32), v41)), vmulq_f64(vcvt_hight_f64_f32(v27), v41)), v40);
      v52 = cosf(v55.f32[1]);
      v28.f32[0] = cosf(v55.f32[0]);
      v28.f32[1] = v52;
      v53 = v28;
      v29 = cosf(v55.f32[2]);
      v30 = v53;
      v30.f32[2] = v29;
      v54 = v30;
      v31 = cosf(v55.f32[3]);
      v32 = v54;
      v32.f32[3] = v31;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      v34.i64[0] = 0xBF000000BF000000;
      v34.i64[1] = 0xBF000000BF000000;
      v35 = vmlaq_f32(v33, v34, v32);
      v36 = vmulq_f32(v35, v35);
      v37 = vsqrtq_f32(vbslq_s8(v46, v36, vsubq_f32(v51, v36)));
      if (v47.i8[0])
      {
        *(v6 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v6 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v6 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v6[1] = v37.i32[3];
      }

      v4 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v5 = vaddq_s32(v48, v38);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

uint64_t DSPGraph::SumBox::initialize(DSPGraph::SumBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v16, "SumBox has no inputs");
    DSPGraph::ThrowException(1970168609, &v18, 2922, &v17, &v16);
  }

  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v17, "out");
    v15 = this + 32;
    if (*(this + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v15, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[2];
  if (v5 == 1819304813)
  {
    v6 = v4[3];
    if ((v6 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v5 != 1718773105 || v4[8] != 64)
    {
LABEL_32:
      std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v17, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v16, "SumBox output format must be non-interleaved float");
      DSPGraph::ThrowException(1718449215, &v18, 2930, &v17, &v16);
    }

    v6 = v4[3];
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_32;
  }

  v7 = *(this + 8);
  v8 = *(this + 9);
  if (v7 != v8)
  {
    v9 = *(this + 8);
    do
    {
      result = (*(*v9 + 40))(v9);
      v10 = *(result + 120);
      v11 = v10[2];
      if (v11 == 1819304813)
      {
        v12 = v10[3];
        if ((v12 & 1) == 0 || v10[8] != 32)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v11 != 1718773105 || v10[8] != 64)
        {
LABEL_29:
          std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v17, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v16, "SumBox input format must be non-interleaved float");
          DSPGraph::ThrowException(1718449215, &v18, 2935, &v17, &v16);
        }

        v12 = v10[3];
      }

      if ((v12 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      v13 = v10[7];
      v14 = v4[7];
      if (v13 != v14)
      {
        if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0x20)
        {
          std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v17, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v16, "SumBox channel mismatch");
          DSPGraph::ThrowException(1718449215, &v18, 2942, &v17, &v16);
        }

        if (v14 != 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v17, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v16, "SumBox output channel count must be mono or matched when input is single-bus");
          DSPGraph::ThrowException(1718449215, &v18, 2940, &v17, &v16);
        }
      }

      v9 += 32;
      v7 += 32;
    }

    while (v9 != v8);
  }

  return result;
}

void sub_18F66B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::PropertyTap::initialize(DSPGraph::PropertyTap *this)
{
  v2 = (*(**this + 296))(*this, *(this + 2), *(this + 3), *(this + 4));
  if ((v3 & 1) == 0)
  {
    v6 = v2;
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getPropertyInfo failed");
    DSPGraph::ThrowException(v6, &v9, 807, &v8, &v7);
  }

  v4 = *(this + 5);
  if (*(this + 6) - v4 != v2)
  {
    *(this + 6) = v4;
    v5 = v2;
    if (v2)
    {
      if (*(this + 7) - v4 < v2)
      {
        operator new();
      }

      bzero(v4, v2);
      *(this + 6) = &v4[v5];
    }
  }
}

void sub_18F66BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::SRCBox::selfLatencyInTicks(DSPGraph::SRCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  v3 = *(this + 194);
  v4 = *(*(this + 1) + 696);
  v5 = v4 / (*(*this + 664))(this) * v3;
  v6 = *(this + 111);
  if (v6)
  {
    v6 = (*(*v6 + 48))(v6, *(*(this + 1) + 696));
  }

  return v6 + v5;
}

uint64_t DSPGraph::ResamplerSRCKernel::selfLatencyInTicks(DSPGraph::ResamplerSRCKernel *this, unint64_t a2)
{
  v2 = **(this + 1);
  if ((*(v2 + 120) | 2) == 2)
  {
    v3 = 0.5;
    if (*(v2 + 116) != 1818848869)
    {
      v3 = *(v2 + 168) + *(*(v2 + 56) + 20);
    }

    v4 = v3 / *(v2 + 96);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = llround(ceil(v4 * a2));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= 0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t DSPGraph::TimeFreqBox::selfLatencyInTicks(DSPGraph::TimeFreqBox *this)
{
  if ((*(*(this + 1) + 761) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "selfLatencyInTicks");
    std::string::basic_string[abi:ne200100]<0>(&v12, "not configured");
    DSPGraph::ThrowException(1667655457, &v14, 72, &v13, &v12);
  }

  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v13, "in");
    v8 = this + 32;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v2 + 40))(v2) + 120) + 8) == 1819304813)
  {
    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v13, "out");
      v11 = this + 32;
      if (*(this + 55) < 0)
      {
        v11 = *v11;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    if (*(*((*(*v4 + 40))(v4) + 120) + 8) == 1718773105)
    {
      return 0;
    }
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v13, "in");
    v9 = this + 32;
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1718773105)
  {
    goto LABEL_25;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v13, "out");
    v10 = this + 32;
    if (*(this + 55) < 0)
    {
      v10 = *v10;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  if (*(*((*(*v7 + 40))(v7) + 120) + 8) != 1819304813)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "selfLatencyInTicks");
    std::string::basic_string[abi:ne200100]<0>(&v12, "formats are not between freq and time domains.");
    DSPGraph::ThrowException(1718444833, &v14, 80, &v13, &v12);
  }

  return *(*(this + 2) + 296);
}

void sub_18F66C1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::GraphInput::copyInput(DSPGraph::GraphInput *this)
{
  v2 = *(this + 106);
  v3 = *(v2 + 64);
  *(this + 856) = (v3 & 2) != 0;
  if ((v3 & 2) != 0)
  {
    *(this + 108) = *(v2 + 16);
    *(this + 109) = *(v2 + 8);
  }

  v4 = *(this + 206) - *(this + 209);
  v5 = (*(*this + 672))(this) * v4;
  v6 = *(this + 106);
  v7 = DSPGraph::GraphInput::preflight(this);
  v8 = *v6;
  if (v7 < *v6)
  {
    v8 = v7;
  }

  if (v5 >= v8)
  {
    v5 = v8;
  }

  **(this + 106) = v5;
  v9 = (*(*this + 672))(this);
  v10 = *(*(this + 106) + 72);
  v11 = 0;
  DSPGraph::RingBuffer::write((this + 808), v5 / v9, v5 / v9, &v10);
  DSPGraph::SimpleABL::free(&v10);
}

unsigned int **DSPGraph::RingBuffer::write(DSPGraph::RingBuffer *this, uint64_t a2, unsigned int a3, unsigned int **a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 > a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v12 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v19 = a3;
      v20 = 1024;
      v21 = a2;
      _os_log_fault_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::write advancing write by more packets than provided with %u > %u", buf, 0xEu);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::write advancing write by more packets than provided with %u > %u");
LABEL_17:
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  if (*(this + 4) - *(this + 7) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v13 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v14 = *(this + 4);
      v15 = *(this + 7);
      v16 = *(this + 8);
      v17 = *(this + 9);
      *buf = 67110400;
      v19 = a2;
      v20 = 1024;
      v21 = v14 - v15;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = v17;
      _os_log_fault_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::write overflow %u > %u (capacity = %u, readAvail = %u, readPos = %u, writePos = %u)", buf, 0x26u);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::write overflow %u > %u (capacity = %u, readAvail = %u, readPos = %u, writePos = %u)", a2);
    goto LABEL_17;
  }

  result = DSPGraph::SimpleABL::dstWrapCopy(a4, this, 0, (*(this + 9) * *(this + 6)), (*(this + 6) * a2));
  v8 = *(this + 9) + a3;
  *(this + 9) = v8;
  v9 = *(this + 5);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    *(this + 9) = v11;
  }

  *(this + 7) += a3;
  return result;
}

unsigned int **DSPGraph::SimpleABL::dstWrapCopy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!*a2 || !*v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v16, "dstWrapCopy");
    std::string::basic_string[abi:ne200100]<0>(&v15, "empty destination ABL");
    DSPGraph::ThrowException(1768843553, &v17, 722, &v16, &v15);
  }

  v6 = a4;
  v7 = v5[3];
  v8 = v7 - a4;
  if (v7 <= a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v16, "dstWrapCopy");
    DSPGraph::strprintf("copy destination position exceeds bounds %u >= %u", v6, v7);
  }

  if (v7 < a5)
  {
    v14 = a5;
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v16, "dstWrapCopy");
    DSPGraph::strprintf("copy size exceeds destination size %u > %u", v14, v7);
  }

  v9 = a3;
  v10 = a2;
  v11 = this;
  if (a5 + a4 > v7)
  {
    v12 = (a5 - v8);
    DSPGraph::SimpleABL::copy(this, a2, a3, a4, v8, 0);
    a3 = (v8 + v9);
    this = v11;
    a2 = v10;
    a4 = 0;
    a5 = v12;
  }

  return DSPGraph::SimpleABL::copy(this, a2, a3, a4, a5, 0);
}

void sub_18F66C7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **DSPGraph::RingBuffer::read(DSPGraph::RingBuffer *this, unsigned int a2, int a3, unsigned int **a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 7) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v13 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v14 = *(this + 4);
      v15 = *(this + 7);
      v16 = *(this + 8);
      v17 = *(this + 9);
      *buf = 67110144;
      v19 = a2;
      v20 = 1024;
      v21 = v15;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_fault_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::read underflow %u > %u (capacity = %u, readPos = %u, writePos = %u)", buf, 0x20u);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::read underflow %u > %u (capacity = %u, readPos = %u, writePos = %u)", a2, *(this + 7), *(this + 4), *(this + 8), *(this + 9));
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  result = DSPGraph::SimpleABL::srcWrapCopy(this, a4, (*(this + 8) * *(this + 6)), 0, *(this + 6) * a2, 1);
  v8 = *(this + 8) + a3;
  *(this + 8) = v8;
  v9 = *(this + 5);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    *(this + 8) = v11;
  }

  v12 = *(this + 7) - a3;
  *(this + 7) = v12;
  if (!v12)
  {
    *(this + 4) = 0;
  }

  return result;
}

unsigned int **DSPGraph::SimpleABL::srcWrapCopy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *this;
  if (!*this || !*v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "srcWrapCopy");
    std::string::basic_string[abi:ne200100]<0>(&v17, "empty internal ABL");
    DSPGraph::ThrowException(1768843553, &v19, 696, &v18, &v17);
  }

  v7 = a3;
  v8 = v6[3];
  v9 = v8 - a3;
  if (v8 <= a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "srcWrapCopy");
    DSPGraph::strprintf("copy source position exceeds bounds %u >= %u", v7, v8);
  }

  if (v8 < a5)
  {
    v16 = a5;
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "srcWrapCopy");
    DSPGraph::strprintf("copy size exceeds source size %u > %u", v16, v8);
  }

  v11 = a4;
  v12 = a2;
  v13 = this;
  if (a5 + a3 > v8)
  {
    v14 = (a5 - v9);
    DSPGraph::SimpleABL::copy(this, a2, a3, a4, v9, 0);
    a4 = (v9 + v11);
    this = v13;
    a2 = v12;
    a3 = 0;
    a5 = v14;
  }

  return DSPGraph::SimpleABL::copy(this, a2, a3, a4, a5, a6);
}

void sub_18F66CB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::process(DSPGraph::SingleRateLPCMConverterBox *this, int a2)
{
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "out");
    v30 = this + 32;
    if (*(this + 55) < 0)
    {
      v30 = *v30;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v30, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *(*((*(*v3 + 40))(v3) + 56) + 80);
  if (*v6)
  {
    v7 = 0;
    v8 = 3;
    do
    {
      v9 = *(this + 11);
      if (*(this + 12) == v9)
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v38, "out");
        v29 = this + 32;
        if (*(this + 55) < 0)
        {
          v29 = *v29;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, (*(this + 12) - *(this + 11)) >> 5, 0);
      }

      v6[v8] = *(*((*(*v9 + 40))(v9) + 120) + 24) * a2;
      ++v7;
      v8 += 4;
    }

    while (v7 < *v6);
  }

  v10 = *(this + 8);
  if (*(this + 9) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "in");
    v31 = this + 32;
    if (*(this + 55) < 0)
    {
      v31 = *v31;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v31, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v11 = *(this + 97);
  v12 = (*(*v10 + 40))(v10);
  v13 = *(this + 11);
  if (*(this + 12) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "out");
    v32 = this + 32;
    if (*(this + 55) < 0)
    {
      v32 = *v32;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v14 = *(*(v12 + 56) + 80);
  v15 = *(*((*(*v13 + 40))(v13) + 56) + 80);
  v41 = a2;
  *&v37 = v14;
  v40 = v15;
  v38[0] = &v41;
  v38[1] = &v37;
  v38[2] = &v40;
  v39[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
  v39[1] = v38;
  with_resolved_rt(v11, v39);
  v16 = *(this + 8);
  if (*(this + 9) == v16)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "in");
    v33 = this + 32;
    if (*(this + 55) < 0)
    {
      v33 = *v33;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v33, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v17 = (*(*v16 + 40))(v16);
  v18 = *(this + 11);
  if (*(this + 12) == v18)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "out");
    v34 = this + 32;
    if (*(this + 55) < 0)
    {
      v34 = *v34;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v34, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v19 = *(v17 + 56);
  v20 = *((*(*v18 + 40))(v18) + 56);
  v21 = *(v19 + 8);
  v22 = *(v19 + 24);
  v23 = *(v19 + 40);
  *(v20 + 56) = *(v19 + 56);
  *(v20 + 40) = v23;
  *(v20 + 24) = v22;
  *(v20 + 8) = v21;
  v24 = *(this + 8);
  if (*(this + 9) == v24)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "in");
    v35 = this + 32;
    if (*(this + 55) < 0)
    {
      v35 = *v35;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v35, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v25 = (*(*v24 + 40))(v24);
  v26 = *(this + 11);
  if (*(this + 12) == v26)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v38, "out");
    v36 = this + 32;
    if (*(this + 55) < 0)
    {
      v36 = *v36;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v36, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v27 = *(*(v25 + 56) + 72);
  result = (*(*v26 + 40))(v26);
  *(*(result + 56) + 72) = v27;
  return result;
}

void sub_18F66D21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::SRCBox::process(DSPGraph::SRCBox *this, uint64_t a2)
{
  if ((*(*this + 712))(this))
  {
    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v35, "out");
      v31 = this + 32;
      if (*(this + 55) < 0)
      {
        v31 = *v31;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v31, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v5 = (*(*v4 + 40))(v4);
    v6 = *(this + 8);
    if (*(this + 9) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v35, "in");
      v33 = this + 32;
      if (*(this + 55) < 0)
      {
        v33 = *v33;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v33, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = *(v5 + 56);
    v8 = (*(*v6 + 40))(v6);
    DSPGraph::Buffer::copyFrom(v7, *(v8 + 56));
  }

  else
  {
    v9 = *(this + 8);
    if (*(this + 9) == v9)
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v35, "in");
      v32 = this + 32;
      if (*(this + 55) < 0)
      {
        v32 = *v32;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v32, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v10 = *((*(*v9 + 40))(v9) + 56);
    v11 = *(v10 + 64);
    *(this + 864) = (v11 & 2) != 0;
    if ((v11 & 2) != 0)
    {
      *(this + 109) = *(v10 + 16);
      *(this + 110) = *(v10 + 8);
    }

    v12 = *(this + 8);
    if (*(this + 9) == v12)
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v35, "in");
      v34 = this + 32;
      if (*(this + 55) < 0)
      {
        v34 = *v34;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v34, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v13 = *(*((*(*v12 + 40))(v12) + 56) + 80);
    v14 = *(this + 114);
    LODWORD(v36) = *(this + 232);
    (*(**(this + 111) + 56))(*(this + 111), v13, v14, a2, &v36);
    DSPGraph::RingBuffer::write((this + 808), v36, v36, this + 114);
  }

  v15 = *(this + 8);
  if (*(this + 9) == v15)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v35, "in");
    v29 = this + 32;
    if (*(this + 55) < 0)
    {
      v29 = *v29;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v29, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v16 = (*(*v15 + 40))(v15);
  v17 = *(this + 8);
  if (*(this + 9) == v17)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v35, "in");
    v30 = this + 32;
    if (*(this + 55) < 0)
    {
      v30 = *v30;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v30, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v18 = *(*(v16 + 56) + 72);
  result = (*(*v17 + 40))(v17);
  v21 = *(this + 11);
  v20 = *(this + 12);
  if (v21 != v20)
  {
    v22 = result[7];
    result = v21;
    v23 = v21;
    do
    {
      v24 = *v23;
      v23 += 4;
      v25 = *((*(v24 + 40))(result) + 56);
      v26 = *(v22 + 56);
      v27 = *(v22 + 40);
      v28 = *(v22 + 24);
      *(v25 + 8) = *(v22 + 8);
      *(v25 + 24) = v28;
      *(v25 + 40) = v27;
      *(v25 + 56) = v26;
      *(v25 + 72) = v18;
      v21 += 4;
      result = v23;
    }

    while (v23 != v20);
  }

  return result;
}

void sub_18F66D814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::doProcess(uint64_t this, uint64_t a2)
{
  if (*(this + 744) == 1)
  {
    v3 = this;
    if (atomic_fetch_or((this + 768), 0x80000000))
    {
      v4 = *(this + 152);
      v5 = *(this + 160);
      while (v4 != v5)
      {
        DSPGraph::ParameterTap::process(v4, v3);
        v4 = (v4 + 40);
      }

      v6 = *(v3 + 176);
      v7 = *(v3 + 184);
      while (v6 != v7)
      {
        DSPGraph::PropertyTap::process(v6, v3);
        v6 = (v6 + 64);
      }

      v8 = *(v3 + 736);
      v14 = v3;
      v15 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v8, &v14);
      (*(*v3 + 472))(v3, a2);
      if ((*(*v3 + 712))(v3))
      {
        v9 = *(v3 + 200);
        v10 = *(v3 + 208);
        while (v9 != v10)
        {
          DSPGraph::FileRecorder::record(*v9++, a2);
        }
      }

      v11 = *(v3 + 224);
      v12 = *(v3 + 232);
      while (v11 != v12)
      {
        DSPGraph::FileInjector::inject(*v11++, a2);
      }

      v13 = *(v3 + 736);
      v14 = v3;
      v15 = a2;
      this = _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v13 + 64), &v14);
    }

    else
    {
      this = (*(*this + 472))(this, a2);
    }

    atomic_fetch_and((v3 + 768), 0x7FFFFFFFu);
  }

  return this;
}

uint64_t DSPGraph::ResamplerSRCKernel::process(uint64_t this, AudioBufferList *a2, AudioBufferList *a3, int a4, unsigned int *a5)
{
  v6 = this;
  v18 = a4;
  v7 = 4 * *a5;
  if (*(this + 32) == 2)
  {
    mData = a2->mBuffers[0].mData;
    v9 = *&a2[1].mBuffers[0].mNumberChannels;
    v10 = a3->mBuffers[0].mData;
    v11 = *&a3[1].mBuffers[0].mNumberChannels;
    a3->mBuffers[0].mDataByteSize = v7;
    *(&a3[1].mNumberBuffers + 1) = v7;
    return (*(***(this + 8) + 32))(**(this + 8), mData, v9, v10, v11, &v18, a5, 1, 1);
  }

  else
  {
    v12 = *(this + 8);
    if (*(this + 16) != v12)
    {
      v13 = 0;
      p_mData = &a3->mBuffers[0].mData;
      v15 = &a2->mBuffers[0].mData;
      do
      {
        v16 = *v15;
        v15 += 2;
        v17 = *p_mData;
        *(p_mData - 1) = v7;
        this = (*(**(v12 + 8 * v13) + 32))(*(v12 + 8 * v13), v16, 0, v17, 0, &v18, a5, 1, 1);
        ++v13;
        v12 = *(v6 + 8);
        p_mData += 2;
      }

      while (v13 < (*(v6 + 16) - v12) >> 3);
    }
  }

  return this;
}

uint64_t DSPGraph::FCBox::copyOutput(DSPGraph::FCBox *this, uint64_t a2)
{
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v22 = this + 32;
    if (*(this + 55) < 0)
    {
      v22 = *v22;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v22, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v23 = this + 32;
    if (*(this + 55) < 0)
    {
      v23 = *v23;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 120) + 20);
  *(*((*(*v7 + 40))(v7) + 56) + 72) = 0;
  v9 = *(this + 11);
  if (*(this + 12) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v24 = this + 32;
    if (*(this + 55) < 0)
    {
      v24 = *v24;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v10 = (*(*v9 + 40))(v9);
  DSPGraph::Buffer::setByteSize(*(v10 + 56), *(*(v10 + 56) + 100));
  v11 = *(this + 11);
  if (*(this + 12) == v11)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v25 = this + 32;
    if (*(this + 55) < 0)
    {
      v25 = *v25;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v25, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v12 = (*(*v11 + 40))(v11);
  DSPGraph::RingBuffer::read((this + 808), a2 / v8, a2 / v8, (*(v12 + 56) + 80));
  v13 = *(this + 11);
  if (*(this + 12) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v26 = this + 32;
    if (*(this + 55) < 0)
    {
      v26 = *v26;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v26, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v13 + 40))(v13);
  v15 = *(result + 56);
  *(v15 + 64) = 1;
  v16 = *(*(this + 107) + 256);
  *(v15 + 8) = v16;
  if (*(this + 864) == 1)
  {
    *(v15 + 64) = 3;
    v17 = v16 / DSPGraph::FCBox::downstreamSampleRate(this);
    v18 = *(this + 110);
    result = DSPGraph::FCBox::upstreamSampleRate(this);
    *(v15 + 16) = *(this + 109) + llround((v17 - v18 / result) * 24000000.0);
  }

  v20 = *(this + 25);
  v19 = *(this + 26);
  while (v20 != v19)
  {
    v21 = *v20++;
    result = DSPGraph::FileRecorder::record(v21, a2);
  }

  return result;
}

void sub_18F66DFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::process(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "in");
    v54 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(v2 + 88);
  if (*(v2 + 96) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "out");
    v55 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v55 = *v55;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v55, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  v10 = *(v2 + 88);
  if (*(v2 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "out");
    v56 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v56 = *v56;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v62 = *(*((*(*v10 + 40))(v10) + 120) + 8);
  v12 = *v8;
  if (*(v2 + 812) == 1)
  {
    *(v2 + 812) = 0;
  }

  if (*(v2 + 813) == 1)
  {
    v13 = 1.0;
    if (*(v2 + 780))
    {
      v13 = 0.0;
    }

    *(v2 + 808) = *(v2 + 776) * v13;
  }

  v14 = *(v2 + 64);
  if (*(v2 + 72) == v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "in");
    v57 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v57, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v15 = (4 * a2) << (v62 == 1718773105);
  if ((*(*((*(*v14 + 40))(v14) + 56) + 72) & 0x10) != 0)
  {
    if (v12)
    {
      v24 = (v11 + 16);
      do
      {
        bzero(*v24, v15);
        *(v24 - 1) = v15;
        v24 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v16 = a2;
    v17 = *(v2 + 804);
    v18 = (v2 + 808);
    v19 = *(v2 + 808);
    if (v17 == v19)
    {
      if (v12)
      {
        v20 = (v11 + 16);
        v21 = v8 + 4;
        do
        {
          v22 = *v21;
          v23 = *v20;
          MEMORY[0x193AE08B0](*v21, 1, v2 + 808, *v20, 1, v16);
          if (v62 == 1718773105)
          {
            MEMORY[0x193AE08B0](v22 + 4 * v16, 1, v2 + 808, v23 + 4 * v16, 1, v16);
          }

          *(v20 - 1) = v15;
          v20 += 2;
          v21 += 2;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      if (*(v2 + 813))
      {
        v25 = *(v2 + 784);
        v26 = (v19 - v17) / (v25 * DSPGraph::Box::sampleRate(v2));
        *(v2 + 800) = v26;
        v17 = *(v2 + 804);
      }

      else
      {
        v26 = *(v2 + 800);
      }

      *(v2 + 813) = 0;
      v27 = v17 + (v26 * a2);
      if ((v26 <= 0.0 || (v28 = *v18, v27 <= *v18)) && (v26 >= 0.0 || (v28 = *v18, v27 >= *v18)))
      {
        if (v12)
        {
          v34 = (v11 + 16);
          v35 = (v8 + 4);
          do
          {
            v36 = *v35;
            v37 = *v34;
            LODWORD(__Start) = *(v2 + 804);
            vDSP_vrampmul(v36, 1, &__Start, (v2 + 800), v37, 1, v16);
            if (v62 == 1718773105)
            {
              LODWORD(__Start) = *(v2 + 804);
              vDSP_vrampmul(&v36[v16], 1, &__Start, (v2 + 800), &v37[v16], 1, v16);
            }

            v34 += 2;
            v35 += 2;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v29 = fabsf((v28 - v17) / v26);
        v60 = a2 - v29;
        v61 = v2;
        v30 = (v11 + 16);
        v31 = (v8 + 4);
        do
        {
          v32 = *v31;
          v33 = *v30;
          LODWORD(__Start) = *(v2 + 804);
          vDSP_vrampmul(v32, 1, &__Start, (v2 + 800), v33, 1, v29);
          MEMORY[0x193AE08B0](&v32[v29], 1, v18, &v33[v29], 1, v60);
          if (v62 == 1718773105)
          {
            LODWORD(__Start) = *(v61 + 804);
            vDSP_vrampmul(&v32[v16], 1, &__Start, (v61 + 800), &v33[v16], 1, v29);
            MEMORY[0x193AE08B0](&v32[v29 + v16], 1, v18, &v33[v29 + v16], 1, v60);
          }

          v30 += 2;
          v31 += 2;
          --v12;
          v2 = v61;
        }

        while (v12);
        v27 = *v18;
      }

      else
      {
        v27 = v28;
      }

      *(v2 + 804) = v27;
    }
  }

  if (*(v2 + 813) == 1)
  {
    v38 = 16 * (*(v2 + 808) == 0.0);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v2 + 64);
  if (*(v2 + 72) == v39)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "in");
    v58 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v58 = *v58;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v58, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v40 = (*(*v39 + 40))(v39);
  v41 = *(v2 + 64);
  if (*(v2 + 72) == v41)
  {
    std::string::basic_string[abi:ne200100]<0>(&__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v63, "in");
    v59 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v59 = *v59;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v59, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v42 = *(*(v40 + 56) + 72);
  result = (*(*v41 + 40))(v41);
  v44 = *(v2 + 88);
  v45 = *(v2 + 96);
  if (v44 != v45)
  {
    v46 = v42 | v38;
    v47 = result[7];
    result = *(v2 + 88);
    v48 = result;
    do
    {
      v49 = *v48;
      v48 += 4;
      v50 = *((*(v49 + 40))(result) + 56);
      v51 = *(v47 + 56);
      v52 = *(v47 + 40);
      v53 = *(v47 + 24);
      *(v50 + 8) = *(v47 + 8);
      *(v50 + 24) = v53;
      *(v50 + 40) = v52;
      *(v50 + 56) = v51;
      *(v50 + 72) = v46;
      v44 += 4;
      result = v48;
    }

    while (v48 != v45);
  }

  if (*(v2 + 804) == *(v2 + 808))
  {
    *(v2 + 813) = 1;
  }

  return result;
}

void sub_18F66E884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Buffer *DSPGraph::Buffer::copyFrom(DSPGraph::Buffer *this, DSPGraph::Buffer *a2)
{
  if (a2 != this)
  {
    v2 = this;
    v3 = *(a2 + 10);
    v4 = *(this + 10);
    if (*v3 != *v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Buffer.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v12, "copyFrom");
      std::string::basic_string[abi:ne200100]<0>(&v11, "Buffer::copyFrom, fromABL->mNumberBuffers != toABL->mNumberBuffers");
      DSPGraph::ThrowException(1718444833, &v13, 63, &v12, &v11);
    }

    v5 = *(this + 24);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 4);
      v8 = v3 + 3;
      do
      {
        v9 = *v8;
        if (v9 > *(v2 + 25))
        {
          std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Buffer.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v12, "copyFrom");
          std::string::basic_string[abi:ne200100]<0>(&v11, "Buffer::copyFrom, fromABL->mBuffers[i].mDataByteSize > mByteCapacity");
          DSPGraph::ThrowException(1718444833, &v13, 68, &v12, &v11);
        }

        v10 = *(v8 + 1);
        this = *v7;
        if (v10 != *v7)
        {
          this = memcpy(this, v10, v9);
          LODWORD(v9) = *v8;
          v5 = *(v2 + 24);
        }

        *(v7 - 1) = v9;
        ++v6;
        v7 += 2;
        v8 += 4;
      }

      while (v6 < v5);
    }
  }

  return this;
}

void sub_18F66EA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(exception_object);
}

DSPGraph::ParameterTap **DSPGraph::Box::processParameterTaps(DSPGraph::ParameterTap **this)
{
  v1 = this[19];
  v2 = this[20];
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      this = DSPGraph::ParameterTap::process(v1, v3);
      v1 = (v1 + 40);
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t DSPGraph::ParameterTap::process(DSPGraph::ParameterTap *this, DSPGraph::Box *a2)
{
  (*(**this + 88))(*this, *(this + 2), *(this + 3), *(this + 4));
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = *(*a2 + 80);

  return v7(a2, v4, v5, v6, 0);
}

uint64_t DSPGraph::CalculationBox::getParameter(DSPGraph::CalculationBox *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    DSPGraph::Box::getParameter(this);
  }

  if (a3 != 2)
  {
    if (a3 == 1 && !*(this + 194))
    {
      if (*(this + 103) <= a4)
      {
        std::string::basic_string[abi:ne200100]<0>(&v25, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v24, "getParameter");
        std::to_string(&v20, a4);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21, "CalculationBox can't get input scope element ", &v20);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, &v21, " with parameter ID ");
        std::to_string(&v19, 0);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v19;
        }

        else
        {
          v11 = v19.__r_.__value_.__r.__words[0];
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        v13 = std::string::append(&v22, v11, size);
        v23 = *v13;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        DSPGraph::ThrowException(-10877, &v25, 137, &v24, &v23);
      }

      v6 = this + 16 * a4 + 792;

      return DSPGraph::CalculationBox::Value::operator float<float>(v6);
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(&v25, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "getParameter");
    std::to_string(&v20, a3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21, "CalculationBox can't get parameter in scope ", &v20);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, &v21, " with parameter ID ");
    std::to_string(&v19, 0);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v19;
    }

    else
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v19.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v22, v8, v9);
    v23 = *v10;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10866, &v25, 150, &v24, &v23);
  }

  if (*(this + 195))
  {
    goto LABEL_12;
  }

  DSPGraph::CalculationBox::calculate(&v25, this, a4);
  if ((v26 & 1) == 0)
  {
    v14 = v25;
    std::string::basic_string[abi:ne200100]<0>(&v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v23, "getParameter");
    std::to_string(&v19, a4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20, "CalculationBox can't get output scope element ", &v19);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21, &v20, " with parameter ID ");
    std::to_string(&v18, 0);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v18.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v21, v15, v16);
    v22 = *v17;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(v14, &v24, 144, &v23, &v22);
  }

  return DSPGraph::CalculationBox::Value::operator float<float>(&v25);
}

void sub_18F66EEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::CalculationBox::calculate(uint64_t this, uint64_t a2, int a3)
{
  v3 = this;
  if (a3)
  {
    v4 = -10877;
LABEL_3:
    *this = v4;
    *(this + 16) = 0;
  }

  else
  {
    switch(*(a2 + 784))
    {
      case 0:
        v6 = *(a2 + 824);
        if (!v6)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v6 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v7 = *(a2 + 800);
        v8 = *(a2 + 816);
        if (v7 == -1 || v8 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D1F8[2 * v7] + v8))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 1:
        v27 = *(a2 + 824);
        if (!v27)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v27 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v28 = *(a2 + 800);
        v29 = *(a2 + 816);
        if (v28 == -1 || v29 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D218[2 * v28] + v29))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 2:
        v21 = *(a2 + 824);
        if (!v21)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v21 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v17 = a2 + 792;
        v18 = (a2 + 808);
        goto LABEL_30;
      case 3:
        v24 = *(a2 + 824);
        if (!v24)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v24 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v25 = *(a2 + 800);
        v26 = *(a2 + 816);
        if (v25 == -1 || v26 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D258[2 * v25] + v26))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 4:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v36 = -1;
        v37 = 0;
        v17 = a2 + 792;
        v18 = &v36;
LABEL_30:
        this = DSPGraph::CalculationBox::Value::operator*(v17, v18);
LABEL_49:
        *v3 = this;
        *(v3 + 8) = v9;
        break;
      case 5:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        if (this)
        {
          v30 = boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](a2 + 792);
          this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(v30);
LABEL_54:
          v31 = this;
        }

        else
        {
          v31 = 0;
        }

LABEL_65:
        *v3 = v31;
        *(v3 + 8) = 0;
        break;
      case 6:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        if (this)
        {
          v33 = 1;
        }

        else
        {
          v35 = boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](a2 + 792);
          this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(v35);
          v33 = this;
        }

        *v3 = v33;
        *(v3 + 8) = 0;
        *(v3 + 16) = 1;
        return this;
      case 7:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        goto LABEL_64;
      case 8:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v23 = (a2 + 792);
        goto LABEL_68;
      case 9:
        v20 = *(a2 + 824);
        if (!v20)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v20 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator==(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xA:
        v34 = *(a2 + 824);
        if (!v34)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v34 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator==(a2 + 792, a2 + 808);
        goto LABEL_64;
      case 0xB:
        v16 = *(a2 + 824);
        if (!v16)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v16 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator<(a2 + 792, a2 + 808);
        goto LABEL_64;
      case 0xC:
        v19 = *(a2 + 824);
        if (!v19)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v19 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator>(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xD:
        v32 = *(a2 + 824);
        if (!v32)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v32 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator>(a2 + 792, a2 + 808);
LABEL_64:
        v31 = this ^ 1;
        goto LABEL_65;
      case 0xE:
        v15 = *(a2 + 824);
        if (!v15)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v15 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator<(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xF:
        v22 = *(a2 + 824);
        if (!v22)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v22 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v11 = (a2 + 792);
        v12 = (a2 + 808);
        v13 = a2 + 808;
        v14 = a2 + 792;
        goto LABEL_34;
      case 0x10:
        v10 = *(a2 + 824);
        if (!v10)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v10 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v11 = (a2 + 792);
        v12 = (a2 + 808);
        v13 = a2 + 792;
        v14 = a2 + 808;
LABEL_34:
        this = DSPGraph::CalculationBox::Value::operator<(v13, v14);
        if (this)
        {
          v23 = v12;
        }

        else
        {
          v23 = v11;
        }

LABEL_68:
        *v3 = *v23;
        break;
      default:
        v4 = -10863;
        goto LABEL_3;
    }

    *(v3 + 16) = 1;
  }

  return this;
}

uint64_t DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F032D340[v1])(&v4, a1);
}

uint64_t boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](uint64_t a1)
{
  if (*(a1 + 32) <= 1uLL)
  {
    __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
  }

  return a1 + 16;
}

uint64_t DSPGraph::CalculationBox::Value::operator float<float>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F032D330[v1])(&v4, a1);
}

DSPGraph::PropertyTap **DSPGraph::Box::processPropertyTaps(DSPGraph::PropertyTap **this)
{
  v1 = this[22];
  v2 = this[23];
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      this = DSPGraph::PropertyTap::process(v1, v3);
      v1 = (v1 + 64);
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(caulk::concurrent::details::lf_read_sync_write_impl *a1, uint64_t *a2)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + result + 8))
  {
    v5 = a1 + 24 * result;
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    do
    {
      v8 = *(a2 + 2);
      v11 = *a2;
      v10 = v8;
      v9 = *(v6 + 32);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v9 + 48))(v9, &v11, &v10);
      v6 += 48;
    }

    while (v6 != v7);
    if (a1)
    {
LABEL_6:

      return caulk::concurrent::details::lf_read_sync_write_impl::end_access(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DSPGraph::TimeFreqBox::process(DSPGraph::TimeFreqBox *this, unsigned int a2)
{
  if (*(*(this + 2) + 268) != a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v43, "process");
    std::string::basic_string[abi:ne200100]<0>(&v42, "inNumFrames != blockSize.");
    DSPGraph::ThrowException(1718188065, &v44, 94, &v43, &v42);
  }

  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v43, "in");
    v34 = this + 32;
    if (*(this + 55) < 0)
    {
      v34 = *v34;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v34, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v43, "out");
    v35 = this + 32;
    if (*(this + 55) < 0)
    {
      v35 = *v35;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v35, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  if (*v8 != (*(this + 98) - *(this + 97)) >> 4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v43, "process");
    std::string::basic_string[abi:ne200100]<0>(&v42, "buffer list number of buffers doesn't match format channel count.");
    DSPGraph::ThrowException(1667788321, &v44, 101, &v43, &v42);
  }

  v10 = *(this + 11);
  if (*(this + 12) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v43, "out");
    v36 = this + 32;
    if (*(this + 55) < 0)
    {
      v36 = *v36;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v36, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(*(this + 11));
  if (*v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(*(v12 + 120) + 24) * a2;
    do
    {
      *(v11 + v13 + 12) = v15;
      v16 = *&v8[v13 / 4 + 4];
      v17 = *(v11 + v13 + 16);
      if (*(this + 200))
      {
        v41.realp = *&v8[v13 / 4 + 4];
        v41.imagp = &v16[4 * a2];
        v18 = VPTimeFreqConverter_Synthesize(*(*(this + 97) + v13), &v41, v17);
        if (v18)
        {
          v39 = v18;
          std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v43, "process");
          std::string::basic_string[abi:ne200100]<0>(&v42, "VPTimeFreqConverter_Synthesize");
          DSPGraph::ThrowException(v39, &v44, 121, &v43, &v42);
        }
      }

      else
      {
        v41.realp = *(v11 + v13 + 16);
        v41.imagp = &v17[4 * a2];
        v19 = VPTimeFreqConverter_Analyze(*(*(this + 97) + v13), v16, &v41);
        if (v19)
        {
          v40 = v19;
          std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v43, "process");
          std::string::basic_string[abi:ne200100]<0>(&v42, "VPTimeFreqConverter_Analyze");
          DSPGraph::ThrowException(v40, &v44, 115, &v43, &v42);
        }
      }

      ++v14;
      v13 += 16;
    }

    while (v14 < *v8);
  }

  v20 = *(this + 8);
  if (*(this + 9) == v20)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v43, "in");
    v37 = this + 32;
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v37, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v21 = (*(*v20 + 40))(v20);
  v22 = *(this + 8);
  if (*(this + 9) == v22)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v43, "in");
    v38 = this + 32;
    if (*(this + 55) < 0)
    {
      v38 = *v38;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v38, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v23 = *(*(v21 + 56) + 72);
  result = (*(*v22 + 40))(v22);
  v26 = *(this + 11);
  v25 = *(this + 12);
  if (v26 != v25)
  {
    v27 = result[7];
    result = v26;
    v28 = v26;
    do
    {
      v29 = *v28;
      v28 += 4;
      v30 = *((*(v29 + 40))(result) + 56);
      v31 = *(v27 + 56);
      v32 = *(v27 + 40);
      v33 = *(v27 + 24);
      *(v30 + 8) = *(v27 + 8);
      *(v30 + 24) = v33;
      *(v30 + 40) = v32;
      *(v30 + 56) = v31;
      *(v30 + 72) = v23;
      v26 += 4;
      result = v28;
    }

    while (v28 != v25);
  }

  return result;
}

void sub_18F6700D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPTimeFreqConverter_Analyze(uint64_t a1, const void *a2, DSPSplitComplex *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294967246;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "vpTimeFreqConverter.cpp";
      v12 = 1024;
      v13 = 72;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for conversion";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v10, 0x12u);
    }

    return 4294956433;
  }

  if ((*(a1 + 4) | 2) != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "vpTimeFreqConverter.cpp";
      v12 = 1024;
      v13 = 79;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for analysis";
      goto LABEL_11;
    }

    return 4294956433;
  }

  if (*a1)
  {
    return 4294967292;
  }

  memcpy(*(a1 + 64), (*(a1 + 64) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
  memcpy((*(a1 + 64) + 4 * (*(a1 + 16) - *(a1 + 12))), a2, 4 * *(a1 + 12));
  MEMORY[0x193AE0840](*(a1 + 136), 1, *(a1 + 64), 1, *(a1 + 88), 1, *(a1 + 16));
  MEMORY[0x193AE08B0](*(a1 + 88), 1, a1 + 24, *(a1 + 88), 1, *(a1 + 16));
  v4 = MultiRadixRealFFT::RealOutOfPlaceForwardTransform((a1 + 32), *(a1 + 88), a3, 1.0);
  if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "vpTimeFreqConverter.cpp";
    v12 = 1024;
    v13 = 98;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: vptimefreqconverter::analyze: FFT error", &v10, 0x12u);
  }

  return v4;
}

uint64_t DSPGraph::PropertyTap::process(DSPGraph::PropertyTap *this, DSPGraph::Box *a2)
{
  v4 = *(this + 5);
  v12 = *(this + 12) - v4;
  v5 = (*(**this + 304))(*this, *(this + 2), *(this + 3), *(this + 4), &v12, v4);
  if (v5)
  {
    v7 = v5;
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "process");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getProperty failed");
    DSPGraph::ThrowException(v7, &v11, 827, &v10, &v9);
  }

  result = (*(*a2 + 312))(a2, *(this + 6), *(this + 7), *(this + 8), v12, v4);
  if (result)
  {
    v8 = result;
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "process");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setProperty failed");
    DSPGraph::ThrowException(v8, &v11, 832, &v10, &v9);
  }

  return result;
}

void sub_18F67053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  _Unwind_Resume(exception_object);
}

AudioUnitParameterValue DSPGraph::AUBox::getParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[106], a2, a3, a4, &outValue);
  if (Parameter)
  {
    v6 = Parameter;
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "AudioUnitGetParameter");
    DSPGraph::ThrowException(v6, &v9, 1722, &v8, &v7);
  }

  return outValue;
}

void sub_18F670620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  _Unwind_Resume(exception_object);
}

uint64_t VPTimeFreqConverter_Synthesize(uint64_t a1, const DSPSplitComplex *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294967246;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 120;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for conversion";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v9, 0x12u);
    }

    return 4294956433;
  }

  if ((*(a1 + 4) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 127;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for synthesis";
      goto LABEL_11;
    }

    return 4294956433;
  }

  if (*a1)
  {
    return 4294967292;
  }

  v4 = MultiRadixRealFFT::RealOutOfPlaceInverseTransform((a1 + 32), a2, *(a1 + 88));
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "vpTimeFreqConverter.cpp";
      v11 = 1024;
      v12 = 135;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: vptimefreqconverter::synthesize: IFFT error", &v9, 0x12u);
    }
  }

  else
  {
    MEMORY[0x193AE0840](*(a1 + 88), 1, *(a1 + 160), 1, *(a1 + 88), 1, *(a1 + 16));
    MEMORY[0x193AE07B0](*(a1 + 88), 1, *(a1 + 112), 1, *(a1 + 112), 1, *(a1 + 16));
    memcpy(a3, *(a1 + 112), 4 * *(a1 + 12));
    memmove(*(a1 + 112), (*(a1 + 112) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
    bzero((*(a1 + 112) + 4 * (*(a1 + 16) - *(a1 + 12))), 4 * *(a1 + 12));
  }

  return v4;
}

void *DSPGraph::SumBox::process(DSPGraph::SumBox *this, unsigned int a2)
{
  v2 = this;
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v50, "out");
    v44 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v44, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v6 = *(*((*(*v3 + 40))(v3) + 56) + 80);
  v7 = *v6;
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = 4 * a2;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0)
  {
    v11 = 0;
    v12 = (v9 - v8) >> 5;
    v14 = v7 != 1 || ((v9 - v8) & 0x1FFFFFFFE0) != 32;
    v46 = v6;
    v47 = v2;
    v48 = *v6;
    v49 = (v6 + 4);
    LOBYTE(v15) = 1;
    do
    {
      if (v12 <= v11)
      {
        std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v50, "in");
        v42 = v2 + 32;
        if (*(v2 + 55) < 0)
        {
          v42 = *v42;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, (*(v2 + 9) - *(v2 + 8)) >> 5, v11);
      }

      v16 = (*(*(v8 + 32 * v11) + 40))(v8 + 32 * v11);
      v17 = *(v2 + 8);
      if (v11 >= (*(v2 + 9) - v17) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v50, "in");
        v43 = v2 + 32;
        if (*(v2 + 55) < 0)
        {
          v43 = *v43;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, (*(v2 + 9) - *(v2 + 8)) >> 5, v11);
      }

      v18 = *(*(v16 + 56) + 80);
      if ((*(*((*(*(v17 + 32 * v11) + 40))(v17 + 32 * v11) + 56) + 72) & 0x10) == 0)
      {
        if (v15)
        {
          if (*v18)
          {
            v19 = 0;
            v20 = 0;
            v21 = 4;
            v22 = v49;
            do
            {
              v23 = *&v18[v21];
              v24 = *v22;
              *(v22 - 1) = v10;
              if (v20 == v19)
              {
                if (v23 != v24)
                {
                  memcpy(v24, v23, 4 * a2);
                }
              }

              else
              {
                MEMORY[0x193AE07B0](v23, 1, v24, 1, v24, 1, a2);
              }

              ++v20;
              v19 += v14;
              v22 += 2 * v14;
              v21 += 4;
            }

            while (v20 < *v18);
            LOBYTE(v15) = 0;
            v2 = v47;
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          v15 = v48;
          if (v48)
          {
            v25 = (v18 + 4);
            v26 = v49;
            do
            {
              v27 = *v25;
              v25 += 2;
              v28 = *v26;
              *(v26 - 1) = v10;
              MEMORY[0x193AE07B0](v27, 1, v28, 1, v28, 1, a2);
              v26 += 2;
              --v15;
            }

            while (v15);
          }
        }
      }

      ++v11;
      v8 = *(v2 + 8);
      v9 = *(v2 + 9);
      v12 = (v9 - v8) >> 5;
    }

    while (v11 < v12);
    if ((v15 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_36;
    }

    v7 = v48;
    v6 = v46;
  }

  if (v7)
  {
    v29 = (v6 + 4);
    do
    {
      v30 = *v29;
      *(v29 - 1) = v10;
      bzero(v30, 4 * a2);
      v29 += 2;
      --v7;
    }

    while (v7);
    v8 = *(v2 + 8);
    v9 = *(v2 + 9);
  }

  v31 = 16;
LABEL_36:
  if (v9 == v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v50, "in");
    v45 = v2 + 32;
    if (*(v2 + 55) < 0)
    {
      v45 = *v45;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  result = (*(*v8 + 40))(v8);
  v33 = *(v2 + 11);
  v34 = *(v2 + 12);
  if (v33 != v34)
  {
    v35 = result[7];
    result = *(v2 + 11);
    v36 = result;
    do
    {
      v37 = *v36;
      v36 += 4;
      v38 = *((*(v37 + 40))(result) + 56);
      v39 = *(v35 + 56);
      v40 = *(v35 + 40);
      v41 = *(v35 + 24);
      *(v38 + 8) = *(v35 + 8);
      *(v38 + 24) = v41;
      *(v38 + 40) = v40;
      *(v38 + 56) = v39;
      *(v38 + 72) = v31;
      v33 += 4;
      result = v36;
    }

    while (v36 != v34);
  }

  return result;
}

void sub_18F670DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::GraphOutput::copyOutput(DSPGraph::GraphOutput *this)
{
  v2 = *(this + 209);
  v3 = (*(*this + 672))(this) * v2;
  v4 = *(this + 106);
  v5 = DSPGraph::GraphOutput::preflight(this);
  v6 = *v4;
  if (v5 < *v4)
  {
    v6 = v5;
  }

  if (v3 >= v6)
  {
    v3 = v6;
  }

  *(this + 107) = *(this + 107) + v3;
  **(this + 106) = v3;
  v7 = (*(*this + 672))(this);
  v8 = *(*(this + 106) + 72);
  v9 = 0;
  DSPGraph::RingBuffer::read((this + 808), v3 / v7, v3 / v7, &v8);
  DSPGraph::SimpleABL::free(&v8);
}