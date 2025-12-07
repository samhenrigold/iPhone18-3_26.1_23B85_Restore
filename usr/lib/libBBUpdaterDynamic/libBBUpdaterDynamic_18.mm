void sub_1E5328128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      std::pair<std::string,std::string>::~pair(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  std::pair<std::string,std::string>::~pair(&a27);
  _Unwind_Resume(a1);
}

uint64_t saveNVRAMFile(const __CFDictionary *a1, ACFURTKitNVRMGenerator **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(&v25, 0, sizeof(v25));
  memset(v29, 170, sizeof(v29));
  *&v29[456] = 0;
  v27[1] = 0;
  *&v29[408] = &unk_1F5F01790;
  std::ios_base::init(&v29[408], v29);
  *&v29[552] = -1;
  *&v29[544] = 0;
  v4 = MEMORY[0x1E6926FC0](v29);
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: updaterOptions parameter is NULL\n");
LABEL_27:
    v6 = 0;
    v8 = 1;
    goto LABEL_19;
  }

  if (!*a2)
  {
    v22 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v22, 2, "%s::%s: nv parameter is NULL\n");
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(a1, @"NVRAMOutputPath");
  v6 = Value;
  if (!Value)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = CFGetTypeID(Value);
  if (v7 == CFStringGetTypeID())
  {
    CFRetain(v6);
  }

  else
  {
    v6 = 0;
  }

  v26 = v6;
  v9 = CFGetTypeID(v6);
  TypeID = CFStringGetTypeID();
  if (v9 == TypeID)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
    v12 = std::string::__assign_external(&v25, CStringPtr);
    v13 = ACFULogging::getLogInstance(v12);
    v14 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v25.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v13, 3, "%s::%s: Saving NVRAM binary file as: %s\n", "BasebandNVRAM", "saveNVRAMFile", v14);
    v15 = ACFURTKitNVRMGenerator::copy(*a2);
    v16 = std::filebuf::open();
    v17 = (v27 + *(v27[0] - 24));
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17->__rdstate_ | 4;
    }

    std::ios_base::clear(v17, v18);
    if (*&v29[120])
    {
      CFDataGetBytePtr(v15);
      CFDataGetLength(v15);
      std::ostream::write();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v27 + *(v27[0] - 24)), *&v29[*(v27[0] - 24) + 8] | 4);
      }

      v8 = 0;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage(v24, 2, "%s::%s: Failed creating nvram.bin.\n", "BasebandNVRAM", "saveNVRAMFile");
      v8 = 1;
      if (v15)
      {
LABEL_18:
        CFRelease(v15);
      }
    }
  }

  else
  {
    v23 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v23, 2, "%s::%s: Incorrect type for nvramOutputPath, fail.\n", "BasebandNVRAM", "saveNVRAMFile");
    v8 = 1;
  }

LABEL_19:
  MEMORY[0x1E6926FD0](v29);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](&v29[408]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v6)
    {
      return v8;
    }

    goto LABEL_23;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if (v6)
  {
LABEL_23:
    CFRelease(v6);
  }

  return v8;
}

void sub_1E5328580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(uint64_t a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    *(a1 + 8) = v7;
    *(a1 + 16) = v9 | 0x8000000000000000;
    *a1 = v8;
    goto LABEL_9;
  }

  *(a1 + 23) = v6;
  v8 = a1;
  if (v6)
  {
LABEL_9:
    memmove(v8, __s, v7);
  }

  *(v8 + v7) = 0;
  v10 = *a3;
  v11 = strlen(*a3);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *(a1 + 32) = v12;
    *(a1 + 40) = v14 | 0x8000000000000000;
    *(a1 + 24) = v13;
  }

  else
  {
    v13 = (a1 + 24);
    *(a1 + 47) = v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  memmove(v13, v10, v12);
LABEL_19:
  *(v13 + v12) = 0;
  return a1;
}

void sub_1E5328734(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v12 = *(a2 + 24);
      *(v5 + 40) = *(a2 + 5);
      *(v5 + 24) = v12;
    }

    v13 = (v5 + 48);
    *(a1 + 8) = v13;
