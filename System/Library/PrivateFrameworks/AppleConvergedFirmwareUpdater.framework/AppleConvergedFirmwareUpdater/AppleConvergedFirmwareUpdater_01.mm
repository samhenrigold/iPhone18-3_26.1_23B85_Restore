void ACFUFirmware::~ACFUFirmware(ACFUFirmware *this)
{
  *this = &unk_28522EDB0;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
    *(this + 8) = 0;
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(this + 8, *(this + 2));
}

uint64_t ACFUFirmware::getFileSizeByFileName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: This function has not been implemented\n", "ACFUFirmware", "getFileSizeByFileName");
  return 0;
}

CFDataRef ACFUFirmware::hashData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_9:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: no firmware file provided\n", "ACFUFirmware", "hashData");
    return 0;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!a3)
  {
    ACFUFirmware::hashData(a1);
    return 0;
  }

  v5 = *(a1 + 56);
  switch(v5)
  {
    case 2:
      CC_SHA512_Init(&v19);
      break;
    case 1:
      CC_SHA384_Init(&v19);
      break;
    case 0:
      CC_SHA256_Init(&c);
      break;
  }

  v7 = 0;
  do
  {
    if (v3 >= 0x100000)
    {
      v8 = 0x100000;
    }

    else
    {
      v8 = v3;
    }

    v9 = (*(**(a1 + 32) + 8))(md);
    v10 = *md;
    if (!*md)
    {
      v18 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v18, 2, "%s::%s: failed to obtain file data\n", "ACFUFirmware", "hashData");
      return 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      if (v11 == 1)
      {
        DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA384_Update(&v19, DataPtr, v8);
      }

      else if (v11 == 2)
      {
        v12 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA512_Update(&v19, v12, v8);
      }
    }

    else
    {
      v14 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
      CC_SHA256_Update(&c, v14, v8);
    }

    v7 += v8;
    v3 -= v8;
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v10);
    operator delete(v15);
  }

  while (v3);
  v16 = *(a1 + 56);
  if (v16 == 2)
  {
    CC_SHA512_Final(md, &v19);
    return CFDataCreate(*MEMORY[0x277CBECE8], md, 64);
  }

  else if (v16 == 1)
  {
    CC_SHA384_Final(md, &v19);
    return CFDataCreate(*MEMORY[0x277CBECE8], md, 48);
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    CC_SHA256_Final(md, &c);
    return CFDataCreate(*MEMORY[0x277CBECE8], md, 32);
  }
}

CFDataRef ACFUFirmware::hashData(ACFUFirmware *this, CFDataRef theData)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(this + 14);
  switch(v3)
  {
    case 2:
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v14 = CC_SHA512(BytePtr, Length, md);
      if (v14 == md)
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = 64;
        return CFDataCreate(v7, md, v8);
      }

      ACFUFirmware::hashData(v14);
      break;
    case 1:
      v9 = CFDataGetBytePtr(theData);
      v10 = CFDataGetLength(theData);
      v11 = CC_SHA384(v9, v10, md);
      if (v11 == md)
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = 48;
        return CFDataCreate(v7, md, v8);
      }

      ACFUFirmware::hashData(v11);
      break;
    case 0:
      v4 = CFDataGetBytePtr(theData);
      v5 = CFDataGetLength(theData);
      v6 = CC_SHA256(v4, v5, md);
      if (v6 == md)
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = 32;
        return CFDataCreate(v7, md, v8);
      }

      ACFUFirmware::hashData(v6);
      break;
  }

  return 0;
}

BOOL ACFUFirmware::init(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  if (v3 != a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(v3, *a2, a2 + 1);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 40) = Mutable;
  if (!Mutable)
  {
    ACFUFirmware::init(0);
  }

  return Mutable != 0;
}

uint64_t ACFUFirmware::init(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        *(a1 + 56) = *a2;
        if (a1 + 8 != a2 + 24)
        {
          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>((a1 + 8), *(a2 + 24), (a2 + 32));
          v5 = *(a2 + 8);
          v4 = *(a2 + 16);
        }

        *(a1 + 64) = v4;
        *(a1 + 72) = v5;
        AMSupportSafeRetain();
        AMSupportSafeRetain();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(a1 + 40) = Mutable;
        if (Mutable)
        {
          return 1;
        }

        v8 = "%s::%s: Failed to allocate measurements dict\n";
      }

      else
      {
        v8 = "%s::%s: No manifest key specified\n";
      }
    }

    else
    {
      v8 = "%s::%s: No save path specified\n";
    }
  }

  else
  {
    v8 = "%s::%s: invalid tag map parameter\n";
  }

  ACFUFirmware::init(v8);
  return 0;
}

uint64_t ACFUFirmware::measureFW(ACFUFirmware *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == (this + 16))
  {
    return 1;
  }

  while (1)
  {
    if (*(this + 80) != 1)
    {
      v6 = ACFUFirmware::copyFWDataByTag(this, v1[4]);
      if (v6)
      {
        v7 = v6;
        v8 = ACFUFirmware::hashData(this, v6);
        CFRelease(v7);
        if (!v8)
        {
          break;
        }

        goto LABEL_19;
      }

      ACFUCommon::stringFromCFString(&__s, v1[4]);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v19, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_31;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v19 = __s;
LABEL_31:
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        __s = v19;
        LogInstance = ACFULogging::getLogInstance(v11);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        goto LABEL_36;
      }

      v11 = std::string::basic_string[abi:ne200100]<0>(&v19, "UNDEF");
      goto LABEL_31;
    }

    v4 = (*(*this + 40))(this, v1 + 5);
    if (!v4)
    {
      ACFUCommon::stringFromCFString(&__s, v1[4]);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v19, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_25;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v19 = __s;
LABEL_25:
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        __s = v19;
        LogInstance = ACFULogging::getLogInstance(v10);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

LABEL_36:
        ACFULogging::handleMessage(LogInstance, 3, "%s::%s: no fw for tag '%s'\n", "ACFUFirmware", "measureFW", p_s);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        goto LABEL_38;
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(&v19, "UNDEF");
      goto LABEL_25;
    }

    v5 = v4;
    if (*(v1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, v1[5], v1[6]);
    }

    else
    {
      v18 = *(v1 + 5);
    }

    v9 = ACFUFirmware::hashData(this, &v18, v5);
    v8 = v9;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (!v8)
    {
      break;
    }

LABEL_19:
    CFDictionarySetValue(*(this + 5), v1[4], v8);
    CFRelease(v8);
LABEL_38:
    v14 = v1[1];
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
        v15 = v1[2];
        v16 = *v15 == v1;
        v1 = v15;
      }

      while (!v16);
    }

    v1 = v15;
    if (v15 == v2)
    {
      return 1;
    }
  }

  ACFUFirmware::measureFW(v9);
  return 0;
}

void sub_2402BF04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFirmware::setManifest(ACFUFirmware *this, const __CFData *a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
    *(this + 6) = 0;
  }

  AMSupportSafeRetain();
  *(this + 6) = a2;
  v5 = ACFUFirmware::hashData(this, a2);
  LogInstance = ACFULogging::getLogInstance(v5);
  if (v5)
  {
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Manifest digest\n", "ACFUFirmware", "setManifest");
    v8 = ACFULogging::getLogInstance(v7);
    std::string::basic_string[abi:ne200100]<0>(&v16, "ACFUFirmware");
    v9 = std::string::append(&v16, "::");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v17, "setManifest");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19 = v11->__r_.__value_.__r.__words[2];
    v18 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    ACFULogging::handleMessageBinary(v8, &v18, 0, BytePtr, Length, 1);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    CFRelease(v5);
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Digest of manifest failed\n", "ACFUFirmware", "setManifest");
  }

  return v5 != 0;
}

void sub_2402BF208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C9FDA8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::string::operator=((v8 + 5), (v9 + 5));
          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(v5, v16);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(v5, (a2 + 4));
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2402BF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a2, &v7);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (v7[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v3, v5, v7);
  return v7;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_2402BF8D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ACFUFTABFile::ACFUFTABFile(ACFUFTABFile *this)
{
  ACFUFile::ACFUFile(this);
  *v1 = &unk_28522EE20;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = v1 + 48;
  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = v1 + 80;
}

{
  ACFUFile::ACFUFile(this);
  *v1 = &unk_28522EE20;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = v1 + 48;
  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = v1 + 80;
}

void ACFUFTABFile::create(const __CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v18);
    v20 = "%s::%s: function does not support memory optimization flow\n";
LABEL_18:
    LogInstance = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(LogInstance, 2, v20, "ACFUFTABFile", "create");
    v8 = 0;
LABEL_11:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v19 = (*(*v8 + 56))(v8);
    v20 = "%s::%s: failed to open file\n";
    goto LABEL_18;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v22 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v22, 2, "%s::%s: invalid optimization mask\n");
    }

    else
    {
      *(v8 + 16) = a2;
      v14 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v14, 4, "%s::%s: Object initialized!\n");
    }

    goto LABEL_11;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(v23, a3);
  v11 = v23[0];
  v12 = v23[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4, "%s::%s: Didn't find a matching embedded ftab\n", "ACFUFTABFile", "create");
      v24 = v23;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 24;
  }

  v15 = ACFULogging::getLogInstance(v10);
  v16 = v11;
  if (*(v11 + 23) < 0)
  {
    v16 = *v11;
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: Using embedded ftab '%s'\n", "ACFUFTABFile", "create", v16);
  v17 = (**v8)(v8, v11);
  ACFUFTABFile::create(v17, a2, 0xFFFF, a4);
  v24 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::embeddedFTABFilenamesForChipRevision(uint64_t *__return_ptr a1@<X8>, ACFUFTABFile *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (this >= 0x40)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Chip major revision seems unreasonable: %d\n");
  }

  else if ((this & 0xFu) >= 6)
  {
    v9 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v9, 2, "%s::%s: Chip minor revision seems unreasonable: %d\n");
  }

  else
  {
    v3 = (this >> 4) + 97;
    v4 = snprintf(__str, 5uLL, "_%c%cf", v3, this & 0xF | 0x30u);
    v5 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v5, 4, "%s::%s: %s\n", "ACFUFTABFile", "embeddedFTABFilenamesForChipRevision", __str);
    std::string::basic_string[abi:ne200100]<0>(__p, __str);
    std::vector<std::string>::push_back[abi:ne200100](a1, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = snprintf(__str, 5uLL, "_%cxf", v3);
    v7 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v7, 4, "%s::%s: %s\n", "ACFUFTABFile", "embeddedFTABFilenamesForChipRevision", __str);
    std::string::basic_string[abi:ne200100]<0>(__p, __str);
    std::vector<std::string>::push_back[abi:ne200100](a1, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2402BFE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ACFUFTABFile::create(__CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v18);
    v20 = "%s::%s: function does not support memory optimization flow\n";
LABEL_18:
    LogInstance = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(LogInstance, 2, v20, "ACFUFTABFile", "create");
    v8 = 0;
LABEL_11:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v19 = (*(*v8 + 56))(v8);
    v20 = "%s::%s: failed to open file\n";
    goto LABEL_18;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v22 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v22, 2, "%s::%s: invalid optimization mask\n");
    }

    else
    {
      *(v8 + 16) = a2;
      v14 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v14, 4, "%s::%s: Object initialized!\n");
    }

    goto LABEL_11;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(v23, a3);
  v11 = v23[0];
  v12 = v23[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4, "%s::%s: Didn't find a matching embedded ftab\n", "ACFUFTABFile", "create");
      v24 = v23;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 24;
  }

  v15 = ACFULogging::getLogInstance(v10);
  v16 = v11;
  if (*(v11 + 23) < 0)
  {
    v16 = *v11;
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: Using embedded ftab '%s'\n", "ACFUFTABFile", "create", v16);
  v17 = (**v8)(v8, v11);
  ACFUFTABFile::create(v17, a2, 0xFFFF, a4);
  v24 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::create(const __CFString *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_28522EE20;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if (a2 >= 3)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v18);
    v20 = "%s::%s: invalid optimization mask\n";
LABEL_17:
    LogInstance = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(LogInstance, 2, v20, "ACFUFTABFile", "create");
    v8 = 0;
    goto LABEL_10;
  }

  v9 = ACFUFTABFile::init(v8, a1, (a2 == 2));
  if ((v9 & 1) == 0)
  {
    v19 = (*(*v8 + 56))(v8);
    v20 = "%s::%s: failed to open file\n";
    goto LABEL_17;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    *(v8 + 16) = a2;
    v14 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v14, 4, "%s::%s: Object initialized!\n", "ACFUFTABFile", "create");
LABEL_10:
    *a4 = v8;
    return;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(v22, a3);
  v11 = v22[0];
  v12 = v22[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4, "%s::%s: Didn't find a matching embedded ftab\n", "ACFUFTABFile", "create");
      v23 = v22;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 24;
  }

  v15 = ACFULogging::getLogInstance(v10);
  v16 = v11;
  if (*(v11 + 23) < 0)
  {
    v16 = *v11;
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: Using embedded ftab '%s'\n", "ACFUFTABFile", "create", v16);
  v17 = (**v8)(v8, v11);
  ACFUFTABFile::create(v17, a2, 0xFFFF, a4);
  v23 = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::createFromHeader(ACFUFTABFile *this@<X0>, ACFUFile **a2@<X8>)
{
  v4 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v4);
  *v4 = &unk_28522EE20;
  *(v4 + 7) = 0;
  *(v4 + 6) = 0;
  *(v4 + 5) = v4 + 48;
  *(v4 + 16) = 0;
  *(v4 + 11) = 0;
  *(v4 + 10) = 0;
  *(v4 + 9) = v4 + 80;
  *a2 = v4;
  v5 = ACFUFTABFile::initFromHeader(v4, this);
  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Object initialized!\n", "ACFUFTABFile", "createFromHeader");
  }

  else
  {
    *a2 = 0;
    v7 = (*(*v4 + 56))(v4);
    v8 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v8, 2, "%s::%s: failed to initialize\n", "ACFUFTABFile", "createFromHeader");
  }
}

uint64_t ACFUFTABFile::initFromHeader(ACFUFTABFile *this, const __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  RequiredFileSize = ACFUFTABFile::getRequiredFileSize(this, a2);
  LogInstance = ACFULogging::getLogInstance(RequiredFileSize);
  if (!RequiredFileSize)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to compute required size\n", "ACFUFTABFile", "initFromHeader");
    return 0;
  }

  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: required size %llu\n", "ACFUFTABFile", "initFromHeader", RequiredFileSize);
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
  CFDataSetLength(MutableCopy, RequiredFileSize);
  if (!ACFUFile::init(this, MutableCopy))
  {
    v9 = "%s::%s: firmware file failed to initialize\n";
    goto LABEL_14;
  }

  if (!(*(*this + 88))(this))
  {
    v9 = "%s::%s: firmware file is invalid\n";
    goto LABEL_14;
  }

  if (!ACFUFTABFile::initCache(this))
  {
    v9 = "%s::%s: failed to initialize file cache\n";
    goto LABEL_14;
  }

  if (!ACFUFTABFile::isCacheValid(this))
  {
    v9 = "%s::%s: cache is invalid\n";
LABEL_14:
    ACFUFTABFile::initFromHeader(v9);
    v7 = 0;
    if (!MutableCopy)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v7 = 1;
  if (MutableCopy)
  {
LABEL_7:
    CFRelease(MutableCopy);
  }

  return v7;
}

uint64_t ACFUFTABFile::setManifestOnData(ACFUDataContainer **this, CFDataRef theData, __CFData **a3)
{
  v5 = this;
  if (!a3)
  {
    v6 = this[1];
    if (!v6)
    {
      ACFUFTABFile::setManifestOnData(0);
      return 0;
    }

    this = ACFUDataContainer::isOptimized(v6);
    if (this)
    {
      ACFUFTABFile::setManifestOnData(this);
      return 0;
    }
  }

  if (!theData)
  {
    ACFUFTABFile::setManifestOnData(this);
    return 0;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::setManifestOnData(Length);
    return 0;
  }

  if (a3)
  {
    if (!*a3)
    {
      ACFUFTABFile::setManifestOnData(Length);
      return 0;
    }

    isValidFileData = ACFUFTABFile::isValidFileData(v5, *a3, 0);
    if ((isValidFileData & 1) == 0)
    {
      ACFUFTABFile::setManifestOnData(isValidFileData);
      return 0;
    }

    if (*(v5 + 16) != 1)
    {
      v9 = *a3;
      if (*a3)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if (*(v5 + 16) != 1)
  {
    isValidFileData = ACFUDataContainer::getData(*(v5 + 1));
    v9 = isValidFileData;
    if (isValidFileData)
    {
LABEL_11:
      v10 = *(CFDataGetBytePtr(v9) + 10);
      v11 = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(v9);
      if (*(BytePtr + 5))
      {
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "setManifestOnData");
        ACFUFTABFile::removeManifestPadding(v14, v9);
        v15 = *(CFDataGetBytePtr(v9) + 4);
        v28.length = *(CFDataGetBytePtr(v9) + 5);
        v28.location = v15;
        CFDataDeleteBytes(v9, v28);
        *(CFDataGetBytePtr(v9) + 4) = 0;
        *(CFDataGetBytePtr(v9) + 5) = 0;
      }

      v16 = CFDataGetLength(v9);
      v17 = v10 - 1;
      v18 = *&CFDataGetBytePtr(v9)[16 * v17 + 52];
      v19 = CFDataGetBytePtr(v9);
      v20 = ((*(v19 + 4 * v17 + 14) + v18) + 3) & 0x1FFFFFFFCLL;
      v21 = __OFSUB__(v20, v16);
      v22 = v20 - v16;
      if (v22 < 0 != v21)
      {
        ACFUFTABFile::setManifestOnData(v19);
      }

      else
      {
        if (!((v22 < 0) ^ v21 | (v22 == 0)))
        {
          v23 = ACFULogging::getLogInstance(v19);
          ACFULogging::handleMessage(v23, 0, "%s::%s: padding %ld byte(s) at the end of ftab\n", "ACFUFTABFile", "setManifestOnData", v22);
          CFDataIncreaseLength(v9, v22);
        }

        *(CFDataGetBytePtr(v9) + 5) = v11;
        *(CFDataGetBytePtr(v9) + 4) = v20;
        v24 = CFDataGetBytePtr(theData);
        CFDataAppendBytes(v9, v24, v11);
        if (a3)
        {
          v25 = *a3;

          return ACFUFTABFile::isValidFileData(v5, v25, 0);
        }

        if ((*(*v5 + 88))(v5))
        {

          return ACFUFTABFile::isCacheValid(v5);
        }
      }

      return 0;
    }

LABEL_25:
    ACFUFTABFile::setManifestOnData(isValidFileData);
    return 0;
  }

  return ACFUFTABFile::setManifestToTopOnData(v5, theData, 0);
}

uint64_t ACFUFTABFile::isValidFileData(ACFUFTABFile *this, CFDataRef theData, char a3)
{
  v6 = theData;
  if (!theData)
  {
    v8 = (this + 8);
    isOptimized = *(this + 1);
    if (!isOptimized)
    {
      v6 = 0;
      v37 = "%s::%s: no file data?!\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::isOptimized(isOptimized);
    if (isOptimized)
    {
      if (a3)
      {
        v6 = 0;
        v37 = "%s::%s: header only validation unsupported with optimized data\n";
        goto LABEL_69;
      }

      isOptimized = ACFUDataContainer::copyData(*v8, 0, 0x30uLL);
      v6 = isOptimized;
      if (isOptimized)
      {
        isOptimized = CFDataGetBytePtr(isOptimized);
        if (!isOptimized)
        {
LABEL_68:
          v37 = "%s::%s: failed to get byte pointer\n";
          goto LABEL_69;
        }

        v9 = isOptimized;
        isOptimized = ACFUDataContainer::copyData(*v8, (16 * *(isOptimized + 10) + 32), 0x10uLL);
        if (isOptimized)
        {
          v10 = isOptimized;
          BytePtr = CFDataGetBytePtr(isOptimized);
          if (BytePtr)
          {
            v12 = &v9[*(BytePtr + 1) + *(BytePtr + 2)];
            CFRelease(v10);
            v14 = v9;
            goto LABEL_12;
          }

          CFRelease(v10);
          goto LABEL_68;
        }

        v37 = "%s::%s: failed to aquire ftab file header\n";
LABEL_69:
        LogInstance = ACFULogging::getLogInstance(isOptimized);
        ACFULogging::handleMessage(LogInstance, 2, v37, "ACFUFTABFile", "isValidFileData");
        std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](v8, 0);
        goto LABEL_61;
      }

LABEL_64:
      v37 = "%s::%s: failed to copy ftab header\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::copyData(*v8);
    v6 = isOptimized;
    if (!isOptimized)
    {
      goto LABEL_64;
    }
  }

  v9 = CFDataGetBytePtr(v6);
  v14 = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  v12 = &v14[Length];
LABEL_12:
  if ((v12 - v14) <= 0x30)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v16 = (v9 + 40);
  v15 = *(v9 + 10);
  v17 = &v14[16 * v15 + 48];
  if (v17 > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v18 = *(v9 + 5);
  v19 = &v14[*(v9 + 4)];
  if ((a3 & 1) == 0 && &v19[v18] > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if (*(v9 + 4) != 0x62617466736F6B72)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if ((v15 - 192) <= 0xFFFFFF40)
  {
    ACFUFTABFile::isValidFileData((v9 + 40));
    goto LABEL_58;
  }

  if (v18 && v19 < v17)
  {
    ACFUFTABFile::isValidFileData(Length);
LABEL_58:
    v31 = 0;
    if (theData)
    {
      return 0;
    }

    goto LABEL_59;
  }

  cf = v6;
  if (theData)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *&CFDataGetBytePtr(theData)[v20 + 52];
      v23 = CFDataGetBytePtr(theData);
      if ((a3 & 1) == 0)
      {
        v24 = &v14[v22 + *(v23 + v20 + 56)];
        if (v24 > v12 || v24 < v17)
        {
          ACFUFTABFile::isValidFileData(v23);
          goto LABEL_49;
        }
      }

      v26 = CFDataGetBytePtr(theData);
      if (&v14[*(v26 + v20 + 52)] < v17)
      {
        break;
      }

      ++v21;
      v20 += 16;
      if (v21 >= *v16)
      {
        return 1;
      }
    }

    ACFUFTABFile::isValidFileData(v26);
LABEL_49:
    v31 = 0;
LABEL_50:
    v6 = cf;
    if (theData)
    {
      return 0;
    }

LABEL_59:
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
    if (v31)
    {
      CFRelease(v31);
    }

LABEL_61:
    v27 = 0;
    if (!v6)
    {
      return v27;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v29 = 48;
  do
  {
    v30 = ACFUDataContainer::copyData(*(this + 1), v29, 0x10uLL);
    v31 = v30;
    if (!v30)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v32 = CFDataGetBytePtr(v30);
    if (!v32)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v33 = &v14[v32[1]];
    if ((a3 & 1) == 0)
    {
      v34 = &v33[v32[2]];
      if (v34 > v12 || v34 < v17)
      {
        ACFUFTABFile::isValidFileData(v32);
        goto LABEL_50;
      }
    }

    if (v33 < v17)
    {
      ACFUFTABFile::isValidFileData(v32);
      goto LABEL_50;
    }

    CFRelease(v31);
    ++v28;
    v29 = (v29 + 16);
  }

  while (v28 < *v16);
  v27 = 1;
  v6 = cf;
  if (!cf)
  {
    return v27;
  }

LABEL_43:
  CFRelease(v6);
  return v27;
}

uint64_t ACFUFTABFile::setManifestToTopOnData(ACFUFTABFile *this, const __CFData *a2, __CFData **a3)
{
  if (!a3)
  {
    v51 = *(this + 1);
    if (!v51)
    {
      ACFUFTABFile::setManifestToTopOnData(0);
      return 0;
    }

    isOptimized = ACFUDataContainer::isOptimized(v51);
    if (isOptimized)
    {
      ACFUFTABFile::setManifestToTopOnData(isOptimized);
      return 0;
    }

    Data = ACFUDataContainer::getData(*(this + 1));
    v7 = Data;
    if (Data)
    {
      goto LABEL_5;
    }

LABEL_25:
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  if (!*a3)
  {
    ACFUFTABFile::setManifestToTopOnData(this);
    return 0;
  }

  Data = ACFUFTABFile::isValidFileData(this, *a3, 0);
  if ((Data & 1) == 0)
  {
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = *(CFDataGetBytePtr(v7) + 10);
  BytePtr = CFDataGetBytePtr(v7);
  if (*(BytePtr + 5))
  {
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "setManifestToTopOnData");
    v12 = ACFUFTABFile::removeManifestPadding(v11, v7);
    v13 = *(CFDataGetBytePtr(v7) + 4);
    v81.length = *(CFDataGetBytePtr(v7) + 5);
    v81.location = v13;
    CFDataDeleteBytes(v7, v81);
    if (v12 && v8)
    {
      v14 = 52;
      v15 = v8;
      do
      {
        v16 = *(CFDataGetBytePtr(v7) + 5);
        v17 = CFDataGetBytePtr(v7);
        *&v17[v14] -= v16;
        v14 += 16;
        --v15;
      }

      while (v15);
    }

    *(CFDataGetBytePtr(v7) + 4) = 0;
    *(CFDataGetBytePtr(v7) + 5) = 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    return 0;
  }

  v76 = Mutable;
  v19 = a2;
  v78 = this;
  v74 = CFDataGetBytePtr(v7);
  v73 = *(CFDataGetBytePtr(v7) + 13);
  v72 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 52];
  v71 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 56];
  v20 = *(CFDataGetBytePtr(v7) + 13);
  v21 = (v20 + 3) & 0xFFFFFFFC;
  v77 = v8;
  v22 = (v21 - v20);
  v23 = v22 + *(CFDataGetBytePtr(v7) + 13);
  *(CFDataGetBytePtr(v7) + 4) = v23;
  v75 = v19;
  Length = CFDataGetLength(v19);
  v25 = CFDataGetBytePtr(v7);
  *(v25 + 5) = Length;
  v26 = ACFULogging::getLogInstance(v25);
  v27 = *(CFDataGetBytePtr(v7) + 4);
  v28 = CFDataGetBytePtr(v7);
  ACFULogging::handleMessage(v26, 0, "%s::%s: manifestOffset: %u, manifestSize: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v27, *(v28 + 5));
  v29 = *(CFDataGetBytePtr(v7) + 4);
  v30 = CFDataGetBytePtr(v7);
  v31 = (*(v30 + 5) + v29);
  LODWORD(v26) = (v31 + 3) & 0xFFFFFFFC;
  v32 = (v26 - v31);
  v33 = ACFULogging::getLogInstance(v30);
  v65 = v21 - v20;
  v70 = v21;
  v34 = v20;
  ACFULogging::handleMessage(v33, 0, "%s::%s: startOfManifestUnaligned: %ld, startOfManifestAligned: %ld, paddingBeforeManifestStart: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v20, (v20 + 3) & 0x1FFFFFFFCLL, v65);
  v36 = ACFULogging::getLogInstance(v35);
  v66 = v26 - v31;
  v69 = v26;
  v37 = v31;
  ACFULogging::handleMessage(v36, 0, "%s::%s: endOfManifestUnaligned: %ld, endOfManifestAligned: %ld, paddingAfterManifestEnd: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v31, (v31 + 3) & 0x1FFFFFFFCLL, v66);
  v67 = v32;
  v68 = v22;
  if (v77)
  {
    v38 = 0;
    v39 = v32 + v22;
    v40 = 16 * v77;
    while (1)
    {
      v41 = *(CFDataGetBytePtr(v7) + 5);
      v42 = CFDataGetBytePtr(v7);
      *&v42[v38 + 52] += v39 + v41;
      if (!a3)
      {
        v43 = CFDataGetBytePtr(v7);
        v80 = 4;
        LODWORD(v79) = *&v43[v38 + 48];
        BYTE4(v79) = 0;
        v44 = CFDataGetBytePtr(v7);
        updated = ACFUFTABFile::updateCache(v78, &v79, *&v44[v38 + 52], 0);
        v46 = updated;
        if ((updated & 1) == 0)
        {
          v47 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v47, 2, "%s::%s: failed to update cache\n", "ACFUFTABFile", "setManifestToTopOnData");
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        if (!v46)
        {
          break;
        }
      }

      v38 += 16;
      if (v40 == v38)
      {
        v48 = v78;
        v50 = v75;
        v49 = v76;
        goto LABEL_27;
      }
    }

    v63 = 0;
    v49 = v76;
    goto LABEL_46;
  }

  v40 = 0;
  v48 = this;
  v50 = v75;
  v49 = v76;
LABEL_27:
  v53 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v53, 48);
  v54 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v54 + 48, v40);
  if (v70 != v34)
  {
    v56 = ACFULogging::getLogInstance(v55);
    ACFULogging::handleMessage(v56, 0, "%s::%s: paddingBeforeManifestStart %u bytes\n", "ACFUFTABFile", "setManifestToTopOnData", v68);
    CFDataIncreaseLength(v49, v68);
  }

  v57 = CFDataGetBytePtr(v50);
  v58 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v57, *(v58 + 5));
  if (v69 != v37)
  {
    v60 = ACFULogging::getLogInstance(v59);
    ACFULogging::handleMessage(v60, 0, "%s::%s: paddingAfterManifestEnd %u bytes\n", "ACFUFTABFile", "setManifestToTopOnData", v67);
    CFDataIncreaseLength(v49, v67);
  }

  CFDataAppendBytes(v49, &v74[v73], v72 - v73 + v71);
  if (!a3)
  {
    if (ACFUDataContainer::setData(v48[1], v49) && ((*v48)[11])(v48))
    {
      isCacheValid = ACFUFTABFile::isCacheValid(v48);
      goto LABEL_36;
    }

LABEL_45:
    v63 = 0;
    goto LABEL_46;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v61 = AMSupportSafeRetain();
  *a3 = v61;
  if (!v61)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    goto LABEL_45;
  }

  isCacheValid = ACFUFTABFile::isValidFileData(v48, v61, 0);
LABEL_36:
  v63 = isCacheValid;
LABEL_46:
  CFRelease(v49);
  return v63;
}

void sub_2402C1428(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeManifestPadding(ACFUFTABFile *this, CFDataRef theData)
{
  if (!theData)
  {
    ACFUFTABFile::removeManifestPadding(this);
    return 0;
  }

  v3 = *(CFDataGetBytePtr(theData) + 5);
  BytePtr = CFDataGetBytePtr(theData);
  if (!v3)
  {
    ACFUFTABFile::removeManifestPadding(BytePtr);
    return 0;
  }

  v5 = *(BytePtr + 4);
  if (v5 >= *(CFDataGetBytePtr(theData) + 13))
  {
    v15 = *(CFDataGetBytePtr(theData) + 10) - 1;
    v16 = *&CFDataGetBytePtr(theData)[16 * v15 + 52];
    v17 = CFDataGetBytePtr(theData);
    v18 = (*(v17 + 4 * v15 + 14) + v16);
    LogInstance = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest at the end - startOfManifest: %u, endOfFiles: %u, padding: %u\n", "ACFUFTABFile", "removeManifestPadding", v5, v18, v5 - v18);
    v22.location = v18;
    v22.length = v5 - v18;
    CFDataDeleteBytes(theData, v22);
    v20 = CFDataGetBytePtr(theData);
    result = 0;
    *(v20 + 4) = v18;
  }

  else
  {
    v6 = v5 + v3;
    v7 = CFDataGetBytePtr(theData);
    v8 = *(v7 + 13);
    v9 = v8 - v6;
    v10 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v10, 0, "%s::%s: manifest is at top - endOfManifest: %u, startOfFiles: %u, paddingAfterManifestEnd: %u\n", "ACFUFTABFile", "removeManifestPadding", v6, v8, v8 - v6);
    v21.location = (*(CFDataGetBytePtr(theData) + 4) + v3);
    v21.length = (v8 - v6);
    CFDataDeleteBytes(theData, v21);
    if (*(CFDataGetBytePtr(theData) + 10))
    {
      v11 = 0;
      v12 = 52;
      do
      {
        v13 = CFDataGetBytePtr(theData);
        *&v13[v12] -= v9;
        ++v11;
        v12 += 16;
      }

      while (v11 < *(CFDataGetBytePtr(theData) + 10));
    }

    return 1;
  }

  return result;
}

BOOL ACFUFTABFile::isCacheValid(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v3 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v3)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    ACFUFTABFile::isCacheValid(0);
    v8 = 0;
    goto LABEL_25;
  }

  v6 = *(BytePtr + 10);
  CFRelease(v4);
  if (*(this + 7) != v6)
  {
    ACFUFTABFile::isCacheValid(v7);
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 0;
  v20 = v6;
  v9 = 48;
  v10 = 1;
  do
  {
    v11 = ACFUDataContainer::copyData(*(this + 1), v9, 0x10uLL);
    if (!v11)
    {
      ACFUFTABFile::isCacheValid(0);
      return 0;
    }

    v4 = v11;
    v12 = CFDataGetBytePtr(v11);
    v22 = 4;
    LODWORD(__p[0]) = *v12;
    BYTE4(__p[0]) = 0;
    v13 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(this + 40, __p);
    if ((this + 48) == v13)
    {
      LogInstance = ACFULogging::getLogInstance(v13);
      if (v22 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: cache does not have entry for file %s. Cache is invalid\n", "ACFUFTABFile", "isCacheValid", v16);
    }

    else if (*(v13 + 15) == *(v12 + 1))
    {
      if (*(v13 + 14) == *(v12 + 2))
      {
        CFRelease(v4);
        v4 = 0;
        v14 = 1;
        goto LABEL_12;
      }

      v18 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v18, 2, "%s::%s: cache does not hold correct size for file %s. Cache size: %d. FTAB size: %d. Cache is invalid\n");
    }

    else
    {
      v17 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v17, 2, "%s::%s: cache does not hold correct offset for file %s. Cache offset: %d. FTAB offset: %d. Cache is invalid\n");
    }

    v14 = 0;
LABEL_12:
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v14 & 1) == 0)
    {
      break;
    }

    v8 = v10 >= v20;
    v9 = (v9 + 16);
    ++v10;
    LODWORD(v6) = v6 - 1;
  }

  while (v6);
  if (!v4)
  {
    return v8;
  }

LABEL_25:
  CFRelease(v4);
  return v8;
}

void sub_2402C1864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateCache(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
  v9 = (a2 + 23);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 != 4)
  {
    ACFUFTABFile::updateCache(v9);
    return 0;
  }

  v11 = a1 + 48;
  if (!(a4 | a3))
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v11 == v8)
    {
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: attempting to delete file from cache that does not exist. File: %s\n", "ACFUFTABFile", "updateCache", v17);
    }

    else
    {
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: removing file from FTAB cache. File: %s\n", "ACFUFTABFile", "updateCache", v17);
      std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>((a1 + 40), a2);
    }

    return 1;
  }

  if (v11 == v8)
  {
    v18 = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (a3 && a4)
    {
      ACFULogging::handleMessage(v18, 4, "%s::%s: Adding new file to FTAB cache. File: %s, offset: %u, size: %u\n", "ACFUFTABFile", "updateCache", v19, a3, a4);
      v22 = a2;
      *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v22, &v21) + 15) = a3;
      v22 = a2;
      v14 = (a1 + 40);
      v15 = a2;
      goto LABEL_24;
    }

    ACFULogging::handleMessage(v18, 2, "%s::%s: attempting to add new file to cache, but not both size and offset are provided. File: %s\n", "ACFUFTABFile", "updateCache", v19);
    return 0;
  }

  v12 = ACFULogging::getLogInstance(v9);
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  ACFULogging::handleMessage(v12, 4, "%s::%s: ftab cache entry updated. File: %s, offset: %u, size: %u\n", "ACFUFTABFile", "updateCache", v13, a3, a4);
  if (a3)
  {
    v22 = a2;
    *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v22, &v21) + 15) = a3;
  }

  if (!a4)
  {
    return 1;
  }

  v22 = a2;
  v14 = (a1 + 40);
  v15 = a2;
LABEL_24:
  *(std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v14, v15, &std::piecewise_construct, &v22, &v21) + 14) = a4;
  return 1;
}

void ACFUFTABFile::copyManifest(ACFUFTABFile *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ACFUFTABFile::copyManifest(0);
LABEL_13:
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
  if (!v5)
  {
    ACFUFTABFile::copyManifest(0);
    goto LABEL_13;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  if (!BytePtr)
  {
    v11 = 1;
    v12 = "%s::%s: failed to copy ftab header\n";
    goto LABEL_16;
  }

  v8 = BytePtr[5];
  if (!v8 || (v9 = BytePtr[4], !v9))
  {
    v11 = 1001;
    v12 = "%s::%s: no manifest found in ftab\n";
LABEL_16:
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 2, v12, "ACFUFTABFile", "copyManifest");
    v10 = 0;
    goto LABEL_8;
  }

  BytePtr = ACFUDataContainer::copyData(*(this + 1), v9, v8);
  if (!BytePtr)
  {
    v11 = 4000;
    v12 = "%s::%s: failed to create manifest data output\n";
    goto LABEL_16;
  }

  v10 = BytePtr;
  v11 = 0;
LABEL_8:
  CFRelease(v6);
LABEL_9:
  *a2 = v10;
  *(a2 + 8) = v11;
}

void ACFUFTABFile::copyManifestRef(ACFUFTABFile *this@<X0>, ACFUDataContainer::DirectDataRef **a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
    v6 = v5;
    if (v5)
    {
      BytePtr = CFDataGetBytePtr(v5);
      if (BytePtr)
      {
        v8 = *(BytePtr + 5);
        if (v8 && (v9 = *(BytePtr + 4)) != 0)
        {
          ACFUDataContainer::copyDirectData(*(this + 1), v8, v9, &v18);
          v10 = v18;
          v18 = 0;
          std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a2, v10);
          v11 = v18;
          v18 = 0;
          if (v11)
          {
            ACFUDataContainer::DirectDataRef::~DirectDataRef(v11);
            operator delete(v12);
          }

          if (!*a2)
          {
            LogInstance = ACFULogging::getLogInstance(v11);
            ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create manifest data output\n");
          }
        }

        else
        {
          v13 = ACFULogging::getLogInstance(BytePtr);
          ACFULogging::handleMessage(v13, 2, "%s::%s: no manifest found in ftab\n");
        }
      }

      else
      {
        v16 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v16, 2, "%s::%s: failed to copy ftab header\n");
      }

      CFRelease(v6);
    }

    else
    {
      v15 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v15, 2, "%s::%s: failed to copy ftab header\n");
    }
  }

  else
  {
    v14 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v14, 2, "%s::%s: file data was invalid\n");
  }
}