LABEL_18:
    *(a1 + 8) = v13;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
  if (v7 + 1 > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v9 = 2 * v8;
  if (2 * v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v8 >= 0x2AAAAAAAAAAAAAALL)
  {
    v10 = 0x555555555555555;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    if (v10 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = operator new(48 * v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = &v11[48 * v7];
  v18 = v14;
  v19 = v14;
  v20 = &v11[48 * v10];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v14, *a2, *(a2 + 1));
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *a2;
    v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    *&v14[1].__r_.__value_.__l.__data_ = *(a2 + 24);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  }

  v13 = v14 + 2;
  v15 = *(a1 + 8) - *a1;
  v16 = v18 - v15;
  memcpy(v18 - v15, *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v19 + 2;
  *(a1 + 16) = v20;
  if (!v17)
  {
    goto LABEL_18;
  }

  operator delete(v17);
  *(a1 + 8) = v13;
}

void sub_1E532891C(_Unwind_Exception *a1, std::__split_buffer<std::pair<std::string, std::string>> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&a10);
    _Unwind_Resume(a1);
  }

  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void sub_1E5328954(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    *(v1 + 8) = v2;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(const void **a1)
{
  v1 = qword_1ED949BF8;
  if (!qword_1ED949BF8)
  {
    return &qword_1ED949BF8;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = &qword_1ED949BF8;
  do
  {
    while (1)
    {
      v6 = *(v1 + 55);
      v7 = v6 >= 0 ? (v1 + 32) : *(v1 + 32);
      v8 = v6 >= 0 ? *(v1 + 55) : *(v1 + 40);
      v9 = (v4 >= v8 ? v8 : v4);
      v10 = memcmp(v7, v3, v9);
      if (v10)
      {
        break;
      }

      if (v8 >= v4)
      {
        goto LABEL_23;
      }

LABEL_9:
      v1 = *(v1 + 8);
      if (!v1)
      {
        goto LABEL_24;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v5 = v1;
    v1 = *v1;
  }

  while (v1);
LABEL_24:
  if (v5 == &qword_1ED949BF8)
  {
    return &qword_1ED949BF8;
  }

  v11 = *(v5 + 55);
  if (v11 >= 0)
  {
    v12 = v5 + 4;
  }

  else
  {
    v12 = v5[4];
  }

  if (v11 >= 0)
  {
    v13 = *(v5 + 55);
  }

  else
  {
    v13 = v5[5];
  }

  if (v13 >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v3, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return v5;
    }

    return &qword_1ED949BF8;
  }

  else
  {
    if (v4 < v13)
    {
      return &qword_1ED949BF8;
    }

    return v5;
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    if (SHIBYTE(i[-1].second.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(i[-1].second.__r_.__value_.__l.__data_);
      if ((SHIBYTE(i[-1].first.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((SHIBYTE(i[-1].first.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(i[-1].first.__r_.__value_.__l.__data_);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v7;
      }

      v6 += 3;
      v4 = v10 + 2;
      v10 += 2;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1E5328CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::string>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

void std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(void ****a1, size_t **a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) >= a4)
  {
    v13 = a1[1];
    v14 = v13 - v8;
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 4) < a4)
    {
      if (v13 != v8)
      {
        v15 = v13 - v8;
        v16 = a2;
        do
        {
          std::pair<std::string,std::string>::operator=[abi:ne200100](v8, v16);
          v16 += 6;
          v8 += 6;
          v15 -= 48;
        }

        while (v15);
        v13 = a1[1];
      }

      v17 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(a1, (v5 + v14), a3, v13);
      goto LABEL_38;
    }

    if (a2 != a3)
    {
      do
      {
        std::pair<std::string,std::string>::operator=[abi:ne200100](v8, v5);
        v5 += 6;
        v8 += 6;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 == v8)
    {
LABEL_21:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (SHIBYTE(v13[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13[-1].__r_.__value_.__l.__data_);
        p_data = &v13[-2].__r_.__value_.__l.__data_;
        if (SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_27:
          operator delete(*p_data);
        }
      }

      else
      {
        p_data = &v13[-2].__r_.__value_.__l.__data_;
        if (SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_27;
        }
      }

      v13 = p_data;
      if (p_data == v8)
      {
        goto LABEL_21;
      }
    }
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = a4;
  v10 = a1[1];
  v11 = *a1;
  if (v10 != v8)
  {
    while (1)
    {
      if (SHIBYTE(v10[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10[-1].__r_.__value_.__l.__data_);
        v12 = &v10[-2].__r_.__value_.__l.__data_;
        if (SHIBYTE(v10[-2].__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = &v10[-2].__r_.__value_.__l.__data_;
        if (SHIBYTE(v10[-2].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        break;
      }
    }
  }

  a1[1] = v8;
  operator delete(v11);
  v7 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a4 = v9;
LABEL_30:
  if (a4 > 0x555555555555555)
  {
    goto LABEL_39;
  }

  v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
  v20 = 2 * v19;
  if (2 * v19 <= a4)
  {
    v20 = a4;
  }

  v21 = v19 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v20;
  if (v21 > 0x555555555555555)
  {
LABEL_39:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v22 = 2 * v21;
  v23 = operator new(48 * v21);
  *a1 = v23;
  a1[1] = v23;
  a1[2] = &v23[v22];
  v17 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(a1, v5, a3, v23);
LABEL_38:
  a1[1] = v17;
}

void ***std::pair<std::string,std::string>::operator=[abi:ne200100](void ***a1, size_t **a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  if (*(a1 + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v3[1];
    }

    std::string::__assign_no_alias<false>(a1, a2, v7);
    v5 = (v3 + 3);
    v6 = *(v3 + 47);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 23) & 0x80) == 0)
  {
    v4 = *a2;
    a1[2] = a2[2];
    *a1 = v4;
    v5 = (a2 + 3);
    v6 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  std::string::__assign_no_alias<true>(a1, *a2, a2[1]);
  v5 = (v3 + 3);
  v6 = *(v3 + 47);
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1 + 3, v3[3], v3[4]);
      return a1;
    }

    v8 = *v5;
    a1[5] = v5[2];
    *(a1 + 3) = v8;
    return a1;
  }

LABEL_14:
  if (v6 >= 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3[3];
  }

  if (v6 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3[4];
  }

  std::string::__assign_no_alias<false>(a1 + 3, v10, v11);
  return a1;
}

char *boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(uint64_t a1, char *__dst, char *__src, char *a4)
{
  v6 = __dst;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = __dst == __src;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 32);
    v12 = __dst + 1;
    v13 = xmmword_1E5393B40;
    do
    {
      while (1)
      {
        *(v12 - 1) = (*(v10 + ((v11 >> 9) & 0x7FFFFFFFFFFFF8)))[v11 & 0xFFF];
        v10 = *(a1 + 8);
        v15 = vaddq_s64(*(a1 + 32), v13);
        *(a1 + 32) = v15;
        v11 = v15.i64[0];
        if (v15.i64[0] >= 0x2000uLL)
        {
          break;
        }

        v8 = v15.i64[1];
        ++v6;
        if (v15.i64[1])
        {
          v16 = v12 == __src;
        }

        else
        {
          v16 = 1;
        }

        ++v12;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      operator delete(*v10);
      v13 = xmmword_1E5393B40;
      v10 = (*(a1 + 8) + 8);
      *(a1 + 8) = v10;
      v8 = *(a1 + 40);
      v11 = *(a1 + 32) - 4096;
      *(a1 + 32) = v11;
      ++v6;
      if (v8)
      {
        v14 = v12 == __src;
      }

      else
      {
        v14 = 1;
      }

      ++v12;
    }

    while (!v14);
  }

LABEL_16:
  if (v8)
  {
    if (v6 != a4)
    {
      v17 = *(a1 + 8);
      v18 = *(a1 + 32);
      v62 = a4;
      while (1)
      {
        v19 = *(a1 + 16);
        v20 = v19 - v17;
        v21 = v19 == v17 ? 0 : ((v19 - v17) << 9) - 1;
        v22 = *(a1 + 40) + v18;
        if (v21 == v22)
        {
          break;
        }

LABEL_42:
        (*(v17 + ((v22 >> 9) & 0x7FFFFFFFFFFFF8)))[v22 & 0xFFF] = *v6;
        v37 = *(a1 + 32);
        ++*(a1 + 40);
        *v6 = *(*(*(a1 + 8) + ((v37 >> 9) & 0x7FFFFFFFFFFFF8)) + (v37 & 0xFFF));
        v17 = *(a1 + 8);
        v38 = vaddq_s64(*(a1 + 32), xmmword_1E5393B40);
        *(a1 + 32) = v38;
        v18 = v38.i64[0];
        if (v38.i64[0] >= 0x2000uLL)
        {
          operator delete(*v17);
          v17 = (*(a1 + 8) + 8);
          *(a1 + 8) = v17;
          v18 = *(a1 + 32) - 4096;
          *(a1 + 32) = v18;
        }

        if (++v6 == a4)
        {
          return a4;
        }
      }

      v23 = v18 >= 0x1000;
      v24 = v18 - 4096;
      if (v23)
      {
        *(a1 + 32) = v24;
        v63 = *v17;
        *(a1 + 8) = v17 + 1;
        goto LABEL_27;
      }

      v25 = *(a1 + 24);
      v26 = v25 - *a1;
      if (v20 < v26)
      {
        if (v25 != v19)
        {
          v63 = operator new(0x1000uLL);
          std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v63);
          goto LABEL_41;
        }

        v63 = operator new(0x1000uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v63);
        v39 = *(a1 + 8);
        v63 = *v39;
        *(a1 + 8) = v39 + 1;
LABEL_27:
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v63);
LABEL_41:
        v17 = *(a1 + 8);
        v22 = *(a1 + 40) + *(a1 + 32);
        goto LABEL_42;
      }

      v27 = v26 >> 2;
      if (v25 == *a1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (v28 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v29 = 8 * v28;
      v30 = operator new(8 * v28);
      v31 = operator new(0x1000uLL);
      v32 = v31;
      v33 = &v30[v20];
      v34 = &v30[v29];
      if (v20 != v29)
      {
        goto LABEL_38;
      }

      if (v20 >= 1)
      {
        v33 -= ((v20 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_38:
        *v33 = v31;
        v35 = v33 + 8;
        if (v19 != v17)
        {
          goto LABEL_53;
        }

        goto LABEL_39;
      }

      if (v19 == v17)
      {
        v40 = 1;
      }

      else
      {
        v40 = v20 >> 2;
      }

      if (v40 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = operator new(8 * v40);
      v34 = &v33[8 * v40];
      operator delete(v30);
      v41 = *(a1 + 8);
      v19 = *(a1 + 16);
      v30 = v33;
      *v33 = v32;
      v35 = v33 + 8;
      if (v19 == v41)
      {
LABEL_39:
        v36 = *a1;
        *a1 = v30;
        *(a1 + 8) = v33;
        *(a1 + 16) = v35;
        *(a1 + 24) = v34;
        a4 = v62;
        if (v36)
        {
          operator delete(v36);
        }

        goto LABEL_41;
      }

LABEL_53:
      while (v33 != v30)
      {
        v42 = v33;
LABEL_52:
        v43 = *--v19;
        *(v42 - 1) = v43;
        v33 = v42 - 8;
        if (v19 == *(a1 + 8))
        {
          goto LABEL_39;
        }
      }

      if (v35 < v34)
      {
        v42 = &v30[8 * ((((v34 - v35) >> 3) + 1 + ((((v34 - v35) >> 3) + 1) >> 63)) >> 1)];
        v44 = v35 - v30;
        v9 = v35 == v30;
        v35 += 8 * ((((v34 - v35) >> 3) + 1 + ((((v34 - v35) >> 3) + 1) >> 63)) >> 1);
        if (!v9)
        {
          memmove(v42, v33, v44);
        }

        goto LABEL_52;
      }

      if (v34 == v30)
      {
        v45 = 1;
      }

      else
      {
        v45 = (v34 - v30) >> 2;
      }

      if (v45 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v46 = operator new(8 * v45);
      v47 = v46;
      v48 = (v45 + 3) >> 2;
      v42 = &v46[8 * v48];
      v49 = v35 - v30;
      v9 = v35 == v30;
      v35 = v42;
      if (!v9)
      {
        v35 = &v42[v49];
        v50 = v49 - 8;
        if (v50 >= 0x18 && (v51 = 8 * v48, (&v46[8 * v48] - v33) >= 0x20))
        {
          v55 = (v50 >> 3) + 1;
          v56 = 8 * (v55 & 0x3FFFFFFFFFFFFFFCLL);
          v52 = &v42[v56];
          v53 = &v33[v56];
          v57 = (v33 + 16);
          v58 = &v46[v51 + 16];
          v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v60 = *v57;
            *(v58 - 1) = *(v57 - 1);
            *v58 = v60;
            v57 += 2;
            v58 += 32;
            v59 -= 4;
          }

          while (v59);
          if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_66;
          }
        }

        else
        {
          v52 = &v46[8 * v48];
          v53 = v33;
        }

        do
        {
          v54 = *v53;
          v53 += 8;
          *v52 = v54;
          v52 += 8;
        }

        while (v52 != v35);
      }

LABEL_66:
      v34 = &v46[8 * v45];
      operator delete(v30);
      v30 = v47;
      goto LABEL_52;
    }
  }

  else if (v6 != __src)
  {
    if (a4 != __src)
    {
      memmove(v6, __src, a4 - __src);
    }

    return &v6[a4 - __src];
  }

  return a4;
}

void sub_1E5329634(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<char>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::unique_ptr<ACFURTKitNVRMGenerator>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E69263C0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_pointer<ACFURTKitNVRMGenerator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFURTKitNVRMGenerator  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x1E69263C0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFURTKitNVRMGenerator  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393BB6)
  {
    if (((v2 & 0x80000001E5393BB6 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393BB6))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393BB6 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void _GLOBAL__sub_I_BasebandNVRAM_mm()
{
  v55 = *MEMORY[0x1E69E9840];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(v7, "boot-args", kBootArgsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v11, "boot-command", kBootCommadShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v15, "auto-boot", kAutoBootShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v19, "bootdelay", kBootDelayShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v23, "boot-script", kBootScriptShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v27, "boot-device", kBootDeviceShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v31, "debug-soc", kDebugSocShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v35, "debug-uarts", kDebugUartsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v39, "force-ctrr-lock", kForceCtrrLockShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v43, "enable-auth-debug", kEnableAuthDebugShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v47, "reconfig-breakpoints", kReconfigBreakpointsShort);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const* const&,char const* const&,0>(&v51, "reconfig-behavior", kReconfigBehaviorShort);
  v0 = 0;
  qword_1ED949C00 = 0;
  qword_1ED949BF8 = 0;
  mNVRAMItems = &qword_1ED949BF8;
  do
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    v1 = std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::__find_equal<std::string>(&mNVRAMItems, &qword_1ED949BF8, &v6, &v5, &v7[v0]);
    if (!*v1)
    {
      memset(v4, 170, sizeof(v4));
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>(&mNVRAMItems, &v7[v0], v4);
      v2 = v6;
      v3 = v4[0];
      *v4[0] = 0;
      v3[1] = 0;
      v3[2] = v2;
      *v1 = v3;
      if (*mNVRAMItems)
      {
        mNVRAMItems = *mNVRAMItems;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1ED949BF8, v3);
      ++qword_1ED949C00;
    }

    v0 += 6;
  }

  while (v0 != 72);
  if (v54 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }
  }

  else if ((v52 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v51);
  if ((v50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v49);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v47);
  if ((v46 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v45);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v41);
  if ((v40 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v39);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v37);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(v27);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(v25);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v23);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_24:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v21);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v11);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_55:
    operator delete(v7[0]);
    return;
  }

LABEL_54:
  operator delete(v9);
  if (v8 < 0)
  {
    goto LABEL_55;
  }
}

void sub_1E5329D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  do
  {
    v23 -= 48;
    std::pair<std::string,std::string>::~pair(v23);
  }

  while (v23 != &a23);
  _Unwind_Resume(a1);
}

void sub_1E5329DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, *(v23 + 8));
  std::pair<std::string,std::string>::~pair(v24);
  std::pair<std::string,std::string>::~pair(v22);
  std::pair<std::string,std::string>::~pair(v25);
  std::pair<std::string,std::string>::~pair(a10);
  std::pair<std::string,std::string>::~pair(a11);
  std::pair<std::string,std::string>::~pair(a12);
  std::pair<std::string,std::string>::~pair(a13);
  std::pair<std::string,std::string>::~pair(a14);
  std::pair<std::string,std::string>::~pair(a15);
  std::pair<std::string,std::string>::~pair(a16);
  std::pair<std::string,std::string>::~pair(a17);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void BBUICEMRCImage::~BBUICEMRCImage(BBUICEMRCImage *this)
{
  *this = &unk_1F5F04478;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5F04478;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

uint64_t BBUICEMRCImage::getWritePayloadData(BBUICEMRCImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  result = (*(*this + 32))(this);
  if (result <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 106, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEMRCImage.cpp", 0x1Du, "Assertion failure((offset < (getWritePayloadLength())) && Chunk size is not sufficient to write payload data of the MRC image!)");
    goto LABEL_9;
  }

  v10 = -1431655766;
  if (!a3)
  {
    return result;
  }

  result = (*(**(this + 5) + 16))(*(this + 5), a2, a3, &v10, *(this + 8) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 106, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEMRCImage.cpp", 0x24u, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy MRC image payload data to buffer!)");
    goto LABEL_9;
  }

  if (v10 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 106, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEMRCImage.cpp", 0x25u, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy MRC image payload data to buffer)");
LABEL_9:
  }

  return result;
}

uint64_t BBUICEMRCImage::getName(BBUICEMRCImage *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t BBUICEMRCImage::getWritePayloadLength(BBUICEMRCImage *this)
{
  result = *(this + 5);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUICEMRCImage::generateHash(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 40);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

uint64_t BBUEUR10Programmer::EUR10Item::EUR10Item(uint64_t result, int a2, void *lpsrc)
{
  *(result + 8) = a2;
  *result = &unk_1F5F045F0;
  *(result + 16) = 0;
  switch(a2)
  {
    case 16391:
      if (lpsrc)
      {
        v3 = result;
        result = v3;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 21;
      goto LABEL_81;
    case 16392:
      if (lpsrc)
      {
        v10 = result;
        result = v10;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 23;
      goto LABEL_81;
    case 16393:
      if (lpsrc)
      {
        v7 = result;
        result = v7;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 6;
      goto LABEL_81;
    case 16394:
      if (lpsrc)
      {
        v8 = result;
        result = v8;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 28;
      goto LABEL_81;
    case 16395:
      if (lpsrc)
      {
        v6 = result;
        result = v6;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 31;
      goto LABEL_81;
    case 16396:
      if (lpsrc)
      {
        v11 = result;
        result = v11;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 8;
      goto LABEL_81;
    case 16397:
      if (lpsrc)
      {
        v12 = result;
        result = v12;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 25;
      goto LABEL_81;
    case 16398:
      if (lpsrc)
      {
        v9 = result;
        result = v9;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 30;
      goto LABEL_81;
    case 16399:
      if (lpsrc)
      {
        v14 = result;
        result = v14;
      }

      else
      {
        v4 = 0;
      }

      *(result + 16) = v4;
      *(result + 24) = 29;
      goto LABEL_81;
    case 16400:
      *(result + 24) = 16;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_59;
    case 16401:
      *(result + 24) = 17;
      if (lpsrc)
      {
        goto LABEL_59;
      }

      goto LABEL_79;
    case 16402:
      *(result + 24) = 20;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_59;
    case 16403:
      *(result + 24) = 1128352768;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_59;
    case 16404:
      *(result + 24) = 1347571542;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_59;
    case 16405:
      *(result + 24) = 1346454272;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_59;
    case 16406:
      *(result + 24) = 1094931456;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

LABEL_59:
      goto LABEL_60;
    case 16407:
      *(result + 24) = 1128679168;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16408:
      *(result + 24) = 40;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16409:
      *(result + 24) = 41;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16410:
      *(result + 24) = 42;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16411:
      *(result + 24) = 33;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16412:
      *(result + 24) = 23;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16413:
      *(result + 24) = 34;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16414:
      *(result + 24) = 37;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16415:
      *(result + 24) = 36;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16416:
      *(result + 24) = 38;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16417:
      *(result + 24) = 5;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16418:
      *(result + 24) = 48;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16419:
      *(result + 24) = 21;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16420:
      *(result + 24) = 21;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16421:
      *(result + 24) = 21;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16422:
      *(result + 24) = 49;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16423:
      *(result + 24) = 50;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16424:
      *(result + 24) = 51;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16425:
      *(result + 24) = 53;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16426:
      *(result + 24) = 54;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16427:
      *(result + 24) = 34;
      if (!lpsrc)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    case 16428:
      *(result + 24) = 1347376896;
      if (lpsrc)
      {
LABEL_60:
        v13 = result;
        result = v13;
      }

      else
      {
LABEL_79:
        v4 = 0;
      }

      *(result + 16) = v4;
LABEL_81:
      if (!v4)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR10Programmer.cpp", 0xFDu, "Assertion failure(fImage && BBU Programmer item creation failed.)");
LABEL_102:
      }

      return result;
    default:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR10Programmer.cpp", 0xFAu, "Assertion failure(false && Unrecognized BBU Programmer item type.)");
      goto LABEL_102;
  }
}

uint64_t BBUEUR10Programmer::connectForImage_nl(uint64_t a1, int *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = 256;
  v34 = 0;
  v33 = 0;
  __p = 0;
  v31 = 0;
  v32 = 0;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v39 = v4;
  v40 = v4;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0 && gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", "", "Waiting for Hello\n");
  }

  if ((ETLSAHCommandReceive() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v8 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v8 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_92;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "failed receiving sahara hello\n");
    }

    goto LABEL_92;
  }

  if ((ETLSAHCommandParseHello() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v8 = 12;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v8 = 12;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_92;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "failed parsing sahara hello\n");
    }

    goto LABEL_92;
  }

  if (*(a1 + 4284) == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v35;
  }

  *a2 = v5;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  if (gBBULogVerbosity >= 3)
  {
    v6 = *(a1 + 4284);
    if (v6 > 2)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_1E876E9E8[v6];
    }

    v9 = ETLSAHModeAsString();
    v10 = ETLSAHModeAsString();
    _BBULog(13, 3, "BBUProgrammer", "", "\n Boot mode => Requested : %s, Received : %s, Override : %s\n", v7, v9, v10);
  }

LABEL_26:
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v11 = (a1 + 4304);
  if (*(a1 + 4327) < 0)
  {
    if (*(a1 + 4312))
    {
      v11 = *v11;
      v12 = strlen(v11);
      if (v12 < 0x7FFFFFFFFFFFFFF8)
      {
LABEL_29:
        v13 = v12;
        if (v12 >= 0x17)
        {
          if ((v12 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v12 | 7) + 1;
          }

          v14 = operator new(v18);
          __dst[1] = v13;
          v29 = v18 | 0x8000000000000000;
          __dst[0] = v14;
        }

        else
        {
          HIBYTE(v29) = v12;
          v14 = __dst;
          if (!v12)
          {
            goto LABEL_44;
          }
        }

        memmove(v14, v11, v13);
LABEL_44:
        *(v14 + v13) = 0;
        v19 = SHIBYTE(v29);
        v20 = __dst[0];
        if (v29 >= 0)
        {
          v21 = __dst;
        }

        else
        {
          v21 = __dst[0];
        }

        v22 = strtoul(v21, 0, 16);
        if (v19 < 0)
        {
          operator delete(v20);
        }

        LODWORD(v36) = v22;
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_53;
          }
        }

        if (gBBULogVerbosity >= 1)
        {
          _BBULog(13, 1, "BBUProgrammer", "", "Overriding Product Type : %u and Hardware Config: 0x%x in Reserved %zu\n", v22 & 0x3FFFFFFF, v22 >> 30, 0);
        }

        goto LABEL_53;
      }

LABEL_34:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  else if (*(a1 + 4327))
  {
    v12 = strlen((a1 + 4304));
    if (v12 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  HardwareConfig = TelephonyRadiosGetHardwareConfig();
  LODWORD(v36) = TelephonyRadiosGetProduct() | (HardwareConfig << 30);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_53;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    Product = TelephonyRadiosGetProduct();
    v17 = TelephonyRadiosGetHardwareConfig();
    _BBULog(13, 1, "BBUProgrammer", "", "Product Type : %d and Hardware Config: 0x%x in Reserved%lu\n", Product, v17, 0);
  }

LABEL_53:
  if (*(a1 + 4302) != 1)
  {
    goto LABEL_58;
  }

  HIDWORD(v36) |= 1u;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_58;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", "", "Sending Erase BB EEPROM in Reserved%lu\n", 1);
  }

LABEL_58:
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_60;
    }

LABEL_107:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_107;
  }

LABEL_60:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
  {
LABEL_61:
    if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0 && *(a1 + 4303) != 1)
    {
      goto LABEL_67;
    }
  }

LABEL_63:
  LODWORD(v37) = 1381192786;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_67;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUProgrammer", "", "Sending restore mode cookie in Reserved%lu\n", 2);
  }

LABEL_67:
  if ((ETLSAHCommandCreateHelloResponseExt() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_89:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUProgrammer", "", "failed creating hello response\n");
        }
      }
    }

    v8 = 11;
    goto LABEL_92;
  }

  if (ETLSAHCommandSend())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_74;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v23 = ETLSAHModeAsString();
      _BBULog(13, 1, "BBUProgrammer", "", "Hello received boot mode:  %s\n", v23);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
LABEL_75:
          if (gBBULogVerbosity >= 1)
          {
            v24 = ETLSAHModeAsString();
            _BBULog(13, 1, "BBUProgrammer", "", "Hello response boot mode:  %s\n", v24);
          }
        }

LABEL_77:
        v25 = HIBYTE(v32);
        if (v32 < 0)
        {
          v25 = v31;
        }

        if (!v25)
        {
LABEL_86:
          v8 = 0;
          goto LABEL_92;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v8 = 0;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_92;
          }

          goto LABEL_82;
        }

        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v8 = 0;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
LABEL_82:
          if (gBBULogVerbosity < 1)
          {
            goto LABEL_92;
          }

          p_p = &__p;
          if (v32 < 0)
          {
            p_p = __p;
          }

          _BBULog(13, 1, "BBUProgrammer", "", "Hello reserved fields:  %s\n", p_p);
          goto LABEL_86;
        }

        goto LABEL_92;
      }
    }

LABEL_74:
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_77;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v8 = 3;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v8 = 3;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_92;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUProgrammer", "", "failed sending hello response\n");
  }

LABEL_92:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1E532B6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR10Programmer::disconnectForImage_nl(uint64_t a1, unsigned int *a2)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Disconnecting");
  if (ETLSAHCommandCreateDone())
  {
    if (ETLSAHCommandSend())
    {
      if (ETLSAHCommandReceive())
      {
        done = ETLSAHCommandParseDoneResponse();
        if (gBBULogMaskGet(void)::once != -1)
        {
          v9 = done;
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          done = v9;
        }

        v5 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 1) >> 5);
        if (done)
        {
          if (v5)
          {
            v6 = ETLSAHModeAsString();
            _BBULog(13, 0, "BBUProgrammer", "", "status is %s\n", v6);
          }

          v7 = 0;
          *a2 = 256;
        }

        else
        {
          if (v5)
          {
            _BBULog(13, 0, "BBUProgrammer", "", "failed parsing done response\n");
          }

          v7 = 11;
        }
      }

      else
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v7 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v7 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_22;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUProgrammer", "", "failed receiving done response\n");
        }
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v7 = 3;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v7 = 3;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_22;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(13, 0, "BBUProgrammer", "", "failed sending done command\n");
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v7 = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v7 = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "failed creating done command\n");
    }
  }

LABEL_22:
  (*(**(a1 + 8) + 24))(*(a1 + 8), v7);
  return v7;
}