uint64_t ACFUFTABFile::setBootNonce(ACFUFTABFile *this, uint64_t a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setBootNonce(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        BytePtr = CFDataGetBytePtr(Data);
        *(BytePtr + 1) = a2;
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Boot nonce set for FTAB. Boot nonce value: %llu\n", "ACFUFTABFile", "setBootNonce", a2);
        return 1;
      }

      ACFUFTABFile::setBootNonce(0);
    }
  }

  else
  {
    ACFUFTABFile::setBootNonce(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::getBootNonce(ACFUFTABFile *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v2 = ACFUDataContainer::copyData(v1, 0, 0x30uLL);
  if (!v2)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  if (BytePtr)
  {
    v5 = *(BytePtr + 1);
  }

  else
  {
    ACFUFTABFile::getBootNonce(0);
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t ACFUFTABFile::addNewFileToFTABOnData(ACFULogging *a1, char *a2, CFDataRef theData, CFDataRef *a4)
{
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  if (!theData)
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::addNewFileToFTABOnData(Length);
    goto LABEL_88;
  }

  v9 = a2[23];
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 1);
  }

  if (v9 != 4)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  v10 = (*(*v7 + 16))(v7, a2);
  if (v10)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  if (a4)
  {
    if (*a4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *a4, 0);
      if (isValidFileData)
      {
        v12 = *a4;
        if (*a4)
        {
          goto LABEL_13;
        }

LABEL_62:
        ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
        v59 = 0;
        Mutable = 0;
        goto LABEL_90;
      }

      ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
    }

    else
    {
      ACFUFTABFile::addNewFileToFTABOnData(v10);
    }

LABEL_88:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    if (!std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(v7 + 72, a2))
    {
      v34 = AMSupportSafeRetain();
      __p[0] = a2;
      std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, __p, __dst)[7] = v34;
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  isValidFileData = ACFUDataContainer::getData(*(v7 + 8));
  v12 = isValidFileData;
  if (!isValidFileData)
  {
    goto LABEL_62;
  }

LABEL_13:
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
LABEL_81:
    v59 = 0;
    goto LABEL_90;
  }

  BytePtr = CFDataGetBytePtr(v12);
  v72 = &BytePtr[*(CFDataGetBytePtr(v12) + 13)];
  v16 = CFDataGetBytePtr(v12);
  v17 = &BytePtr[*&v16[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52]];
  v18 = CFDataGetBytePtr(v12);
  v71 = &v17[*&v18[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  CFDataGetBytePtr(v12);
  v19 = a2[23];
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = a2[23];
  }

  else
  {
    v21 = *(a2 + 1);
  }

  strncpy(__dst, v20, v21);
  v68 = theData;
  v77 = CFDataGetLength(theData);
  v78 = 0;
  v22 = CFDataGetBytePtr(v12);
  theDataa = Mutable;
  v67 = a2;
  if (!*(v22 + 5))
  {
    v69 = 0;
    v25 = 0;
    LODWORD(v27) = 0;
    goto LABEL_29;
  }

  LogInstance = ACFULogging::getLogInstance(v22);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "addNewFileToFTABOnData");
  v25 = ACFUFTABFile::removeManifestPadding(v24, v12);
  v26 = *(CFDataGetBytePtr(v12) + 4);
  v27 = *(CFDataGetBytePtr(v12) + 5);
  v28 = CFDataGetBytePtr(v12);
  v29 = CFDataCreate(v13, &BytePtr[v26], *(v28 + 5));
  if (!v29)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
    goto LABEL_81;
  }

  v69 = v29;
  v30 = *(CFDataGetBytePtr(v12) + 4);
  v79.length = *(CFDataGetBytePtr(v12) + 5);
  v79.location = v30;
  CFDataDeleteBytes(v12, v79);
  if (v25)
  {
    v72 = &BytePtr[*(CFDataGetBytePtr(v12) + 13) - v27];
    v31 = CFDataGetBytePtr(v12);
    v32 = *&v31[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v33 = CFDataGetBytePtr(v12);
    v71 = &BytePtr[v32 - v27 + *&v33[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  }

  *(CFDataGetBytePtr(v12) + 5) = 0;
  *(CFDataGetBytePtr(v12) + 4) = 0;
LABEL_29:
  if (!*(CFDataGetBytePtr(v12) + 10))
  {
LABEL_48:
    v50 = CFDataGetBytePtr(v12);
    v51 = *&v50[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v52 = CFDataGetBytePtr(v12);
    v76 = *&v52[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56] + v51;
    v53 = CFDataGetBytePtr(v12);
    ++*(v53 + 10);
    v54 = CFDataGetBytePtr(v12);
    Mutable = theDataa;
    CFDataAppendBytes(theDataa, v54, 48);
    v55 = CFDataGetBytePtr(v12);
    v56 = CFDataGetBytePtr(v12);
    CFDataAppendBytes(theDataa, v55 + 48, 16 * (*(v56 + 10) - 1));
    CFDataAppendBytes(theDataa, __dst, 16);
    CFDataAppendBytes(theDataa, v72, v71 - v72);
    v57 = CFDataGetBytePtr(v68);
    v58 = CFDataGetLength(v68);
    CFDataAppendBytes(theDataa, v57, v58);
    if (a4)
    {
      v59 = v69;
      if (*a4)
      {
        CFRelease(*a4);
        *a4 = 0;
      }

      v60 = AMSupportSafeRetain();
      *a4 = v60;
      if (!v60)
      {
        ACFUFTABFile::addNewFileToFTABOnData(0);
        goto LABEL_90;
      }

      if (!v69)
      {
        v62 = v60;
        goto LABEL_66;
      }

      v61 = ACFUFTABFile::setManifestOnData(v7, v69, a4);
      if (v61)
      {
        v62 = *a4;
LABEL_66:
        isCacheValid = ACFUFTABFile::isValidFileData(v7, v62, 0);
        goto LABEL_67;
      }
    }

    else
    {
      v63 = ACFUDataContainer::setData(*(v7 + 8), theDataa);
      v59 = v69;
      if ((v63 & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(v63);
        goto LABEL_90;
      }

      updated = ACFUFTABFile::updateCache(v7, v67, v76, v77);
      if ((updated & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(updated);
        goto LABEL_90;
      }

      if (!v69 || (v61 = ACFUFTABFile::setManifestOnData(v7, v69, 0), (v61 & 1) != 0))
      {
        if ((*(*v7 + 88))(v7))
        {
          isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_67:
          LOBYTE(v7) = isCacheValid;
          goto LABEL_68;
        }

LABEL_90:
        LOBYTE(v7) = 0;
        if (!Mutable)
        {
LABEL_69:
          if (v59)
          {
            CFRelease(v59);
          }

          return v7 & 1;
        }

LABEL_68:
        CFRelease(Mutable);
        goto LABEL_69;
      }
    }

    ACFUFTABFile::addNewFileToFTABOnData(v61);
    goto LABEL_90;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = CFDataGetBytePtr(v12);
    *&v37[v35 + 52] += 16;
    if (!a4)
    {
      v38 = CFDataGetBytePtr(v12);
      v74 = 4;
      LODWORD(__p[0]) = *&v38[v35 + 48];
      BYTE4(__p[0]) = 0;
      v39 = CFDataGetBytePtr(v12);
      v40 = ACFUFTABFile::updateCache(v7, __p, *&v39[v35 + 52], 0);
      v41 = v40;
      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v48 = ACFULogging::getLogInstance(v40);
        ACFULogging::handleMessage(v48, 2, "%s::%s: failed to update cache\n", "ACFUFTABFile", "addNewFileToFTABOnData");
        v42 = 4;
      }

      if (v74 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v41)
      {
        break;
      }
    }

    if (v25)
    {
      v43 = CFDataGetBytePtr(v12);
      *&v43[v35 + 52] -= v27;
      if (!a4)
      {
        v44 = CFDataGetBytePtr(v12);
        v74 = 4;
        LODWORD(__p[0]) = *&v44[v35 + 48];
        BYTE4(__p[0]) = 0;
        v45 = CFDataGetBytePtr(v12);
        v46 = ACFUFTABFile::updateCache(v7, __p, *&v45[v35 + 52], 0);
        v47 = v46;
        if (v46)
        {
          v42 = 0;
        }

        else
        {
          v49 = ACFULogging::getLogInstance(v46);
          ACFULogging::handleMessage(v49, 2, "%s::%s: failed to update cache\n", "ACFUFTABFile", "addNewFileToFTABOnData");
          v42 = 4;
        }

        if (v74 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v47)
        {
          break;
        }
      }
    }

    ++v36;
    v35 += 16;
    if (v36 >= *(CFDataGetBytePtr(v12) + 10))
    {
      goto LABEL_48;
    }
  }

  if ((v42 | 4) == 4)
  {
    LOBYTE(v7) = 0;
    v59 = v69;
    Mutable = theDataa;
    goto LABEL_68;
  }

  return v7 & 1;
}

void sub_2402C25EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateFileInFTABOnData(ACFULogging *a1, unint64_t *a2, CFDataRef theData, CFDataRef *a4)
{
  v4 = a4;
  v5 = theData;
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_32;
  }

  if (!theData)
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_32;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::updateFileInFTABOnData(Length);
    goto LABEL_32;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2[1];
  }

  if (v9 != 4)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_32;
  }

  theDataa = v5;
  if (v4)
  {
    if (*v4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *v4, 0);
      if (isValidFileData)
      {
        v11 = *v4;
        BytePtr = CFDataGetBytePtr(*v4);
        if (BytePtr)
        {
          v13 = BytePtr[10];
          if (v13)
          {
            v14 = 0;
            v15 = 16 * v13;
            do
            {
              v16 = CFDataGetBytePtr(v11);
              v109 = 4;
              LODWORD(range.length) = *&v16[v14 + 48];
              BYTE4(range.length) = 0;
              v17 = *(a2 + 23);
              if (v17 >= 0)
              {
                v18 = *(a2 + 23);
              }

              else
              {
                v18 = a2[1];
              }

              if (v17 >= 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = *a2;
              }

              if (v18 >= 4)
              {
                v20 = 4;
              }

              else
              {
                v20 = v18;
              }

              v21 = memcmp(v19, &range.length, v20);
              if (v18 == 4 && v21 == 0)
              {
                v30 = *&CFDataGetBytePtr(v11)[v14 + 56];
                v31 = *&CFDataGetBytePtr(v11)[v14 + 52];
                v5 = theDataa;
                goto LABEL_42;
              }

              v14 += 16;
            }

            while (v15 != v14);
            LogInstance = ACFULogging::getLogInstance(v21);
            if (*(a2 + 23) >= 0)
            {
              v24 = a2;
            }

            else
            {
              v24 = *a2;
            }

            ACFULogging::handleMessage(LogInstance, 2, "%s::%s: cannot update tag '%s' because it does not exist\n", "ACFUFTABFile", "updateFileInFTABOnData", v24);
          }

          else
          {
            ACFUFTABFile::updateFileInFTABOnData(BytePtr);
          }
        }

        else
        {
          ACFUFTABFile::updateFileInFTABOnData(0);
        }
      }

      else
      {
        ACFUFTABFile::updateFileInFTABOnData(isValidFileData);
      }
    }

    else
    {
      ACFUFTABFile::updateFileInFTABOnData(Length);
    }

    goto LABEL_32;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    v26 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 72, a2);
    if (v7 + 80 != v26)
    {
      v27 = v26;
      v28 = *(v26 + 56);
      if (v28)
      {
        CFRelease(v28);
        *(v27 + 56) = 0;
      }
    }

    v29 = AMSupportSafeRetain();
    range.length = a2;
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, &range.length, &v110)[7] = v29;
    v25 = 1;
    return v25 & 1;
  }

  Data = ACFUDataContainer::getData(*(v7 + 8));
  if (!Data)
  {
    ACFUFTABFile::updateFileInFTABOnData(0);
    goto LABEL_32;
  }

  v11 = Data;
  if (((*(*v7 + 16))(v7, a2) & 1) == 0)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_32;
  }

  v33 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 40, a2);
  v30 = *(v33 + 56);
  v31 = *(v33 + 60);
LABEL_42:
  v34 = v30;
  if (CFDataGetLength(v5) != v30)
  {
    v38 = CFDataGetBytePtr(v11);
    CFDataGetBytePtr(v11);
    v39 = CFDataGetBytePtr(v11);
    if (*(v39 + 5))
    {
      v40 = ACFULogging::getLogInstance(v39);
      ACFULogging::handleMessage(v40, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "updateFileInFTABOnData");
      LODWORD(range.location) = ACFUFTABFile::removeManifestPadding(v41, v11);
      v42 = *(CFDataGetBytePtr(v11) + 4);
      v43 = *MEMORY[0x277CBECE8];
      v44 = CFDataGetBytePtr(v11);
      v105 = CFDataCreate(v43, &v38[v42], *(v44 + 5));
      if (!v105)
      {
        ACFUFTABFile::updateFileInFTABOnData(0);
        goto LABEL_32;
      }

      v45 = *(CFDataGetBytePtr(v11) + 4);
      v113.length = *(CFDataGetBytePtr(v11) + 5);
      v113.location = v45;
      CFDataDeleteBytes(v11, v113);
      if (LODWORD(range.location) && *(CFDataGetBytePtr(v11) + 10))
      {
        v46 = 0;
        v47 = 52;
        do
        {
          v48 = *(CFDataGetBytePtr(v11) + 5);
          v49 = CFDataGetBytePtr(v11);
          *&v49[v47] -= v48;
          ++v46;
          v47 += 16;
        }

        while (v46 < *(CFDataGetBytePtr(v11) + 10));
      }

      *(CFDataGetBytePtr(v11) + 5) = 0;
      *(CFDataGetBytePtr(v11) + 4) = 0;
      v5 = theDataa;
    }

    else
    {
      v105 = 0;
    }

    if (*(CFDataGetBytePtr(v11) + 10))
    {
      v50 = 0;
      v51 = 48;
      do
      {
        v52 = CFDataGetBytePtr(v11);
        v109 = 4;
        LODWORD(range.length) = *&v52[v51];
        v53 = *(a2 + 23);
        v54 = v53;
        if ((v53 & 0x80u) != 0)
        {
          v53 = a2[1];
        }

        if (v53 == 4)
        {
          v55 = v54 >= 0 ? a2 : *a2;
          if (*v55 == LODWORD(range.length))
          {
            break;
          }
        }

        ++v50;
        v51 += 16;
      }

      while (v50 < *(CFDataGetBytePtr(v11) + 10));
      v5 = theDataa;
    }

    else
    {
      LODWORD(v50) = 0;
    }

    v56 = CFDataGetLength(v5);
    v57 = CFDataGetLength(v5);
    if (v56 >= v34)
    {
      v106 = (v57 - v34);
      CFDataIncreaseLength(v11, v106);
      v68 = *(CFDataGetBytePtr(v11) + 10) - 1;
      if (v68 > v50)
      {
        v69 = 16 * v68 + 48;
        while (1)
        {
          range.location = (*&CFDataGetBytePtr(v11)[v69 + 4] + v106);
          v70 = *&CFDataGetBytePtr(v11)[v69 + 8];
          v71 = CFDataGetBytePtr(v11);
          v72 = v4;
          v73 = v7;
          v74 = *&CFDataGetBytePtr(v11)[v69 + 4];
          v75 = CFDataGetBytePtr(v11);
          v76 = &v71[v74];
          v7 = v73;
          v4 = v72;
          v114.location = range.location;
          v114.length = v70;
          CFDataReplaceBytes(v11, v114, v76, *&v75[v69 + 8]);
          v77 = CFDataGetBytePtr(v11);
          *&v77[v69 + 4] += v106;
          if (!v72)
          {
            v78 = CFDataGetBytePtr(v11);
            v109 = 4;
            LODWORD(range.length) = *&v78[v69];
            BYTE4(range.length) = 0;
            v79 = CFDataGetBytePtr(v11);
            updated = ACFUFTABFile::updateCache(v7, &range.length, *&v79[v69 + 4], 0);
            v81 = updated;
            if (updated)
            {
              v66 = 0;
            }

            else
            {
              v82 = ACFULogging::getLogInstance(updated);
              ACFULogging::handleMessage(v82, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "updateFileInFTABOnData");
              v66 = 4;
            }

            if (v109 < 0)
            {
              operator delete(range.length);
            }

            if (!v81)
            {
              break;
            }
          }

          v69 -= 16;
          if (v50 >= --v68)
          {
            goto LABEL_101;
          }
        }

LABEL_111:
        if (v66)
        {
          v100 = v105;
LABEL_118:
          v25 = 0;
LABEL_119:
          if (!v100)
          {
            return v25 & 1;
          }

LABEL_120:
          CFRelease(v100);
          return v25 & 1;
        }

        goto LABEL_113;
      }

LABEL_101:
      v90 = CFDataGetLength(theDataa);
      v50 = v50;
      *&CFDataGetBytePtr(v11)[16 * v50 + 56] = v90;
      if (!v4)
      {
        v91 = CFDataGetBytePtr(v11);
        v109 = 4;
        LODWORD(range.length) = *&v91[16 * v50 + 48];
        BYTE4(range.length) = 0;
        v92 = *&CFDataGetBytePtr(v11)[16 * v50 + 52];
        v93 = CFDataGetLength(theDataa);
        v94 = ACFUFTABFile::updateCache(v7, &range.length, v92, v93);
        v95 = v94;
        if (v94)
        {
          v66 = 0;
        }

        else
        {
          v104 = ACFULogging::getLogInstance(v94);
          ACFULogging::handleMessage(v104, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "updateFileInFTABOnData");
          v66 = 4;
        }

        if (v109 < 0)
        {
          operator delete(range.length);
        }

        if ((v95 & 1) == 0)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v58 = (v34 - v57);
      v59 = (v50 + 1);
      if (v59 < *(CFDataGetBytePtr(v11) + 10))
      {
        v60 = 16 * (v50 + 1);
        do
        {
          v61 = CFDataGetBytePtr(v11);
          *&v61[v60 + 52] -= v58;
          if (!v4)
          {
            v62 = CFDataGetBytePtr(v11);
            v109 = 4;
            LODWORD(range.length) = *&v62[v60 + 48];
            BYTE4(range.length) = 0;
            v63 = CFDataGetBytePtr(v11);
            v64 = ACFUFTABFile::updateCache(v7, &range.length, *&v63[v60 + 52], 0);
            v65 = v64;
            if (v64)
            {
              v66 = 0;
            }

            else
            {
              v67 = ACFULogging::getLogInstance(v64);
              ACFULogging::handleMessage(v67, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "updateFileInFTABOnData");
              v66 = 4;
            }

            if (v109 < 0)
            {
              operator delete(range.length);
            }

            if (!v65)
            {
              goto LABEL_111;
            }
          }

          ++v59;
          v60 += 16;
        }

        while (v59 < *(CFDataGetBytePtr(v11) + 10));
      }

      v83 = CFDataGetLength(theDataa);
      v50 = v50;
      *&CFDataGetBytePtr(v11)[16 * v50 + 56] = v83;
      if (!v4)
      {
        v84 = CFDataGetBytePtr(v11);
        v109 = 4;
        LODWORD(range.length) = *&v84[16 * v50 + 48];
        BYTE4(range.length) = 0;
        v85 = *&CFDataGetBytePtr(v11)[16 * v50 + 52];
        v86 = CFDataGetLength(theDataa);
        v87 = ACFUFTABFile::updateCache(v7, &range.length, v85, v86);
        v88 = v87;
        if (v87)
        {
          v66 = 0;
        }

        else
        {
          v103 = ACFULogging::getLogInstance(v87);
          ACFULogging::handleMessage(v103, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "updateFileInFTABOnData");
          v66 = 4;
        }

        if (v109 < 0)
        {
          operator delete(range.length);
        }

        if (!v88)
        {
          goto LABEL_111;
        }
      }

      v89 = *&CFDataGetBytePtr(v11)[16 * v50 + 52];
      v115.location = CFDataGetLength(theDataa) + v89;
      v115.length = v58;
      CFDataDeleteBytes(v11, v115);
    }

    v96 = *&CFDataGetBytePtr(v11)[16 * v50 + 52];
    v97 = CFDataGetLength(theDataa);
    v98 = CFDataGetBytePtr(theDataa);
    v99 = CFDataGetLength(theDataa);
    v116.location = v96;
    v116.length = v97;
    CFDataReplaceBytes(v11, v116, v98, v99);
    if (v4)
    {
      v100 = v105;
      if (!v105 || (v101 = ACFUFTABFile::setManifestOnData(v7, v105, v4), v101))
      {
        isCacheValid = ACFUFTABFile::isValidFileData(v7, *v4, 0);
        goto LABEL_117;
      }

LABEL_133:
      ACFUFTABFile::updateFileInFTABOnData(v101);
      v25 = 0;
      goto LABEL_120;
    }

LABEL_113:
    v100 = v105;
    if (!v105 || (v101 = ACFUFTABFile::setManifestOnData(v7, v105, 0), v101))
    {
      if (!(*(*v7 + 88))(v7))
      {
        goto LABEL_118;
      }

      isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_117:
      v25 = isCacheValid;
      goto LABEL_119;
    }

    goto LABEL_133;
  }

  v35 = CFDataGetBytePtr(v5);
  v112.location = v31;
  v112.length = v30;
  CFDataReplaceBytes(v11, v112, v35, v30);
  if (v4)
  {
    v36 = *v4;

    return ACFUFTABFile::isValidFileData(v7, v36, 0);
  }

  if (!(*(*v7 + 88))(v7))
  {
LABEL_32:
    v25 = 0;
    return v25 & 1;
  }

  return ACFUFTABFile::isCacheValid(v7);
}