uint64_t BBUEUR10Programmer::load(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 88));
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Sending Loader");
  if (*(a1 + 32))
  {
    v4 = BBUProgrammer::addItemsFromList(a1, a2);
    if (v4)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(13, 0, "BBUProgrammer", "", "failed adding loader item to programmer list\n");
      }
    }

    else
    {
      v7 = 256;
      v4 = (*(*a1 + 184))(a1, &v7);
      if (v4)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_11;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUProgrammer", "", "failed connecting to sahara for pushing secondary loader\n");
        }
      }

      else
      {
        v4 = (*(*a1 + 224))(a1, a1 + 40);
        if (v4)
        {
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
            {
              goto LABEL_11;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            _BBULog(13, 0, "BBUProgrammer", "", "failed sending secondary loader\n");
          }
        }

        else
        {
          v6 = 256;
          v4 = (*(*a1 + 248))(a1, &v6);
          if (v4)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
              {
                goto LABEL_11;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
              {
                goto LABEL_11;
              }
            }

            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              _BBULog(5, 0, "BBUProgrammer", "", "Failed disconnecting after pushing secondary loader\n");
            }
          }
        }
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v4 = 74;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v4 = 74;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_11;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "not connected to programmer\n");
    }
  }

LABEL_11:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v4);
  pthread_mutex_unlock((a1 + 88));
  return v4;
}

uint64_t BBUEUR10Programmer::processItems(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  pthread_mutex_lock((a1 + 88));
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Sending Images");
  if ((*(a1 + 32) & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "not connected to programmer\n");
    }

LABEL_8:
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v12 = off_1ED944120;
    if (!off_1ED944120)
    {
      v13 = operator new(0x38uLL);
      v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v15 = dispatch_queue_create("BBUError", v14);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = v15;
      if (v15)
      {
        v16 = v15;
        dispatch_retain(v15);
        v13[3] = 0;
        dispatch_release(v16);
      }

      else
      {
        v13[3] = 0;
      }

      v13[4] = 0;
      v13[5] = 0;
      v13[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v72, v13);
      v17 = v72;
      v72 = 0uLL;
      v18 = *(&off_1ED944120 + 1);
      off_1ED944120 = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(&v72 + 1);
      if (*(&v72 + 1) && !atomic_fetch_add((*(&v72 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v12 = off_1ED944120;
    }

    v20 = *(&off_1ED944120 + 1);
    v70 = v12;
    v71 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x20uLL);
    v69 = xmmword_1E5390FE0;
    strcpy(__p, "not connected to programmer\n");
    *&v72 = MEMORY[0x1E69E9820];
    *(&v72 + 1) = 0x40000000;
    v73 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v74 = &__block_descriptor_tmp_8;
    v75 = v12;
    p_p = &__p;
    v77 = 12;
    v78 = &v72;
    block = MEMORY[0x1E69E9820];
    v80 = 0x40000000;
    v81 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v82 = &__block_descriptor_tmp_13_0;
    v83 = v12;
    v84 = &v78;
    v21 = *(v12 + 16);
    if (*(v12 + 24))
    {
      dispatch_async_and_wait(v21, &block);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_sync(v21, &block);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
LABEL_24:
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v22 = 74;
        goto LABEL_32;
      }
    }

    operator delete(__p);
    goto LABEL_24;
  }

  v67 = 256;
  if (a4)
  {
    v11 = 256;
    goto LABEL_44;
  }

  while (1)
  {
    v22 = (*(*a1 + 184))(a1, &v67);
    if (v22)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
        {
          goto LABEL_39;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(13, 0, "BBUProgrammer", "", "failed connecting to sahara\n");
      }

LABEL_39:
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v24 = off_1ED944120;
      if (off_1ED944120)
      {
        v25 = *(&off_1ED944120 + 1);
        v70 = off_1ED944120;
        v71 = *(&off_1ED944120 + 1);
        if (!*(&off_1ED944120 + 1))
        {
LABEL_42:
          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v26 = operator new(0x20uLL);
          strcpy(v26, "failed connecting to sahara\n");
          __p = v26;
          v27 = xmmword_1E5390FE0;
          goto LABEL_53;
        }

LABEL_41:
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_42;
      }

      v41 = operator new(0x38uLL);
      v42 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v43 = dispatch_queue_create("BBUError", v42);
      *v41 = 0;
      v41[1] = 0;
      v41[2] = v43;
      if (v43)
      {
        v44 = v43;
        dispatch_retain(v43);
        v41[3] = 0;
        dispatch_release(v44);
      }

      else
      {
        v41[3] = 0;
      }

      v41[4] = 0;
      v41[5] = 0;
      v41[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v72, v41);
      v48 = v72;
      v72 = 0uLL;
      v49 = *(&off_1ED944120 + 1);
      off_1ED944120 = v48;
      if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v49->__on_zero_shared)(v49);
        std::__shared_weak_count::__release_weak(v49);
        v50 = *(&v72 + 1);
        if (!*(&v72 + 1))
        {
          goto LABEL_112;
        }
      }

      else
      {
        v50 = *(&v72 + 1);
        if (!*(&v72 + 1))
        {
          goto LABEL_112;
        }
      }

      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        v24 = off_1ED944120;
        v25 = *(&off_1ED944120 + 1);
        v70 = off_1ED944120;
        v71 = *(&off_1ED944120 + 1);
        if (!*(&off_1ED944120 + 1))
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

LABEL_112:
      v24 = off_1ED944120;
      v25 = *(&off_1ED944120 + 1);
      v70 = off_1ED944120;
      v71 = *(&off_1ED944120 + 1);
      if (!*(&off_1ED944120 + 1))
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v11 = v67;
LABEL_44:
    v22 = (*(*a1 + 216))(a1, v11, a2, a3, a4, a5, a8, a9);
    if (!v22)
    {
      break;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_49;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "failed handling sahara mode operation\n");
    }

LABEL_49:
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v24 = off_1ED944120;
    if (!off_1ED944120)
    {
      v37 = operator new(0x38uLL);
      v38 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v39 = dispatch_queue_create("BBUError", v38);
      *v37 = 0;
      v37[1] = 0;
      v37[2] = v39;
      if (v39)
      {
        v40 = v39;
        dispatch_retain(v39);
        v37[3] = 0;
        dispatch_release(v40);
      }

      else
      {
        v37[3] = 0;
      }

      v37[4] = 0;
      v37[5] = 0;
      v37[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v72, v37);
      v45 = v72;
      v72 = 0uLL;
      v46 = *(&off_1ED944120 + 1);
      off_1ED944120 = v45;
      if (!v46 || atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v47 = *(&v72 + 1);
        if (*(&v72 + 1))
        {
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
      v47 = *(&v72 + 1);
      if (!*(&v72 + 1))
      {
        goto LABEL_105;
      }

LABEL_104:
      if (atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_105:
        v24 = off_1ED944120;
        v25 = *(&off_1ED944120 + 1);
        v70 = off_1ED944120;
        v71 = *(&off_1ED944120 + 1);
        if (!*(&off_1ED944120 + 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
        v24 = off_1ED944120;
        v25 = *(&off_1ED944120 + 1);
        v70 = off_1ED944120;
        v71 = *(&off_1ED944120 + 1);
        if (!*(&off_1ED944120 + 1))
        {
          goto LABEL_52;
        }
      }

LABEL_51:
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_52;
    }

    v25 = *(&off_1ED944120 + 1);
    v70 = off_1ED944120;
    v71 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      goto LABEL_51;
    }

LABEL_52:
    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v28 = operator new(0x28uLL);
    strcpy(v28, "failed handling sahara mode operation\n");
    __p = v28;
    v27 = xmmword_1E5393C00;
LABEL_53:
    v69 = v27;
    *&v72 = MEMORY[0x1E69E9820];
    *(&v72 + 1) = 0x40000000;
    v73 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v74 = &__block_descriptor_tmp_8;
    v75 = v24;
    p_p = &__p;
    v77 = 12;
    v78 = &v72;
    block = MEMORY[0x1E69E9820];
    v80 = 0x40000000;
    v81 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v82 = &__block_descriptor_tmp_13_0;
    v83 = v24;
    v84 = &v78;
    v29 = *(v24 + 16);
    if (!*(v24 + 24))
    {
      dispatch_sync(v29, &block);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_55:
      operator delete(__p);
      goto LABEL_56;
    }

    dispatch_async_and_wait(v29, &block);
    if (SHIBYTE(v69) < 0)
    {
      goto LABEL_55;
    }

LABEL_56:
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    if (v67 != 3)
    {
      goto LABEL_32;
    }

LABEL_60:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_64;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(5, 0, "BBUProgrammer", "", "not performing disconnect as the previous mode was CommandMode\n");
    }

LABEL_64:
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_65:
    if (v67 > 2)
    {
      if (v67 != 3 && v67 != 256)
      {
        goto LABEL_124;
      }

      goto LABEL_76;
    }

    if (v67)
    {
      if (v67 != 1)
      {
        if (v67 != 2)
        {
LABEL_124:
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
LABEL_126:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                v51 = v67;
                v52 = ETLSAHModeAsString();
                _BBULog(5, 0, "BBUProgrammer", "", "unexpected hello disconnect mode %u, %s\n", v51, v52);
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
              goto LABEL_126;
            }
          }

          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v53 = off_1ED944120;
          if (!off_1ED944120)
          {
            v54 = operator new(0x38uLL);
            v55 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
            v56 = dispatch_queue_create("BBUError", v55);
            *v54 = 0;
            v54[1] = 0;
            v54[2] = v56;
            if (v56)
            {
              v57 = v56;
              dispatch_retain(v56);
              v54[3] = 0;
              dispatch_release(v57);
            }

            else
            {
              v54[3] = 0;
            }

            v54[4] = 0;
            v54[5] = 0;
            v54[6] = 0;
            std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v72, v54);
            v58 = v72;
            v72 = 0uLL;
            v59 = *(&off_1ED944120 + 1);
            off_1ED944120 = v58;
            if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v59->__on_zero_shared)(v59);
              std::__shared_weak_count::__release_weak(v59);
            }

            v60 = *(&v72 + 1);
            if (*(&v72 + 1) && !atomic_fetch_add((*(&v72 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v60->__on_zero_shared)(v60);
              std::__shared_weak_count::__release_weak(v60);
            }

            v53 = off_1ED944120;
          }

          v61 = *(&off_1ED944120 + 1);
          v70 = v53;
          v71 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          __p = operator new(0x28uLL);
          v69 = xmmword_1E5392800;
          strcpy(__p, "Unexpected hello disconnect mode\n");
          *&v72 = MEMORY[0x1E69E9820];
          *(&v72 + 1) = 0x40000000;
          v73 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
          v74 = &__block_descriptor_tmp_8;
          v75 = v53;
          p_p = &__p;
          v77 = 12;
          v78 = &v72;
          block = MEMORY[0x1E69E9820];
          v80 = 0x40000000;
          v81 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v82 = &__block_descriptor_tmp_13_0;
          v83 = v53;
          v84 = &v78;
          v62 = *(v53 + 16);
          if (*(v53 + 24))
          {
            dispatch_async_and_wait(v62, &block);
          }

          else
          {
            dispatch_sync(v62, &block);
          }

          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p);
          }

          if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
          }

          v22 = 12;
          goto LABEL_32;
        }

LABEL_135:
        v22 = 0;
        goto LABEL_32;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_135;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_135;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", "", "All images transferred\n");
      }

      goto LABEL_135;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_76;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(5, 0, "BBUProgrammer", "", "Next image requested\n");
    }

LABEL_76:
    if (a4)
    {
      goto LABEL_135;
    }

    v67 = 256;
  }

  if (v67 == 3)
  {
    goto LABEL_60;
  }

  v22 = (*(*a1 + 248))(a1, &v67);
  if (!v22)
  {
    goto LABEL_65;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
    {
LABEL_82:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", "", "Failed disconnecting for image\n");
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
    {
      goto LABEL_82;
    }
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v30 = off_1ED944120;
  if (!off_1ED944120)
  {
    v31 = operator new(0x38uLL);
    BBUError::BBUError(v31);
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v72, v31);
    v32 = v72;
    v72 = 0uLL;
    v33 = *(&off_1ED944120 + 1);
    off_1ED944120 = v32;
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    v34 = *(&v72 + 1);
    if (*(&v72 + 1) && !atomic_fetch_add((*(&v72 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    v30 = off_1ED944120;
  }

  v35 = *(&off_1ED944120 + 1);
  v70 = v30;
  v71 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  __p = operator new(0x20uLL);
  v69 = xmmword_1E5391A90;
  strcpy(__p, "Failed disconnecting for image\n");
  *&v72 = MEMORY[0x1E69E9820];
  *(&v72 + 1) = 0x40000000;
  v73 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v74 = &__block_descriptor_tmp_8;
  v75 = v30;
  p_p = &__p;
  v77 = 12;
  v78 = &v72;
  block = MEMORY[0x1E69E9820];
  v80 = 0x40000000;
  v81 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v82 = &__block_descriptor_tmp_13_0;
  v83 = v30;
  v84 = &v78;
  v36 = *(v30 + 16);
  if (*(v30 + 24))
  {
    dispatch_async_and_wait(v36, &block);
  }

  else
  {
    dispatch_sync(v36, &block);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_32:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v22);
  pthread_mutex_unlock((a1 + 88));
  return v22;
}

uint64_t BBUEUR10Programmer::handleSaharaMode_nl(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a2 == 2;
    if (a2 >= 2)
    {
      goto LABEL_3;
    }

LABEL_12:
    result = (*(*a1 + 224))(a1, a1 + 10, a3);
    if (!result)
    {
      return result;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      v16 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v16;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v13 = result;
    _BBULog(5, 0, "BBUProgrammer", "", "failed sending image\n");
    return v13;
  }

  a4 = (a1[1070] - 8);
  v7 = a2 == 2;
  if (a2 < 2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v7)
  {
    return 28;
  }

  if (a2 == 256)
  {
    memset(v20, 0, sizeof(v20));
    if ((a5 & 1) == 0)
    {
      v9 = a3;
      v10 = a6;
      v11 = a1;
      result = BBUEUR4Programmer::handleMaverickGetNonce_nl(a1, 0, v20);
      if (result)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            return result;
          }

          goto LABEL_9;
        }

        v18 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v18;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
LABEL_9:
          if (gBBULogVerbosity < 0)
          {
            return result;
          }

          v13 = result;
          _BBULog(5, 0, "BBUProgrammer", "", "failed getting nonce\n");
          return v13;
        }

        return result;
      }

      a4 = LODWORD(v20[0]);
      a1 = v11;
      a6 = v10;
      a3 = v9;
    }

    v15 = a1;
    result = (*(*a1 + 192))(a1, a3, a4, a6, 0, a5);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      else
      {
        v17 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v17;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v13 = result;
      _BBULog(5, 0, "BBUProgrammer", "", "failed handling sahara send hashes command\n");
      return v13;
    }

    result = (*(*v15 + 200))(v15);
    if (!result)
    {
      return result;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      v19 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v19;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v13 = result;
      _BBULog(5, 0, "BBUProgrammer", "", "failed handling maverick end\n");
      return v13;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = ETLSAHModeAsString();
      _BBULog(5, 0, "BBUProgrammer", "", "unexpected hello start mode %u, %s\n", v6, v14);
      return 12;
    }
  }

  return result;
}

uint64_t BBUEUR10Programmer::sendImageInternal_nl(BBUFeedback **a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = operator new[](0x100000uLL);
  v47 = 0;
  v48[0] = 0;
  v46 = 0;
  if ((*(*a1 + 29))(a1, v5, 0x100000, v48 + 4, v48, &v47, &v46))
  {
    v6 = HIDWORD(v48[0]);
    v7 = a2;
    while (1)
    {
      v7 = *(v7 + 8);
      if (v7 == a2)
      {
        break;
      }

      if (*(v8 + 6) == v6)
      {
        v9 = v8[2];
        v10 = (*(*v9 + 32))(v9);
        v45.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        v45.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
        strcpy(&v45, "unknown");
        v11 = (*(*v9 + 16))(v9);
        std::string::__assign_external(&v45, v11);
        v12 = 0;
        v13 = 0;
        v14 = HIDWORD(v48[0]);
        if (SHIDWORD(v48[0]) <= 16410)
        {
          goto LABEL_21;
        }

        goto LABEL_6;
      }
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 15;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 15;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(5, 0, "BBUProgrammer", "", "item not found in item list\n");
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(5, 1, "BBUProgrammer", "", "failed receiving next segment request\n");
    }
  }

LABEL_20:
  v9 = 0;
  v10 = 0;
  v45.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v45.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
  strcpy(&v45, "unknown");
  v13 = 1;
  v14 = HIDWORD(v48[0]);
  if (SHIDWORD(v48[0]) <= 16410)
  {
LABEL_21:
    if (v14 > 28)
    {
      if (v14 > 16407)
      {
        switch(v14)
        {
          case 16408:
            v15 = 23;
            goto LABEL_68;
          case 16409:
            v15 = 24;
            goto LABEL_68;
          case 16410:
            v15 = 25;
            goto LABEL_68;
        }
      }

      else
      {
        switch(v14)
        {
          case 29:
            v15 = 10;
            goto LABEL_68;
          case 30:
            v15 = 14;
            goto LABEL_68;
          case 31:
            v15 = 11;
            goto LABEL_68;
        }
      }
    }

    else if (v14 > 20)
    {
      switch(v14)
      {
        case 21:
          v15 = 1;
          goto LABEL_68;
        case 23:
          v15 = 3;
          goto LABEL_68;
        case 28:
          v15 = 8;
          goto LABEL_68;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v15 = 9;
          goto LABEL_68;
        case 8:
          v15 = 7;
          goto LABEL_68;
        case 16:
          v15 = 15;
          goto LABEL_68;
      }
    }

LABEL_133:
    v17 = 0;
    v16 = a1[1];
    goto LABEL_71;
  }

LABEL_6:
  if (v14 > 16416)
  {
    if (v14 > 1128679167)
    {
      switch(v14)
      {
        case 1128679168:
          v15 = 22;
          goto LABEL_68;
        case 1346454272:
          v15 = 20;
          goto LABEL_68;
        case 1347571542:
          v15 = 19;
          goto LABEL_68;
      }
    }

    else
    {
      switch(v14)
      {
        case 16417:
          v15 = 32;
          goto LABEL_68;
        case 16418:
          v15 = 33;
          goto LABEL_68;
        case 1128352768:
          v15 = 18;
          goto LABEL_68;
      }
    }

    goto LABEL_133;
  }

  if (v14 > 16413)
  {
    if (v14 == 16414)
    {
      v15 = 29;
    }

    else if (v14 == 16415)
    {
      v15 = 30;
    }

    else
    {
      v15 = 31;
    }

    goto LABEL_68;
  }

  if (v14 == 16411)
  {
    v15 = 26;
    goto LABEL_68;
  }

  if (v14 == 16412)
  {
    v15 = 27;
    goto LABEL_68;
  }

  if (v14 != 16413)
  {
    goto LABEL_133;
  }

  v15 = 28;
LABEL_68:
  v16 = a1[1];
  if (*(v16 + 44) == 1)
  {
    *(v16 + 10) = v15;
  }

  v17 = 1;
LABEL_71:
  *(&v40.__r_.__value_.__s + 23) = 15;
  strcpy(&v40, "Sending Image '");
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v45;
  }

  else
  {
    v18 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v40, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42 = v20->__r_.__value_.__r.__words[2];
  *v41 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) == 0)
  {
    v23 = v41;
    if (SHIBYTE(v42) == 22)
    {
      v38 = v17;
      v39 = v13;
      v37 = v9;
      v36 = v12;
      v24 = 22;
      v25 = 23;
LABEL_83:
      v27 = 2 * v24;
      if (v25 > 2 * v24)
      {
        v27 = v25;
      }

      if ((v27 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v27 | 7) + 1;
      }

      if (v27 >= 0x17)
      {
        v26 = v28;
      }

      else
      {
        v26 = 23;
      }

      v29 = v24 == 22;
      goto LABEL_92;
    }

LABEL_98:
    *(v22 + v23) = 39;
    v33 = v22 + 1;
    if (SHIBYTE(v42) < 0)
    {
      v41[1] = v33;
    }

    else
    {
      HIBYTE(v42) = v33 & 0x7F;
    }

    v32 = &v33[v23];
    goto LABEL_102;
  }

  v38 = v17;
  v39 = v13;
  v22 = v41[1];
  v25 = v42 & 0x7FFFFFFFFFFFFFFFLL;
  v24 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v24 != v41[1])
  {
    v23 = v41[0];
    v17 = v38;
    v13 = v39;
    goto LABEL_98;
  }

  v37 = v9;
  v26 = 0x7FFFFFFFFFFFFFF7;
  if (v25 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v41[0];
  v36 = v12;
  if (v24 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_83;
  }

  v29 = 0;
LABEL_92:
  v30 = operator new(v26);
  v31 = v30;
  if (v24)
  {
    memmove(v30, v23, v24);
  }

  v31[v24] = 39;
  if (!v29)
  {
    operator delete(v23);
  }

  v41[1] = v25;
  v42 = v26 | 0x8000000000000000;
  v41[0] = v31;
  v32 = &v31[v25];
  v12 = v36;
  v9 = v37;
  v17 = v38;
  v13 = v39;
LABEL_102:
  *v32 = 0;
  *__p = *v41;
  v44 = v42;
  v41[1] = 0;
  v42 = 0;
  v41[0] = 0;
  (*(*v16 + 32))(v16, __p, 0, v10);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
LABEL_104:
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_109;
    }
  }

  else if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

  operator delete(v41[0]);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_105:
    if (((v13 | v46) & 1) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_125;
  }

LABEL_109:
  operator delete(v40.__r_.__value_.__l.__data_);
  if (((v13 | v46) & 1) == 0)
  {
    while (1)
    {
LABEL_110:
      if (v10 < v47 + LODWORD(v48[0]))
      {
        BBUFeedback::handleComment(a1[1], "Error: Chunk size is not sufficient to write payload data of the image!");
        v12 = 72;
        goto LABEL_125;
      }

      if (((*(*a1 + 30))(a1, v9, v5, 0x100000, v48, &v47, &v47 + 4, v10) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 29))(a1, v5, 0x100000, v48 + 4, v48, &v47, &v46) & 1) == 0)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v12 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_125;
          }

          goto LABEL_122;
        }

        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v12 = 0;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
LABEL_122:
          if (gBBULogVerbosity < 1)
          {
            goto LABEL_125;
          }

          _BBULog(5, 1, "BBUProgrammer", "", "failed receiving next segment request\n");
LABEL_124:
          v12 = 0;
          goto LABEL_125;
        }

        goto LABEL_125;
      }

      if (v46)
      {
        goto LABEL_124;
      }
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 3;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_125;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(5, 1, "BBUProgrammer", "", "failed transfering segment\n");
    }
  }

LABEL_125:
  if (v17)
  {
    BBUFeedback::endProgressBarItem(a1[1]);
  }

  (*(*a1[1] + 48))(a1[1], v12);
  if (!v12)
  {
    v34 = CFAbsoluteTimeGetCurrent();
    BBUFeedback::handleComment(a1[1], "Took %f seconds", v34 - Current);
  }

  operator delete[](v5);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1E532DE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if ((a38 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR10Programmer::getSegmentRequestInternal_nl(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((ETLSAHCommandReceive() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      return result;
    }

    _BBULog(5, 1, "BBUProgrammer", "", "no response from baseband after segment transfer\n");
    return 0;
  }

  if (*a2 != 4)
  {
    if (*a2 == 3)
    {
      Data = ETLSAHCommandParseReadData();
      if (gBBULogMaskGet(void)::once != -1)
      {
        v14 = Data;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        Data = v14;
      }

      v11 = (gBBULogVerbosity >= 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 5);
      if (Data)
      {
        if (v11)
        {
          _BBULog(5, 0, "BBUProgrammer", "", "request image ID %u, data offset 0x%x, data length %u\n");
        }

        return 1;
      }

      if (v11)
      {
        _BBULog(5, 0, "BBUProgrammer", "", "Failed parsing read command");
      }

      return 0;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 1;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
    {
LABEL_16:
      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      _BBULog(5, 0, "BBUProgrammer", "", "unexpected command %u");
      return 1;
    }

    return result;
  }

  if (ETLSAHCommandParseEndOfImageTransfer())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
      {
LABEL_25:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(5, 0, "BBUProgrammer", "", "end of image %u\n", *a4);
        }
      }
    }

    result = 1;
    *a7 = 1;
    return result;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(5, 0, "BBUProgrammer", "", "Failed parsing image end command");
    return 0;
  }

  return result;
}

void sub_1E532E7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (SHIBYTE(a16) < 0)
  {
    operator delete(a14);
  }

  std::ostringstream::~ostringstream(&a17, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR10Programmer::sendSegmentInternal_nl(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7, unsigned int a8)
{
  v8 = *a6;
  if (*a6)
  {
    v16 = a8;
    while (1)
    {
      if (v8 >= a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = v8;
      }

      (*(*a2 + 24))(a2, a3, v18, *a5);
      Data = ETLSAHSendReadData();
      if (Data)
      {
        LODWORD(v20) = *a5;
        BBUFeedback::updateProgressBarItem(*(a1 + 8), v20 / v16);
        (*(**(a1 + 8) + 40))(*(a1 + 8), *a5);
      }

      else if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
LABEL_14:
          if (gBBULogVerbosity >= 1)
          {
            _BBULog(5, 1, "BBUProgrammer", "", "Failed sending data at offset 0x%x, chunk %u\n", *a5, v18);
          }
        }
      }

      *a6 -= v18;
      *a5 += v18;
      *a7 += v18;
      v8 = *a6;
      if (*a6)
      {
        v17 = Data;
      }

      else
      {
        v17 = 0;
      }

      if ((v17 & 1) == 0)
      {
        return Data;
      }
    }
  }

  return 1;
}

uint64_t BBUEUR10Programmer::handleHashesQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[0] = v4;
  v31[1] = v4;
  v30[0] = v4;
  v30[1] = v4;
  v29[0] = v4;
  v29[1] = v4;
  v28[0] = v4;
  v28[1] = v4;
  v27[0] = v4;
  v27[1] = v4;
  v26[0] = v4;
  v26[1] = v4;
  v25[0] = v4;
  v25[1] = v4;
  v24[0] = v4;
  v24[1] = v4;
  v23[0] = v4;
  v23[1] = v4;
  __src[0] = v4;
  __src[1] = v4;
  if (a2)
  {
    if (ETLSAHCommandParseMaverickSendHashesQuery())
    {
      result = 0;
      if (a3 && a4)
      {
        v9 = operator new(0x148uLL);
        *v9 = &unk_1F5F01520;
        v10 = off_1F5F01540(v9);
        memcpy(v9 + 8, __src, v10);
        v11 = (*(*v9 + 32))(v9);
        memcpy(v9 + 40, v26, v11);
        v12 = (*(*v9 + 32))(v9);
        memcpy(v9 + 72, v27, v12);
        v13 = (*(*v9 + 32))(v9);
        memcpy(v9 + 104, v30, v13);
        v14 = (*(*v9 + 32))(v9);
        memcpy(v9 + 136, v28, v14);
        v15 = (*(*v9 + 32))(v9);
        memcpy(v9 + 168, v29, v15);
        v16 = (*(*v9 + 32))(v9);
        memcpy(v9 + 200, v23, v16);
        v17 = (*(*v9 + 32))(v9);
        memcpy(v9 + 232, v24, v17);
        v18 = (*(*v9 + 32))(v9);
        memcpy(v9 + 264, v25, v18);
        v19 = (*(*v9 + 32))(v9);
        memcpy(v9 + 296, v31, v19);
        (*(*v9 + 24))(v9, *(a1 + 8));
        if ((*(*a4 + 16))(a4, *(a1 + 8), v9))
        {
          v20 = 0;
LABEL_19:
          v21 = v20;
          (*(*v9 + 8))(v9);
          return v21;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v20 = 33;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v20 = 33;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        if (gBBULogVerbosity >= 1)
        {
          _BBULog(5, 1, "BBUProgrammer", "", "root manifest hash data mismatches baseband hash query\n");
          v20 = 33;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          return result;
        }
      }

      if (gBBULogVerbosity >= 1)
      {
        _BBULog(5, 1, "BBUProgrammer", "", "Failed parsing maverick hash query results\n");
        return 12;
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 2;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 2;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(5, 1, "BBUProgrammer", "", "Bad arguments:  header = %p\n", 0);
      return 2;
    }
  }

  return result;
}

uint64_t BBUEUR10Programmer::collectCoreDump(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v9 = 2;
  *(a1 + 1071) = 2;
  result = (*(*a1 + 23))(a1, &v9);
  if (result)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }

    v7 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v7;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
LABEL_4:
      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v6 = result;
      _BBULog(13, 0, "BBUProgrammer", "", "failed connecting to sahara for collecting coredump\n");
      return v6;
    }
  }

  else if (v9 == 2)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *a3, *(a3 + 8));
    }

    else
    {
      v8 = *a3;
    }

    result = BBUEUR2Programmer::collectCoreDump(a1, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = result;
      operator delete(v8.__r_.__value_.__l.__data_);
      return v6;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 12;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 12;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(13, 0, "BBUProgrammer", "", "failed to enter debug mode, unknown mode: %d \n", v9);
      return 12;
    }
  }

  return result;
}

void sub_1E532F16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_31()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICE16Programmer::~BBUICE16Programmer(BBUICE16Programmer *this)
{
  *this = &unk_1F5F04688;
  if (*(this + 27))
  {
    v2 = *(this + 26);
    if (v2)
    {
      do
      {
        v7 = *v2;
        if (*(v2 + 39) < 0)
        {
          v8 = v2;
          operator delete(v2[2]);
          v2 = v8;
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7);
    }

    *(this + 26) = 0;
    v3 = *(this + 25);
    if (v3)
    {
      bzero(*(this + 24), 8 * v3);
    }

    *(this + 27) = 0;
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  v4 = *(this + 29);
  if (v4)
  {
    v5 = *(this + 30);
    v6 = *(this + 29);
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 1);
        v5 -= 3;
        if (v9 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 29);
    }

    *(this + 30) = v4;
    operator delete(v6);
  }

  v10 = *(this + 26);
  if (v10)
  {
    do
    {
      v14 = *v10;
      if (*(v10 + 39) < 0)
      {
        operator delete(v10[2]);
      }

      operator delete(v10);
      v10 = v14;
    }

    while (v14);
  }

  v11 = *(this + 24);
  *(this + 24) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  pthread_mutex_destroy((this + 120));
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  *this = &unk_1F5F04DD0;
  v12 = this + 40;
  for (i = *(this + 6); i != v12; i = *(i + 8))
  {
    v15 = *(i + 16);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (*(this + 7))
  {
    v16 = *(this + 6);
    v17 = *(*(this + 5) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 7) = 0;
    if (v16 != v12)
    {
      do
      {
        v19 = *(v16 + 1);
        operator delete(v16);
        v16 = v19;
      }

      while (v19 != v12);
    }
  }
}

{
  BBUICE16Programmer::~BBUICE16Programmer(this);

  operator delete(v1);
}

uint64_t BBUICE16Programmer::addItemsToHashmap(BBUICE16Programmer *this)
{
  v1 = this + 40;
  v2 = *(this + 6);
  if (v2 != this + 40)
  {
    while (1)
    {
      v4 = *(v2 + 2);
      {
        break;
      }

      if (!v5)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x4Eu, "Assertion failure(ice16item && Error: loading programmer items!)");
LABEL_15:
      }

      if (v5[55] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v5 + 4), *(v5 + 5));
      }

      else
      {
        __p = *(v5 + 32);
      }

      p_p = &__p;
      std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 48, &__p, &std::piecewise_construct, &p_p)[5] = v4;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v2 = *(v2 + 1);
      if (v2 == v1)
      {
        return 0;
      }
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x5Au, "Assertion failure(item && Error: loading programmer items!)");
    goto LABEL_15;
  }

  return 0;
}