void sub_2402C30AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeFileFromFTAB(ACFUDataContainer **a1, void *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    ACFUFTABFile::removeFileFromFTAB(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFTABFile::removeFileFromFTAB(isOptimized);
    return 0;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v6 != 4)
  {
    ACFUFTABFile::removeFileFromFTAB((a2 + 23));
    return 0;
  }

  if (((*(*a1 + 2))(a1, a2) & 1) == 0)
  {
    ACFUFTABFile::removeFileFromFTAB((a2 + 23));
    return 0;
  }

  Data = ACFUDataContainer::getData(a1[1]);
  if (!Data)
  {
    ACFUFTABFile::removeFileFromFTAB(0);
    return 0;
  }

  v8 = Data;
  if (*(CFDataGetBytePtr(Data) + 10))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LODWORD(__p[0]) = *&CFDataGetBytePtr(v8)[v9 + 48];
      v11 = *(a2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[1];
      }

      if (v11 == 4)
      {
        v13 = v12 >= 0 ? a2 : *a2;
        if (*v13 == LODWORD(__p[0]))
        {
          break;
        }
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(CFDataGetBytePtr(v8) + 10))
      {
        v14 = 0;
        goto LABEL_36;
      }
    }

    v14 = *&CFDataGetBytePtr(v8)[v9 + 56];
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_36:
    v29 = 0;
    v15 = v10;
    while (1)
    {
      BytePtr = CFDataGetBytePtr(v8);
      *&BytePtr[v29 + 52] -= 16;
      v31 = CFDataGetBytePtr(v8);
      v37 = 4;
      LODWORD(__p[0]) = *&v31[v29 + 48];
      BYTE4(__p[0]) = 0;
      v32 = CFDataGetBytePtr(v8);
      updated = ACFUFTABFile::updateCache(a1, __p, *&v32[v29 + 52], 0);
      v34 = updated;
      if ((updated & 1) == 0)
      {
        LogInstance = ACFULogging::getLogInstance(updated);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "removeFileFromFTAB");
      }

      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v34 & 1) == 0)
      {
        return 0;
      }

      v29 += 16;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }
  }

  v14 = 0;
LABEL_20:
  v15 = 0;
LABEL_21:
  v16 = 16 * (v15 + 1);
  v17 = v15;
  while (1)
  {
    ++v17;
    v18 = *(CFDataGetBytePtr(v8) + 10);
    v19 = CFDataGetBytePtr(v8);
    if (v17 >= v18)
    {
      break;
    }

    *&v19[v16 + 52] = *&v19[v16 + 52] - v14 - 16;
    v20 = CFDataGetBytePtr(v8);
    v37 = 4;
    LODWORD(__p[0]) = *&v20[v16 + 48];
    BYTE4(__p[0]) = 0;
    v21 = CFDataGetBytePtr(v8);
    v22 = ACFUFTABFile::updateCache(a1, __p, *&v21[v16 + 52], 0);
    v23 = v22;
    if ((v22 & 1) == 0)
    {
      v24 = ACFULogging::getLogInstance(v22);
      ACFULogging::handleMessage(v24, 2, "%s::%s: could not update ftab cache\n", "ACFUFTABFile", "removeFileFromFTAB");
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    v16 += 16;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  --*(v19 + 10);
  if (*(CFDataGetBytePtr(v8) + 4))
  {
    v25 = *(CFDataGetBytePtr(v8) + 4);
    if (v25 > *(CFDataGetBytePtr(v8) + 13))
    {
      v26 = CFDataGetBytePtr(v8);
      *(v26 + 4) = *(v26 + 4) - v14 - 16;
    }
  }

  v38.location = *&CFDataGetBytePtr(v8)[16 * v15 + 52];
  v38.length = v14;
  CFDataDeleteBytes(v8, v38);
  v39.location = 16 * v15 + 48;
  v39.length = 16;
  CFDataDeleteBytes(v8, v39);
  v27 = ACFUFTABFile::updateCache(a1, a2, 0, 0);
  if ((v27 & 1) == 0)
  {
    ACFUFTABFile::removeFileFromFTAB(v27);
    return 0;
  }

  result = (*(*a1 + 11))(a1);
  if (result)
  {
    return ACFUFTABFile::isCacheValid(a1);
  }

  return result;
}

void sub_2402C34DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFTABFile::moveFileToTop(ACFUDataContainer **a1, char *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFTABFile::moveFileToTop(isOptimized);
    return 0;
  }

  v6 = a2[23];
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v6 != 4)
  {
    ACFUFTABFile::moveFileToTop((a2 + 23));
    return 0;
  }

  if (((*(*a1 + 2))(a1, a2) & 1) == 0)
  {
    ACFUFTABFile::moveFileToTop((a2 + 23));
    return 0;
  }

  Data = ACFUDataContainer::getData(a1[1]);
  if (!Data)
  {
    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  v8 = Data;
  if (*(CFDataGetBytePtr(Data) + 10))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v56 = *&CFDataGetBytePtr(v8)[v9 + 48];
      v11 = a2[23];
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a2 + 1);
      }

      if (v11 == 4)
      {
        v13 = v12 >= 0 ? a2 : *a2;
        if (*v13 == v56)
        {
          break;
        }
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(CFDataGetBytePtr(v8) + 10))
      {
        goto LABEL_20;
      }
    }

    v14 = *&CFDataGetBytePtr(v8)[v9 + 56];
  }

  else
  {
    LODWORD(v10) = 0;
LABEL_20:
    v14 = 0;
  }

  BytePtr = CFDataGetBytePtr(v8);
  if (v10 >= *(BytePtr + 10))
  {
    ACFUFTABFile::moveFileToTop(BytePtr);
    return 0;
  }

  LogInstance = ACFULogging::getLogInstance(BytePtr);
  if (a2[23] >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v10)
  {
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: moving %s to top\n", "ACFUFTABFile", "moveFileToTop", v17);
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Mutable)
    {
      v19 = Mutable;
      v20 = CFDataGetBytePtr(v8);
      CFDataAppendBytes(v19, v20, 48);
      v21 = CFDataGetBytePtr(v8);
      v22 = v10;
      CFDataAppendBytes(v19, &v21[16 * v10 + 48], 16);
      v23 = *(CFDataGetBytePtr(v8) + 13);
      *(CFDataGetBytePtr(v19) + 13) = v23;
      v24 = 68;
      v25 = v10;
      do
      {
        v26 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v19, &v26[v24 - 20], 16);
        v27 = CFDataGetBytePtr(v19);
        *&v27[v24] += v14;
        v24 += 16;
        --v25;
      }

      while (v25);
      v28 = v10 + 1;
      if (v28 < *(CFDataGetBytePtr(v8) + 10))
      {
        v29 = 16 * v28 + 48;
        v30 = v28;
        do
        {
          v31 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v19, &v31[v29], 16);
          v29 += 16;
          ++v30;
        }

        while (*(CFDataGetBytePtr(v8) + 10) > v30);
      }

      if (*(CFDataGetBytePtr(v8) + 4))
      {
        v32 = *(CFDataGetBytePtr(v8) + 4);
        if (v32 < *(CFDataGetBytePtr(v8) + 13))
        {
          v33 = *(CFDataGetBytePtr(v8) + 4);
          if (CFDataGetLength(v19) != v33)
          {
            ACFUFTABFile::moveFileToTop(v8);
            goto LABEL_59;
          }

          v34 = CFDataGetBytePtr(v8);
          v35 = *(CFDataGetBytePtr(v8) + 4);
          v36 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v19, &v34[v35], *(v36 + 5));
        }
      }

      v37 = *(CFDataGetBytePtr(v19) + 13);
      if (CFDataGetLength(v19) > v37)
      {
        ACFUFTABFile::moveFileToTop(v19);
      }

      else
      {
        Length = CFDataGetLength(v19);
        if (Length < *(CFDataGetBytePtr(v19) + 13))
        {
          v39 = *(CFDataGetBytePtr(v19) + 13);
          v40 = CFDataGetLength(v19);
          CFDataIncreaseLength(v19, v39 - v40);
        }

        v41 = CFDataGetBytePtr(v8);
        v42 = *&CFDataGetBytePtr(v8)[16 * v22 + 52];
        v43 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v19, &v41[v42], *&v43[16 * v22 + 56]);
        v44 = CFDataGetBytePtr(v8);
        v45 = *(CFDataGetBytePtr(v8) + 13);
        v46 = *&CFDataGetBytePtr(v8)[16 * v22 + 52];
        v47 = CFDataGetBytePtr(v8);
        CFDataAppendBytes(v19, &v44[v45], (v46 - *(v47 + 13)));
        if (v28 < *(CFDataGetBytePtr(v8) + 10))
        {
          v48 = CFDataGetBytePtr(v8);
          v49 = *&CFDataGetBytePtr(v8)[16 * v28 + 52];
          v50 = CFDataGetLength(v8);
          v51 = CFDataGetBytePtr(v8);
          CFDataAppendBytes(v19, &v48[v49], v50 - *&v51[16 * v28 + 52]);
        }

        v52 = ACFUDataContainer::setData(a1[1], v19);
        if (v52)
        {
          inited = ACFUFTABFile::initCache(a1);
          if (inited)
          {
            if ((*(*a1 + 11))(a1))
            {
              isCacheValid = ACFUFTABFile::isCacheValid(a1);
LABEL_60:
              CFRelease(v19);
              return isCacheValid;
            }
          }

          else
          {
            ACFUFTABFile::moveFileToTop(inited);
          }
        }

        else
        {
          ACFUFTABFile::moveFileToTop(v52);
        }
      }

LABEL_59:
      isCacheValid = 0;
      goto LABEL_60;
    }

    ACFUFTABFile::moveFileToTop(0);
    return 0;
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: %s already at top\n", "ACFUFTABFile", "moveFileToTop", v17);
  return 1;
}

uint64_t ACFUFTABFile::initCache(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  if (*(this + 7))
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: ftab cache had entries before ftab container was initialized. Clearing cache before moving on.\n", "ACFUFTABFile", "initCache");
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = this + 48;
    v2 = *(this + 1);
  }

  v4 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v4)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  if (BytePtr)
  {
    v7 = *(BytePtr + 10);
    CFRelease(v5);
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      v10 = 48;
      do
      {
        v11 = ACFUDataContainer::copyData(*(this + 1), v10, 0x10uLL);
        if (!v11)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v14) = v8;
          return v14 & 1;
        }

        v5 = v11;
        v12 = CFDataGetBytePtr(v11);
        if (!v12)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v14) = v8;
          goto LABEL_21;
        }

        v20 = 4;
        LODWORD(__p) = *v12;
        BYTE4(__p) = 0;
        updated = ACFUFTABFile::updateCache(this, &__p, *(v12 + 1), *(v12 + 2));
        v14 = updated;
        if (updated)
        {
          CFRelease(v5);
          v5 = 0;
        }

        else
        {
          v17 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v17, 2, "%s::%s: failed to initialize cache\n", "ACFUFTABFile", "initCache");
        }

        if (v20 < 0)
        {
          operator delete(__p);
        }

        v16 = v9-- != 0;
        v10 = (v10 + 16);
        v8 = 1;
      }

      while ((v14 & v16 & 1) != 0);
      if (!v5)
      {
        return v14 & 1;
      }

      goto LABEL_21;
    }

LABEL_26:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  ACFUFTABFile::initCache(0);
  LOBYTE(v14) = 0;
LABEL_21:
  CFRelease(v5);
  return v14 & 1;
}

void sub_2402C3C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::setFTABValidity(ACFUFTABFile *this, int a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setFTABValidity(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        *(CFDataGetBytePtr(Data) + 1) = a2;
        return 1;
      }

      ACFUFTABFile::setFTABValidity(0);
    }
  }

  else
  {
    ACFUFTABFile::setFTABValidity(0);
  }

  return 0;
}

__CFData *ACFUFTABFile::copyFWDataByName(uint64_t a1, uint64_t a2)
{
  isOptimized = ACFUDataContainer::isOptimized(*(a1 + 8));
  if (!isOptimized || (isOptimized = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), (a1 + 80) == isOptimized))
  {
    if (!*(a1 + 8))
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v6 = *(a2 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 8);
    }

    if (v6 != 4)
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
    if (a1 + 48 == v7)
    {
      ACFUFTABFile::copyFWDataByName((a2 + 23));
      return 0;
    }

    result = ACFUDataContainer::copyData(*(a1 + 8), *(v7 + 60), *(v7 + 56));
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  else
  {
    result = AMSupportSafeRetain();
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  return result;
}

void ACFUFTABFile::copyFWRefByName(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, ACFUDataContainer::DirectDataRef **a5@<X8>)
{
  *a5 = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v9 == 4)
    {
      if (!ACFUDataContainer::isOptimized(v7) || (v12 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v12))
      {
        v18 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
        if ((a1 + 48) == v18)
        {
          LogInstance = ACFULogging::getLogInstance(v18);
          ACFULogging::handleMessage(LogInstance, 2, "%s::%s: file does not exist\n");
        }

        else
        {
          ACFUDataContainer::copyDirectData(*(a1 + 8), a4, *(v18 + 15) + a3, &v27);
          v19 = v27;
          v27 = 0;
          std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v19);
          v20 = v27;
          v27 = 0;
          if (v20)
          {
            ACFUDataContainer::DirectDataRef::~DirectDataRef(v20);
            operator delete(v21);
          }

          if (!*a5)
          {
            v25 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v25, 2, "%s::%s: failed to obtain data ref\n");
          }
        }
      }

      else
      {
        v13 = malloc(a4);
        if (v13)
        {
          v14 = v13;
          v28.location = a3;
          v28.length = a4;
          CFDataGetBytes(*(v12 + 56), v28, v13);
          v15 = operator new(0x18uLL);
          ACFUDataContainer::DirectDataRef::DirectDataRef(v15, v14, a4, 0);
          std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v15);
          if (!*a5)
          {
            v17 = ACFULogging::getLogInstance(v16);
            ACFULogging::handleMessage(v17, 2, "%s::%s: failed to obtain data ref\n");
          }
        }

        else
        {
          v26 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v26, 2, "%s::%s: failed to allocate data\n");
        }
      }
    }

    else
    {
      v23 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v23, 2, "%s::%s: specified tag name is invalid!\n");
    }
  }

  else
  {
    v22 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v22, 2, "%s::%s: file data was invalid\n");
  }
}

void sub_2402C3F74(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

CFDataRef ACFUFTABFile::copyFirmwareContainer(ACFUFTABFile *this)
{
  v13 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  v13 = ACFUDataContainer::copyData(v2);
  if (!v13)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  if (ACFUDataContainer::isOptimized(*(this + 1)))
  {
    v3 = *(this + 9);
    if (v3 != (this + 80))
    {
      do
      {
        v4 = (*(*this + 16))(this, v3 + 4);
        v5 = *(v3 + 7);
        v6 = (v3 + 32);
        if (v4)
        {
          updated = ACFUFTABFile::updateFileInFTABOnData(this, v6, v5, &v13);
          if ((updated & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(updated);
            return v13;
          }
        }

        else
        {
          v8 = ACFUFTABFile::addNewFileToFTABOnData(this, v6, v5, &v13);
          if ((v8 & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(v8);
            return v13;
          }
        }

        v9 = *(v3 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != (this + 80));
    }
  }

  return v13;
}

void ACFUFTABFile::prettyLog(ACFUFTABFile *this)
{
  v54 = *MEMORY[0x277D85DE8];
  __p = 0;
  v51 = 0;
  v52 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v40 = "%s::%s: file data was invalid\n";
    goto LABEL_36;
  }

  isOptimized = ACFUDataContainer::isOptimized(v2);
  v4 = *(this + 1);
  if (isOptimized)
  {
    v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
    v6 = v5;
    if (v5)
    {
      BytePtr = CFDataGetBytePtr(v5);
      if (!BytePtr)
      {
        goto LABEL_37;
      }

      goto LABEL_8;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v40 = "%s::%s: failed to copy ftab header\n";
LABEL_36:
    v41 = 2;
    goto LABEL_28;
  }

  v8 = ACFUDataContainer::copyData(v4);
  v6 = v8;
  if (!v8)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v40 = "%s::%s: could not obtain file data\n";
    goto LABEL_36;
  }

  BytePtr = CFDataGetBytePtr(v8);
  if (!BytePtr)
  {
LABEL_37:
    v43 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v43, 2, "%s::%s: failed to copy ftab header\n", "ACFUFTABFile", "prettyLog");
    CFRelease(v6);
    goto LABEL_29;
  }

LABEL_8:
  v9 = *(BytePtr + 10);
  v10 = *(BytePtr + 4);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }

  __p = v10;
  LOBYTE(v51) = 0;
  HIBYTE(v52) = 8;
  ACFUFile::fileVersionLog(this);
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 4, "%s::%s: =========== FTAB Header ===========\n", "ACFUFTABFile", "prettyLog");
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 4, "%s::%s: Generation: %u, Valid: %u, BootNonce: 0x%08llx\n", "ACFUFTABFile", "prettyLog", *BytePtr, *(BytePtr + 1), *(BytePtr + 1));
  v16 = ACFULogging::getLogInstance(v15);
  ACFULogging::handleMessage(v16, 4, "%s::%s: Manifest Offset: %u, Manifest Length: %u, Magic: %s\n", "ACFUFTABFile", "prettyLog", *(BytePtr + 4), *(BytePtr + 5), &__p);
  v18 = ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage(v18, 4, "%s::%s: Num Files: %u\n", "ACFUFTABFile", "prettyLog", *(BytePtr + 10));
  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 4, "%s::%s: =========== FTAB Header ===========\n\n", "ACFUFTABFile", "prettyLog");
  v22 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v22, 4, "%s::%s: =========== FTAB Payloads ===========\n", "ACFUFTABFile", "prettyLog");
  CFRelease(v6);
  if (!v9)
  {
LABEL_27:
    LogInstance = ACFULogging::getLogInstance(v23);
    v40 = "%s::%s: =========== FTAB Payloads ===========\n\n";
    v41 = 4;
LABEL_28:
    ACFULogging::handleMessage(LogInstance, v41, v40, "ACFUFTABFile", "prettyLog");
    goto LABEL_29;
  }

  v24 = 48;
  while (1)
  {
    v25 = ACFUDataContainer::copyData(*(this + 1), v24, 0x10uLL);
    v26 = v25;
    if (!v25)
    {
      break;
    }

    v27 = CFDataGetBytePtr(v25);
    v29 = v27[1];
    v28 = v27[2];
    v49 = 4;
    LODWORD(v48) = *v27;
    BYTE4(v48) = 0;
    v30 = ACFULogging::getLogInstance(v27);
    v31 = &BytePtr[v29];
    if (v49 >= 0)
    {
      v32 = &v48;
    }

    else
    {
      v32 = v48;
    }

    ACFULogging::handleMessage(v30, 4, "%s::%s: Tag: %s :: Offset: 0x%04x Raw address: 0x%lx, size: %u\n", "ACFUFTABFile", "prettyLog", v32, v27[1], v31, v28);
    if ((ACFUDataContainer::isOptimized(*(this + 1)) & 1) == 0)
    {
      v33 = CC_SHA384(v31, v28, md);
      if (v33 == md)
      {
        v34 = ACFULogging::getLogInstance(v33);
        std::string::basic_string[abi:ne200100]<0>(&v44, "ACFUFTABFile");
        v35 = std::string::append(&v44, "::");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v45, "prettyLog");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v47 = v37->__r_.__value_.__r.__words[2];
        *v46 = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageBinary(v34, v46, 4, md, 0x30uLL, 1);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46[0]);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }
      }
    }

    CFRelease(v26);
    if (v49 < 0)
    {
      operator delete(v48);
    }

    v24 = (v24 + 16);
    if (!--v9)
    {
      goto LABEL_27;
    }
  }

  v42 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v42, 2, "%s::%s: failed to copy ftab file header\n", "ACFUFTABFile", "prettyLog");