void sub_1E532F6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16Programmer::ICE16Item::ICE16Item(uint64_t a1, int a2, uint64_t *lpsrc)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F5F047A8;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = a2 - 20480;
  if ((a2 - 20480) >= 8)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x8Du, "Assertion failure(false && Unrecognized BBU Programmer item type!)");
    goto LABEL_6;
  }

  v7 = dword_1E5393CD8[v5];
  v8 = *lpsrc;
  *(a1 + 24) = v7;
  v9 = (*(v8 + 16))(lpsrc);
  std::string::__assign_external(v4, v9);
  if (!*(a1 + 16))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x90u, "Assertion failure(fImage && Failed to to create BBU Image for the programmer item!)");
LABEL_6:
  }

  return a1;
}

void sub_1E532F888(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::imageDownload(BBUICE16Programmer *this)
{
  v2 = *(this + 73);
  if (v2)
  {
    v3 = operator new(*(this + 73));
    bzero(v3, v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = 1;
  pthread_mutex_lock((this + 120));
  BBUFeedback::handleBeginPhase(*(this + 1), "Sending Images");
  if ((*(this + 32) & 1) == 0)
  {
    BBUFeedback::handleComment(*(this + 1), "not connected to programmer");
  }

  v4 = (*(*this + 200))(this);
  if (v4)
  {
    BBUFeedback::handleComment(*(this + 1), "Failed EBL Start sequence");
    v6 = 2;
  }

  else
  {
    v6 = 2;
    do
    {
      v4 = (*(*this + 192))(this, &v6, v3);
      if (v4)
      {
        BBUFeedback::handleComment(*(this + 1), "failed handling EBL command.");
        goto LABEL_15;
      }
    }

    while (v6 == 2);
    if (v6 == 3)
    {
      BBUFeedback::handleComment(*(this + 1), "All images transferred\n");
    }

    v4 = 0;
  }

LABEL_15:
  (*(**(this + 1) + 16))(*(this + 1), v4);
  pthread_mutex_unlock((this + 120));
  if (v3)
  {
    operator delete(v3);
  }

  return v4;
}

void sub_1E532FA50(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v2 + 120));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::sendImageSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[7] = v10;
  v39[8] = v10;
  v39[5] = v10;
  v39[6] = v10;
  v39[3] = v10;
  v39[4] = v10;
  v39[1] = v10;
  v39[2] = v10;
  v39[0] = v10;
  v37 = v10;
  v38 = v10;
  v35 = v10;
  *__p = v10;
  v33 = v10;
  v34 = v10;
  v32 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Reading file '", 14);
  v12 = (*(*a2 + 16))(a2);
  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "' (offset=", 10);
  v16 = MEMORY[0x1E69270E0](v15, a3);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", length=", 9);
  v18 = MEMORY[0x1E69270E0](v17, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")", 1);
  v19 = *(a1 + 8);
  if ((BYTE8(v38) & 0x10) != 0)
  {
    v22 = v38;
    if (v38 < *(&v35 + 1))
    {
      *&v38 = *(&v35 + 1);
      v22 = *(&v35 + 1);
    }

    v23 = v35;
    v20 = v22 - v35;
    if ((v22 - v35) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((BYTE8(v38) & 8) == 0)
    {
      v20 = 0;
      HIBYTE(v31) = 0;
      v21 = __dst;
      goto LABEL_15;
    }

    v23 = *(&v33 + 1);
    v20 = *(&v34 + 1) - *(&v33 + 1);
    if (*(&v34 + 1) - *(&v33 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v20 | 7) + 1;
    }

    v21 = operator new(v24);
    __dst[1] = v20;
    v31 = v24 | 0x8000000000000000;
    __dst[0] = v21;
  }

  else
  {
    HIBYTE(v31) = v20;
    v21 = __dst;
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  memmove(v21, v23, v20);
LABEL_15:
  v25 = a4 + a3;
  *(v21 + v20) = 0;
  (*(*v19 + 32))(v19, __dst, a3, (a4 + a3));
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

  operator delete(__dst[0]);
  if (!a4)
  {
LABEL_32:
    v28 = 0;
    goto LABEL_33;
  }

LABEL_19:
  while (1)
  {
    v26 = *(a1 + 292);
    v27 = v26 >= a4 ? a4 : v26;
    (*(*a2 + 24))(a2, a5, v27, a3);
    if (!KTLEBLSendReadfileData())
    {
      break;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
      {
LABEL_26:
        if (gBBULogVerbosity >= 1)
        {
          _BBULog(5, 1, "BBUProgrammer", "", "Sent read data at offset 0x%08x, chunk %u\n", a3, v27);
        }
      }
    }

    BBUFeedback::updateProgressBarItem(*(a1 + 8), a3 / v25);
    (*(**(a1 + 8) + 40))(*(a1 + 8), a3);
    a3 = (v27 + a3);
    LODWORD(a4) = a4 - v27;
    if (!a4)
    {
      goto LABEL_32;
    }
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v28 = 3;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v28 = 3;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_33;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(5, 1, "BBUProgrammer", "", "Failed sending data at offset 0x%08x, chunk %u\n", a3, v27);
  }

LABEL_33:
  (*(**(a1 + 8) + 48))(*(a1 + 8), v28);
  *&v32 = *MEMORY[0x1E69E54E8];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v32 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v32 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v33);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v39);
  return v28;
}

void sub_1E532FFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::ostringstream::~ostringstream(&a17, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::sendEBL(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 32))(a2);
  v4 = v3;
  if (v3)
  {
    if (v3 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v5 = operator new(v3);
    bzero(v5, v4);
  }

  else
  {
    v5 = 0;
  }

  if (KTLPSIFormatEnhancedCommand())
  {
    BBUFeedback::handleComment(*(a1 + 8), "Sending PSI enhanced command 'Load and execute EBL'");
    if ((KTLPSISendEnhancedCommand() & 1) == 0)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed sending PSI command for Loading EBL\n");
      goto LABEL_15;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
      {
LABEL_9:
        if (gBBULogVerbosity >= 1)
        {
          _BBULog(9, 1, "BBUProgrammer", "", "Waiting for PSI command response\n");
        }
      }
    }

    if (KTLPSIReadResponse())
    {
      KTLParsePSIRunning();
      v7 = *(a1 + 8);
      v8 = PSIModeDescription();
      BBUFeedback::handleComment(v7, "Unexpected PSI running mode %d (%s)\n", 0, v8);
    }

    else
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed reading PSI command response\n");
    }
  }

LABEL_15:
  if (v5)
  {
    operator delete(v5);
  }

  return 3;
}

void sub_1E53305E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16Programmer::readPSIRunningMode(uint64_t a1, int *a2)
{
  v36 = -21846;
  *a2 = 0;
  if ((KTLPSIReadResponse() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed reading PSI-RAM Running status\n");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v9 = off_1ED944120;
    if (!off_1ED944120)
    {
      v10 = operator new(0x38uLL);
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v12 = dispatch_queue_create("BBUError", v11);
      *v10 = 0;
      v10[1] = 0;
      v10[2] = v12;
      if (v12)
      {
        v13 = v12;
        dispatch_retain(v12);
        v10[3] = 0;
        dispatch_release(v13);
      }

      else
      {
        v10[3] = 0;
      }

      v10[4] = 0;
      v10[5] = 0;
      v10[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v37, v10);
      v19 = v37;
      v37 = 0uLL;
      v20 = *(&off_1ED944120 + 1);
      off_1ED944120 = v19;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v21 = *(&v37 + 1);
      if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v9 = off_1ED944120;
    }

    v22 = *(&off_1ED944120 + 1);
    v34 = v9;
    v35 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v23 = operator new(0x28uLL);
    strcpy(v23, "Failed reading PSI-RAM Running status\n");
    v24 = *(v9 + 16);
    v25 = *(v9 + 24);
    __p = v23;
    v33 = xmmword_1E5393C00;
    *&v37 = MEMORY[0x1E69E9820];
    *(&v37 + 1) = 0x40000000;
    v38 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v39 = &__block_descriptor_tmp_8;
    v40 = v9;
    p_p = &__p;
    v42 = 3;
    v43 = &v37;
    block = MEMORY[0x1E69E9820];
    v45 = 0x40000000;
    v46 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v47 = &__block_descriptor_tmp_13_0;
    v48 = v9;
    v49 = &v43;
    if (v25)
    {
      dispatch_async_and_wait(v24, &block);
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_sync(v24, &block);
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_22:
        if (!v22)
        {
          return 3;
        }

LABEL_26:
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_44;
        }

        return 3;
      }
    }

    operator delete(__p);
    if (!v22)
    {
      return 3;
    }

    goto LABEL_26;
  }

  v4 = KTLParsePSIRunning();
  v5 = *(a1 + 8);
  if (v4)
  {
    v6 = *a2;
    v7 = PSIModeDescription();
    BBUFeedback::handleComment(v5, "PSI-Running mode 0x%x (%s)", v6, v7);
    return 0;
  }

  BBUFeedback::handleComment(v5, "Failed reading PSI-RAM Running status\n");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v14 = off_1ED944120;
  if (!off_1ED944120)
  {
    v15 = operator new(0x38uLL);
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v17 = dispatch_queue_create("BBUError", v16);
    *v15 = 0;
    v15[1] = 0;
    v15[2] = v17;
    if (v17)
    {
      v18 = v17;
      dispatch_retain(v17);
      v15[3] = 0;
      dispatch_release(v18);
    }

    else
    {
      v15[3] = 0;
    }

    v15[4] = 0;
    v15[5] = 0;
    v15[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v37, v15);
    v26 = v37;
    v37 = 0uLL;
    v27 = *(&off_1ED944120 + 1);
    off_1ED944120 = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *(&v37 + 1);
    if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v14 = off_1ED944120;
  }

  v22 = *(&off_1ED944120 + 1);
  v34 = v14;
  v35 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v29 = operator new(0x28uLL);
  strcpy(v29, "Failed reading PSI-RAM Running status\n");
  v30 = *(v14 + 16);
  v31 = *(v14 + 24);
  __p = v29;
  v33 = xmmword_1E5393C00;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 0x40000000;
  v38 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v39 = &__block_descriptor_tmp_8;
  v40 = v14;
  p_p = &__p;
  v42 = 3;
  v43 = &v37;
  block = MEMORY[0x1E69E9820];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_13_0;
  v48 = v14;
  v49 = &v43;
  if (!v31)
  {
    dispatch_sync(v30, &block);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  dispatch_async_and_wait(v30, &block);
  if (SHIBYTE(v33) < 0)
  {
LABEL_40:
    operator delete(__p);
  }

LABEL_41:
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 3;
  }

LABEL_44:
  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  return 3;
}

void sub_1E5330C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::handleEBLStart(BBUICE16Programmer *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v2 = this + 88;
  if ((*(this + 111) & 0x80000000) == 0)
  {
    if (*(this + 111))
    {
      v3 = strlen(this + 88);
      if (v3 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_4;
      }

LABEL_9:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_10:
    HardwareConfig = TelephonyRadiosGetHardwareConfig();
    LODWORD(v18) = TelephonyRadiosGetProduct() | (HardwareConfig << 30);
    v7 = *(this + 1);
    TelephonyRadiosGetProduct();
    TelephonyRadiosGetHardwareConfig();
    BBUFeedback::handleComment(v7, "Product Type : %d and Hardware Config: 0x%x in Reserved%lu\n");
    goto LABEL_22;
  }

  if (!*(this + 12))
  {
    goto LABEL_10;
  }

  v2 = *v2;
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v3 | 7) + 1;
    }

    v5 = operator new(v8);
    __dst[1] = v4;
    v17 = v8 | 0x8000000000000000;
    __dst[0] = v5;
  }

  else
  {
    HIBYTE(v17) = v3;
    v5 = __dst;
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  memmove(v5, v2, v4);
LABEL_16:
  *(v5 + v4) = 0;
  v9 = SHIBYTE(v17);
  v10 = __dst[0];
  if (v17 >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  v12 = strtoul(v11, 0, 16);
  if (v9 < 0)
  {
    operator delete(v10);
  }

  LODWORD(v18) = v12;
  BBUFeedback::handleComment(*(this + 1), "Overriding Product Type : %u and Hardware Config: 0x%x in Reserved %zu\n");
LABEL_22:
  if ((KTLEBLReceivePacket() & 1) == 0)
  {
    BBUFeedback::handleComment(*(this + 1), "Failed to receive Start packet from EBL.\n");
    return 3;
  }

  if ((KTLEBLParseStartInfo() & 1) == 0)
  {
    BBUFeedback::handleComment(*(this + 1), "Invalid start packet recieved from EBL.\n");
    return 3;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_26;
    }

LABEL_39:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    HIDWORD(v18) = 1381192786;
    BBUFeedback::handleComment(*(this + 1), "Sending restore mode cookie in Reserved%lu\n", 1);
    goto LABEL_30;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_39;
  }

LABEL_26:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) != 0 || *(this + 82) == 1)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (KTLEBLCreateStartACKPacket())
  {
    v13 = KTLEBLSendPacket();
    v14 = *(this + 1);
    if (v13)
    {
      BBUFeedback::handleComment(v14, "EBL started, continue to image download.");
      return 0;
    }

    BBUFeedback::handleComment(v14, "Failed sending Start ACK packet.\n");
  }

  else
  {
    BBUFeedback::handleComment(*(this + 1), "Failed to create Start ACK packet.\n");
  }

  return 3;
}

uint64_t BBUICE16Programmer::handleEBLReadfile(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v5 = operator new(0x400uLL);
  bzero(v5, 0x400uLL);
  v30 = -1431655766;
  v31 = -1431655766;
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_7))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED948F80, &dword_1E5234000);
    __cxa_guard_release(&_MergedGlobals_7);
  }

  if ((KTLEBLParseReadfileExt() & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "Failed parsing Readfile command.\n");
    v9 = 3;
    goto LABEL_57;
  }

  v6 = strlen(v5);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v6 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v7;
    v29 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v29) = v6;
    p_dst = &__dst;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  memcpy(p_dst, v5, v7);
LABEL_13:
  *(p_dst + v7) = 0;
  v11 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::find<std::string>(a1 + 24, &__dst);
  if (SHIBYTE(v29) < 0)
  {
    v15 = v11;
    operator delete(__dst);
    if (v15)
    {
LABEL_15:
      v12 = strlen(v5);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v12 | 7) + 1;
        }

        v14 = operator new(v16);
        *(&__dst + 1) = v13;
        v29 = v16 | 0x8000000000000000;
        *&__dst = v14;
      }

      else
      {
        HIBYTE(v29) = v12;
        v14 = &__dst;
        if (!v12)
        {
LABEL_26:
          *(v14 + v13) = 0;
          v32 = &__dst;
          v17 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 48, &__dst, &std::piecewise_construct, &v32)[5];
          if (v17)
          {
            if ((SHIBYTE(v29) & 0x80000000) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v18 = 0;
            if ((SHIBYTE(v29) & 0x80000000) == 0)
            {
LABEL_29:
              v19 = v18[2];
              BBUFeedback::handleComment(a1[1], "Loaded file '%s'\n", v5);
              v20 = strlen(v5);
              v21 = v20;
              v22 = byte_1ED948F97;
              if ((byte_1ED948F97 & 0x8000000000000000) != 0)
              {
                if (v20 != -1)
                {
                  v22 = *(&xmmword_1ED948F80 + 1);
                  if (*(&xmmword_1ED948F80 + 1) >= v20)
                  {
                    v24 = v20;
                  }

                  else
                  {
                    v24 = *(&xmmword_1ED948F80 + 1);
                  }

                  if (memcmp(xmmword_1ED948F80, v5, v24))
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_43;
                }
              }

              else if (v20 != -1)
              {
                if (byte_1ED948F97 >= v20)
                {
                  v23 = v20;
                }

                else
                {
                  v23 = byte_1ED948F97;
                }

                if (memcmp(&xmmword_1ED948F80, v5, v23))
                {
                  goto LABEL_44;
                }

LABEL_43:
                if (v22 == v21)
                {
LABEL_56:
                  v9 = (*(*a1 + 19))(a1, v19, v31, v30, a3);
                  goto LABEL_57;
                }

LABEL_44:
                if (v21 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v21 >= 0x17)
                {
                  if ((v21 | 7) == 0x17)
                  {
                    v26 = 25;
                  }

                  else
                  {
                    v26 = (v21 | 7) + 1;
                  }

                  v25 = operator new(v26);
                  *(&__dst + 1) = v21;
                  v29 = v26 | 0x8000000000000000;
                  *&__dst = v25;
                }

                else
                {
                  HIBYTE(v29) = v21;
                  v25 = &__dst;
                  if (!v21)
                  {
                    goto LABEL_53;
                  }
                }

                memcpy(v25, v5, v21);
LABEL_53:
                *(v25 + v21) = 0;
                if (byte_1ED948F97 < 0)
                {
                  operator delete(xmmword_1ED948F80);
                }

                xmmword_1ED948F80 = __dst;
                unk_1ED948F90 = v29;
                goto LABEL_56;
              }

              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          operator delete(__dst);
          goto LABEL_29;
        }
      }

      memcpy(v14, v5, v13);
      goto LABEL_26;
    }
  }

  else if (v11)
  {
    goto LABEL_15;
  }

  BBUFeedback::handleComment(a1[1], "file '%s' not found in item list\n", v5);
  v9 = 15;