LABEL_29:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }
}

void sub_2402C4588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFTABFile::hasFile(ACFULogging *a1, const void **a2)
{
  if (*(a1 + 1))
  {
    return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(a1 + 40, a2) != 0;
  }

  ACFUFTABFile::hasFile(a1);
  return 0;
}

void ACFUFTABFile::~ACFUFTABFile(ACFUFTABFile *this)
{
  *this = &unk_28522EE20;
  v2 = this + 72;
  v3 = *(this + 9);
  v4 = this + 80;
  if (v3 != this + 80)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 7) = 0;
      }

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

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(v2, *(this + 10));
  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));

  ACFUFile::~ACFUFile(this);
}

{
  ACFUFTABFile::~ACFUFTABFile(this);

  operator delete(v1);
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFString *a2, const __CFString *a3)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2, a3))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v5 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v5 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v5 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v5 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v5);
  return 0;
}

unint64_t ACFUFTABFile::getRequiredFileSize(ACFUFTABFile *this, const __CFData *a2)
{
  if (!ACFUFTABFile::isValidFileData(this, a2, 1))
  {
    v8 = "%s::%s: header is invalid\n";
LABEL_11:
    ACFUFTABFile::getRequiredFileSize(v8);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a2);
  if (!BytePtr)
  {
    v8 = "%s::%s: failed to get header pointer\n";
    goto LABEL_11;
  }

  v4 = BytePtr;
  result = (*(BytePtr + 5) + *(BytePtr + 4));
  v6 = *(v4 + 10);
  if (v6)
  {
    v7 = v4 + 56;
    do
    {
      if (result <= (*v7 + *(v7 - 1)))
      {
        result = (*v7 + *(v7 - 1));
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

ACFULogging *ACFUFTABFile::getFileSizeByFileName(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!ACFUDataContainer::isOptimized(v3) || (v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v5))
    {
      v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
      if (a1 + 48 != v7)
      {
        return *(v7 + 56);
      }
    }

    else
    {
      result = CFDataGetLength(*(v5 + 56));
      if (result)
      {
        return result;
      }

      ACFUFTABFile::getFileSizeByFileName(result);
    }
  }

  else
  {
    ACFUFTABFile::getFileSizeByFileName(0);
  }

  return 0;
}

void ACFUFTABFile::getFileOffsetByFileName(ACFUDataContainer **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    if (ACFUDataContainer::isOptimized(a1[1]))
    {
      v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>((a1 + 9), a2);
      if (a1 + 10 != v7)
      {
        LogInstance = ACFULogging::getLogInstance(v7);
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: get offset not supported on dynamically added file %s to MMIO optimized FTAB\n", "ACFUFTABFile", "getFileOffsetByFileName", v9);
        goto LABEL_11;
      }
    }

    v10 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>((a1 + 5), a2);
    if (a1 + 6 == v10)
    {
LABEL_11:
      v11 = 0;
      v12 = 0;
      goto LABEL_12;
    }

    v11 = *(v10 + 60);
  }

  else
  {
    ACFUFTABFile::getFileOffsetByFileName(a1);
    v11 = 0;
  }

  v12 = v4 != 0;
LABEL_12:
  *a3 = v11;
  *(a3 + 4) = v12;
}

uint64_t ACFUFTABFile::getVersion(ACFUFTABFile *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  if (*(this + 1))
  {
    if ((*(*this + 16))(this, __p))
    {
      v3 = (**this)(this, __p);
      goto LABEL_6;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: file data was invalid\n", "ACFUFTABFile", "getVersion");
  }

  v3 = 0;
LABEL_6:
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2402C4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

void std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a4, &v9);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
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

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 6) = *(v8 + 2);
    *(v6 + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
}

void sub_2402C50B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

void OUTLINED_FUNCTION_2(uint64_t a1)
{

  ACFULogging::handleMessage(a1, 2, v1);
}

void *OUTLINED_FUNCTION_4(ACFULogging *a1)
{

  return ACFULogging::getLogInstance(a1);
}

ACFULogging *ACFUDataAccess::createPeronalizedContentPath(ACFULogging *a1)
{
  if (a1 == 1)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: requesting APTicket file path\n", "ACFUDataAccess", "createPeronalizedContentPath");
    v2 = 2;
  }

  else
  {
    if (a1)
    {
      v15 = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(v15, 2, "%s::%s: could not determine requested path\n", "ACFUDataAccess", "createPeronalizedContentPath");
      return 0;
    }

    v1 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v1, 3, "%s::%s: requesting personalized firmware root path\n", "ACFUDataAccess", "createPeronalizedContentPath");
    v2 = 0;
  }

  v4 = [MEMORY[0x277D25710] sharedDataAccessor];
  v27 = 0;
  v5 = [v4 copyPathForPersonalizedData:v2 error:&v27];
  v6 = v27;

  if (v5)
  {
    v8 = v5;
    v9 = ACFULogging::getLogInstance(v8);
    std::string::basic_string[abi:ne200100]<0>(&v23, "ACFUDataAccess");
    v10 = std::string::append(&v23, "::");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v24, "createPeronalizedContentPath");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v26 = v12->__r_.__value_.__r.__words[2];
    v25 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v9, &v25, 3, "path: ", v8);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to get the required path\n", "ACFUDataAccess", "createPeronalizedContentPath");
    v18 = ACFULogging::getLogInstance(v17);
    std::string::basic_string[abi:ne200100]<0>(&v23, "ACFUDataAccess");
    v19 = std::string::append(&v23, "::");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v24, "createPeronalizedContentPath");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v26 = v21->__r_.__value_.__r.__words[2];
    v25 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v18, &v25, 2, "error details: ", [v6 localizedDescription]);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v8 = 0;
  }

  return v8;
}

void sub_2402C59C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

CFStringRef ACFUDataAccess::createPersonalizedFirmwarePath(ACFUDataAccess *this, const __CFString *a2)
{
  PeronalizedContentPath = ACFUDataAccess::createPeronalizedContentPath(0);
  if (PeronalizedContentPath)
  {
    v4 = PeronalizedContentPath;
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%@/", PeronalizedContentPath, this);
    if (!v5)
    {
      ACFUDataAccess::createPersonalizedFirmwarePath(0);
    }

    CFRelease(v4);
  }

  else
  {
    ACFUDataAccess::createPersonalizedFirmwarePath(0);
    return 0;
  }

  return v5;
}

void RTKitFirmware::RTKitFirmware(RTKitFirmware *this)
{
  ACFUFirmware::ACFUFirmware(this);
  *v1 = &unk_28522EEB0;
  *(v1 + 84) = 0;
}

{
  ACFUFirmware::ACFUFirmware(this);
  *v1 = &unk_28522EEB0;
  *(v1 + 84) = 0;
}

void RTKitFirmware::create(uint64_t a1@<X0>, const __CFData *a2@<X1>, uint64_t a3@<X2>, ACFUFirmware **a4@<X8>)
{
  v8 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v8);
  *v8 = &unk_28522EEB0;
  *(v8 + 21) = 0;
  *a4 = v8;
  std::map<__CFString const*,std::string>::map[abi:ne200100](v9, a1);
  LOBYTE(a3) = RTKitFirmware::init(v8, v9, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v10);
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    (*(*v8 + 56))(v8);
  }
}

void sub_2402C5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4)
{
  std::map<__CFString const*,std::string>::map[abi:ne200100](v21, a2);
  v7 = ACFUFirmware::init(a1, v21);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21, v21[1]);
  if (!v7)
  {
    RTKitFirmware::init(v8);
    return 0;
  }

  ACFUFTABFile::create(a3, a4, 0xFFFF, &v19);
  v9 = v19;
  v19 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 56))(v10);
    v11 = v19;
    v19 = 0;
    if (v11)
    {
      (*(*v11 + 56))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    RTKitFirmware::init(0);
    return 0;
  }

  ACFUFTABFile::copyManifest(v12, &v19);
  v14 = v20;
  if (!v20)
  {
    v16 = v19;
    *(a1 + 48) = v19;
    if (v16)
    {
      goto LABEL_11;
    }

    RTKitFirmware::init(v13);
    return 0;
  }

  if (v20 != 1001)
  {
    LogInstance = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manifest, error: %d\n", "RTKitFirmware", "init", v14);
    return 0;
  }

  v15 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v15, 0, "%s::%s: No manifest present\n", "RTKitFirmware", "init");
  *(a1 + 48) = 0;
LABEL_11:
  if ((a4 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 56) = 1;
  return (*(*a1 + 64))(a1);
}

void RTKitFirmware::create(uint64_t a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X2>, ACFUFirmware **a4@<X8>)
{
  v8 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v8);
  *v8 = &unk_28522EEB0;
  *(v8 + 21) = 0;
  *a4 = v8;
  std::map<__CFString const*,std::string>::map[abi:ne200100](v9, a1);
  LOBYTE(a3) = RTKitFirmware::init(v8, v9, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v10);
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    (*(*v8 + 56))(v8);
  }
}

void sub_2402C5F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  std::map<__CFString const*,std::string>::map[abi:ne200100](v21, a2);
  v7 = ACFUFirmware::init(a1, v21);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21, v21[1]);
  if (!v7)
  {
    RTKitFirmware::init(v8);
    return 0;
  }

  ACFUFTABFile::create(a3, a4, 0xFFFF, &v19);
  v9 = v19;
  v19 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 56))(v10);
    v11 = v19;
    v19 = 0;
    if (v11)
    {
      (*(*v11 + 56))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    RTKitFirmware::init(0);
    return 0;
  }

  ACFUFTABFile::copyManifest(v12, &v19);
  v14 = v20;
  if (!v20)
  {
    v16 = v19;
    *(a1 + 48) = v19;
    if (v16)
    {
      goto LABEL_11;
    }

    RTKitFirmware::init(v13);
    return 0;
  }

  if (v20 != 1001)
  {
    LogInstance = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manifest, error: %d\n", "RTKitFirmware", "init", v14);
    return 0;
  }

  v15 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v15, 0, "%s::%s: No manifest present\n", "RTKitFirmware", "init");
  *(a1 + 48) = 0;
LABEL_11:
  if ((a4 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 56) = 1;
  return (*(*a1 + 64))(a1);
}

uint64_t RTKitFirmware::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ACFUFirmware **a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v6);
  *v6 = &unk_28522EEB0;
  *(v6 + 21) = 0;
  *a3 = v6;
  result = RTKitFirmware::init(v6, a1, v3);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v8 = *(*v6 + 56);

    return v8(v6);
  }

  return result;
}

void sub_2402C62D4(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 56))(v1);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 16))
  {
    RTKitFirmware::init(a1);
    return 0;
  }

  v5 = ACFUFirmware::init(a1, a2);
  if ((v5 & 1) == 0)
  {
    RTKitFirmware::init(v5);
    return 0;
  }

  *(a1 + 84) = a3;
  result = 1;
  if ((a3 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  return result;
}

CFDataRef RTKitFirmware::copyFirmwareNonce(RTKitFirmware *this)
{
  v1 = *(this + 4);
  {
    *bytes = ACFUFTABFile::getBootNonce(v1);
    return CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
  }

  else
  {
    RTKitFirmware::copyFirmwareNonce(v1);
    return 0;
  }
}

uint64_t RTKitFirmware::setFirmwareNonce(RTKitFirmware *this, const __CFData *a2)
{
  Length = *(this + 4);
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  if (!a2 || (v4 = Length, Length = CFDataGetLength(a2), Length != 8))
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  v5 = *CFDataGetBytePtr(a2);

  return ACFUFTABFile::setBootNonce(v4, v5);
}

uint64_t RTKitFirmware::openFirmwareInRestoreOptions(RTKitFirmware *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  if (Value)
  {
    v5 = Value;
    AMSupportSafeRetain();
    v6 = CFGetTypeID(v5);
    TypeID = CFDataGetTypeID();
    if (v6 == TypeID)
    {
      ACFUFTABFile::create(v5, *(this + 21), 0xFFFF, &v12);
      v8 = v12;
      v12 = 0;
      v9 = *(this + 4);
      *(this + 4) = v8;
      if (v9)
      {
        (*(*v9 + 56))(v9);
        v9 = v12;
        v12 = 0;
        if (v9)
        {
          v9 = (*(*v9 + 56))(v9);
        }

        v8 = *(this + 4);
      }

      if (v8)
      {
        v10 = ACFUFirmware::openFirmwareInRestoreOptions(this, theDict);
      }

      else
      {
        RTKitFirmware::openFirmwareInRestoreOptions(v9);
        v10 = 1000;
      }
    }

    else
    {
      RTKitFirmware::openFirmwareInRestoreOptions(TypeID);
      v10 = 4002;
    }

    CFRelease(v5);
  }

  else
  {
    RTKitFirmware::openFirmwareInRestoreOptions(0);
    return 4001;
  }

  return v10;
}

uint64_t RTKitFirmware::saveFirmware(RTKitFirmware *this)
{
  v2 = *(this + 4);
  {
    v3 = ACFUFTABFile::setFTABValidity(v2, 1);
    if (v3)
    {
      if (*(this + 6))
      {

        return ACFUFirmware::saveFirmware(this, v4);
      }

      else
      {
        RTKitFirmware::saveFirmware(v3);
        return 1001;
      }
    }

    else
    {
      RTKitFirmware::saveFirmware(v3);
      return 1004;
    }
  }

  else
  {
    RTKitFirmware::saveFirmware(v2);
    return 1000;
  }
}

uint64_t RTKitFirmware::saveFirmwareToPath(RTKitFirmware *this, const __CFURL *a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    v4 = 1005;
    v5 = "%s::%s: Invalid save path\n";
    goto LABEL_8;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_7:
    v4 = 1000;
    v5 = "%s::%s: Invalid firmware file\n";
LABEL_8:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, v5, "RTKitFirmware", "saveFirmwareToPath");
    return v4;
  }

  v3 = ACFUFile::saveToPath(v3, a2);
  if ((v3 & 1) == 0)
  {
    v4 = 1004;
    v5 = "%s::%s: Failed to save firmware to path\n";
    goto LABEL_8;
  }

  return 0;
}

uint64_t RTKitFirmware::setManifest(RTKitFirmware *this, const __CFData *a2)
{
  v4 = *(this + 4);
  {
    v5 = ACFUFTABFile::setManifest(v4, a2);
    if ((v5 & 1) == 0)
    {
      RTKitFirmware::setManifest(v5);
      return 0;
    }

    v6 = 1;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid firmware file\n", "RTKitFirmware", "setManifest");
    v6 = 0;
  }

  ACFUFirmware::setManifest(this, a2);
  return v6;
}

uint64_t RTKitFirmware::getFileSizeByFileName(uint64_t a1)
{
  v1 = *(a1 + 32);
  {
    v2 = *(*v1 + 32);

    return v2();
  }

  else
  {
    RTKitFirmware::getFileSizeByFileName(v1);
    return 0;
  }
}

void RTKitFirmware::getFileOffsetByFileName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  v3 = *(a1 + 32);
  {
    ACFUFTABFile::getFileOffsetByFileName(v3, a2, &v6);
    *a3 = v6;
    *(a3 + 4) = v7;
  }

  else
  {
    RTKitFirmware::getFileOffsetByFileName(v3);
  }
}

uint64_t RTKitFirmware::updateTagWithData(uint64_t a1, unint64_t *a2, const __CFData *a3)
{
  updated = *(a1 + 32);
  {
    v6 = 1000;
    v7 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(LogInstance, 2, v7, "RTKitFirmware", "updateTagWithData");
    return v6;
  }

  updated = ACFUFTABFile::updateFileInFTAB(updated, a2, a3);
  if ((updated & 1) == 0)
  {
    v6 = 1017;
    v7 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::addTagWithData(uint64_t a1, char *a2, const __CFData *a3)
{
  v3 = *(a1 + 32);
  {
    v6 = 1000;
    v7 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2, v7, "RTKitFirmware", "addTagWithData");
    return v6;
  }

  v3 = ACFUFTABFile::addNewFileToFTAB(v3, a2, a3);
  if ((v3 & 1) == 0)
  {
    v6 = 1017;
    v7 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::removeTag(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  {
    v4 = 1000;
    v5 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, v5, "RTKitFirmware", "removeTag");
    return v4;
  }

  v2 = ACFUFTABFile::removeFileFromFTAB(v2, a2);
  if ((v2 & 1) == 0)
  {
    v4 = 1017;
    v5 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

uint64_t RTKitFirmware::moveTagToTop(uint64_t a1, char *a2)
{
  v2 = *(a1 + 32);
  {
    v4 = 1000;
    v5 = "%s::%s: Invalid firmware file\n";
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, v5, "RTKitFirmware", "moveTagToTop");
    return v4;
  }

  v2 = ACFUFTABFile::moveFileToTop(v2, a2);
  if ((v2 & 1) == 0)
  {
    v4 = 1017;
    v5 = "%s::%s: failed to modify firmware file\n";
    goto LABEL_6;
  }

  return 0;
}

void RTKitFirmware::~RTKitFirmware(RTKitFirmware *this)
{
  ACFUFirmware::~ACFUFirmware(this);

  operator delete(v1);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
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

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
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

void ACFUSynchronize::Syncher::notifyIf(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v6 + 48))(v6))
  {
    ++*(a1 + 112);
    if (a2)
    {
      std::condition_variable::notify_all(a1);
    }

    else
    {
      std::condition_variable::notify_one(a1);
    }
  }

  std::mutex::unlock((a1 + 48));
}

void ACFUSynchronize::Syncher::notify(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  ++*(a1 + 112);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6);
  if (a2)
  {
    std::condition_variable::notify_all(a1);
  }

  else
  {
    std::condition_variable::notify_one(a1);
  }

  std::mutex::unlock((a1 + 48));
}

uint64_t ACFUSynchronize::Syncher::wait(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  __lk.__m_ = (a1 + 48);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 48));
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v16 = a1;
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v17, a3);
  v7 = rep + 1000000 * a2;
  while (1)
  {
    if (*(v16 + 112) >= 1)
    {
      if (!v18)
      {
        goto LABEL_26;
      }

      if ((*(*v18 + 48))(v18))
      {
        break;
      }
    }

    if (std::chrono::system_clock::now().__d_.__rep_ >= v7)
    {
      goto LABEL_15;
    }

    if (v7)
    {
      if (v7 < 1)
      {
        if (v7 >= 0xFFDF3B645A1CAC09)
        {
LABEL_13:
          v8.__d_.__rep_ = 1000 * v7;
          goto LABEL_14;
        }

        v8.__d_.__rep_ = 0x8000000000000000;
      }

      else
      {
        if (v7 <= 0x20C49BA5E353F7)
        {
          goto LABEL_13;
        }

        v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v8.__d_.__rep_ = 0;
    }

LABEL_14:
    std::condition_variable::__do_timed_wait(a1, &__lk, v8);
    if (std::chrono::system_clock::now().__d_.__rep_ >= v7)
    {
LABEL_15:
      if (*(v16 + 112) <= 0)
      {
        v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v17);
      }

      else
      {
        if (!v18)
        {
LABEL_26:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v9 = (*(*v18 + 48))(v18);
        v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v17);
        if (v9)
        {
          goto LABEL_22;
        }
      }

      LogInstance = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: event wait timeout\n", "ACFUSynchronize", "wait");
      v12 = 0;
      goto LABEL_23;
    }
  }

  v10 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v17);
LABEL_22:
  --*(a1 + 112);
  v13 = ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage(v13, 3, "%s::%s: event notification\n", "ACFUSynchronize", "wait");
  v12 = 1;
LABEL_23:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v12;
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ACFULogging::initLog(ACFULogging *this, CFDictionaryRef theDict, void (*a3)(void *, const char *), void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Options");
    if (Value && (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v9)) && (v11 = CFDictionaryGetValue(v9, @"RestoreInternal")) != 0)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      v14 = 2;
      if (v13 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v12) == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }
    }

    else
    {
      v14 = 2;
    }

    *(this + 9) = a3;
    *(this + 10) = a4;
    ACFUCommon::parseDebugArgs(theDict, "logLevel", &v19);
    v16 = v20;
    if (v20 == 4006)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 3, "%s::%s: Key: %s not found while parsing debugArgs, but this is not error\n");
LABEL_16:
      v17 = v14;
      goto LABEL_17;
    }

    if (v20)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 0, "%s::%s: Failed to parse debugArgs\n", "ACFULogging", "initLog");
      return v16;
    }

    v17 = v19;
    if (v19 >= 5)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2814622C8, 3, "%s::%s: Unexpected value: %u for Key: %s\n");
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 9) = a3;
    *(this + 10) = a4;
    v17 = 2;
  }

LABEL_17:
  v16 = 0;
  *(this + 22) = v17;
  return v16;
}

void *ACFULogging::getLogInstance(ACFULogging *this)
{
  if ((atomic_load_explicit(_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    ACFULogging::getLogInstance();
  }

  return &unk_2814622C8;
}

void ACFULogging::handleMessage(uint64_t a1, signed int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a2)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a2)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (vsnprintf((a1 + 92), 0xC00uLL, a3, va) >= 0xC01)
  {
    strcpy((a1 + 3099), "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, *(a1 + a2), a1 + 92);
  std::mutex::unlock((a1 + 8));
}

void ACFULogging::ACFULogging(ACFULogging *this)
{
  *this = 17830144;
  *(this + 4) = 2;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 22) = 2;
  bzero(this + 92, 0xC00uLL);
  *(this + 396) = 0;
  v2 = os_log_create("com.apple.AppleConvergedFirmwareUpdater", "service");
  v3 = *(this + 396);
  *(this + 396) = v2;
}

void ACFULogging::~ACFULogging(ACFULogging *this)
{
  std::mutex::~mutex((this + 8));
}

{

  std::mutex::~mutex((this + 8));
}

BOOL ACFULogging::shouldLog(uint64_t a1, int a2)
{
  if (*(a1 + 72))
  {
    return *(a1 + 88) >= a2;
  }

  else
  {
    return os_log_type_enabled(*(a1 + 3168), *(a1 + a2));
  }
}

void ACFULogging::log(ACFULogging *this, os_log_type_t a2, uint64_t type)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 10);

    v4(v5, type);
  }

  else
  {
    v7 = *(this + 396);
    if (os_log_type_enabled(v7, a2))
    {
      v8 = 136315138;
      v9 = type;
      _os_log_impl(&dword_2402B0000, v7, a2, "%s", &v8, 0xCu);
    }
  }
}

void ACFULogging::handleMessageBinary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a3;
  v10 = a1;
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((v10 + 8));
  if (a5)
  {
    v11 = 0;
    if (a5 <= 0x3E80)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 112;
    }

    if (a5 <= 0x3E80)
    {
      a6 = 0;
    }

    v35 = v10;
    v33 = v12;
    v34 = a6;
    do
    {
      v13 = a6 ^ 1;
      if (v11 != v12)
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        ACFULogging::handleMessageInternal(v10, v8, "%s -- middle of buffer snipped -- \n", v14);
        v11 = a5 - 112;
      }

      v38 = 0u;
      memset(v39, 0, sizeof(v39));
      v37 = 0u;
      v15 = a5 - v11;
      if (a5 == v11)
      {
        *(v39 + 15) = 538976288;
        *&v16 = 0x2020202020202020;
        *(&v16 + 1) = 0x2020202020202020;
        v38 = v16;
        v39[0] = v16;
        v17 = 51;
        v37 = v16;
      }

      else
      {
        v18 = v8;
        if (v15 >= 0x10)
        {
          v15 = 16;
        }

        v19 = (a4 + v11);
        if (v15 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v15;
        }

        v21 = (54 - 3 * v20) - 3;
        v22 = (a4 + v11);
        v23 = v20;
        v24 = &v37 + 1;
        do
        {
          v25 = *v22++;
          v26 = a0123456789abcd[v25 & 0xF];
          *(v24 - 1) = a0123456789abcd[v25 >> 4];
          *v24 = v26;
          v24[1] = 32;
          v24 += 3;
          v21 += 3;
          --v23;
        }

        while (v23);
        memset(v24 - 1, 32, 3 * (17 - v20));
        v27 = &v37;
        v28 = 0;
        do
        {
          v30 = *v19++;
          v29 = v30;
          if ((v30 - 32) >= 0x5F)
          {
            v29 = 46;
          }

          *(v27 + v21) = v29;
          v27 = (v27 + 1);
          --v28;
          --v20;
        }

        while (v20);
        v17 = v21 - v28;
        v8 = v18;
        v10 = v35;
        a6 = v34;
        v12 = v33;
      }

      strcpy(&v37 + v17, "\r\n");
      if (*(a2 + 23) >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s %04zx  %s", v31, v11, &v37);
      v11 += 16;
    }

    while (v11 < a5);
    if (a6)
    {
      if (*(a2 + 23) >= 0)
      {
        v32 = a2;
      }

      else
      {
        v32 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s (snipped)\n", v32);
    }
  }

  std::mutex::unlock((v10 + 8));
}

void ACFULogging::handleMessageInternal(char *a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (vsnprintf(a1 + 92, 0xC00uLL, a3, va) >= 0xC01)
  {
    strcpy(a1 + 3099, "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, a1[a2], (a1 + 92));
}

void ACFULogging::handleMessageCFType(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (a5)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s\n %@\n", v10, a4, a5);
    v12 = v11;
    if (v11)
    {
      ACFUCommon::stringFromCFString(&v14, v11);
      v17 = v15;
      *__p = v14;
      if (SHIBYTE(v15) < 0)
      {
        if (__p[1])
        {
          v13 = __p[0];
        }

        else
        {
          v13 = "UNDEF";
        }
      }

      else
      {
        v13 = __p;
        if (!HIBYTE(v15))
        {
          v13 = "UNDEF";
        }
      }

      ACFULogging::handleMessageInternal(a1, a3, "%s", v13);
      CFRelease(v12);
    }

    else
    {
      ACFULogging::handleMessageInternal(a1, 2, "%s::%s: failed to format CFString\n");
    }
  }

  else
  {
    ACFULogging::handleMessageInternal(a1, 2, "%s::%s: CFType to be printed is NULL\n");
  }

  std::mutex::unlock((a1 + 8));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2402C7FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 8));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ACFUErrorContainer::ACFUErrorContainer(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  AMSupportSafeRetain();
}

void sub_2402C8080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUErrorContainer::~ACFUErrorContainer(ACFUErrorContainer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
    *(this + 4) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ACFUError::ACFUError(ACFUError *this, const __CFString *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  v5 = operator new(0x18uLL);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = 0;
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](v4, v5);
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](&v6, 0);
  *this = a2;
  AMSupportSafeRetain();
}

CFErrorRef ACFUError::getCFError(ACFUError *this)
{
  if (**(this + 1) == *(*(this + 1) + 8))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Looks like there is no error present; Nothing to be done here.\n", "ACFUError", "getCFError");
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = *(*(this + 1) + 8);
  v5 = (v4 - 40);
  if (*(v4 - 17) < 0)
  {
    v5 = *v5;
  }

  v6 = CFStringCreateWithCString(v2, v5, 0x8000100u);
  if (v6)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE30], v6);
    v8 = *(*(this + 1) + 8);
    if (*(v8 - 8))
    {
      v9 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v9, 3, "%s::%s: Populating underlying error\n", "ACFUError", "getCFError");
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE78], *(*(*(this + 1) + 8) - 8));
      v8 = *(*(this + 1) + 8);
    }

    v10 = CFErrorCreate(v2, *this, *(v8 - 16), Mutable);
    if (v10)
    {
      if (!Mutable)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v13 = "%s::%s: failed to create CFError object\n";
  }

  else
  {
    v13 = "%s::%s: failed to create CFString for error object\n";
  }

  ACFUError::getCFError(v13);
  v10 = 0;
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

void ACFUError::clearError(ACFUError *this)
{
  v1 = *(this + 1);
  v3 = *v1;
    ;
  }

  v1[1] = v3;
}

uint64_t ACFUError::addError(uint64_t a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4)
{
  v7 = a4;
  v8 = a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    result = std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(*(a1 + 8), a2, &v8, &v7);
  }

  else
  {
    std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(*(a1 + 8), *(v4 + 8), a2, &v8, &v7);
    result = v5 + 40;
    *(v4 + 8) = v5 + 40;
  }

  *(v4 + 8) = result;
  return result;
}

void ACFUError::logError(ACFUError *this)
{
  v1 = *(this + 1);
  v3 = *v1;
  v2 = v1[1];
  LogInstance = ACFULogging::getLogInstance(this);
  if (v2 == v3)
  {
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: No error to log. All clear, move along now!\n");
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Error Reason: %s, Error Code: 0x%08lx\n");
  }
}

const void *ACFUError::createAppendedDomain(const void **this, const __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, *this);
  CFArrayAppendValue(Mutable, a2);
  Copy = CFArrayCreateCopy(v4, Mutable);
  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  *this = CFStringCreateByCombiningStrings(v4, Copy, @"::");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return *this;
}

void ACFUError::~ACFUError(void ***this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](this + 1, 0);
}

void std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](&v3);
    operator delete(v2);
  }
}