LABEL_57:
  operator delete(v5);
  return v9;
}

uint64_t BBUICE16Programmer::handleEBLDone(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 296);
  if (KTLEBLParseDone())
  {
    v4 = *v3;
    if (*v3 == 256)
    {
      if (KTLEBLCreateDoneACKPacket() & 1) != 0 && (KTLEBLSendPacket())
      {
        return 0;
      }

      else
      {
        BBUFeedback::handleComment(*(a1 + 8), "Failed sending Done ACK packet.\n");
        return 3;
      }
    }

    else
    {
      if ((v4 - 257) >= 0x18)
      {
        if (v4 == 281)
        {
          v6 = "ERR BIN";
        }

        else
        {
          v6 = "Unknown";
        }
      }

      else
      {
        v6 = off_1E876EA60[v4 - 257];
      }

      BBUFeedback::handleComment(*(a1 + 8), "Baseband reported failure during image download (%s).\n", v6);
      if (*v3 == 261)
      {
        return 65;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed parsing EBL Done packet.\n");
    return 3;
  }
}

uint64_t BBUICE16Programmer::handleEBLCommand(BBUFeedback **a1, _DWORD *a2, uint64_t a3)
{
  if (KTLEBLReceivePacket())
  {
    if (dword_1ED948F98 == 4)
    {
      result = (*(*a1 + 27))(a1, &dword_1ED948F98);
      if (!result)
      {
        *a2 = 3;
      }
    }

    else if (dword_1ED948F98 == 3)
    {
      v6 = *(*a1 + 26);

      return v6(a1, &dword_1ED948F98, a3);
    }

    else
    {
      BBUFeedback::handleComment(a1[1], "Received invalid EBL packet.");
      return 1;
    }
  }

  else
  {
    BBUFeedback::handleComment(a1[1], "Failed to receive EBL packet.\n");
    return 3;
  }

  return result;
}

uint64_t BBUICE16Programmer::program(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v59 = -1431655766;
  pthread_mutex_lock((a1 + 120));
  *(a1 + 312) = a11;
  v16 = *(a1 + 184);
  if (BBUProgrammer::addItemsFromList(a1, a6))
  {
    BBUFeedback::handleComment(*(a1 + 8), "Error: loading programmer items!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v17 = off_1ED944120;
    if (!off_1ED944120)
    {
      v18 = operator new(0x38uLL);
      v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v20 = dispatch_queue_create("BBUError", v19);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = v20;
      if (v20)
      {
        v21 = v20;
        dispatch_retain(v20);
        v18[3] = 0;
        dispatch_release(v21);
      }

      else
      {
        v18[3] = 0;
      }

      v18[4] = 0;
      v18[5] = 0;
      v18[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v60, v18);
      v28 = *&v60.__r_.__value_.__l.__data_;
      *&v60.__r_.__value_.__l.__data_ = 0uLL;
      v29 = *(&off_1ED944120 + 1);
      off_1ED944120 = v28;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      size = v60.__r_.__value_.__l.__size_;
      if (v60.__r_.__value_.__l.__size_ && !atomic_fetch_add((v60.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v17 = off_1ED944120;
    }

    v31 = *(&off_1ED944120 + 1);
    v57 = v17;
    v58 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x28uLL);
    v56 = xmmword_1E5390C30;
    strcpy(__p, "Error: loading programmer items!");
    v60.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v60.__r_.__value_.__l.__size_ = 0x40000000;
    v60.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v61 = &__block_descriptor_tmp_8;
    v62 = v17;
    p_p = &__p;
    v64 = 66;
    v65 = &v60;
    block = MEMORY[0x1E69E9820];
    v67 = 0x40000000;
    v68 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v69 = &__block_descriptor_tmp_13_0;
    v70 = v17;
    v71 = &v65;
    v32 = *(v17 + 16);
    if (*(v17 + 24))
    {
      dispatch_async_and_wait(v32, &block);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      dispatch_sync(v32, &block);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
LABEL_29:
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v27 = 66;
        goto LABEL_52;
      }
    }

    operator delete(__p);
    goto LABEL_29;
  }

  BBUICE16Programmer::addItemsToHashmap(a1);
  if (a11 == 2)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Booted for coredump, not programming firmware");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v60, v23);
      v33 = *&v60.__r_.__value_.__l.__data_;
      *&v60.__r_.__value_.__l.__data_ = 0uLL;
      v34 = *(&off_1ED944120 + 1);
      off_1ED944120 = v33;
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      v35 = v60.__r_.__value_.__l.__size_;
      if (v60.__r_.__value_.__l.__size_ && !atomic_fetch_add((v60.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      v22 = off_1ED944120;
    }

    v36 = *(&off_1ED944120 + 1);
    v57 = v22;
    v58 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x30uLL);
    v56 = xmmword_1E5393C90;
    strcpy(__p, "Booted for coredump, not programming firmware");
    v60.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v60.__r_.__value_.__l.__size_ = 0x40000000;
    v60.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v61 = &__block_descriptor_tmp_8;
    v62 = v22;
    p_p = &__p;
    v64 = 28;
    v65 = &v60;
    block = MEMORY[0x1E69E9820];
    v67 = 0x40000000;
    v68 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v69 = &__block_descriptor_tmp_13_0;
    v70 = v22;
    v71 = &v65;
    v37 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v37, &block);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
LABEL_48:
        if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        goto LABEL_51;
      }
    }

    else
    {
      dispatch_sync(v37, &block);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    operator delete(__p);
    goto LABEL_48;
  }

  if (a4)
  {
    v27 = (*(*a1 + 224))(a1, a2, v16, a5, 1, a10);
    goto LABEL_52;
  }

  v27 = BBUICE16Programmer::readPSIRunningMode(a1, &v59);
  if (!v27)
  {
    switch(v59)
    {
      case 462:
        BBUFeedback::handleComment(*(a1 + 8), "Running secure mode");
        v27 = (*(*a1 + 176))(a1, a2, v16, 0, 0, a10);
        if (v27)
        {
          BBUFeedback::handleComment(*(a1 + 8), "Failed executing secure mode, failing program\n");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v43 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(&v60);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v60);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v60);
            v43 = off_1ED944120;
          }

          __p = v43;
          *&v56 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v44 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed executing secure mode");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v60, ", failing program\n", v44);
          goto LABEL_89;
        }

        v59 = 56577;
        break;
      case 56577:
        break;
      case 52480:
        BBUFeedback::handleComment(*(a1 + 8), "Coredump detected, not programming firmware");
LABEL_51:
        v27 = 28;
        goto LABEL_52;
      default:
        BBUFeedback::handleComment(*(a1 + 8), "PSI is not running enhanced mode, unsupported firmware\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v45 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(&v60);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v60);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v60);
          v45 = off_1ED944120;
        }

        block = v45;
        v67 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(&v60, "PSI is not running enhanced mode, unsupported firmware\n");
        BBUError::addError(v45, &v60, 9);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
        v27 = 9;
        goto LABEL_52;
    }

    v46 = (a1 + 256);
    if (!std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::find<std::string>((a1 + 192), (a1 + 256)))
    {
      v49 = *(a1 + 8);
      v50 = "EBL (%s) not found in item list!";
      if ((*(a1 + 279) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    v60.__r_.__value_.__r.__words[0] = a1 + 256;
    v47 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), (a1 + 256), &std::piecewise_construct, &v60)[5];
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x34Du, "Assertion failure(eblItem && Error: loading EBL item!)");
    }

    if (*(v48 + 6))
    {
      v49 = *(a1 + 8);
      v50 = "EBL (%s) exists, but  is of invalid type!";
      if ((*(a1 + 279) & 0x80000000) == 0)
      {
LABEL_80:
        BBUFeedback::handleComment(v49, v50, v46);
        v27 = 15;
        goto LABEL_52;
      }

LABEL_79:
      v46 = *v46;
      goto LABEL_80;
    }

    v27 = BBUICE16Programmer::sendEBL(a1, *(v48 + 2));
    if (!v27)
    {
      pthread_mutex_unlock((a1 + 120));
      v27 = (*(*a1 + 144))(a1);
      if (v27)
      {
        BBUFeedback::handleComment(*(a1 + 8), "Failed image download!");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v52 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(&v60);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v60);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v60);
          v52 = off_1ED944120;
        }

        __p = v52;
        *&v56 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v53 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed image download");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v60, "!", v53);
        BBUError::addError(v52, &v60, v27);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v68) < 0)
        {
          operator delete(block);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
      }

      pthread_mutex_lock((a1 + 120));
      goto LABEL_52;
    }

    BBUFeedback::handleComment(*(a1 + 8), "Failed sending EBL!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v43 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(&v60);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v60);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v60);
      v43 = off_1ED944120;
    }

    __p = v43;
    *&v56 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v51 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed sending EBL");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v60, "!", v51);
LABEL_89:
    BBUError::addError(v43, &v60, v27);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(block);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
  }

LABEL_52:
  if (a6)
  {
    if (a6[2])
    {
      v38 = a6[1];
      v39 = *(*a6 + 8);
      v40 = *v38;
      *(v40 + 8) = v39;
      *v39 = v40;
      a6[2] = 0;
      if (v38 != a6)
      {
        do
        {
          v41 = v38[1];
          operator delete(v38);
          v38 = v41;
        }

        while (v41 != a6);
      }
    }

    operator delete(a6);
  }

  pthread_mutex_unlock((a1 + 120));
  return v27;
}

void sub_1E5332150(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  pthread_mutex_unlock((v1 + 120));
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::collectCoreDump(uint64_t a1, uint64_t a2, const char *a3)
{
  v13 = -1431655766;
  v5 = operator new(0x1000uLL);
  bzero(v5, 0x1000uLL);
  v12 = 0;
  v6 = BBUICE16Programmer::readPSIRunningMode(a1, &v13);
  if (!v6)
  {
    if (v13 > 56576)
    {
      if (v13 != 56577 && v13 != 61166)
      {
        goto LABEL_11;
      }
    }

    else if (v13 != 462 && v13 != 52480)
    {
LABEL_11:
      BBUFeedback::handleComment(*(a1 + 8), "PSI is not running supported mode, unsupported firmware\n");
      v6 = 9;
      goto LABEL_21;
    }

    BBUFeedback::handleBeginPhase(*(a1 + 8), "Collecting core dump...");
    started = KTLCDSendStartCoredumpCommand();
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get coredump list\n");
    if (started)
    {
      v6 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v6 = 3;
    }

    if (v8)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Sending 'end coredump' command\n");
      KTLCDSendEndCoredumpCommand();
    }

    v9 = a3;
    if (a3[23] < 0)
    {
      v9 = *a3;
    }

    BBUFeedback::handleComment(*(a1 + 8), "Final coredump at %s", v9);
    if ((a3[23] & 0x8000000000000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 1));
    }

    else
    {
      v11 = *a3;
    }

    ctu::fs::iterate_folder();
    (*(**(a1 + 8) + 16))(*(a1 + 8), v6);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

LABEL_21:
  operator delete(v5);
  return v6;
}

void sub_1E533303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v57 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](a15);
  if (a16)
  {
    operator delete(a16);
    if ((*(v58 - 121) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*(v58 - 121) & 0x80000000) == 0)
  {
LABEL_9:
    if (*(v58 - 97) < 0)
    {
      operator delete(*(v58 - 120));
    }

    if (a30 < 0)
    {
      operator delete(a25);
      operator delete(v56);
      _Unwind_Resume(a1);
    }

    operator delete(v56);
    _Unwind_Resume(a1);
  }

  operator delete(*(v58 - 144));
  goto LABEL_9;
}

void ___ZN18BBUICE16Programmer15collectCoreDumpEP13BBUDataSourceNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v9.st_blksize = v4;
  *v9.st_qspare = v4;
  v9.st_birthtimespec = v4;
  *&v9.st_size = v4;
  v9.st_mtimespec = v4;
  v9.st_ctimespec = v4;
  *&v9.st_uid = v4;
  v9.st_atimespec = v4;
  *&v9.st_dev = v4;
  v5 = (a2 + 21);
  memset(&v8, 170, sizeof(v8));
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v8 = *(a1 + 40);
  }

  ctu::path_join_impl();
  v6 = *(a2 + 20);
  if (v6 == 4)
  {
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  <DIR>", v5);
  }

  else if (v6 == 10 || v6 == 8)
  {
    memset(&v9, 0, sizeof(v9));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v8;
    }

    else
    {
      v7 = v8.__r_.__value_.__r.__words[0];
    }

    stat(v7, &v9);
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  0x%-10llx", v5, v9.st_size);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E5333358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float BBUICE16Programmer::handleCaptureProgress(uint64_t a1, _DWORD *a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *a2;
  v4 = *&a4 * 100.0 / a2[1];
  BBUFeedback::handleComment(*(a1 + 8), "\t%s: ... %0.1f%c", (a3 + 4), v4, 37);
  return result;
}

uint64_t BBUICE16Programmer::saveCoredumpEntry(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v38 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  v33 = v4;
  __p = 0;
  v32 = 0uLL;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = a3;
  if (v7 < 0x17)
  {
    memset(&v30, 0, sizeof(v30));
    v12 = &v30;
    *(&v30.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v12 = operator new(v11);
    v30.__r_.__value_.__l.__size_ = v6 + 1;
    v30.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    v30.__r_.__value_.__r.__words[0] = v12;
    v8 = a3;
  }

  if (v5 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  memmove(v12, v13, v6);
LABEL_15:
  *&v12[v6] = 47;
  v14 = strlen((v8 + 4));
  v15 = std::string::append(&v30, (v8 + 4), v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  v39[0] = v15->__r_.__value_.__l.__size_;
  *(v39 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  __p = v16;
  *&v32 = v39[0];
  *(&v32 + 7) = *(v39 + 7);
  HIBYTE(v32) = v17;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    v17 = HIBYTE(v32);
    v16 = __p;
  }

  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v16;
  }

  v19 = open_dprotected_np(p_p, 1793, 4, 0, 420);
  if ((v19 & 0x80000000) == 0)
  {
    if ((TelephonyUtilTransportCreateWithFD() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v24 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v24 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_48;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(1, 0, "BBUProgrammer", "", "failed creating transport with fd %i\n", v19);
      }

      goto LABEL_48;
    }

    v20 = HIWORD(*v8);
    if (*v8)
    {
      ++v20;
    }

    if (v20 >= 0x14)
    {
      v21 = 20;
    }

    else
    {
      v21 = v20;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1;
    }

    HIDWORD(v30.__r_.__value_.__r.__words[0]) = *v8;
    LODWORD(v30.__r_.__value_.__r.__words[1]) = v22;
    LODWORD(v30.__r_.__value_.__l.__data_) = 0;
    v23 = KTLCDProcessCoredumpEntry();
    if ((v23 & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_35:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            _BBULog(1, 0, "BBUProgrammer", "", "failed getting entry\n");
          }
        }
      }
    }

    v24 = v23 ^ 1u;
LABEL_48:
    close(v19);
    TelephonyUtilTransportFree();
    goto LABEL_49;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v24 = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v24 = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_49;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v25 = SHIBYTE(v32);
    v26 = __p;
    v27 = __error();
    v28 = &__p;
    if (v25 < 0)
    {
      v28 = v26;
    }

    v24 = 1;
    _BBULog(1, 0, "BBUProgrammer", "", "failed opening file %s with fd %i errno %d\n", v28, v19, *v27);
  }

LABEL_49:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  return v24;
}