void std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        ACFUErrorContainer::~ACFUErrorContainer((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(uint64_t a1, uint64_t a2, std::string::size_type *a3, std::string::size_type *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = (v11 + 40 * v4);
  *(&v20 + 1) = v11 + 40 * v10;
  std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(a1, v19, a2, a3, a4);
  *&v20 = v19 + 40;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(&v18);
  return v17;
}

void sub_2402C87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, std::string::size_type *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  ACFUErrorContainer::ACFUErrorContainer(this, &__p, *a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2402C8838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(40 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(int a1, ACFUErrorContainer *this, ACFUErrorContainer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      v7 += 40;
    }

    while ((v6 + v7) != a3);
    while (v6 != a3)
    {
      ACFUErrorContainer::~ACFUErrorContainer(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_2402C893C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 40);
    v5 = -v2;
    do
    {
      ACFUErrorContainer::~ACFUErrorContainer(v4);
      v4 = (v6 - 40);
      v5 += 40;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ACFUErrorContainer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    ACFUErrorContainer::~ACFUErrorContainer((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ACFUACIPCTransport::ACFUACIPCTransport(ACFUACIPCTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_28522EF28;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0x800000;
  v1[6] = 0;
  v1[7] = &unk_28522F060;
  v1[10] = v1 + 7;
  v1[11] = &unk_28522F0F0;
  v1[14] = v1 + 11;
  v1[15] = &unk_28522F180;
  v1[18] = v1 + 15;
  v1[19] = 0;
}

uint64_t ACFUACIPCTransport::init(uint64_t a1, uint64_t *a2)
{
  v4 = dispatch_queue_create("com.apple.acfu.acipcTransport", 0);
  v5 = *(a1 + 152);
  *(a1 + 152) = v4;

  if (*(a1 + 152))
  {
    v7 = a2[1];
    v22 = *a2;
    v23 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = ACFUTransport::init(a1, &v22);
    v9 = v23;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v8)
    {
      v10 = 1;
      goto LABEL_8;
    }

    ACFUACIPCTransport::init(v9);
  }

  else
  {
    ACFUACIPCTransport::init(v6);
  }

  v10 = 0;
LABEL_8:
  Trace = ACFUTrace::getTrace(v9);
  v12 = Trace[12];
  v13 = ACFUTrace::getTrace(Trace);
  if (v12 == 1)
  {
    v14 = ACFUTrace::getTrace(v13);
    ACFUTrace::getTrace(v14);
    kdebug_trace();
  }

  else if (*v13)
  {
    LogInstance = ACFULogging::getLogInstance(v13);
    v16 = ACFUTrace::getTrace(LogInstance);
    v17 = *v16 << 24;
    v18 = ACFUTrace::getTrace(v16);
    v19 = v17 & 0xFF00FFFF | (*(v18 + 1) << 16);
    v20 = ACFUTrace::getTrace(v18);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: TRACE EVENT ACFUTrace::kACFUTraceEventTransportInit: 0x%08x\n", "ACFUACIPCTransport", "init", v19 & 0xFFFF0003 | (4 * (v20[1] & 0x3FFF)));
  }

  return v10;
}

void sub_2402C8BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUACIPCTransport::readRegister(ACFULogging *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -536870198;
  if (a2)
  {
    v5 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport12readRegisterEPP12IOACIPCClassjPhPj_block_invoke;
    block[3] = &__block_descriptor_68_ea8_32r_e5_v8__0l;
    block[4] = &v11;
    block[5] = a2;
    v10 = a3;
    block[6] = a4;
    block[7] = a5;
    dispatch_sync(v5, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: null acipcInterface\n", "ACFUACIPCTransport", "readRegister");
  }

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t ___ZN18ACFUACIPCTransport12readRegisterEPP12IOACIPCClassjPhPj_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 112))(result, *(a1 + 64), *(a1 + 48), *(a1 + 56));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::writeRegister(ACFULogging *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870198;
  if (a2)
  {
    v5 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport13writeRegisterEPP12IOACIPCClassjPKhj_block_invoke;
    block[3] = &__block_descriptor_64_ea8_32r_e5_v8__0l;
    block[4] = &v12;
    block[5] = a2;
    block[6] = a4;
    v10 = a3;
    v11 = a5;
    dispatch_sync(v5, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: null acipcInterface\n", "ACFUACIPCTransport", "writeRegister");
  }

  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t ___ZN18ACFUACIPCTransport13writeRegisterEPP12IOACIPCClassjPKhj_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 120))(result, *(a1 + 56), *(a1 + 48), *(a1 + 60));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::generateBootNonce(ACFULogging *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -536870198;
  if (a2)
  {
    v2 = *(a1 + 19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3254779904;
    block[2] = ___ZN18ACFUACIPCTransport17generateBootNonceEPP12IOACIPCClass_block_invoke;
    block[3] = &__block_descriptor_48_ea8_32r_e5_v8__0l;
    block[4] = &v7;
    block[5] = a2;
    dispatch_sync(v2, block);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: null acipcInterface\n", "ACFUACIPCTransport", "generateBootNonce");
  }

  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZN18ACFUACIPCTransport17generateBootNonceEPP12IOACIPCClass_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 104))(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::acipcIO(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -536870198;
  v6 = *(a1 + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = ___ZN18ACFUACIPCTransport7acipcIOEPP12IOACIPCClassjPvPj14acipcDirection_block_invoke;
  block[3] = &__block_descriptor_72_ea8_32r_e5_v8__0l;
  block[4] = &v12;
  block[5] = a2;
  block[6] = a4;
  block[7] = a5;
  v10 = a3;
  v11 = a6;
  dispatch_sync(v6, block);
  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t ___ZN18ACFUACIPCTransport7acipcIOEPP12IOACIPCClassjPvPj14acipcDirection_block_invoke(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    result = (*(*result + 72))(result, *(a1 + 64), *(a1 + 48), *(a1 + 56), *(a1 + 68));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ACFUACIPCTransport::loadImageOnBTIStage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, id a5)
{
  v9 = a5;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = -536870198;
  Trace = ACFUTrace::getTrace(v9);
  if (*(Trace + 12) == 1)
  {
    v11 = ACFUTrace::getTrace(Trace);
    v12 = ACFUTrace::getTrace(v11);
    ACFUTrace::getTrace(v12);
    v13 = kdebug_trace();
  }

  else
  {
    v13 = ACFUTrace::getTrace(Trace);
    if (*v13)
    {
      LogInstance = ACFULogging::getLogInstance(v13);
      v15 = ACFUTrace::getTrace(LogInstance);
      v16 = *v15;
      v17 = ACFUTrace::getTrace(v15);
      v18 = *(v17 + 1);
      v19 = ACFUTrace::getTrace(v17);
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: TRACE EVENT BEGIN ACFUTrace::kACFUTraceEventBTI: 0x%08x\n", "ACFUACIPCTransport", "loadImageOnBTIStage", (4 * *(v19 + 4) + 4) & 0xFFFC | (v16 << 24) | (v18 << 16) | 1);
    }
  }

  if (!a2)
  {
    v59 = ACFULogging::getLogInstance(v13);
    v60 = "%s::%s: null acipcInterface\n";
    goto LABEL_50;
  }

  if (a4)
  {
    if (v9)
    {
      ACFUTimer::create(v9, a4, &valuePtr);
      v21 = valuePtr;
      if (valuePtr)
      {
        v22 = ACFUTimer::start(valuePtr);
        if ((v22 & 1) == 0)
        {
          v23 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v23, 2, "%s::%s: failed to start BTI stage timer\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
          v25 = 0;
LABEL_44:
          v46 = 3000;
          goto LABEL_34;
        }

        goto LABEL_12;
      }

      v59 = ACFULogging::getLogInstance(v20);
      v60 = "%s::%s: failed to create BTI stage timer\n";
    }

    else
    {
      v59 = ACFULogging::getLogInstance(v13);
      v60 = "%s::%s: invalid timeout callback parameter\n";
    }

LABEL_50:
    v21 = 0;
    ACFULogging::handleMessage(v59, 2, v60, "ACFUACIPCTransport", "loadImageOnBTIStage");
    v46 = 3000;
    v25 = 0;
    goto LABEL_34;
  }

  v21 = 0;
LABEL_12:
  if (*(a1 + 48))
  {
    v26.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  }

  else
  {
    v26.__d_.__rep_ = 0;
  }

  v27 = *(a3 + 8);
  v65 = *a3;
  v66 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = *(a1 + 80);
  if (!v28)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v25 = (*(*v28 + 48))(v28, &v65);
  v30 = v66;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v25)
  {
    v31 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v31, 3, "%s::%s: using client prepared load image (assuming 4k alignment)\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
    BytePtr = CFDataGetBytePtr(v25);
    v81[3] = BytePtr;
    Length = CFDataGetLength(v25);
    v34 = v77;
  }

  else
  {
    v35 = ACFUFirmware::copyFWContainer(*a3, v29);
    v25 = v35;
    if (!v35 || (TypeID = CFDataGetTypeID(), v35 = CFGetTypeID(v25), TypeID != v35))
    {
      v62 = ACFULogging::getLogInstance(v35);
      ACFULogging::handleMessage(v62, 2, "%s::%s: firmware to push is missing!\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
      v46 = 1000;
      goto LABEL_34;
    }

    v37 = CFDataGetLength(v25);
    v77[3] = (v37 + 4095) & 0xFFFFFFFFFFFFF000;
    v38 = ACFUFirmware::isFWContainerMutable(*a3);
    if (!v38)
    {
      v58 = ACFULogging::getLogInstance(v38);
      ACFULogging::handleMessage(v58, 2, "%s::%s: unable to handle unexpected input parameters\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
      goto LABEL_44;
    }

    v39 = ACFULogging::getLogInstance(v38);
    ACFULogging::handleMessage(v39, 0, "%s::%s: padding of %zu bytes required\n", "ACFUACIPCTransport", "loadImageOnBTIStage", v77[3] - v37);
    CFDataIncreaseLength(v25, v77[3] - v37);
    v40 = CFDataGetLength(v25);
    v77[3] = v40;
    Length = CFDataGetBytePtr(v25);
    v34 = v81;
  }

  v34[3] = Length;
  v41 = *(a1 + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = ___ZN18ACFUACIPCTransport19loadImageOnBTIStageEPP12IOACIPCClassNSt3__110shared_ptrI12ACFUFirmwareEEjU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_72_ea8_32r40r48r56r_e5_v8__0l;
  block[4] = &v68;
  block[5] = &v80;
  block[6] = &v76;
  block[7] = &v72;
  block[8] = a2;
  dispatch_sync(v41, block);
  if (*(v69 + 6))
  {
    v61 = ACFULogging::getLogInstance(hasFired);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed with error (ret: 0x%08x) (cookie: 0x%08x)\n", "ACFUACIPCTransport", "loadImageOnBTIStage", *(v69 + 6), *(v73 + 6));
    v46 = 3001;
  }

  else
  {
    if (*(a1 + 48))
    {
      valuePtr = (std::chrono::system_clock::now().__d_.__rep_ - v26.__d_.__rep_) / 1000;
      v43 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
      if (v43)
      {
        CFDictionaryAddValue(*(a1 + 48), @"bti", v43);
        CFRelease(v43);
      }

      else
      {
        v44 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v44, 2, "%s::%s: could not collect bti download time data\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
      }
    }

    if (v21 && (ACFUTimer::stop(v21), hasFired = ACFUTimer::hasFired(v21), hasFired))
    {
      v63 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v63, 2, "%s::%s: timeout in BTI stage\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
      v46 = 3030;
    }

    else
    {
      v45 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v45, 0, "%s::%s: BTI stage completed successfully\n", "ACFUACIPCTransport", "loadImageOnBTIStage");
      v46 = 0;
    }
  }

LABEL_34:
  v47 = ACFUTrace::getTrace(v24);
  if (*(v47 + 12) == 1)
  {
    v48 = ACFUTrace::getTrace(v47);
    v49 = ACFUTrace::getTrace(v48);
    ACFUTrace::getTrace(v49);
    kdebug_trace();
  }

  else
  {
    v50 = ACFUTrace::getTrace(v47);
    if (*v50)
    {
      v51 = ACFULogging::getLogInstance(v50);
      v52 = ACFUTrace::getTrace(v51);
      v53 = *v52;
      v54 = ACFUTrace::getTrace(v52);
      v55 = *(v54 + 1);
      v56 = ACFUTrace::getTrace(v54);
      ACFULogging::handleMessage(v51, 4, "%s::%s: TRACE EVENT END ACFUTrace::kACFUTraceEventBTI: 0x%08x\n", "ACFUACIPCTransport", "loadImageOnBTIStage", (4 * *(v56 + 4) + 4) & 0xFFFC | (v53 << 24) | (v55 << 16) | 2);
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  return v46;
}

void sub_2402C9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Block_object_dispose((v30 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZN18ACFUACIPCTransport19loadImageOnBTIStageEPP12IOACIPCClassNSt3__110shared_ptrI12ACFUFirmwareEEjU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  result = **(a1 + 64);
  if (result)
  {
    result = (*(*result + 88))(result, *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(*(a1 + 56) + 8) + 24, 0);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __copy_helper_block_ea8_32r40r48r56r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void __destroy_helper_block_ea8_32r40r48r56r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t ACFUACIPCTransport::processOpenForWriteCommand(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = 0;
  v38 = 4;
  LODWORD(__p[0]) = *(a3 + 4);
  BYTE4(__p[0]) = 0;
  v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  rep = v6.__d_.__rep_;
  if (a1[4])
  {
    LogInstance = ACFULogging::getLogInstance(v6.__d_.__rep_);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: there is already a file trasfer in progress\n");
    goto LABEL_31;
  }

  v7 = ACFULogging::getLogInstance(v6.__d_.__rep_);
  v8 = __p;
  if (v38 < 0)
  {
    v8 = __p[0];
  }

  ACFULogging::handleMessage(v7, 0, "%s::%s: open (write only): %s\n", "ACFUACIPCTransport", "processOpenForWriteCommand", v8);
  v10 = *(a3 + 12);
  v36 = v10;
  if (!v10)
  {
    v22 = ACFULogging::getLogInstance(v9);
    v23 = __p;
    if (v38 < 0)
    {
      v23 = __p[0];
    }

    ACFULogging::handleMessage(v22, 2, "%s::%s: invalid file %s with size 0\n", "ACFUACIPCTransport", "processOpenForWriteCommand", v23);
    goto LABEL_31;
  }

  v11 = a1[18];
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(&v34);
  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = &v34;
  }

  else
  {
    v13 = __p;
  }

  std::string::operator=(&v34, v13);
  v14 = a1[1];
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v34;
  }

  ACFUDiagnostics::createFileDataContainer(v14, &v32, &v33);
  v16 = v33;
  v39 = v33;
  v33 = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (!v16)
  {
    v24 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to obtain file container\n", "ACFUACIPCTransport", "processOpenForWriteCommand");
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else if (!v16)
  {
    goto LABEL_31;
  }

  LOWORD(v34.__r_.__value_.__l.__data_) = 3073;
  *&v34.__r_.__value_.__s.__data_[2] = *(a3 + 2);
  HIDWORD(v34.__r_.__value_.__r.__words[0]) = *(a3 + 4);
  LODWORD(v34.__r_.__value_.__r.__words[1]) = v10;
  LODWORD(v33) = 12;
  v17 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v34, &v33, 1);
  if (v17)
  {
    v25 = v17;
    v26 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to send response to device error: 0x%x\n", "ACFUACIPCTransport", "processOpenForWriteCommand", v25);
  }

  else
  {
    v31 = 1;
    v33 = 0;
    std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,decltype(nullptr),std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(&v31, __p, &v36, &v39, &rep, &v34);
    v18 = v34.__r_.__value_.__r.__words[0];
    v34.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](a1 + 4, v18);
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](&v34, 0);
    if (a1[4])
    {
      v20 = 1;
      goto LABEL_32;
    }

    v27 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create file transfer session\n");
  }

LABEL_31:
  v20 = 0;
LABEL_32:
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = v39;
  v39 = 0;
  if (v28)
  {
    ACFUDataContainer::~ACFUDataContainer(v28);
    operator delete(v29);
  }

  return v20;
}

void sub_2402C9CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 88);
  *(v34 - 88) = 0;
  if (v36)
  {
    ACFUDataContainer::~ACFUDataContainer(v36);
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,decltype(nullptr),std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(char *a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X3>, ACFUDataContainer **a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v12 = operator new(0x48uLL);
  v13 = *a1;
  v20 = 0;
  v21 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
  }

  else
  {
    v19 = *a2;
  }

  v14 = *a3;
  v15 = *a4;
  *a4 = 0;
  v18 = v15;
  ACFUACIPCTransport::FileTransferSession::FileTransferSession(v12, v13, &v20, &v19, v14, &v18, *a5);
  *a6 = v12;
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    ACFUDataContainer::~ACFUDataContainer(v16);
    operator delete(v17);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_2402C9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ACFUDataContainer *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t ACFUACIPCTransport::processOpenForReadCommand(uint64_t a1, uint64_t a2, ACFUFirmware **a3, uint64_t a4)
{
  v38 = 0;
  v37 = 4;
  LODWORD(__p[0]) = *(a4 + 4);
  BYTE4(__p[0]) = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  LogInstance = ACFULogging::getLogInstance(rep);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: open (read only): %s\n", "ACFUACIPCTransport", "processOpenForReadCommand", __p);
  if (*(a1 + 32))
  {
    v24 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v24, 2, "%s::%s: there is already a file trasfer in progress\n");
    goto LABEL_27;
  }

  v10 = *a3;
  if (!*a3)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: invalid firmware object when processing open (read) command\n");
    goto LABEL_27;
  }

  if (v37 < 0)
  {
    if (__p[1] != 4)
    {
      goto LABEL_9;
    }

    v11 = __p[0];
  }

  else
  {
    if (v37 != 4)
    {
      goto LABEL_9;
    }

    v11 = __p;
  }

  if (*v11 == 1295273289)
  {
    Manifest = ACFUFirmware::getManifest(v10);
    ACFUDataContainer::create(Manifest, &v32);
    v15 = v32;
    v38 = v32;
    if (!v32)
    {
      v30 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v30, 2, "%s::%s: manifest (%s) not available\n");
      goto LABEL_27;
    }

    goto LABEL_14;
  }

LABEL_9:
  Length = (*(*v10 + 40))(v10, __p);
  v35 = Length;
  if (Length)
  {
    goto LABEL_15;
  }

  v13 = *(a1 + 112);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(&v32);
  v15 = v32;
  v38 = v32;
  if (!v32)
  {
    v29 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v29, 2, "%s::%s: file (%s) not available\n");
    goto LABEL_27;
  }

LABEL_14:
  Length = ACFUDataContainer::getLength(v15, v14);
  v35 = Length;
LABEL_15:
  LOWORD(v32) = 3073;
  WORD1(v32) = *(a4 + 2);
  HIDWORD(v32) = *(a4 + 4);
  v33 = Length;
  v31 = 12;
  v17 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v32, &v31, 1);
  if (v17)
  {
    v26 = v17;
    v27 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v27, 2, "%s::%s: failed to send response to device error: 0x%x\n", "ACFUACIPCTransport", "processOpenForReadCommand", v26);
  }

  else
  {
    LOBYTE(v31) = 0;
    std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,std::shared_ptr<ACFUFirmware> &,std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(&v31, a3, __p, &v35, &v38, &rep, &v32);
    v18 = v32;
    v32 = 0;
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100]((a1 + 32), v18);
    std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](&v32, 0);
    if (*(a1 + 32))
    {
      v20 = 1;
      goto LABEL_18;
    }

    v28 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v28, 2, "%s::%s: failed to create file transfer session\n");
  }

LABEL_27:
  v20 = 0;
LABEL_18:
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v38;
  v38 = 0;
  if (v21)
  {
    ACFUDataContainer::~ACFUDataContainer(v21);
    operator delete(v22);
  }

  return v20;
}

void sub_2402CA1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  *(v22 - 72) = 0;
  if (v24)
  {
    ACFUDataContainer::~ACFUDataContainer(v24);
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void std::make_unique[abi:ne200100]<ACFUACIPCTransport::FileTransferSession,ACFUACIPCTransport::FileTransferSession::Mode,std::shared_ptr<ACFUFirmware> &,std::string &,unsigned int &,std::unique_ptr<ACFUDataContainer>,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> &,0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, ACFUDataContainer **a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v14 = operator new(0x48uLL);
  v15 = *a1;
  v16 = a2[1];
  v23 = *a2;
  v24 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a3, *(a3 + 8));
  }

  else
  {
    v22 = *a3;
  }

  v17 = *a4;
  v18 = *a5;
  *a5 = 0;
  v21 = v18;
  ACFUACIPCTransport::FileTransferSession::FileTransferSession(v14, v15, &v23, &v22, v17, &v21, *a6);
  *a7 = v14;
  v19 = v21;
  v21 = 0;
  if (v19)
  {
    ACFUDataContainer::~ACFUDataContainer(v19);
    operator delete(v20);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_2402CA2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ACFUDataContainer *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t ACFUACIPCTransport::processCloseCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = 4;
  LODWORD(__p[0]) = *(a3 + 4);
  BYTE4(__p[0]) = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: close: %s\n", "ACFUACIPCTransport", "processCloseCommand", __p);
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (!v9)
  {
    v27 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v27, 2, "%s::%s: invalid file transfer session\n");
    goto LABEL_52;
  }

  v10 = *(v9 + 47);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (*(v9 + 47))
    {
      goto LABEL_4;
    }

LABEL_22:
    v16 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v16, 2, "%s::%s: file not open\n");
    goto LABEL_52;
  }

  if (!*(v9 + 32))
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v10 >= 0)
  {
    v11 = *(v9 + 47);
  }

  else
  {
    v11 = *(v9 + 32);
  }

  v12 = v40;
  if (v40 < 0)
  {
    v12 = __p[1];
  }

  if (v11 != v12 || (v10 >= 0 ? (v13 = (v9 + 24)) : (v13 = *(v9 + 24)), v40 >= 0 ? (v14 = __p) : (v14 = __p[0]), v7 = memcmp(v13, v14, v11), v7))
  {
    v28 = ACFULogging::getLogInstance(v7);
    v29 = (*v8 + 24);
    if (*(*v8 + 47) < 0)
    {
      v29 = *v29;
    }

    v30 = __p;
    if (v40 < 0)
    {
      v30 = __p[0];
    }

    ACFULogging::handleMessage(v28, 2, "%s::%s: open file %s, received request for file %s\n", "ACFUACIPCTransport", "processCloseCommand", v29, v30);
    goto LABEL_52;
  }

  if (*v9 == 1)
  {
    if (*(a3 + 3) != 1)
    {
      v33 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v33, 2, "%s::%s: invalid file mode for write\n");
      goto LABEL_52;
    }

    if (*(v9 + 52) != *(v9 + 48))
    {
      v34 = ACFULogging::getLogInstance(v7);
      v35 = (*v8 + 24);
      if (*(*v8 + 47) < 0)
      {
        v35 = *v35;
      }

      ACFULogging::handleMessage(v34, 2, "%s::%s: %s: file incomplete: expected %u bytes, but received %u\n", "ACFUACIPCTransport", "processCloseCommand", v35, *(*v8 + 48), *(*v8 + 52));
      goto LABEL_52;
    }

LABEL_25:
    LOWORD(valuePtr) = 3077;
    WORD1(valuePtr) = *(a3 + 2);
    HIDWORD(valuePtr) = *(a3 + 4);
    v38 = 0;
    v36 = 12;
    v17 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &valuePtr, &v36, 1);
    if (v17)
    {
      v31 = v17;
      v32 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v32, 2, "%s::%s: failed to send response to device error: 0x%x\n", "ACFUACIPCTransport", "processCloseCommand", v31);
      goto LABEL_52;
    }

    if (!*(a1 + 48) || **v8)
    {
LABEL_40:
      v25 = 1;
      goto LABEL_41;
    }

    valuePtr = (std::chrono::system_clock::now().__d_.__rep_ - *(*v8 + 64)) / 1000;
    v18 = *MEMORY[0x277CBECE8];
    if (v40 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    v20 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v19, 0x8000100u);
    v21 = CFNumberCreate(v18, kCFNumberLongLongType, &valuePtr);
    v22 = v21;
    if (v20 && v21)
    {
      CFDictionaryAddValue(*(a1 + 48), v20, v21);
    }

    else
    {
      v23 = ACFULogging::getLogInstance(v21);
      v24 = __p;
      if (v40 < 0)
      {
        v24 = __p[0];
      }

      ACFULogging::handleMessage(v23, 2, "%s::%s: failed to collect download metrics for %s\n", "ACFUACIPCTransport", "processCloseCommand", v24);
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    CFRelease(v20);
LABEL_38:
    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_40;
  }

  if (*v9 || !*(a3 + 3))
  {
    goto LABEL_25;
  }

  v15 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v15, 2, "%s::%s: invalid file mode for read\n");
LABEL_52:
  v25 = 0;
LABEL_41:
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](v8, 0);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  return v25;
}

void sub_2402CA6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100]((v2 + 56), 0);
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }
}

BOOL ACFUACIPCTransport::processReadCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = 4;
  __size[1] = *(a3 + 4);
  LOBYTE(__size[2]) = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid file transfer session\n");
    return 0;
  }

  v6 = *(v3 + 47);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 47))
    {
      goto LABEL_4;
    }

LABEL_29:
    v29 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v29, 2, "%s::%s: file not open\n");
    return 0;
  }

  if (!*(v3 + 32))
  {
    goto LABEL_29;
  }

LABEL_4:
  if (*v3)
  {
    v47 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v47, 2, "%s::%s: invalid file open mode\n");
    return 0;
  }

  v7 = *(v3 + 32);
  if (v6 >= 0)
  {
    v7 = *(v3 + 47);
  }

  if (v7 != 4 || (v6 >= 0 ? (v8 = (v3 + 24)) : (v8 = *(v3 + 24)), *v8 != __size[1]))
  {
    v48 = ACFULogging::getLogInstance(a1);
    v49 = *(a1 + 32);
    v50 = (v49 + 24);
    if (*(v49 + 47) < 0)
    {
      v50 = *v50;
    }

    ACFULogging::handleMessage(v48, 2, "%s::%s: open file %s, received request for file %s\n", "ACFUACIPCTransport", "processReadCommand", v50, &__size[1]);
    if (v61 < 0)
    {
      operator delete(*&__size[1]);
    }

    return 0;
  }

  v9 = *(a3 + 12);
  if ((v9 + *(a3 + 8)) > *(v3 + 48))
  {
    v51 = ACFULogging::getLogInstance(a1);
    v52 = *(a1 + 32);
    v53 = (v52 + 24);
    if (*(v52 + 47) < 0)
    {
      v53 = *v53;
    }

    ACFULogging::handleMessage(v51, 2, "%s::%s: %s - trying to read from offset %u length %u, but file size is %u\n", "ACFUACIPCTransport", "processReadCommand", v53, *(a3 + 8), *(a3 + 12), *(v52 + 48));
    return 0;
  }

  if (*(a1 + 44))
  {
    v10 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v10, 4, "%s::%s: Chunking image using paged loading\n", "ACFUACIPCTransport", "processReadCommand");
    v12 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v12, 4, "%s::%s: length: %u, fReadSegmentSize: %u, remains: %lld, offset: %u\n", "ACFUACIPCTransport", "processReadCommand", v9, *(a1 + 44), v9, *(a3 + 8));
    v14 = 0;
    while (v9 >= 1)
    {
      v15 = *(a1 + 44);
      if (v9 <= v15)
      {
        LODWORD(v15) = v9;
      }

      __size[0] = v15;
      v16 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v16, 4, "%s::%s: size: %u, remains: %lld\n", "ACFUACIPCTransport", "processReadCommand", __size[0], v9);
      v17 = *(a1 + 32);
      v18 = *(v17 + 56);
      if (v18)
      {
        ACFUDataContainer::copyDirectData(v18, __size[0], *(a3 + 8) + v14, &v58);
      }

      else
      {
        ACFUFirmware::copyFWDataRefByFileName(*(v17 + 8), &v58);
      }

      v19 = v58;
      DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v58);
      v21 = ACFUACIPCTransport::acipcIO(a1, a2, 2, DataPtr, __size, 1);
      v22 = v21;
      if (v21)
      {
        v28 = ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage(v28, 2, "%s::%s: failed to send data to device error: 0x%x\n", "ACFUACIPCTransport", "processReadCommand", v22);
      }

      else
      {
        v23 = __size[0];
        *(*(a1 + 32) + 52) += __size[0];
        v24 = ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage(v24, 4, "%s::%s: sent %u bytes data to device, fFileTransferSession->fileSize: %u\n", "ACFUACIPCTransport", "processReadCommand", __size[0], *(*(a1 + 32) + 48));
        v26 = ACFULogging::getLogInstance(v25);
        ACFULogging::handleMessage(v26, 0, "%s::%s: sent %u bytes (total: %u)\n", "ACFUACIPCTransport", "processReadCommand", __size[0], *(*(a1 + 32) + 52));
        v14 += v23;
        v9 -= v23;
      }

      if (v19)
      {
        ACFUDataContainer::DirectDataRef::~DirectDataRef(v19);
        operator delete(v27);
      }

      if (v22)
      {
        return 0;
      }
    }

    if (v9)
    {
      v33 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v33, 2, "%s::%s: unexpected (too many) amount of bytes were sent to device, bailing\n", "ACFUACIPCTransport", "processReadCommand");
      return 0;
    }
  }

  else
  {
    __size[0] = *(a3 + 12);
    v30 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v30, 4, "%s::%s: Paged loading is disabled; sending all bytes of requested data in one segment\n", "ACFUACIPCTransport", "processReadCommand");
    v31 = *(a1 + 32);
    v32 = *(v31 + 56);
    if (v32)
    {
      ACFUDataContainer::copyDirectData(v32, v9, *(a3 + 8), &v58);
    }

    else
    {
      ACFUFirmware::copyFWDataRefByFileName(*(v31 + 8), &v58);
    }

    v34 = v58;
    v35 = ACFUDataContainer::DirectDataRef::getDataPtr(v58);
    v36 = ACFUACIPCTransport::acipcIO(a1, a2, 2, v35, __size, 1);
    v37 = v36;
    if (v36)
    {
      v56 = ACFULogging::getLogInstance(v36);
      ACFULogging::handleMessage(v56, 2, "%s::%s: failed to send data to device error: 0x%x\n", "ACFUACIPCTransport", "processReadCommand", v37);
    }

    else
    {
      *(*(a1 + 32) + 52) += __size[0];
      v38 = ACFULogging::getLogInstance(v36);
      ACFULogging::handleMessage(v38, 4, "%s::%s: sent %u bytes data to device, fFileTransferSession->fileSize: %u\n", "ACFUACIPCTransport", "processReadCommand", __size[0], *(*(a1 + 32) + 48));
      v40 = ACFULogging::getLogInstance(v39);
      ACFULogging::handleMessage(v40, 0, "%s::%s: sent %u bytes (total: %u)\n", "ACFUACIPCTransport", "processReadCommand", __size[0], *(*(a1 + 32) + 52));
    }

    if (v34)
    {
      ACFUDataContainer::DirectDataRef::~DirectDataRef(v34);
      operator delete(v41);
    }

    if (v37)
    {
      return 0;
    }
  }

  LOWORD(v58) = 3075;
  WORD1(v58) = *(a3 + 2);
  v43 = *(a3 + 12);
  HIDWORD(v58) = *(a3 + 4);
  v59 = v43;
  __size[0] = 12;
  v44 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v58, __size, 1);
  v42 = v44 == 0;
  if (v44)
  {
    v54 = v44;
    v55 = ACFULogging::getLogInstance(v44);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to send response to device error: 0x%x\n", "ACFUACIPCTransport", "processReadCommand", v54);
  }

  return v42;
}