void sub_1E533387C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16Programmer::gatherPersonalizationParameters(BBUICE16Programmer *this, BOOL a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  v38 = 0;
  v37 = 0;
  v6 = *(this + 1);
  if (a3)
  {
    BBUFeedback::handleBeginPhase(v6, "Gathering Personalization parameters...");
    v8 = BBUICE16Programmer::readPSIRunningMode(this, &v38);
    v9 = v8;
    if (v8 || (v10 = v38, v38 == 462))
    {
      if (!v8)
      {
        v9 = (*(*this + 232))(this, &v37);
        if (!v9)
        {
          v13 = v37;
          v14 = operator new(0x10uLL);
          *v14 = &unk_1F5F06660;
          v14[1] = 0;
          v15 = *MEMORY[0x1E695E480];
          v14[1] = CFDataCreate(*MEMORY[0x1E695E480], v13 + 20, 20);
          v16 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(*(v37 + 1));
          v17 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v37 + 8, 0x60);
          v18 = v37;
          v19 = operator new(0x10uLL);
          *v19 = &unk_1F5F06780;
          v19[1] = 0;
          v19[1] = CFDataCreate(v15, v18 + 40, 32);
          v20 = *(v37 + 1);
          *(this + 46) = v20 - 2;
          BBUFeedback::handleComment(*(this + 1), "Max root packet size from PSI: %u", v20);
          free(v37);
          v21 = *(a5 + 1);
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          *(a5 + 1) = v14;
          v22 = *(a5 + 2);
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          *(a5 + 2) = v16;
          (*(*a5 + 16))(a5, v17);
          (*(*a5 + 24))(a5, v19);
          if (v17 && v16)
          {
            v23 = *(this + 1);
            (*(*v17 + 24))(__p, v17);
            v25 = v36 >= 0 ? __p : __p[0];
            v26 = BBUpdaterCommon::redactedString(v25, v24);
            v27 = (*(*v16 + 24))(v16);
            BBUFeedback::handleComment(v23, "   SNUM: 0x%s / CHIPID: 0x%08x", v26, v27);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v28 = *(this + 1);
          (*(*v14 + 24))(__p, v14);
          if (v36 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          BBUFeedback::handleComment(v28, "   NONCE: %s", v29);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          v30 = *(this + 1);
          (*(*v19 + 24))(__p, v19);
          if (v36 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          BBUFeedback::handleComment(v30, "   PUBLIC_KEY_HASH: %s", v31);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          v32 = *(this + 1);
          v33 = (*(**(a5 + 3) + 24))(*(a5 + 3));
          BBUFeedback::handleComment(v32, "   CertID: %u", v33);
          v9 = 0;
        }
      }
    }

    else
    {
      v11 = *(this + 1);
      v12 = PSIModeDescription();
      BBUFeedback::handleComment(v11, "Unexpected running mode 0x%x (%s), cannot gather personalization params\n", v10, v12);
      v9 = 12;
    }

    (*(**(this + 1) + 16))(*(this + 1), v9);
  }

  else
  {
    BBUFeedback::handleComment(v6, "Not in restore mode - skipping gathering Personalization parameters...");
    return 0;
  }

  return v9;
}

void sub_1E5333D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16Programmer::fetchPersonalizationParameters(uint64_t a1, void *a2)
{
  v3 = operator new(0x4CuLL);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  *(v3 + 60) = 0u;
  if ((KTLPSIFormatEnhancedCommand() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed formatting PSI enhanced command to retrieve personalization info\n");
    v4 = 11;
    goto LABEL_15;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(9, 1, "BBUProgrammer", "", "Sending PSI enhanced command 'Fetch security/personalization info'\n");
  }

LABEL_6:
  if (!KTLPSISendEnhancedCommand())
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed sending PSI command to fetch security info\n");
LABEL_14:
    v4 = 3;
    goto LABEL_15;
  }

  if (!KTLRawReceiveData())
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed receiving personalization parameters from device\n");
    goto LABEL_14;
  }

  if ((KTLParsePSIICEPersonalizionInfo() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed parsing personalization parameters\n");
    goto LABEL_14;
  }

  v4 = 0;
LABEL_15:
  operator delete(v3);
  return v4;
}

uint64_t BBUICE16Programmer::handleICESecurePSIMode(BBUFeedback **a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v33 = 0;
  if (a4)
  {
    return 3;
  }

  result = (*(*a1 + 29))(a1, &v33);
  if (!result)
  {
    v9 = *(v33 + 1);
    BBUFeedback::handleComment(a1[1], "Setting max root packet size from PSI: %u", v9);
    v10 = v33;
    v11 = operator new(0x10uLL);
    *v11 = &unk_1F5F06660;
    v11[1] = 0;
    v12 = *MEMORY[0x1E695E480];
    v11[1] = CFDataCreate(*MEMORY[0x1E695E480], v10 + 20, 20);
    v13 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(*(v33 + 1));
    v14 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v33 + 8, 0x60);
    v15 = v33;
    v16 = operator new(0x10uLL);
    *v16 = &unk_1F5F06780;
    v16[1] = 0;
    v16[1] = CFDataCreate(v12, v15 + 40, 32);
    if (!v14 || !v13)
    {
LABEL_16:
      v23 = a1[1];
      (*(*v11 + 24))(__p, v11);
      if (v32 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      BBUFeedback::handleComment(v23, "   NONCE: %s", v24);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v11 + 8))(v11);
      v25 = a1[1];
      (*(*v16 + 24))(__p, v16);
      if (v32 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      BBUFeedback::handleComment(v25, "   PUBLIC_KEY_HASH: %s", v26);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      a3 = (v9 - 2);
      (*(*v16 + 8))(v16);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      result = 0;
      goto LABEL_31;
    }

    v17 = a1[1];
    (*(*v14 + 24))(__p, v14);
    if (v32 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_11;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_11:
    v19 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
    v20 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    v21 = (*(*v13 + 24))(v13);
    if ((v19 | v20))
    {
      v22 = v18;
    }

    else
    {
      v22 = "<< SNUM >>";
    }

    BBUFeedback::handleComment(v17, "   SNUM: 0x%s / CHIPID: 0x%08x", v22, v21);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_16;
  }

LABEL_31:
  if (v33)
  {
    v27 = result;
    free(v33);
    result = v27;
    v33 = 0;
  }

  if (!result)
  {
    return (*(*a1 + 28))(a1, a2, a3, a5, 0, a6);
  }

  return result;
}

void sub_1E5334398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16Programmer::finishSecurePSIMode(BBUFeedback **a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, _BYTE *a6)
{
  v30 = 0;
  if (a5)
  {
    BBUFeedback::handleComment(a1[1], "Resuming Secure Mode");
  }

  if (a2)
  {
    v11 = (*(*a2 + 24))(a2);
    if (v11 > a3)
    {
      BBUFeedback::handleComment(a1[1], "root manifest size larger than protocol specification %u, size = %u bytes", a3, v11);
      return 12;
    }
  }

  else
  {
    v11 = a3;
  }

  v13 = v11;
  if (v11)
  {
    v14 = operator new(v11);
    bzero(v14, v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = operator new(0x20uLL);
  v28 = (v15 + 32);
  v29 = v15 + 32;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  md = v15;
  if (!a2)
  {
    BBUFeedback::handleComment(a1[1], "No root manifest present\n");
    bzero(v14, v13);
    v17 = v13 + 1024;
    v24 = a6;
    if (v13 != -1024)
    {
      v16 = 1;
      v12 = 3;
LABEL_18:
      v18 = operator new(v17);
      bzero(v18, v17);
      if (!v16)
      {
        goto LABEL_35;
      }

      goto LABEL_23;
    }

LABEL_22:
    v18 = 0;
LABEL_23:
    *v18 = v13;
    memcpy(v18 + 1, v14, v13);
    CC_SHA256(v14, v13, md);
    v19 = KTLRawSendData();
    v20 = a1[1];
    if (v19)
    {
      ctu::hex();
      if (v26 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      BBUFeedback::handleComment(v20, "Sent Manifest with length %u SHA256 Hash %s", v13, v21);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (KTLRawReceiveData())
      {
        v12 = (*(*a1 + 30))(a1, v18, v30, a2, a4);
        if (v12)
        {
          BBUFeedback::handleComment(a1[1], "failed handling hash response\n");
        }

        else
        {
          *v24 = 1;
          LOWORD(__p[0]) = 3777;
          if (KTLRawSendData())
          {
            BBUFeedback::handleComment(a1[1], "finished secure mode\n");
            v12 = 0;
          }

          else
          {
            BBUFeedback::handleComment(a1[1], "failed sending mode end packet\n");
            v12 = 11;
          }
        }

        goto LABEL_35;
      }

      BBUFeedback::handleComment(a1[1], "failed reading hash results\n");
    }

    else
    {
      BBUFeedback::handleComment(v20, "failed sending root manifest data\n");
    }

    v12 = 3;
LABEL_35:
    operator delete(v18);
    goto LABEL_36;
  }

  LODWORD(__p[0]) = 0;
  v12 = (*(*a2 + 16))(a2, v14, v13, __p, 0);
  v16 = v12 == 0;
  if (v12)
  {
    BBUFeedback::handleComment(a1[1], "failed copying root manifest to buffer\n");
  }

  if (LODWORD(__p[0]) != v13)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE16Programmer.cpp", 0x5ADu, "Assertion failure(copied == rootManifestSize && failed copying root manifest to buffer)");
  }

  v17 = v13 + 1024;
  if (v13 != -1024)
  {
    v24 = a6;
    goto LABEL_18;
  }

  if (!v12)
  {
    v24 = a6;
    goto LABEL_22;
  }

LABEL_36:
  if (md)
  {
    v28 = md;
    operator delete(md);
  }

  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_1E5334790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  operator delete(v20);
  if (__p)
  {
    operator delete(__p);
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

std::string *BBUICE16Programmer::getHashVerifiedFiles@<X0>(std::string *this@<X0>, std::string **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[9].__r_.__value_.__r.__words[2];
  data = this[10].__r_.__value_.__l.__data_;
  v4 = &data[-v2];
  if (data != v2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    this = operator new(&data[-v2]);
    *a2 = this;
    a2[1] = this;
    a2[2] = (this + v4);
    v7 = this;
    do
    {
      while ((*(v2 + 23) & 0x80000000) == 0)
      {
        v6 = *v2;
        this->__r_.__value_.__r.__words[2] = *(v2 + 16);
        *&this->__r_.__value_.__l.__data_ = v6;
        ++this;
        v2 += 24;
        v7 = this;
        if (v2 == data)
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(this, *v2, *(v2 + 8));
      v2 += 24;
      this = ++v7;
    }

    while (v2 != data);
LABEL_7:
    a2[1] = this;
  }

  return this;
}

void sub_1E5334934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v10 + 8) = v11;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Programmer::handleHashResponse(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  if (a2 && a3)
  {
    v8 = KTLParsePSIICEHashResponse();
    BBUFeedback::handleComment(*(a1 + 8), "Failed parsing hash response\n");
    v9 = 12;
    v10 = v23;
    if (v8)
    {
      v20 = a5;
      BBUFeedback::handleComment(*(a1 + 8), "Received hash response, %d entries", *(v23 + 1));
      v11 = operator new(0x20uLL);
      BBUICE16HashData::BBUICE16HashData(v11, *(v23 + 1), v23 + 8);
      v12 = v23;
      if (*(v23 + 1))
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = strlen(&v12[v14]);
          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            if ((v15 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v15 | 7) + 1;
            }

            p_dst = operator new(v18);
            *(&__dst + 1) = v16;
            v22 = v18 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v22) = v15;
            p_dst = &__dst;
            if (!v15)
            {
              goto LABEL_18;
            }
          }

          memmove(p_dst, &v12[v14], v16);
LABEL_18:
          *(p_dst + v16) = 0;
          std::vector<std::string>::push_back[abi:ne200100](a1 + 232, &__dst);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__dst);
          }

          ++v13;
          v12 = v23;
          v14 += 96;
        }

        while (v13 < *(v23 + 1));
      }

      if (a4 && v20)
      {
        (*(*v11 + 24))(v11, *(a1 + 8));
        v9 = 12;
        if (((*(*v11 + 16))(v11, *(a1 + 8), v20) & 1) == 0)
        {
          BBUFeedback::handleComment(*(a1 + 8), "root manifest hash data mismatches baseband hash response\n");
          v9 = 33;
        }
      }

      else
      {
        v9 = 12;
      }

      (*(*v11 + 8))(v11);
      v10 = v23;
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Bad arguments:  packet = %p\n", a2);
    return 2;
  }

  return v9;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = (v3 + 24);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

  if (v10)
  {
    if (v10 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = a2;
    v12 = operator new(24 * v10);
    a2 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v12[24 * v7];
  v14 = &v12[24 * v10];
  *v13 = *a2;
  *(v13 + 2) = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v6 = v13 + 24;
  v15 = *a1;
  v16 = *(a1 + 8) - *a1;
  v17 = &v13[-v16];
  memcpy(&v13[-v16], *a1, v16);
  *a1 = v17;
  *(a1 + 8) = v6;
  *(a1 + 16) = v14;
  if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  *(a1 + 8) = v6;
}

void BBUICE16Programmer::ICE16Item::~ICE16Item(void **this)
{
  *this = &unk_1F5F047A8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

{
  *this = &unk_1F5F047A8;
  if (*(this + 55) < 0)
  {
    v2 = this;
    operator delete(this[4]);
    this = v2;
  }

  operator delete(this);
}

void *std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(float *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v5 = a2;
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v42, a2, v8);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v9;
      if (v9 >= v11)
      {
        v13 = v9 % v11;
      }
    }

    else
    {
      v13 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = *(v5 + 23);
        if (v16 >= 0)
        {
          v17 = *(v5 + 23);
        }

        else
        {
          v17 = v5[1];
        }

        if (v16 < 0)
        {
          v5 = *v5;
        }

        if (v12.u32[0] < 2uLL)
        {
          while (1)
          {
            v22 = v15[1];
            if (v22 == v10)
            {
              v23 = *(v15 + 39);
              v24 = v23;
              if ((v23 & 0x80u) != 0)
              {
                v23 = v15[3];
              }

              if (v23 == v17)
              {
                v25 = v24 >= 0 ? (v15 + 2) : v15[2];
                if (!memcmp(v25, v5, v17))
                {
                  return v15;
                }
              }
            }

            else if ((v22 & (v11 - 1)) != v13)
            {
              goto LABEL_43;
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v18 = v15[1];
          if (v18 == v10)
          {
            v19 = *(v15 + 39);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = v15[3];
            }

            if (v19 == v17)
            {
              v21 = v20 >= 0 ? (v15 + 2) : v15[2];
              if (!memcmp(v21, v5, v17))
              {
                return v15;
              }
            }
          }

          else
          {
            if (v18 >= v11)
            {
              v18 %= v11;
            }

            if (v18 != v13)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v15 = operator new(0x30uLL);
  v42[0] = v15;
  v42[1] = a1;
  v42[2] = 1;
  *v15 = 0;
  v15[1] = v10;
  v26 = *a4;
  v27 = **a4;
  v15[4] = *(*a4 + 2);
  *(v15 + 1) = v27;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *v26 = 0;
  v15[5] = 0;
  v28 = (*(a1 + 3) + 1);
  v29 = a1[8];
  if (v11 && (v29 * v11) >= v28)
  {
    v30 = *a1;
    v31 = *(*a1 + 8 * v13);
    if (v31)
    {
LABEL_46:
      *v15 = *v31;
      goto LABEL_47;
    }
  }

  else
  {
    v33 = 1;
    if (v11 >= 3)
    {
      v33 = (v11 & (v11 - 1)) != 0;
    }

    v34 = v33 | (2 * v11);
    v35 = vcvtps_u32_f32(v28 / v29);
    if (v34 <= v35)
    {
      prime = v35;
    }

    else
    {
      prime = v34;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v37 = *(a1 + 2);
    if (prime > *&v37)
    {
      goto LABEL_60;
    }

    if (prime < *&v37)
    {
      v38 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (*&v37 < 3uLL || (v39 = vcnt_s8(v37), v39.i16[0] = vaddlv_u8(v39), v39.u32[0] > 1uLL))
      {
        v38 = std::__next_prime(v38);
      }

      else
      {
        v40 = 1 << -__clz(v38 - 1);
        if (v38 >= 2)
        {
          v38 = v40;
        }
      }

      if (prime <= v38)
      {
        prime = v38;
      }

      if (prime < *&v37)
      {
LABEL_60:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v11 = *(a1 + 1);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v13 = v10 % v11;
        v30 = *a1;
        v31 = *(*a1 + 8 * (v10 % v11));
        if (v31)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = v10;
        v30 = *a1;
        v31 = *(*a1 + 8 * v10);
        if (v31)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v13 = (v11 - 1) & v10;
      v30 = *a1;
      v31 = *(*a1 + 8 * v13);
      if (v31)
      {
        goto LABEL_46;
      }
    }
  }

  *v15 = *(a1 + 2);
  *(a1 + 2) = v15;
  *(v30 + 8 * v13) = a1 + 4;
  if (!*v15)
  {
    goto LABEL_48;
  }

  v41 = *(*v15 + 8);
  if ((v11 & (v11 - 1)) != 0)
  {
    if (v41 >= v11)
    {
      v41 %= v11;
    }

    v31 = (v30 + 8 * v41);
  }

  else
  {
    v31 = (v30 + 8 * (v41 & (v11 - 1)));
  }

LABEL_47:
  *v31 = v15;
LABEL_48:
  ++*(a1 + 3);
  return v15;
}

void sub_1E53351FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v5 = a2;
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v44, a2, v8);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v9;
      if (v9 >= v11)
      {
        v13 = v9 % v11;
      }
    }

    else
    {
      v13 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = *(v5 + 23);
        if (v16 >= 0)
        {
          v17 = *(v5 + 23);
        }

        else
        {
          v17 = v5[1];
        }

        if (v16 < 0)
        {
          v5 = *v5;
        }

        if (v12.u32[0] < 2uLL)
        {
          while (1)
          {
            v22 = v15[1];
            if (v22 == v10)
            {
              v23 = *(v15 + 39);
              v24 = v23;
              if ((v23 & 0x80u) != 0)
              {
                v23 = v15[3];
              }

              if (v23 == v17)
              {
                v25 = v24 >= 0 ? v15 + 2 : v15[2];
                if (!memcmp(v25, v5, v17))
                {
                  return v15;
                }
              }
            }

            else if ((v22 & (v11 - 1)) != v13)
            {
              goto LABEL_43;
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v18 = v15[1];
          if (v18 == v10)
          {
            v19 = *(v15 + 39);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = v15[3];
            }

            if (v19 == v17)
            {
              v21 = v20 >= 0 ? v15 + 2 : v15[2];
              if (!memcmp(v21, v5, v17))
              {
                return v15;
              }
            }
          }

          else
          {
            if (v18 >= v11)
            {
              v18 %= v11;
            }

            if (v18 != v13)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v26 = operator new(0x30uLL);
  v44[0] = v26;
  v44[1] = a1;
  v45 = 0;
  *v26 = 0;
  *(v26 + 1) = v10;
  v27 = *a4;
  if (*(*a4 + 23) < 0)
  {
    v29 = v26;
    std::string::__init_copy_ctor_external((v26 + 16), *v27, *(v27 + 1));
    v26 = v29;
  }

  else
  {
    v28 = *v27;
    *(v26 + 4) = *(v27 + 2);
    *(v26 + 1) = v28;
  }

  *(v26 + 5) = 0;
  LOBYTE(v45) = 1;
  v30 = (*(a1 + 3) + 1);
  v31 = a1[8];
  if (!v11 || (v31 * v11) < v30)
  {
    v35 = 1;
    if (v11 >= 3)
    {
      v35 = (v11 & (v11 - 1)) != 0;
    }

    v36 = v35 | (2 * v11);
    v37 = vcvtps_u32_f32(v30 / v31);
    if (v36 <= v37)
    {
      prime = v37;
    }

    else
    {
      prime = v36;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v39 = *(a1 + 2);
    if (prime > *&v39)
    {
      goto LABEL_62;
    }

    if (prime < *&v39)
    {
      v40 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (*&v39 < 3uLL || (v41 = vcnt_s8(v39), v41.i16[0] = vaddlv_u8(v41), v41.u32[0] > 1uLL))
      {
        v40 = std::__next_prime(v40);
      }

      else
      {
        v42 = 1 << -__clz(v40 - 1);
        if (v40 >= 2)
        {
          v40 = v42;
        }
      }

      if (prime <= v40)
      {
        prime = v40;
      }

      if (prime < *&v39)
      {
LABEL_62:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v11 = *(a1 + 1);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v13 = v10 % v11;
        v32 = *a1;
        v33 = *(*a1 + 8 * (v10 % v11));
        if (v33)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = v10;
        v32 = *a1;
        v33 = *(*a1 + 8 * v10);
        if (v33)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v13 = (v11 - 1) & v10;
      v32 = *a1;
      v33 = *(*a1 + 8 * v13);
      if (v33)
      {
        goto LABEL_49;
      }
    }

LABEL_75:
    v15 = v44[0];
    *v44[0] = *(a1 + 2);
    *(a1 + 2) = v15;
    *(v32 + 8 * v13) = a1 + 4;
    if (*v15)
    {
      v43 = *(*v15 + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v43 >= v11)
        {
          v43 %= v11;
        }

        *(v32 + 8 * v43) = v15;
      }

      else
      {
        *(v32 + 8 * (v43 & (v11 - 1))) = v15;
      }
    }

    goto LABEL_50;
  }

  v32 = *a1;
  v33 = *(*a1 + 8 * v13);
  if (!v33)
  {
    goto LABEL_75;
  }

LABEL_49:
  v15 = v44[0];
  *v44[0] = *v33;
  *v33 = v15;
LABEL_50:
  ++*(a1 + 3);
  return v15;
}

void sub_1E533582C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5335840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BBUProgrammer::Item *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_32()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEDownloadImage::~BBUICEDownloadImage(BBUICEDownloadImage *this)
{
  *this = &unk_1F5F04810;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5F04810;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

uint64_t BBUICEDownloadImage::getWritePayloadData(BBUICEDownloadImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*this + 32))(this) <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 81, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEDownloadImage.cpp", 0x1Du, "Assertion failure(( offset < getWritePayloadLength()) && Error: Chunk size is not sufficient to write payload data of the download image.)");
    goto LABEL_8;
  }

  v10 = -1431655766;
  result = (*(**(this + 5) + 16))(*(this + 5), a2, a3, &v10, *(this + 8) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 81, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEDownloadImage.cpp", 0x20u, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy image payload data to buffer!)");
    goto LABEL_8;
  }

  if (v10 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 81, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEDownloadImage.cpp", 0x21u, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy image payload data to buffer!)");
LABEL_8:
  }

  return result;
}

uint64_t BBUICEDownloadImage::getName(BBUICEDownloadImage *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t BBUICEDownloadImage::getWritePayloadLength(BBUICEDownloadImage *this)
{
  result = *(this + 5);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUICEDownloadImage::generateHash(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 40);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEURLoaderVersion::~BBUEURLoaderVersion(void **this)
{
  *this = &unk_1F5F04878;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5F04878;
  if (*(this + 39) < 0)
  {
    v2 = this;
    operator delete(this[2]);
    this = v2;
  }

  operator delete(this);
}

void BBUEURLoaderVersion::getAsString(BBUEURLoaderVersion *this@<X0>, std::string *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v17 = 0;
  v4 = *(this + 2);
  if (v4 == 2)
  {
    v5 = &__p.__r_.__value_.__s.__data_[3];
    v6 = 3;
    HIBYTE(v17) = 3;
    qmemcpy(__src, "PBL", 3);
  }

  else
  {
    if (v4 != 1)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 75, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/FirmwareVersion/Eureka/BBUEURLoaderVersion.cpp", 0x1Cu, "Assertion failure(false && Unrecognized BBU loader version type!)");
    }

    v5 = &__p.__r_.__value_.__s.__data_[4];
    v6 = 4;
    HIBYTE(v17) = 4;
    LODWORD(__src[0]) = 1279415119;
  }

  memset(&__p, 0, sizeof(__p));
  *(&__p.__r_.__value_.__s + 23) = v6 + 1;
  memcpy(&__p, __src, v6);
  *(&__p | v6) = 45;
  v5[1] = 0;
  v9 = *(this + 2);
  v8 = this + 16;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5335E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUEURLoaderVersion::getAsFilename(BBUEURLoaderVersion *this)
{
  exception = __cxa_allocate_exception(0x210uLL);
  _BBUException::_BBUException(exception, 75, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/FirmwareVersion/Eureka/BBUEURLoaderVersion.cpp", 0x24u, "Assertion failure(false && Unrecognized BBU loader version type!)");
}

uint64_t BBUEURLoaderVersion::parseVersionString(uint64_t a1, const void **__s1)
{
  v2 = __s1;
  __s2[1] = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0x3AAAAAAAAAAAAAALL;
  v33 = 0x4AAAAAAAAAAAAAALL;
  __s2[0] = 0xAAAAAAAA00323651;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAA005F4C4250;
  v4 = *(__s1 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    v6 = memcmp(__s1, __s2, v5);
    if (v5 != 3 || v6 != 0)
    {
      goto LABEL_9;
    }

LABEL_32:
    v16 = (a1 + 16);
    if ((a1 + 16) != v2)
    {
      if (*(a1 + 39) < 0)
      {
        if ((v4 & 0x80000000) == 0)
        {
          v23 = v2;
        }

        else
        {
          v23 = *v2;
        }

        if ((v4 & 0x80000000) == 0)
        {
          v24 = v4;
        }

        else
        {
          v24 = v2[1];
        }

        std::string::__assign_no_alias<false>(v16, v23, v24);
      }

      else if ((v4 & 0x80000000) != 0)
      {
        std::string::__assign_no_alias<true>(v16, *v2, v2[1]);
      }

      else
      {
        v17 = *v2;
        *(a1 + 32) = v2[2];
        *v16 = v17;
      }
    }

    v11 = 0;
    *(a1 + 8) = 1;
    goto LABEL_77;
  }

  if (__s1[1] >= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = __s1[1];
  }

  v14 = memcmp(*__s1, __s2, v13);
  if (v13 == 3 && v14 == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((v4 & 0x80000000) != 0)
  {
    if (v2[1] >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v2[1];
    }

    v19 = memcmp(*v2, __p, v18);
    if (v18 != 4 || v19 != 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v21 = v2[1];
    if ((v4 & 0x80000000) == 0)
    {
      v22 = v4;
    }

    else
    {
      v22 = v2[1];
    }

    if ((v4 & 0x80000000) != 0)
    {
      if (v21 < 4)
      {
        goto LABEL_82;
      }

      v2 = *v2;
      v4 = v21;
    }

    else if (v4 <= 3)
    {
LABEL_82:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v25 = v22 - 4;
    if (v4 - 4 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v4 - 4;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v26 >= 0x17)
    {
      if ((v26 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v26 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v26;
      v31 = v28 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v31) = v26;
      p_dst = &__dst;
      if (!v26)
      {
        LOBYTE(__dst) = 0;
        if ((*(a1 + 39) & 0x80000000) == 0)
        {
LABEL_66:
          *(a1 + 16) = __dst;
          *(a1 + 32) = v31;
          *(a1 + 8) = 2;
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          v11 = 0;
          goto LABEL_77;
        }

LABEL_74:
        operator delete(*(a1 + 16));
        goto LABEL_66;
      }
    }

    memmove(p_dst, v2 + 4, v26);
    *(p_dst + v26) = 0;
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_74;
  }

  if (v4 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v4;
  }

  v9 = memcmp(v2, __p, v8);
  if (v8 == 4 && v9 == 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v11 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v11 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) == 0)
    {
      goto LABEL_77;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(v2 + 23) >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    _BBULog(18, 0, "BBULoaderVersion", "", "Unrecognized string %s\n", v12);
  }

LABEL_77:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__s2[0]);
  }

  return v11;
}

void eUICC::Source::CreateFromZip(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  v5 = v4;
  v6 = a1[1];
  v8 = *a1;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  eUICC::Source::Source(v4, &v8);
  std::shared_ptr<eUICC::Source>::shared_ptr[abi:ne200100]<eUICC::Source,0>(a2, v5);
  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1E53362D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *eUICC::Source::Source(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = *a2;
  v4 = *(a2 + 8);
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[7] = v5;
  v35[8] = v5;
  v35[5] = v5;
  v35[6] = v5;
  v35[3] = v5;
  v35[4] = v5;
  v35[1] = v5;
  v35[2] = v5;
  v35[0] = v5;
  v33 = v5;
  v34 = v5;
  v31 = v5;
  *__p = v5;
  v29 = v5;
  v30 = v5;
  v28 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "==== eUICC Source ====\n", 23);
  BBUZipFile::getFileList(&__dst, *a2);
  for (i = v26; i != &__dst; i = i[1])
  {
    v7 = *(i + 39);
    if (v7 >= 0)
    {
      v8 = (i + 2);
    }

    else
    {
      v8 = i[2];
    }

    if (v7 >= 0)
    {
      v9 = *(i + 39);
    }

    else
    {
      v9 = i[3];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  }

  if (v27)
  {
    v11 = v26;
    v12 = *(__dst + 1);
    v13 = *v26;
    *(v13 + 1) = v12;
    *v12 = v13;
    v27 = 0;
    if (v11 != &__dst)
    {
      do
      {
        v17 = v11[1];
        if (*(v11 + 39) < 0)
        {
          v18 = v11;
          operator delete(v11[2]);
          v11 = v18;
        }

        operator delete(v11);
        v11 = v17;
      }

      while (v17 != &__dst);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "====================\n", 21);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v14 = BYTE8(v34);
    if ((BYTE8(v34) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    v20 = v34;
    if (v34 < *(&v31 + 1))
    {
      *&v34 = *(&v31 + 1);
      v20 = *(&v31 + 1);
    }

    v19 = &v31;
    goto LABEL_25;
  }

  v14 = BYTE8(v34);
  if ((BYTE8(v34) & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v14 & 8) == 0)
  {
    v15 = 0;
    HIBYTE(v27) = 0;
    p_dst = &__dst;
    goto LABEL_34;
  }

  v19 = &v29 + 1;
  v20 = *(&v30 + 1);
LABEL_25:
  v21 = *v19;
  v15 = v20 - *v19;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v15 | 7) + 1;
    }

    p_dst = operator new(v22);
    v26 = v15;
    v27 = v22 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_33;
  }

  HIBYTE(v27) = v20 - *v19;
  p_dst = &__dst;
  if (v15)
  {
LABEL_33:
    memmove(p_dst, v21, v15);
  }

LABEL_34:
  p_dst[v15] = 0;
  v23 = &__dst;
  if (v27 < 0)
  {
    v23 = __dst;
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "%s", v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  *&v28 = *MEMORY[0x1E69E54E8];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v28 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v28 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v29);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v35);
  return a1;
}