void sub_2402CACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUACIPCTransport::processWriteCommand(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v45 = 4;
  LODWORD(__p) = a3[1];
  BYTE4(__p) = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid file transfer session\n");
    return 0;
  }

  if (*v3 != 1)
  {
    v31 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v31, 2, "%s::%s: invalid file open mode\n");
    return 0;
  }

  v4 = a3;
  v7 = *(v3 + 47);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 47))
    {
      goto LABEL_5;
    }

LABEL_26:
    v27 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v27, 2, "%s::%s: file not open\n");
    return 0;
  }

  if (!*(v3 + 32))
  {
    goto LABEL_26;
  }

LABEL_5:
  v8 = *(v3 + 32);
  if (v7 >= 0)
  {
    v8 = *(v3 + 47);
  }

  if (v8 != 4 || (v7 >= 0 ? (v9 = (v3 + 24)) : (v9 = *(v3 + 24)), *v9 != __p))
  {
    v32 = ACFULogging::getLogInstance(a1);
    v33 = *(a1 + 32);
    v34 = (v33 + 24);
    if (*(v33 + 47) < 0)
    {
      v34 = *v34;
    }

    ACFULogging::handleMessage(v32, 2, "%s::%s: open file %s, received request for file %s\n", "ACFUACIPCTransport", "processWriteCommand", v34, &__p);
    if (v45 < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v11 = a3[2];
  v10 = a3[3];
  v12 = *(v3 + 48);
  if (v10 + v11 > v12)
  {
    v35 = ACFULogging::getLogInstance(a1);
    v36 = *(a1 + 32);
    v37 = (v36 + 24);
    if (*(v36 + 47) < 0)
    {
      v37 = *v37;
    }

    ACFULogging::handleMessage(v35, 2, "%s::%s: %s - trying to write to offset %u length %u, but file size is %u\n", "ACFUACIPCTransport", "processWriteCommand", v37, v4[2], v4[3], *(v36 + 48));
    return 0;
  }

  if (*(v3 + 52) + v10 > v12)
  {
    v38 = ACFULogging::getLogInstance(a1);
    v39 = *(a1 + 32);
    v40 = (v39 + 24);
    if (*(v39 + 47) < 0)
    {
      v40 = *v40;
    }

    ACFULogging::handleMessage(v38, 2, "%s::%s: %s - attempting to write more bytes (%u) than initially indicated (%u), bailing\n", "ACFUACIPCTransport", "processWriteCommand", v40, v4[3], *(v39 + 48));
    return 0;
  }

  if (!v10)
  {
LABEL_22:
    v42 = 12;
    LOWORD(v43[0]) = 3081;
    HIWORD(v43[0]) = *(v4 + 2);
    v23 = v4[3];
    v43[1] = v4[1];
    v43[2] = v23;
    v24 = ACFUACIPCTransport::acipcIO(a1, a2, 1, v43, &v42, 1);
    v25 = v24 == 0;
    if (v24)
    {
      ACFUACIPCTransport::processWriteCommand(v24);
    }

    return v25;
  }

  do
  {
    v13 = *(a1 + 40);
    if (v10 <= v13)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    v43[0] = v14;
    v15 = operator new[](v14);
    v16 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v16, 4, "%s::%s: size: %u, fWriteSegmentSize: %u, remains: %lld, offset: %u\n", "ACFUACIPCTransport", "processWriteCommand", v43[0], *(a1 + 40), v10, v11);
    v17 = ACFUACIPCTransport::acipcIO(a1, a2, 3, v15, v43, 2);
    if (v17)
    {
      v28 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v28, 2, "%s::%s: failed to receive data from device, error: 0x%x\n", "ACFUACIPCTransport", "processWriteCommand", 0);
LABEL_29:
      operator delete[](v15);
      return 0;
    }

    *(*(a1 + 32) + 52) += v43[0];
    v18 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v18, 4, "%s::%s: received %u bytes data from device, fFileTransferSession->fileSize: %u\n", "ACFUACIPCTransport", "processWriteCommand", v43[0], *(*(a1 + 32) + 48));
    v20 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v20, 0, "%s::%s: received %u bytes (total: %u)\n", "ACFUACIPCTransport", "processWriteCommand", v43[0], *(*(a1 + 32) + 52));
    v21 = ACFUDataContainer::writeData(*(*(a1 + 32) + 56), v15, v11, v43[0]);
    if ((v21 & 1) == 0)
    {
      v29 = ACFULogging::getLogInstance(v21);
      ACFULogging::handleMessage(v29, 2, "%s::%s: failed to write to file\n", "ACFUACIPCTransport", "processWriteCommand");
      goto LABEL_29;
    }

    v10 -= v43[0];
    v11 += v43[0];
    operator delete[](v15);
  }

  while (v10 > 0);
  v4 = a3;
  if (!v10)
  {
    goto LABEL_22;
  }

  ACFUACIPCTransport::processWriteCommand(v22);
  return 0;
}

void sub_2402CB118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUACIPCTransport::processDoneCommand(ACFULogging *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4))
  {
    ACFUACIPCTransport::processDoneCommand(a1);
    return 0;
  }

  else
  {
    v7 = 3079;
    v8 = *(a3 + 2);
    v9 = 0;
    v10 = 0;
    v6 = 12;
    v3 = ACFUACIPCTransport::acipcIO(a1, a2, 1, &v7, &v6, 1);
    v4 = v3 == 0;
    if (v3)
    {
      ACFUACIPCTransport::processDoneCommand(v3);
    }
  }

  return v4;
}

uint64_t ACFUACIPCTransport::processCommandFromDevice(ACFULogging *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v27 = 0;
  v28 = 0;
  if (!a2)
  {
    ACFUACIPCTransport::processCommandFromDevice(a1);
    return 3012;
  }

  if (!a4 || *a4 == 1)
  {
    ACFUACIPCTransport::processCommandFromDevice(a1);
    return 3012;
  }

  v26 = 16;
  v8 = ACFUACIPCTransport::acipcIO(a1, a2, 0, &v27, &v26, 2);
  if (v8)
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to receive command from device, error: 0x%x\n");
    return 3025;
  }

  v9 = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(v9, 4, "%s::%s: command : type %d size %d seqnum %d option %d tag 0x%x offset %d length %d\n", "ACFUACIPCTransport", "processCommandFromDevice", v27, BYTE1(v27), BYTE2(v27), BYTE3(v27), HIDWORD(v27), v28, HIDWORD(v28));
  if (v27 <= 3u)
  {
    if (v27)
    {
      if (v27 == 2)
      {
        Command = ACFUACIPCTransport::processReadCommand(a1, a2, &v27);
        if (!Command)
        {
LABEL_14:
          ACFUACIPCTransport::processCommandFromDevice(Command);
          return 3022;
        }

        return 0;
      }

LABEL_27:
      v20 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v20, 2, "%s::%s: unknown command type %d\n");
      return 3025;
    }

    if (BYTE3(v27) == 1)
    {
      v21 = ACFUACIPCTransport::processOpenForWriteCommand(a1, a2, &v27);
      if ((v21 & 1) == 0)
      {
        ACFUACIPCTransport::processCommandFromDevice(v21);
        return 3021;
      }
    }

    else
    {
      if (BYTE3(v27))
      {
        v22 = ACFULogging::getLogInstance(v10);
        ACFULogging::handleMessage(v22, 2, "%s::%s: unknown command option %d\n");
        return 3025;
      }

      v17 = *(a3 + 8);
      v24 = *a3;
      v25 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = ACFUACIPCTransport::processOpenForReadCommand(a1, a2, &v24, &v27);
      v19 = v25;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if ((v18 & 1) == 0)
      {
        ACFUACIPCTransport::processCommandFromDevice(v19);
        return 3021;
      }
    }

    return 0;
  }

  if (v27 == 4)
  {
    v13 = ACFUACIPCTransport::processCloseCommand(a1, a2, &v27);
    if ((v13 & 1) == 0)
    {
      ACFUACIPCTransport::processCommandFromDevice(v13);
      return 3023;
    }

    return 0;
  }

  if (v27 != 6)
  {
    if (v27 == 8)
    {
      Command = ACFUACIPCTransport::processWriteCommand(a1, a2, &v27);
      if (!Command)
      {
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_27;
  }

  done = ACFUACIPCTransport::processDoneCommand(a1, a2, &v27);
  v15 = done;
  v16 = ACFULogging::getLogInstance(done);
  if (v15)
  {
    ACFULogging::handleMessage(v16, 0, "%s::%s: firmware downloading finished successfully\n", "ACFUACIPCTransport", "processCommandFromDevice");
    result = 0;
    *a4 = 1;
  }

  else
  {
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to process done command\n", "ACFUACIPCTransport", "processCommandFromDevice");
    return 3024;
  }

  return result;
}

void sub_2402CB490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUACIPCTransport::processRTIStage(uint64_t *a1, uint64_t a2, void *a3, unsigned int a4, id a5)
{
  v9 = a5;
  v44 = 0;
  Trace = ACFUTrace::getTrace(v9);
  if (*(Trace + 12) == 1)
  {
    v11 = ACFUTrace::getTrace(Trace);
    v12 = ACFUTrace::getTrace(v11);
    ACFUTrace::getTrace(v12);
    hasFired = kdebug_trace();
  }

  else
  {
    hasFired = ACFUTrace::getTrace(Trace);
    if (*hasFired)
    {
      LogInstance = ACFULogging::getLogInstance(hasFired);
      v15 = ACFUTrace::getTrace(LogInstance);
      v16 = *v15;
      v17 = ACFUTrace::getTrace(v15);
      v18 = *(v17 + 1);
      v19 = ACFUTrace::getTrace(v17);
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: TRACE EVENT BEGIN ACFUTrace::kACFUTraceEventRTI: 0x%08x\n", "ACFUACIPCTransport", "processRTIStage", (4 * *(v19 + 4) + 8) & 0xFFFC | (v16 << 24) | (v18 << 16) | 1);
    }
  }

  if (a2)
  {
    if (!a4)
    {
      v21 = 0;
LABEL_12:
      while ((v44 & 1) == 0)
      {
        v23 = a3[1];
        v42[0] = *a3;
        v42[1] = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        hasFired = ACFUACIPCTransport::processCommandFromDevice(a1, a2, v42, &v44);
        v24 = hasFired;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (v21)
        {
          hasFired = ACFUTimer::hasFired(v21);
          if (hasFired)
          {
            goto LABEL_22;
          }
        }

        if (v24)
        {
          v25 = ACFULogging::getLogInstance(hasFired);
          ACFULogging::handleMessage(v25, 2, "%s::%s: failed to process command from device\n", "ACFUACIPCTransport", "processRTIStage");
          goto LABEL_24;
        }
      }

      if (v21)
      {
LABEL_22:
        ACFUTimer::stop(v21);
        hasFired = ACFUTimer::hasFired(v21);
        if (hasFired)
        {
          v41 = ACFULogging::getLogInstance(hasFired);
          ACFULogging::handleMessage(v41, 2, "%s::%s: timeout in RTI stage\n", "ACFUACIPCTransport", "processRTIStage");
          v24 = 3030;
          goto LABEL_24;
        }
      }

      v26 = ACFULogging::getLogInstance(hasFired);
      ACFULogging::handleMessage(v26, 0, "%s::%s: RTI stage completed successfully\n", "ACFUACIPCTransport", "processRTIStage");
      v24 = 0;
      goto LABEL_24;
    }

    if (v9)
    {
      ACFUTimer::create(v9, a4, &v43);
      v21 = v43;
      if (v43)
      {
        hasFired = ACFUTimer::start(v43);
        if (hasFired)
        {
          goto LABEL_12;
        }

        v22 = ACFULogging::getLogInstance(hasFired);
        ACFULogging::handleMessage(v22, 2, "%s::%s: failed to start RTI stage timer\n", "ACFUACIPCTransport", "processRTIStage");
        goto LABEL_36;
      }

      v39 = ACFULogging::getLogInstance(v20);
      v40 = "%s::%s: failed to create RTI stage timer\n";
    }

    else
    {
      v39 = ACFULogging::getLogInstance(hasFired);
      v40 = "%s::%s: invalid timeout callback parameter\n";
    }
  }

  else
  {
    v39 = ACFULogging::getLogInstance(hasFired);
    v40 = "%s::%s: processRTIStage - null acipcInterface\n";
  }

  v21 = 0;
  ACFULogging::handleMessage(v39, 2, v40, "ACFUACIPCTransport", "processRTIStage");
LABEL_36:
  v24 = 3000;
LABEL_24:
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](a1 + 4, 0);
  v28 = ACFUTrace::getTrace(v27);
  if (*(v28 + 12) == 1)
  {
    v29 = ACFUTrace::getTrace(v28);
    v30 = ACFUTrace::getTrace(v29);
    ACFUTrace::getTrace(v30);
    kdebug_trace();
  }

  else
  {
    v31 = ACFUTrace::getTrace(v28);
    if (*v31)
    {
      v32 = ACFULogging::getLogInstance(v31);
      v33 = ACFUTrace::getTrace(v32);
      v34 = *v33;
      v35 = ACFUTrace::getTrace(v33);
      v36 = *(v35 + 1);
      v37 = ACFUTrace::getTrace(v35);
      ACFULogging::handleMessage(v32, 4, "%s::%s: TRACE EVENT END ACFUTrace::kACFUTraceEventRTI: 0x%08x\n", "ACFUACIPCTransport", "processRTIStage", (4 * *(v37 + 4) + 8) & 0xFFFC | (v34 << 24) | (v36 << 16) | 2);
    }
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return v24;
}

uint64_t ACFUACIPCTransport::loadImageOnRTIStage(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = ACFUACIPCTransport::processRTIStage(a1, a2, v6, 0, 0);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_2402CB964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUACIPCTransport::cancelTimer(dispatch_source_t *this)
{
  if (this[3])
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: cancelTimer - canceling timer\n", "ACFUACIPCTransport", "cancelTimer");
    dispatch_source_cancel(this[3]);
    v3 = this[3];
    this[3] = 0;
  }
}

uint64_t ACFUACIPCTransport::startTimer(dispatch_source_t *a1, id a2, unsigned int a3)
{
  v5 = a2;
  ACFUACIPCTransport::cancelTimer(a1);
  if (!v5)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: startTimer - null timeoutCB.\n");
LABEL_7:
    v15 = 0;
    goto LABEL_4;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1[19]);
  v8 = a1[3];
  a1[3] = v7;

  v10 = a1[3];
  if (!v10)
  {
    v18 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v18, 2, "%s::%s: startTimer - failed to create timer.\n");
    goto LABEL_7;
  }

  v11 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
  v12 = a1[3];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3254779904;
  handler[2] = ___ZN18ACFUACIPCTransport10startTimerEU13block_pointerFvvEj_block_invoke;
  handler[3] = &__block_descriptor_48_ea8_32bs_e5_v8__0l;
  v21 = a1;
  v20 = v5;
  dispatch_source_set_event_handler(v12, handler);
  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 0, "%s::%s: startTimer - starting timer.\n", "ACFUACIPCTransport", "startTimer");
  dispatch_resume(a1[3]);

  v15 = 1;
LABEL_4:

  return v15;
}

uint64_t ___ZN18ACFUACIPCTransport10startTimerEU13block_pointerFvvEj_block_invoke(uint64_t a1)
{
  ACFUACIPCTransport::cancelTimer(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void ACFUACIPCTransport::~ACFUACIPCTransport(ACFUACIPCTransport *this)
{
  *this = &unk_28522EF28;

  std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](this + 120);
  std::__function::__value_func<std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::~__value_func[abi:ne200100](this + 88);
  std::__function::__value_func<__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](this + 56);
  std::unique_ptr<ACFUACIPCTransport::FileTransferSession>::reset[abi:ne200100](this + 4, 0);

  ACFUTransport::~ACFUTransport(this);
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F060;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EEclEOS6_(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNS_10shared_ptrI12ACFUFirmwareEEE_ENS_9allocatorIS7_EEFPK8__CFDataS6_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks16copyBTILoadImageMUlNSt3__110shared_ptrI12ACFUFirmwareEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFNS_10unique_ptrI17ACFUDataContainerNS_14default_deleteISF_EEEESB_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F0F0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFNS_10unique_ptrI17ACFUDataContainerNS_14default_deleteISF_EEEESB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks18copyRTIClientImageMUlRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522F180;
  return result;
}

void _ZNSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EEclESB_(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t _ZNKSt3__110__function6__funcIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_ENS7_ISC_EEFS9_SB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN18ACFUACIPCTransport20ACIPCClientCallbacks26getRTIWriteNameFromFileTagMUlRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ACFUACIPCTransport::FileTransferSession::FileTransferSession(uint64_t a1, char a2, void *a3, __int128 *a4, int a5, uint64_t *a6, uint64_t a7)
{
  *a1 = a2;
  v11 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v12;
  }

  *(a1 + 48) = a5;
  *(a1 + 52) = 0;
  v13 = *a6;
  *a6 = 0;
  *(a1 + 56) = v13;
  *(a1 + 64) = a7;
  return a1;
}