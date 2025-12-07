void sub_1E52F5F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52F5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],std::string&,0>(std::string *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v6 | 7) + 1;
    }

    v8 = operator new(v11);
    a1->__r_.__value_.__l.__size_ = v7;
    a1->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    a1->__r_.__value_.__r.__words[0] = v8;
LABEL_10:
    memmove(v8, __s, v7);
    v8->__r_.__value_.__s.__data_[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(&a1->__r_.__value_.__s + 23) = v6;
  v8 = a1;
  if (v6)
  {
    goto LABEL_10;
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_5:
    v9 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v9;
    return a1;
  }

LABEL_11:
  std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  return a1;
}

void sub_1E52F623C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(*(a1 + 32), __p);
  v2 = v6;
  if (v6)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v15 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_16:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_16;
      }

      operator delete(v4);
      v4 = v15;
    }

    while (v15);
  }

  *(a1 + 16) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    bzero(*a1, 8 * v5);
  }

  *(a1 + 24) = 0;
LABEL_6:
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(*(a1 + 32), __p);
  v2 = v6;
  if (v6)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

__n128 ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

__n128 ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUFusing::BBUFusing(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F5F03778;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 55) = 0;
  *(result + 32) = 0;
  *(result + 79) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUFusing.cpp", 0x13u, "Failed to get feedback");
  }

  return result;
}

void sub_1E52F6748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

void BBUFusing::~BBUFusing(void **this)
{
  *this = &unk_1F5F03778;
  if ((*(this + 79) & 0x80000000) == 0)
  {
    if ((*(this + 55) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[4]);
    return;
  }

  operator delete(this[7]);
  if (*(this + 55) < 0)
  {
    goto LABEL_5;
  }
}

_DWORD *BBUFusing::create(capabilities::updater *a1, uint64_t a2)
{
  FusingType = capabilities::updater::getFusingType(a1);
  if (FusingType == 1)
  {
    v6 = operator new(0x60uLL);
    v7 = BBUFusing::BBUFusing(v6, a1, a2);
    *v6 = &unk_1F5F02F38;
    v8 = capabilities::fusing::modeSetTimeout(v7);
    v6[21] = v8;
    v6[22] = capabilities::fusing::commandTimeout(v8);
    *v6 = &unk_1F5F068C8;
    return v6;
  }

  else
  {
    if (!FusingType || FusingType == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUFusing.cpp", 0x26u, "Unrecognized radio type!");
    }

    return 0;
  }
}

void sub_1E52F691C(_Unwind_Exception *a1)
{
  BBUFusing::~BBUFusing(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLoader::create(int a1@<W0>, DaleTransport_BootLoader **a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x10uLL);
  *v4 = a1;
  *(v4 + 1) = 0;
  v5 = DaleTransport_BootLoader::init(v4);
  if (v5)
  {
    *a2 = v4;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init transport\n", "DaleTransport_BootLoader", "create");
    v7 = *(v4 + 1);
    *(v4 + 1) = 0;
    if (v7)
    {
      support::transport::airship::~airship(v7);
      operator delete(v8);
    }

    operator delete(v4);
  }
}

void sub_1E52F6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

uint64_t DaleTransport_BootLoader::init(support::transport::airship **this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = *this;
  if (v3 > 3)
  {
    v4 = "???";
  }

  else
  {
    v4 = off_1E876E838[v3];
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: creating transport for %s...\n", "DaleTransport_BootLoader", "init", v4);
  v5 = *this;
  if (*this <= 1)
  {
    if (v5 == 1)
    {
      v7 = *this;
    }

    else
    {
      v7 = 0;
      if (!v5)
      {
        v13 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v13, 2, "%s::%s: invalid protocol\n");
        return 0;
      }
    }
  }

  else
  {
    if (v5 == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }
  }

  support::transport::airship::create(v7, &v15);
  v8 = v15;
  v15 = 0;
  v9 = this[1];
  this[1] = v8;
  if (v9)
  {
    support::transport::airship::~airship(v9);
    operator delete(v10);
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      support::transport::airship::~airship(v9);
      operator delete(v11);
    }

    v8 = this[1];
  }

  if (v8)
  {
    return 1;
  }

  v14 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v14, 2, "%s::%s: failed to create transport\n");
  return 0;
}

void **std::unique_ptr<DaleTransport_BootLoader>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL DaleTransport_BootLoader::write(DaleTransport_BootLoader *this, const DaleImage *a2)
{
  if (a2)
  {
    v3 = this;
    this = DaleImage::getSize(a2);
    if (this)
    {
      v4 = this;
      v5 = 0;
      while (1)
      {
        v6 = v4 == 0;
        if (!v4)
        {
          return v6;
        }

        v7 = v4 >= 0x800000 ? 0x800000 : v4;
        v20 = 0xAAAAAAAAAAAAAAAALL;
        DaleImage::getData(&v20, a2, v5, v7);
        if (!v20)
        {
          break;
        }

        v8 = *(v3 + 1);
        DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(v20);
        v10 = support::transport::airship::write(v8, DataPtr, v7);
        if ((v10 & 1) == 0)
        {
          LogInstance = ACFULogging::getLogInstance(v10);
          ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write image data (offset: %zu, size: %zu)\n");
LABEL_15:
          v11 = 0;
          v16 = v20;
          v20 = 0;
          if (!v16)
          {
            goto LABEL_4;
          }

LABEL_12:
          v13 = MEMORY[0x1E69262B0]();
          operator delete(v13);
          goto LABEL_4;
        }

        v5 += v7;
        v4 -= v7;
        v11 = 1;
        v12 = v20;
        v20 = 0;
        if (v12)
        {
          goto LABEL_12;
        }

LABEL_4:
        if ((v11 & 1) == 0)
        {
          return v6;
        }
      }

      v14 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v14, 2, "%s::%s: failed to get image data (offset: %zu, size: %zu)\n");
      goto LABEL_15;
    }

    v17 = "%s::%s: invalid image size\n";
  }

  else
  {
    v17 = "%s::%s: invalid image\n";
  }

  v18 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v18, 2, v17, "DaleTransport_BootLoader", "write");
  return 0;
}

void sub_1E52F6D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUMatureProvisioningData::~BBUMatureProvisioningData(BBUMatureProvisioningData *this)
{
  *this = &unk_1F5F037C0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  *this = &unk_1F5F037C0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  operator delete(this);
}

uint64_t BBUMatureProvisioningData::loadDataSourceToData(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = a1;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a1 = v12;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    _BBULog(20, 0, v5, "", "\n");
  }

LABEL_5:
  v6 = (*(*a3 + 24))(a3);
  v7 = operator new[](v6);
  v14 = -1431655766;
  (*(*a3 + 16))(a3, v7, v6, &v14, 0);
  if (v14 != v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUMatureProvisioningData.cpp", 0x30u, "Assertion failure(amountCopied == dataSize && Unable to copy manifest data to finish provisioning.)");
    goto LABEL_14;
  }

  v8 = CFDataCreate(*MEMORY[0x1E695E480], v7, v6);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUMatureProvisioningData.cpp", 0x33u, "Assertion failure(success && Unable to copy manifest data to finish provisioning.)");
LABEL_14:
  }

  v9 = v8;
  v10 = *a2;
  *a2 = v9;
  if (v10)
  {
    CFRelease(v10);
  }

  operator delete[](v7);
  return 0;
}

_DWORD *BBUProvisioner::create(BBUProvisioner *this, BBUFeedback *a2)
{
  result = capabilities::updater::getProvisionerType(this);
  if (result)
  {
    if (result == 1)
    {
      result = operator new(0x18uLL);
      result[4] = 0;
      *(result + 20) = 1;
      *result = &unk_1F5F03FF0;
      *(result + 1) = this;
    }

    else if (result == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x1Au, "Assertion failure(false && Unrecognized radio type.)");
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    BBUEURProvisioner::BBUEURProvisioner(v4, this, 0);
    result = v4;
    *v4 = &unk_1F5F03800;
  }

  return result;
}

unint64_t BBUProvisioner::begin(uint64_t a1, void *lpsrc, uint64_t a3, capabilities::euicc *a4)
{
  if (lpsrc)
  {
    result = eUICC::getEID(a4, a3, *(a1 + 8));
    if (result == 126)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    result = eUICC::getEID(a4, a3, *(a1 + 8));
    if (result == 126)
    {
      return result;
    }
  }

  if (*(a1 + 16) != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x3Bu, "Assertion failure(false && Invalid BBU provisionin support type.)");
  }

  v9 = *(*a1 + 48);

  return v9(a1, v7, a3, a4);
}

uint64_t BBUProvisioner::finish(_DWORD *a1, void *lpsrc)
{
  if (lpsrc)
  {
    v2 = a1;
    a1 = v2;
  }

  if (a1[4] != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioner.cpp", 0x4Fu, "Assertion failure(false && Invalid BBU provisionin support type.)");
  }

  v3 = *(*a1 + 56);

  return v3();
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void support::transport::getLogClient(support::transport *this)
{
  if ((atomic_load_explicit(&qword_1ED948EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EE0))
  {
    std::string::basic_string[abi:ne200100]<0>(&v2, "com.apple.telephony.basebandservices");
    std::string::basic_string[abi:ne200100]<0>(&__p, "airship");
    support::log::client::client(qword_1ED948EF8, &v2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }

    __cxa_guard_release(&qword_1ED948EE0);
  }
}

void sub_1E52F758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_1ED948EE0);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  __cxa_guard_abort(&qword_1ED948EE0);
  _Unwind_Resume(a1);
}

void support::transport::airship::create(int a1@<W0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = operator new(0x50uLL);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *v3 = dispatch_queue_create("com.apple.telephony.basebandservices.airship", v4);
  *(v3 + 2) = a1;
  if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
  {
    v13 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v13);
    qword_1ED948EE8 = v13;
    __cxa_guard_release(&qword_1ED948EF0);
  }

  v5 = atomic_load((qword_1ED948EE8 + 22664));
  *(v3 + 24) = 0u;
  v6 = (v3 + 24);
  *(v3 + 2) = v5;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  v3[72] = 0;
  if (atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) != -1)
  {
    *buf = &v16;
    __p[0] = buf;
    std::__call_once(&_MergedGlobals_4, __p, std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>);
  }

  v15 = 10;
  strcpy(__p, "airship.io");
  *buf = &unk_1F5F038D0;
  v18 = v3;
  v19 = buf;
  support::misc::safe_timer::create(__p, 10000, buf, 17, &v16);
  v7 = v16;
  v16 = 0;
  v8 = *v6;
  *v6 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = v19;
  if (v19 == buf)
  {
    v10 = (*(*v19 + 32))(v19);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (v19)
  {
    v10 = (*(*v19 + 40))();
  }

  if (v15 < 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }

LABEL_11:
  support::transport::getLogClient(v10);
  v11 = *qword_1ED948F28;
  if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E5234000, v11, OS_LOG_TYPE_ERROR, "error: airship not supported", buf, 2u);
  }

  support::transport::airship::~airship(v3);
  operator delete(v12);
}

void sub_1E52F78EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  operator delete(v20);
  __cxa_guard_abort(&qword_1ED948EF0);
  if (*v18)
  {
    dispatch_release(*v18);
  }

  operator delete(v18);
  std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

support::transport::airship **std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](support::transport::airship **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    support::transport::airship::~airship(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void support::transport::airship::~airship(support::transport::airship *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = support::transport::airship::stop(this);
  if ((v2 & 1) == 0 && (support::transport::getLogClient(v2), v3 = *qword_1ED948F28, v2 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR), v2))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&dword_1E5234000, v3, OS_LOG_TYPE_ERROR, "error: failed to stop", &v10, 2u);
    if (atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else if (atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire))
  {
    goto LABEL_4;
  }

  v2 = __cxa_guard_acquire(&qword_1ED948EF0);
  if (v2)
  {
    v9 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v9);
    qword_1ED948EE8 = v9;
    __cxa_guard_release(&qword_1ED948EF0);
  }

LABEL_4:
  v4 = atomic_load((qword_1ED948EE8 + 22664));
  if (*(this + 2) < v4)
  {
    support::transport::getLogClient(v2);
    v5 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - *(this + 2);
      v10 = 134218242;
      v11 = v6;
      v12 = 2080;
      v13 = "???";
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "warning: memory pool dynamic allocation count increased by %zu for %s", &v10, 0x16u);
    }
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void sub_1E52F7C1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v2);
    __cxa_guard_abort(&qword_1ED948EF0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::transport::airship::stop(support::transport::airship *this)
{
  v9 = *MEMORY[0x1E69E9840];
  support::transport::getLogClient(this);
  v2 = *qword_1ED948F28;
  v3 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v7 = 136315138;
    v8 = "???";
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEFAULT, "%s stopping...", &v7, 0xCu);
  }

  v4 = *(this + 72);
  if (!*(this + 72))
  {
    support::transport::getLogClient(v3);
    v5 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "already stopped", &v7, 2u);
    }
  }

  return v4 == 0;
}

uint64_t support::transport::airship::read(support::misc::safe_timer **this, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v72 = *MEMORY[0x1E69E9840];
  if (this[5] < a3)
  {
    v6 = dispatch_group_create();
    *&v67.__state_ = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v67.__gate2_.__cv_.__opaque[8] = v7;
    *&v67.__gate2_.__cv_.__opaque[24] = v7;
    *&v67.__gate1_.__cv_.__opaque[24] = v7;
    *&v67.__gate2_.__cv_.__sig = v7;
    *&v67.__gate1_.__cv_.__sig = v7;
    *&v67.__gate1_.__cv_.__opaque[8] = v7;
    *&v67.__mut_.__m_.__opaque[24] = v7;
    *&v67.__mut_.__m_.__opaque[40] = v7;
    *&v67.__mut_.__m_.__sig = v7;
    *&v67.__mut_.__m_.__opaque[8] = v7;
    object = v6;
    std::__shared_mutex_base::__shared_mutex_base(&v67);
    v64.__cv_.__sig = 1018212795;
    memset(v64.__cv_.__opaque, 0, sizeof(v64.__cv_.__opaque));
    v8 = operator new(0x58uLL);
    v8[3] = 850045863;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_1F5F03880;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    v8[10] = 0;
    v65 = (v8 + 3);
    v66 = v8;
    v59 = 0;
    v58 = 1;
    if (*(v5 + 72) == 1)
    {
      if (v4)
      {
        if (v6)
        {
          v9 = v5[3];
          v10 = *(v9 + 23);
          if (v10 == dispatch_get_specific("CurrentQueue"))
          {
            v6 = object;
            support::misc::safe_timer::start_sync(v9);
          }

          else
          {
            *block = MEMORY[0x1E69E9820];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
            v69 = &__block_descriptor_tmp_8_0;
            v70 = v9;
            dispatch_sync(v10, block);
            v6 = object;
          }

          v26 = 0;
          v56 = v5;
          while (1)
          {
            v27 = atomic_load(&v58);
            if ((v27 & 1) == 0)
            {
              break;
            }

            v28 = *(v5 + 10);
            if (v28 >= v3)
            {
              v29 = v3;
            }

            else
            {
              v29 = v28;
            }

            if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
            {
              v41 = operator new(0x5890uLL);
              support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v41);
              qword_1ED948EE8 = v41;
              __cxa_guard_release(&qword_1ED948EF0);
              v5 = v56;
            }

            v30 = qword_1ED948EE8;
            *block = 0;
            if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_1ED948EE8 + 22528), block))
            {
              *block = aligned_alloc(8uLL, 0x58uLL);
              if (!*block)
              {
                exception = __cxa_allocate_exception(8uLL);
                v55 = std::bad_alloc::bad_alloc(exception);
                __cxa_throw(v55, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
              }

              atomic_fetch_add((v30 + 22664), 1uLL);
            }

            v31 = *block;
            if (v5[5] <= v29)
            {
              v33 = 0;
              v32 = 0xAAAAAAAAAAAAAA00;
              v34 = 0xAAAAAAAAAAAAAAAALL;
              v35 = 0xAAAAAAAAAAAAAAAALL;
            }

            else
            {
              v32 = v5[6];
              v33 = 1;
              v34 = v4;
              v35 = v29;
            }

            v6 = object;
            dispatch_retain(object);
            *v31 = v26;
            *(v31 + 8) = v29;
            *(v31 + 16) = v32;
            *(v31 + 24) = v34;
            *(v31 + 32) = v35;
            *(v31 + 40) = v33;
            *(v31 + 41) = -1431655766;
            *(v31 + 44) = -1431655766;
            *(v31 + 48) = object;
            dispatch_retain(object);
            v36 = *(v31 + 48);
            if (v36)
            {
              dispatch_group_enter(v36);
            }

            *(v31 + 56) = &v67;
            *(v31 + 64) = &v64;
            *(v31 + 72) = &v59;
            *(v31 + 80) = &v58;
            dispatch_release(object);
            support::transport::getLogClient(v37);
            v5 = v56;
            v38 = *qword_1ED948F28;
            v39 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
            if (v39)
            {
              *block = 67109120;
              *&block[4] = v29;
              _os_log_debug_impl(&dword_1E5234000, v38, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", block, 8u);
            }

            support::transport::getLogClient(v39);
            v40 = *qword_1ED948F28;
            if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG))
            {
              *block = 134218240;
              *&block[4] = v26;
              *&block[12] = 2048;
              *&block[14] = v3;
              _os_log_debug_impl(&dword_1E5234000, v40, OS_LOG_TYPE_DEBUG, "read scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
              v4 += v29;
              ++v26;
              v3 -= v29;
              if (!v3)
              {
                break;
              }
            }

            else
            {
              v4 += v29;
              ++v26;
              v3 -= v29;
              if (!v3)
              {
                break;
              }
            }
          }

          support::misc::safe_timer::stop(v5[3]);
          v42 = v5[3];
          v60 = 0;
          v61 = &v60;
          v62 = 0x2000000000;
          v63 = 0;
          v43 = *(v42 + 23);
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 1107296256;
          *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
          v69 = &__block_descriptor_tmp_12_0;
          v70 = &v60;
          v71 = v42;
          dispatch_sync(v43, block);
          v44 = *(v61 + 24);
          _Block_object_dispose(&v60, 8);
          if (v44 != 1)
          {
            v25 = 1;
LABEL_55:
            support::misc::safe_timer::stop(v5[3]);
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
            if (v25)
            {
              LOBYTE(v25) = atomic_load(&v58);
            }

            v46 = v66;
            if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v46->__on_zero_shared)(v46);
              std::__shared_weak_count::__release_weak(v46);
            }

            std::condition_variable::~condition_variable(&v64);
            std::condition_variable::~condition_variable(&v67.__gate2_);
            std::condition_variable::~condition_variable(&v67.__gate1_);
            std::mutex::~mutex(&v67.__mut_);
            if (v6)
            {
              dispatch_release(v6);
            }

            return v25 & 1;
          }

          support::transport::getLogClient(v45);
          v52 = *qword_1ED948F28;
          if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
          {
            *block = 0;
            v53 = "error: read failed (timeout)";
            goto LABEL_79;
          }

LABEL_80:
          v25 = 0;
          goto LABEL_55;
        }

        support::transport::getLogClient(v8);
        v52 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *block = 0;
        v53 = "error: failed to create dispatch group";
      }

      else
      {
        support::transport::getLogClient(v8);
        v52 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *block = 0;
        v53 = "error: invalid dest address";
      }
    }

    else
    {
      support::transport::getLogClient(v8);
      v52 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      *block = 0;
      v53 = "error: invalid state";
    }

LABEL_79:
    _os_log_error_impl(&dword_1E5234000, v52, OS_LOG_TYPE_ERROR, v53, block, 2u);
    goto LABEL_80;
  }

  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(this);
    v51 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v67.__mut_.__m_.__sig) = 0;
    v48 = "error: invalid state";
    goto LABEL_83;
  }

  if (!a2)
  {
    support::transport::getLogClient(this);
    v51 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v67.__mut_.__m_.__sig) = 0;
    v48 = "error: invalid dest address";
    goto LABEL_83;
  }

  v11 = this[3];
  v12 = *(v11 + 23);
  if (v12 != dispatch_get_specific("CurrentQueue"))
  {
    v67.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
    *v67.__mut_.__m_.__opaque = 0x40000000;
    *&v67.__mut_.__m_.__opaque[8] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    *&v67.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_8_0;
    *&v67.__mut_.__m_.__opaque[24] = v11;
    dispatch_sync(v12, &v67);
    if (v3)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  support::misc::safe_timer::start_sync(v11);
  if (!v3)
  {
LABEL_26:
    support::misc::safe_timer::stop(v5[3]);
    v21 = v5[3];
    v64.__cv_.__sig = 0;
    *v64.__cv_.__opaque = &v64;
    *&v64.__cv_.__opaque[8] = 0x2000000000;
    v64.__cv_.__opaque[16] = 0;
    v22 = *(v21 + 23);
    v67.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
    *v67.__mut_.__m_.__opaque = 1107296256;
    *&v67.__mut_.__m_.__opaque[8] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
    *&v67.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_12_0;
    *&v67.__mut_.__m_.__opaque[24] = &v64;
    *&v67.__mut_.__m_.__opaque[32] = v21;
    dispatch_sync(v22, &v67);
    v23 = *(*v64.__cv_.__opaque + 24);
    _Block_object_dispose(&v64, 8);
    if (v23 != 1)
    {
      LOBYTE(v25) = 1;
      goto LABEL_28;
    }

    support::transport::getLogClient(v24);
    v51 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    LOWORD(v67.__mut_.__m_.__sig) = 0;
    v48 = "error: read failed (timeout)";
LABEL_83:
    v49 = v51;
    v50 = 2;
    goto LABEL_66;
  }

  while (1)
  {
LABEL_15:
    v14 = v5[5];
    if (v14 >= v3)
    {
      v15 = v3;
    }

    else
    {
      v15 = v5[5];
    }

    support::transport::getLogClient(v13);
    v16 = *qword_1ED948F28;
    v17 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      LODWORD(v67.__mut_.__m_.__sig) = 67109120;
      HIDWORD(v67.__mut_.__m_.__sig) = v15;
      _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", &v67, 8u);
    }

    support::transport::getLogClient(v17);
    v18 = *qword_1ED948F28;
    v19 = *qword_1ED948F28;
    if (v14 > v3)
    {
      break;
    }

    v13 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      LODWORD(v67.__mut_.__m_.__sig) = 134217984;
      *(&v67.__mut_.__m_.__sig + 4) = v3;
      _os_log_debug_impl(&dword_1E5234000, v18, OS_LOG_TYPE_DEBUG, "read success, remaining %zu bytes...", &v67, 0xCu);
      v20 = v14;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_23:
      v13 = memmove(v4, v5[6], v20);
      goto LABEL_14;
    }

    v20 = v14;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_14:
    v4 += v20;
    v3 -= v20;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_64;
  }

  LODWORD(v67.__mut_.__m_.__sig) = 67109376;
  HIDWORD(v67.__mut_.__m_.__sig) = v15;
  *v67.__mut_.__m_.__opaque = 1024;
  *&v67.__mut_.__m_.__opaque[2] = v14;
  v48 = "error: read size mismatch; expected: %u, actual: %u";
  v49 = v18;
  v50 = 14;
LABEL_66:
  _os_log_error_impl(&dword_1E5234000, v49, OS_LOG_TYPE_ERROR, v48, &v67, v50);
LABEL_64:
  LOBYTE(v25) = 0;
LABEL_28:
  support::misc::safe_timer::stop(v5[3]);
  return v25 & 1;
}

void sub_1E52F8744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::condition_variable *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  operator delete(v30);
  __cxa_guard_abort(&qword_1ED948EF0);
  std::condition_variable_any::~condition_variable_any(&a23);
  std::shared_mutex::~shared_mutex[abi:ne200100](va);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void std::condition_variable_any::~condition_variable_any(std::condition_variable_any *this)
{
  cntrl = this->__mut_.__cntrl_;
  if (cntrl && !atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
    this = v2;
  }

  std::condition_variable::~condition_variable(&this->__cv_);
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t support::transport::airship::write(support::misc::safe_timer **this, void *a2, unint64_t a3)
{
  v3 = a3;
  v61 = *MEMORY[0x1E69E9840];
  if (this[4] >= a3)
  {
    if (*(this + 72) != 1)
    {
      support::transport::getLogClient(this);
      v41 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v56.__mut_.__m_.__sig) = 0;
      v42 = "error: invalid state";
      goto LABEL_73;
    }

    if (!a2)
    {
      support::transport::getLogClient(this);
      v41 = *qword_1ED948F28;
      if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v56.__mut_.__m_.__sig) = 0;
      v42 = "error: invalid source address";
      goto LABEL_73;
    }

    v11 = this[3];
    v12 = *(v11 + 23);
    if (v12 == dispatch_get_specific("CurrentQueue"))
    {
      support::misc::safe_timer::start_sync(v11);
      if (!v3)
      {
LABEL_22:
        support::misc::safe_timer::stop(this[3]);
        v18 = this[3];
        v53.__cv_.__sig = 0;
        *v53.__cv_.__opaque = &v53;
        *&v53.__cv_.__opaque[8] = 0x2000000000;
        v53.__cv_.__opaque[16] = 0;
        v19 = *(v18 + 23);
        v56.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
        *v56.__mut_.__m_.__opaque = 1107296256;
        *&v56.__mut_.__m_.__opaque[8] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
        *&v56.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_12_0;
        *&v56.__mut_.__m_.__opaque[24] = &v53;
        *&v56.__mut_.__m_.__opaque[32] = v18;
        dispatch_sync(v19, &v56);
        v20 = *(*v53.__cv_.__opaque + 24);
        _Block_object_dispose(&v53, 8);
        if (v20 != 1)
        {
          LOBYTE(v22) = 1;
LABEL_24:
          support::misc::safe_timer::stop(this[3]);
          return v22 & 1;
        }

        support::transport::getLogClient(v21);
        v41 = *qword_1ED948F28;
        if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
        {
LABEL_67:
          LOBYTE(v22) = 0;
          goto LABEL_24;
        }

        LOWORD(v56.__mut_.__m_.__sig) = 0;
        v42 = "error: write failed (timeout)";
LABEL_73:
        _os_log_error_impl(&dword_1E5234000, v41, OS_LOG_TYPE_ERROR, v42, &v56, 2u);
        goto LABEL_67;
      }
    }

    else
    {
      v56.__mut_.__m_.__sig = MEMORY[0x1E69E9820];
      *v56.__mut_.__m_.__opaque = 0x40000000;
      *&v56.__mut_.__m_.__opaque[8] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
      *&v56.__mut_.__m_.__opaque[16] = &__block_descriptor_tmp_8_0;
      *&v56.__mut_.__m_.__opaque[24] = v11;
      dispatch_sync(v12, &v56);
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    do
    {
      if (*(this + 8) >= v3)
      {
        v14 = v3;
      }

      else
      {
        v14 = *(this + 8);
      }

      support::transport::getLogClient(v13);
      v15 = *qword_1ED948F28;
      v16 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        LODWORD(v56.__mut_.__m_.__sig) = 67109120;
        HIDWORD(v56.__mut_.__m_.__sig) = v14;
        _os_log_debug_impl(&dword_1E5234000, v15, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", &v56, 8u);
      }

      support::transport::getLogClient(v16);
      v17 = *qword_1ED948F28;
      v13 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        LODWORD(v56.__mut_.__m_.__sig) = 134217984;
        *(&v56.__mut_.__m_.__sig + 4) = v3;
        _os_log_debug_impl(&dword_1E5234000, v17, OS_LOG_TYPE_DEBUG, "write success, remaining %zu bytes...", &v56, 0xCu);
      }

      v3 -= v14;
    }

    while (v3);
    goto LABEL_22;
  }

  v6 = dispatch_group_create();
  *&v56.__state_ = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v56.__gate2_.__cv_.__opaque[8] = v7;
  *&v56.__gate2_.__cv_.__opaque[24] = v7;
  *&v56.__gate1_.__cv_.__opaque[24] = v7;
  *&v56.__gate2_.__cv_.__sig = v7;
  *&v56.__gate1_.__cv_.__sig = v7;
  *&v56.__gate1_.__cv_.__opaque[8] = v7;
  *&v56.__mut_.__m_.__opaque[24] = v7;
  *&v56.__mut_.__m_.__opaque[40] = v7;
  *&v56.__mut_.__m_.__sig = v7;
  *&v56.__mut_.__m_.__opaque[8] = v7;
  std::__shared_mutex_base::__shared_mutex_base(&v56);
  v53.__cv_.__sig = 1018212795;
  memset(v53.__cv_.__opaque, 0, sizeof(v53.__cv_.__opaque));
  v8 = operator new(0x58uLL);
  v8[3] = 850045863;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F5F03880;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  v8[10] = 0;
  v54 = (v8 + 3);
  v55 = v8;
  v48 = 0;
  v47 = 1;
  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(v8);
    v43 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v44 = "error: invalid state";
LABEL_70:
    _os_log_error_impl(&dword_1E5234000, v43, OS_LOG_TYPE_ERROR, v44, block, 2u);
    goto LABEL_71;
  }

  if (!a2)
  {
    support::transport::getLogClient(v8);
    v43 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v44 = "error: invalid source address";
    goto LABEL_70;
  }

  if (!v6)
  {
    support::transport::getLogClient(v8);
    v43 = *qword_1ED948F28;
    if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *block = 0;
    v44 = "error: failed to create dispatch group";
    goto LABEL_70;
  }

  v9 = this[3];
  v10 = *(v9 + 23);
  if (v10 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v9);
  }

  else
  {
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v58 = &__block_descriptor_tmp_8_0;
    v59 = v9;
    dispatch_sync(v10, block);
  }

  v23 = 0;
  while (1)
  {
    v24 = atomic_load(&v47);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(this + 8);
    if (v25 >= v3)
    {
      v26 = v3;
    }

    else
    {
      v26 = v25;
    }

    if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
    {
      v34 = operator new(0x5890uLL);
      support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v34);
      qword_1ED948EE8 = v34;
      __cxa_guard_release(&qword_1ED948EF0);
    }

    v27 = qword_1ED948EE8;
    *block = 0;
    if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_1ED948EE8 + 22528), block))
    {
      *block = aligned_alloc(8uLL, 0x58uLL);
      if (!*block)
      {
        exception = __cxa_allocate_exception(8uLL);
        v46 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v46, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
      }

      atomic_fetch_add((v27 + 22664), 1uLL);
    }

    v28 = *block;
    dispatch_retain(v6);
    *v28 = v23;
    *(v28 + 8) = v26;
    *(v28 + 16) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = v6;
    dispatch_retain(v6);
    v29 = *(v28 + 48);
    if (v29)
    {
      dispatch_group_enter(v29);
    }

    *(v28 + 56) = &v56;
    *(v28 + 64) = &v53;
    *(v28 + 72) = &v48;
    *(v28 + 80) = &v47;
    dispatch_release(v6);
    support::transport::getLogClient(v30);
    v31 = *qword_1ED948F28;
    v32 = os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG);
    if (v32)
    {
      *block = 67109120;
      *&block[4] = v26;
      _os_log_debug_impl(&dword_1E5234000, v31, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", block, 8u);
    }

    support::transport::getLogClient(v32);
    v33 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_DEBUG))
    {
      *block = 134218240;
      *&block[4] = v23;
      *&block[12] = 2048;
      *&block[14] = v3;
      _os_log_debug_impl(&dword_1E5234000, v33, OS_LOG_TYPE_DEBUG, "write scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
      ++v23;
      v3 -= v26;
      if (!v3)
      {
        break;
      }
    }

    else
    {
      ++v23;
      v3 -= v26;
      if (!v3)
      {
        break;
      }
    }
  }

  support::misc::safe_timer::stop(this[3]);
  v35 = this[3];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v36 = *(v35 + 23);
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 1107296256;
  *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v58 = &__block_descriptor_tmp_12_0;
  v59 = &v49;
  v60 = v35;
  dispatch_sync(v36, block);
  v37 = *(v50 + 24);
  _Block_object_dispose(&v49, 8);
  if (v37 == 1)
  {
    support::transport::getLogClient(v38);
    v43 = *qword_1ED948F28;
    if (os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
    {
      *block = 0;
      v44 = "error: write failed (timeout)";
      goto LABEL_70;
    }

LABEL_71:
    v22 = 0;
    goto LABEL_48;
  }

  v22 = 1;
LABEL_48:
  support::misc::safe_timer::stop(this[3]);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (v22)
  {
    LOBYTE(v22) = atomic_load(&v47);
  }

  v39 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  std::condition_variable::~condition_variable(&v53);
  std::condition_variable::~condition_variable(&v56.__gate2_);
  std::condition_variable::~condition_variable(&v56.__gate1_);
  std::mutex::~mutex(&v56.__mut_);
  if (v6)
  {
    dispatch_release(v6);
  }

  return v22 & 1;
}

void sub_1E52F917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::condition_variable *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  operator delete(v27);
  __cxa_guard_abort(&qword_1ED948EF0);
  std::condition_variable_any::~condition_variable_any(&a19);
  std::shared_mutex::~shared_mutex[abi:ne200100](va);
  if (v26)
  {
    dispatch_release(v26);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(void *a1)
{
  a1[2816] = 0;
  a1[2824] = 0;
  v2 = a1 + 2832;
  a1[2832] = 0;
  v3 = 257;
  do
  {
    v4 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    v23 = *v2 & 0xFFFF000000000000 | v4 & 0xFFFFFFFFFFFFLL;
    *(v4 & 0xFFFFFFFFFFFFLL) = *(v4 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | *v2 & 0xFFFFFFFFFFFFLL;
    *v2 = v23;
    --v3;
  }

  while (v3);
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 0xFFFFFFFFFFFFLL) != 0)
  {
    while (1)
    {
      v5 = explicit;
      v6 = explicit;
      atomic_compare_exchange_strong(v2, &v6, (explicit & 0xFFFF000000000000 | *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v6 == v5)
      {
        break;
      }

      explicit = v6;
      if ((v6 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_6;
      }
    }

    v7 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_6:
    v7 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  *v7 = 0;
  v8 = v7 & 0xFFFFFFFFFFFFLL;
LABEL_9:
  v9 = 0;
  a1[2816] = v8;
  atomic_store(v8, a1 + 2824);
  a1[2833] = 0;
  do
  {
    v10 = atomic_load_explicit(a1 + 2832, memory_order_acquire);
    do
    {
      v26 = v10;
      if ((v10 & 0xFFFFFFFFFFFFLL) == 0)
      {
        v12 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        *v12 = 0u;
        *(v12 + 16) = 0u;
        goto LABEL_16;
      }

      v11 = v10;
      atomic_compare_exchange_strong(v2, &v10, (v10 & 0xFFFF000000000000 | *(v10 & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    while (v10 != v11);
    v12 = v26 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0xFFFFFFFFFFFFLL) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v22 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v22, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

LABEL_16:
    *(v12 + 8) = &a1[11 * v9];
    atomic_store((*v12 & 0xFFFF000000000000) + 0x1000000000000, v12);
    v13 = v12 & 0xFFFFFFFFFFFFLL;
    do
    {
      while (1)
      {
        do
        {
          v27 = atomic_load_explicit(a1 + 2824, memory_order_acquire);
          v15 = atomic_load_explicit((v27 & 0xFFFFFFFFFFFFLL), memory_order_acquire);
          v24 = v15;
        }

        while (v27 != atomic_load_explicit(a1 + 2824, memory_order_acquire));
        v16 = v15 & 0xFFFFFFFFFFFFLL;
        if (!v16)
        {
          break;
        }

        v14 = v27;
        atomic_compare_exchange_strong(a1 + 2824, &v14, (v27 & 0xFFFF000000000000 | v16) + 0x1000000000000);
      }

      v17 = v24;
      v18 = v24;
      atomic_compare_exchange_strong((v27 & 0xFFFFFFFFFFFFLL), &v18, (v24 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    }

    while (v18 != v17);
    v19 = v27;
    atomic_compare_exchange_strong(a1 + 2824, &v19, (v27 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    ++v9;
  }

  while (v9 != 256);
  return a1;
}

void *boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate()
{
  __space = 120;
  v0 = malloc(0x80uLL);
  if (!v0 || (v1 = v0, v3 = v0 + 8, std::align(0x40uLL, 0x40uLL, &v3, &__space), *(v3 - 1) = v1, (result = v3) == 0))
  {
    std::bad_alloc::bad_alloc(&__space);
    boost::alignment::detail::throw_exception<std::bad_alloc>();
  }

  return result;
}

void boost::alignment::detail::throw_exception<std::bad_alloc>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55E0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
}

unint64_t *boost::lockfree::detail::freelist_stack<boost::lockfree::queue<support::transport::io_async_cb *>::node,boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>>::~freelist_stack(unint64_t *a1)
{
  v2 = atomic_load(a1);
  v5 = v2;
  while ((v5 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v3 = v5 & 0xFFFFFFFFFFFFLL;
    v5 = *(v5 & 0xFFFFFFFFFFFFLL);
    free(*(v3 - 8));
  }

  return a1;
}

unint64_t *boost::lockfree::queue<support::transport::io_async_cb *>::~queue(unint64_t *a1)
{
  while (1)
  {
    while (1)
    {
      v8 = *a1;
      v7 = a1[8];
      v6 = *(*a1 & 0xFFFFFFFFFFFFLL);
      v2 = v6 & 0xFFFFFFFFFFFFLL;
      if (((v7 ^ *a1) & 0xFFFFFFFFFFFFLL) == 0)
      {
        break;
      }

      if (v2)
      {
        atomic_store((v8 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1);
        v9 = a1[16] & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
        *(v9 & 0xFFFFFFFFFFFFLL) = *(v8 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
        a1[16] = v9;
      }
    }

    if (!v2)
    {
      break;
    }

    atomic_store((v7 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1 + 8);
  }

  v10 = a1[16] & 0xFFFF000000000000 | *a1 & 0xFFFFFFFFFFFFLL;
  *(v10 & 0xFFFFFFFFFFFFLL) = *(*a1 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
  a1[16] = v10;
  v3 = atomic_load(a1 + 16);
  v11 = v3;
  while ((v11 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v4 = v11 & 0xFFFFFFFFFFFFLL;
    v11 = *(v11 & 0xFFFFFFFFFFFFLL);
    free(*(v4 - 8));
  }

  return a1;
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>()
{
  if ((atomic_load_explicit(&qword_1ED948EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EF0))
  {
    v0 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v0);
    qword_1ED948EE8 = v0;

    __cxa_guard_release(&qword_1ED948EF0);
  }
}

void sub_1E52F98A8(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_1ED948EF0);
  _Unwind_Resume(a1);
}

void *std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F038D0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F038D0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::operator()(support::transport *a1)
{
  v1 = *(a1 + 1);
  support::transport::getLogClient(a1);
  v2 = *qword_1ED948F28;
  if (!os_log_type_enabled(*qword_1ED948F28, OS_LOG_TYPE_ERROR))
  {
    return support::transport::airship::stop(v1);
  }

  *v4 = 0;
  _os_log_error_impl(&dword_1E5234000, v2, OS_LOG_TYPE_ERROR, "error: io timeout, aborting...", v4, 2u);
  return support::transport::airship::stop(v1);
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    while (1)
    {
      do
      {
        explicit = atomic_load_explicit(a1, memory_order_acquire);
        v11 = atomic_load_explicit(a1 + 8, memory_order_acquire);
        v2 = atomic_load_explicit((explicit & 0xFFFFFFFFFFFFLL), memory_order_acquire);
      }

      while (explicit != atomic_load_explicit(a1, memory_order_acquire));
      v3 = v2 & 0xFFFFFFFFFFFFLL;
      if (((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      if (!v3)
      {
        return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
      }

      v6 = v11;
      atomic_compare_exchange_strong(a1 + 8, &v6, (v11 & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    if (v3)
    {
      *a2 = *((v2 & 0xFFFFFFFFFFFFLL) + 8);
      v4 = explicit;
      v5 = explicit;
      atomic_compare_exchange_strong(a1, &v5, (explicit & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v13 = atomic_load_explicit(a1 + 16, memory_order_acquire);
  *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v13 & 0xFFFFFFFFFFFFLL;
  v7 = v13;
  v8 = v13;
  atomic_compare_exchange_strong(a1 + 16, &v8, v13 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
  if (v8 != v7)
  {
    do
    {
      *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
      v9 = v8;
      atomic_compare_exchange_strong(a1 + 16, &v8, v8 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
    }

    while (v8 != v9);
  }

  return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
}

uint64_t __cxx_global_var_init_24()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t eUICC::ClearMetadata::GetListOfIccids(int a1, uint64_t a2, void *a3)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Requesting Profile List\n");
  v6 = operator new(7uLL);
  v38 = v6 + 7;
  v39 = v6 + 7;
  *v6 = 1543777727;
  v6[2] = 23042;
  *(v6 + 6) = -107;
  v36 = 0;
  v37 = v6;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  (*(**a3 + 48))(*a3, &v37, &v34, &v32);
  __p = 0;
  v30 = 0;
  v31 = 0;
  v7 = v34;
  v8 = v35 - v34;
  if (v35 != v34)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v35 - v34);
    v31 = __p + v8;
    memcpy(__p, v7, v8);
    v30 = __p + v8;
  }

  *&v23 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v23;
    v33 = v23;
    v10 = __p;
    if (!__p)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = __p;
  if (__p)
  {
LABEL_10:
    v30 = v10;
    operator delete(v10);
  }

LABEL_11:
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Extracting Profile List\n");
  memset(v28, 170, sizeof(v28));
  v27 = 0xAAAAAAAAAAAAAAAALL;
  Length = CFDataGetLength(v9);
  v12 = *MEMORY[0x1E695E480];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], Length, v9);
  v26[2] = MutableCopy;
  v26[0] = CFDataGetMutableBytePtr(MutableCopy);
  v26[1] = CFDataGetLength(MutableCopy);
  if (DERDecodeSeqContentInit(v26, &v28[2]))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v14 = 90;
LABEL_17:
    v15 = "DR_Success == der_ret";
LABEL_18:
    _BBULog(25, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v15, "", "", v14);
    v16 = 1;
    goto LABEL_19;
  }

  if (DERDecodeSeqNext(&v28[2], &v27) || v27 != 0xA00000000000002DLL)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v14 = 93;
    v15 = "DR_Success == der_ret && TAG_PILR == dec.tag";
    goto LABEL_18;
  }

  if (DERDecodeSeqContentInit(v28, &v28[2]))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v14 = 96;
    goto LABEL_17;
  }

  if (DERDecodeSeqNext(&v28[2], &v27) || v27 != 0xA000000000000000)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v14 = 99;
    v15 = "DR_Success == der_ret && TAG_PILR_OK == dec.tag";
    goto LABEL_18;
  }

  if (DERDecodeSeqContentInit(v28, &v28[2]))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v14 = 102;
    goto LABEL_17;
  }

  v16 = 0;
  while (DERDecodeSeqNext(&v28[2], &v27) != 1)
  {
    memset(v25, 170, sizeof(v25));
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v18;
    v24 = v18;
    if (DERDecodeSeqContentInit(v28, &v25[1]))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v19 = 0;
      v20 = 112;
      goto LABEL_52;
    }

    if (v27 != 0xE000000000000003)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v19 = 0;
      v20 = 114;
      v21 = "DR_Success == der_ret && TAG_PI == dec.tag";
LABEL_53:
      _BBULog(25, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v21, "", "", v20);
      v16 = 1;
      v22 = 1;
      if (!v19)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v19 = 0;
      v20 = 122;
LABEL_52:
      v21 = "DR_Success == der_ret";
      goto LABEL_53;
    }

    v19 = CFDataCreate(v12, v23, *(&v23 + 1));
    v40 = 0;
    ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v40);
    if (DERParseInteger(&v24, v25))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v20 = 127;
      goto LABEL_52;
    }

    if (!a1 || v25[0] == 1)
    {
      std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(a2, v19);
    }

    v22 = 0;
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_45:
    CFRelease(v19);
LABEL_46:
    if (v22)
    {
      goto LABEL_19;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Successfully populated ICCID list!\n");
LABEL_19:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v16;
}

void sub_1E52FA25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v31 - 152));
  v34 = *(v31 - 144);
  if (v34)
  {
    *(v31 - 136) = v34;
    operator delete(v34);
    v33 = *(v31 - 120);
    if (v33)
    {
LABEL_6:
      *(v31 - 112) = v33;
      operator delete(v33);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v33 = *(v31 - 120);
    if (v33)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::ClearMetadata::ClearMetadataForIccids(CFDataRef **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v10 = xmmword_1E5393160;
    do
    {
      v5 = operator new(0x15uLL);
      v16 = v5 + 21;
      v17 = v5 + 21;
      *v5 = v10;
      *(v5 + 13) = 0x8002E100000000;
      v15 = v5;
      BytePtr = CFDataGetBytePtr(*v2);
      v7 = v15;
      v8 = *BytePtr;
      *(v15 + 13) = *(BytePtr + 2);
      *(v7 + 5) = v8;
      __p = 0;
      v13 = 0;
      v14 = 0;
      v11 = 0;
      (*(**a2 + 48))(*a2, &v15, &__p, &v11);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::ClearMetadataForIccids: Attempted metadata clear for ICCID\n", v10);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void sub_1E52FA4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::ClearMetadata::Perform(int a1, void *a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::Perform: onlyBootstrap=%d\n", a1);
  __p = 0;
  v10 = 0;
  v11 = 0;
  eUICC::ClearMetadata::GetListOfIccids(a1, &__p, a2);
  eUICC::ClearMetadata::ClearMetadataForIccids(&__p, a2);
  v4 = __p;
  if (__p)
  {
    for (i = v10; i != v4; i -= 8)
    {
      v7 = *(i - 1);
      v6 = v7;
      if (v7)
      {
        CFRelease(v6);
      }
    }

    operator delete(v4);
  }

  return 0;
}

void sub_1E52FA5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = v4 + 8;
    goto LABEL_32;
  }

  v6 = *a1;
  v7 = &v4[-*a1];
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v13 = 0;
    v14 = (8 * v8);
    *(8 * v8) = cf;
    if (cf)
    {
      goto LABEL_14;
    }

LABEL_17:
    v15 = v7 >> 3;
    v16 = &v14[-8 * v8];
    if (v6 == v4)
    {
      goto LABEL_30;
    }

LABEL_18:
    v17 = v4 - v6 - 8;
    v18 = v6;
    v19 = v16;
    if (v17 < 0x98)
    {
      goto LABEL_37;
    }

    if (v16 < v6 + (v17 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v18 = v6;
      v19 = v16;
      if (v6 < &v13[v7 + (v17 & 0xFFFFFFFFFFFFFFF8) - 8 * v15 + 8])
      {
        goto LABEL_37;
      }
    }

    v20 = (v17 >> 3) + 1;
    v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    v18 = &v6[v21];
    v19 = (v16 + v21 * 8);
    v22 = &v13[8 * v8 + 16 + -8 * v15];
    v23 = (v6 + 2);
    v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25 = *v23;
      *(v22 - 1) = *(v23 - 1);
      *v22 = v25;
      *(v23 - 1) = 0uLL;
      *v23 = 0uLL;
      v22 += 32;
      v23 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_37:
      do
      {
        *v19++ = *v18;
        *v18++ = 0;
      }

      while (v18 != v4);
    }

    do
    {
      if (*v6)
      {
        CFRelease(*v6);
      }

      ++v6;
    }

    while (v6 != v4);
    v6 = *a1;
    goto LABEL_30;
  }

  if (v11 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = cf;
  v13 = operator new(8 * v11);
  cf = v12;
  v14 = &v13[8 * v8];
  *v14 = cf;
  if (!cf)
  {
    goto LABEL_17;
  }

LABEL_14:
  CFRetain(cf);
  v6 = *a1;
  v4 = *(a1 + 8);
  v15 = &v4[-*a1] >> 3;
  v16 = &v14[-8 * v15];
  if (*a1 != v4)
  {
    goto LABEL_18;
  }

LABEL_30:
  v26 = &v13[8 * v11];
  v5 = v14 + 8;
  *a1 = v16;
  *(a1 + 8) = v14 + 8;
  *(a1 + 16) = v26;
  if (v6)
  {
    operator delete(v6);
  }

LABEL_32:
  *(a1 + 8) = v5;
}

char **std::vector<ctu::cf::CFSharedRef<__CFData const>>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BasebandRestore::create(ACFULogging **__return_ptr a1@<X8>, BasebandRestore *this@<X0>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: BasebandUpdater Version: %s\n", "BasebandRestore", "create", "AppleBasebandServices-1397");
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x238uLL);
  ACFURestore::ACFURestore(v5);
  *(v5 + 45) = 0;
  *(v5 + 46) = 0;
  *v5 = &unk_1F5F03950;
  *(v5 + 99) = 0;
  *(v5 + 200) = 0;
  *(v5 + 408) = 0;
  *(v5 + 416) = 0;
  *(v5 + 55) = 0;
  *(v5 + 56) = 0;
  *(v5 + 54) = 0;
  *(v5 + 106) = 0;
  *(v5 + 214) = 0;
  *(v5 + 47) = 0;
  *(v5 + 48) = 0;
  *(v5 + 392) = 0;
  *(v5 + 228) = 514;
  *(v5 + 69) = 0;
  *(v5 + 560) = 0;
  *(v5 + 272) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 33) = 0u;
  *(v5 + 30) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 29) = 0u;
  *a1 = v5;
  v6 = operator new(0x20uLL);
  v6[2] = 0;
  v6[1] = 0;
  *v6 = &unk_1F5F03A48;
  v6[3] = v5;
  a1[1] = v6;
  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
  *(v5 + 45) = v5;
  *(v5 + 46) = v6;
  if (!atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v6;
    (*(*v6 + 16))();
    std::__shared_weak_count::__release_weak(v12);
    v7 = *a1;
    if (*a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v13, 2, "%s::%s: Failed to allocate BasebandRestore object\n", "BasebandRestore", "create");
    return;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = (*(*v7 + 40))(v7, this, @"Cellular1,Ticket");
  v9 = v8;
  if (v8)
  {
    v10 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v10, 2, "%s::%s: Failed to initialize BasebandRestore object (%d)\n", "BasebandRestore", "create", v9);
    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);

        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void sub_1E52FAAF0(_Unwind_Exception *a1)
{
  BasebandRestore::~BasebandRestore(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void BasebandRestore::~BasebandRestore(BasebandRestore *this)
{
  *this = &unk_1F5F03950;
  v2 = *(this + 69);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 66);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 65);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 63);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 61);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 59);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((*(this + 455) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (*(this + 455) < 0)
  {
LABEL_20:
    operator delete(*(this + 54));
  }

LABEL_21:
  v10 = *(this + 48);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 46);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x1EEDED2F8](this);
}

{
  BasebandRestore::~BasebandRestore(this);

  operator delete(v1);
}

uint64_t BasebandRestore::init(BasebandRestore *this, const __CFDictionary *a2, const void *a3)
{
  v272 = *MEMORY[0x1E69E9840];
  v267 = 0;
  valuePtr = 0;
  v6 = operator new(0x28uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_1F5F03A98;
  v7 = MEMORY[0x1E6926D60](v6 + 3, @"BasebandRestore");
  v8 = *(this + 48);
  *(this + 47) = v7;
  *(this + 48) = v6;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  LogInstance = ACFULogging::getLogInstance(v7);
  v10 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: -------- INIT --------\n", "BasebandRestore", "init");
  if (!a2)
  {
    v204 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v204, 2, "%s::%s: NULL options param\n");
LABEL_360:
    v47 = 1;
    goto LABEL_326;
  }

  if (CFDictionaryGetValue(a2, @"Options"))
  {
    v245 = 0;
    MutableCopy = a2;
    goto LABEL_10;
  }

  v12 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  if (!MutableCopy)
  {
    v221 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v221, 2, "%s::%s: Failed to create options dictionary\n");
    goto LABEL_360;
  }

  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v222 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v222, 2, "%s::%s: Failed to create updater options dictionary\n", "BasebandRestore", "init");
    v47 = 1;
    CFRelease(MutableCopy);
    goto LABEL_326;
  }

  CFDictionaryAddValue(MutableCopy, @"Options", Mutable);
  CFRelease(Mutable);
  v245 = MutableCopy;
LABEL_10:
  v14 = ACFURestore::init(this, MutableCopy, a3);
  if (v14)
  {
    v205 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v205, 2, "%s::%s: Failed to initialize base restore object\n");
  }

  else
  {
    ParseUpdaterDebugArgs(MutableCopy, (this + 392));
    UpdaterDebugArgs::print((this + 392));
    v15 = (*(*this + 136))(this);
    if (!v15)
    {
      cf = CFDictionaryGetValue(a2, @"BootMode");
      if (!cf)
      {
        goto LABEL_15;
      }

      AMSupportSafeRetain();
      v16 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      if (v16 == TypeID)
      {
        Value = CFNumberGetValue(cf, kCFNumberIntType, &valuePtr + 4);
        if (Value)
        {
LABEL_15:
          if (CFDictionaryContainsKey(*(this + 15), @"skipCoredump"))
          {
            v19 = CFDictionaryGetValue(*(this + 15), @"skipCoredump");
            v20 = v19;
            if (!v19)
            {
              v209 = ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage(v209, 2, "%s::%s: Could not extract skip coredump setting\n", "BasebandRestore", "init");
              goto LABEL_368;
            }

            v21 = CFGetTypeID(v19);
            v22 = CFBooleanGetTypeID();
            if (v21 != v22)
            {
              v210 = ACFULogging::getLogInstance(v22);
              ACFULogging::handleMessage(v210, 2, "%s::%s: Unexpected skip coredump setting type\n", "BasebandRestore", "init");
              goto LABEL_370;
            }

            v23 = CFBooleanGetValue(v20) == 0;
          }

          else
          {
            v23 = 1;
          }

          if (ACFURestore::isInternalBuild(this))
          {
            if (CFDictionaryContainsKey(*(this + 15), @"noTimeout"))
            {
              v24 = CFDictionaryGetValue(*(this + 15), @"noTimeout");
              v25 = v24;
              if (v24)
              {
                v26 = CFGetTypeID(v24);
                v27 = CFBooleanGetTypeID();
                if (v26 != v27)
                {
                  v226 = ACFULogging::getLogInstance(v27);
                  ACFULogging::handleMessage(v226, 2, "%s::%s: Unexpected no timeout setting type\n", "BasebandRestore", "init");
                  goto LABEL_370;
                }

                v28 = CFBooleanGetValue(v25);
                v29 = v28;
                v30 = ACFULogging::getLogInstance(v28);
                v31 = v29 != 0;
                ACFULogging::handleMessage(v30, 0, "%s::%s: Setting no-timeout to %d from options\n", "BasebandRestore", "init", v29 != 0);
                if (!v23)
                {
                  goto LABEL_51;
                }

                goto LABEL_29;
              }

              v225 = ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage(v225, 2, "%s::%s: Could not extract no timeout setting\n", "BasebandRestore", "init");
LABEL_368:
              v114 = 0;
              v97 = 0;
              v246 = 0;
              v47 = 1005;
              goto LABEL_316;
            }

            v31 = *(this + 392);
            if (!v23)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v31 = 0;
            if (!v23)
            {
              goto LABEL_51;
            }
          }

LABEL_29:
          if ((HIDWORD(valuePtr) - 1) > 1)
          {
            goto LABEL_51;
          }

          v271.__r_.__value_.__r.__words[0] = 0;
          v32 = CFDictionaryContainsKey(*(this + 15), @"coreDumpPath");
          v33 = *(this + 15);
          if (v32)
          {
            v34 = CFDictionaryGetValue(v33, @"coreDumpPath");
            v35 = v34;
            if (!v34)
            {
              v229 = ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage(v229, 2, "%s::%s: Could not extract debug log path\n", "BasebandRestore", "init");
              goto LABEL_376;
            }

            v36 = CFGetTypeID(v34);
            v37 = CFStringGetTypeID();
            if (v36 != v37)
            {
              v230 = ACFULogging::getLogInstance(v37);
              ACFULogging::handleMessage(v230, 2, "%s::%s: unexpected debug log path type\n", "BasebandRestore", "init");
LABEL_378:
              v46 = 0;
              v47 = 4002;
LABEL_144:
              if (v271.__r_.__value_.__r.__words[0])
              {
                CFRelease(v271.__r_.__value_.__l.__data_);
              }

              if ((v46 & 1) == 0)
              {
                v114 = 0;
                v97 = 0;
                v246 = 0;
                goto LABEL_316;
              }

LABEL_52:
              if (ACFURestore::isInternalBuild(this) && CFDictionaryContainsKey(*(this + 15), @"askToReset"))
              {
                v56 = CFDictionaryGetValue(*(this + 15), @"askToReset");
                v57 = v56;
                if (!v56)
                {
LABEL_367:
                  v227 = ACFULogging::getLogInstance(0);
                  ACFULogging::handleMessage(v227, 2, "%s::%s: Could not extract ask to reset setting\n", "BasebandRestore", "init");
                  goto LABEL_368;
                }

                v58 = CFGetTypeID(v56);
                v59 = CFBooleanGetTypeID();
                if (v58 != v59)
                {
                  v228 = ACFULogging::getLogInstance(v59);
                  ACFULogging::handleMessage(v228, 2, "%s::%s: Unexpected ask to reset setting type\n", "BasebandRestore", "init");
                  goto LABEL_370;
                }

                v60 = (CFBooleanGetValue(v57) != 0) << 8;
              }

              else
              {
                v60 = 0;
              }

              if (!CFDictionaryContainsKey(*(this + 15), @"skipReset"))
              {
                v65 = 0;
LABEL_63:
                v246 = CFDictionaryGetValue(a2, @"ImageTransferSegmentSizeBytes");
                if (v246)
                {
                  AMSupportSafeRetain();
                  v66 = CFGetTypeID(v246);
                  v67 = CFNumberGetTypeID();
                  if (v66 != v67)
                  {
                    v212 = ACFULogging::getLogInstance(v67);
                    ACFULogging::handleMessage(v212, 2, "%s::%s: Unexpected baseband ImageTransferSegmentSize option CF type\n");
                    goto LABEL_356;
                  }

                  v68 = CFNumberGetValue(v246, kCFNumberSInt32Type, &valuePtr);
                  if (!v68)
                  {
                    v213 = ACFULogging::getLogInstance(v68);
                    ACFULogging::handleMessage(v213, 2, "%s::%s: Failed to get the baseband transport ImageTransferSegmentSize\n");
                    goto LABEL_356;
                  }

                  v69 = ACFULogging::getLogInstance(v68);
                  ACFULogging::handleMessage(v69, 0, "%s::%s: ImageTransferSegmentSize option provided for chunking: %d\n", "BasebandRestore", "init", valuePtr);
                }

                if (CFDictionaryContainsKey(*(this + 15), @"BBUtilCmd"))
                {
                  v70 = CFDictionaryGetValue(*(this + 15), @"BBUtilCmd");
                  v71 = v70;
                  if (!v70)
                  {
                    v214 = ACFULogging::getLogInstance(0);
                    ACFULogging::handleMessage(v214, 2, "%s::%s: Could not extract bbutil cmd setting\n", "BasebandRestore", "init");
                    goto LABEL_121;
                  }

                  v72 = CFGetTypeID(v70);
                  v73 = CFBooleanGetTypeID();
                  if (v72 != v73)
                  {
                    v215 = ACFULogging::getLogInstance(v73);
                    ACFULogging::handleMessage(v215, 2, "%s::%s: Unexpected bbutil cmd setting type\n", "BasebandRestore", "init");
                    goto LABEL_356;
                  }

                  *(this + 544) = CFBooleanGetValue(v71) != 0;
                }

                if (CFDictionaryContainsKey(*(this + 15), @"ccBoot"))
                {
                  v74 = CFDictionaryGetValue(*(this + 15), @"ccBoot");
                  v75 = v74;
                  if (!v74)
                  {
                    v216 = ACFULogging::getLogInstance(0);
                    ACFULogging::handleMessage(v216, 2, "%s::%s: Could not extract CC cmd setting\n", "BasebandRestore", "init");
                    goto LABEL_121;
                  }

                  v76 = CFGetTypeID(v74);
                  v77 = CFBooleanGetTypeID();
                  if (v76 != v77)
                  {
                    v217 = ACFULogging::getLogInstance(v77);
                    ACFULogging::handleMessage(v217, 2, "%s::%s: Unexpected CC cmd setting type\n", "BasebandRestore", "init");
                    goto LABEL_356;
                  }

                  *(this + 545) = CFBooleanGetValue(v75) != 0;
                }

                if (!CFDictionaryContainsKey(*(this + 15), @"crashContextData"))
                {
LABEL_80:
                  if (*(this + 429) == 1)
                  {
                    KTLDebugRegisterDelegate();
                    KTLDebugSetFlags();
                  }

                  isPreflight = ACFURestore::isPreflight(this);
                  if (isPreflight)
                  {
                    v85 = ACFULogging::getLogInstance(isPreflight);
                    ACFULogging::handleMessage(v85, 3, "%s::%s: Initializing BasebandRestore for preflight\n", "BasebandRestore", "init");
                    isInternalBuild = ACFURestore::isInternalBuild(this);
                    v87 = valuePtr;
                    v88 = *(this + 24);
                    v89 = 0x1000000;
                    if ((v31 & 1) == 0)
                    {
                      v89 = 0;
                    }

                    v250 = *(this + 23);
                    v251 = v88;
                    if (v88)
                    {
                      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v90 = *(this + 46);
                    v91 = isInternalBuild | (v87 << 32);
                    v92 = v89 | v60;
                    v248 = *(this + 45);
                    v249 = v90;
                    if (v90)
                    {
                      atomic_fetch_add_explicit(&v90->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    }

                    BasebandUpdaterTransport::create(&v250, &v248, v91 | 0xAAAAAA00, v92 | v23, v269);
                    v93 = *v269;
                    if (*v269)
                    {
                      v94 = operator new(0x20uLL);
                      *v94 = &unk_1F5F03B88;
                      v94[1] = 0;
                      v94[2] = 0;
                      v94[3] = v93;
                      *v269 = 0;
                      v95 = *(this + 22);
                      *(this + 21) = v93;
                      *(this + 22) = v94;
                      if (!v95)
                      {
                        goto LABEL_110;
                      }
                    }

                    else
                    {
                      *v269 = 0;
                      v95 = *(this + 22);
                      *(this + 21) = 0;
                      *(this + 22) = 0;
                      if (!v95)
                      {
                        goto LABEL_110;
                      }
                    }

                    if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v95->__on_zero_shared)(v95);
                      std::__shared_weak_count::__release_weak(v95);
                    }

LABEL_110:
                    v111 = *v269;
                    *v269 = 0;
                    if (v111)
                    {
                      (*(*v111 + 64))(v111);
                    }

                    v112 = v249;
                    if (v249)
                    {
                      std::__shared_weak_count::__release_weak(v249);
                    }

                    v113 = v251;
                    if (v251 && !atomic_fetch_add(&v251->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v113->__on_zero_shared)(v113);
                      std::__shared_weak_count::__release_weak(v113);
                    }

                    if (!*(this + 21))
                    {
                      v220 = ACFULogging::getLogInstance(v112);
                      ACFULogging::handleMessage(v220, 2, "%s::%s: Could not create BasebandUpdaterTransport\n", "BasebandRestore", "init");
                      v114 = 0;
                      v97 = 0;
                      v47 = 4008;
                      goto LABEL_316;
                    }

                    v114 = 0;
                    v97 = 0;
                    v115 = *(this + 60);
                    v116 = *(this + 61);
                    v271.__r_.__value_.__r.__words[0] = v115;
                    v271.__r_.__value_.__l.__size_ = v116;
                    if (!v116)
                    {
                      goto LABEL_119;
                    }

LABEL_236:
                    atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
                    LOWORD(v271.__r_.__value_.__r.__words[2]) = 0;
                    v271.__r_.__value_.__s.__data_[18] = 1;
                    *&v269[8] = v115;
                    *&v269[16] = v116;
                    atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
                    v115 = *(this + 60);
                    v167 = *(this + 61);
                    *v269 = 0;
                    *&v269[24] = v271.__r_.__value_.__r.__words[2];
                    v269[26] = v271.__r_.__value_.__s.__data_[18];
                    __t.__r_.__value_.__r.__words[0] = v115;
                    __t.__r_.__value_.__l.__size_ = v167;
                    if (v167)
                    {
                      atomic_fetch_add_explicit((v167 + 8), 1uLL, memory_order_relaxed);
                      LOWORD(__t.__r_.__value_.__r.__words[2]) = 0;
                      __t.__r_.__value_.__s.__data_[18] = 0;
                      *v270 = 3;
                      *&v270[8] = v115;
                      *&v270[16] = v167;
                      atomic_fetch_add_explicit((v167 + 8), 1uLL, memory_order_relaxed);
                      goto LABEL_239;
                    }

LABEL_238:
                    LOWORD(__t.__r_.__value_.__r.__words[2]) = 0;
                    __t.__r_.__value_.__s.__data_[18] = 0;
                    *v270 = 3;
                    *&v270[8] = v115;
                    *&v270[16] = 0;
LABEL_239:
                    *&v270[24] = __t.__r_.__value_.__r.__words[2];
                    v270[26] = __t.__r_.__value_.__s.__data_[18];
                    v244 = v97;
                    if (*(this + 5) && ((v169 = (this + 32), v168 = *(this + 4), v170 = *(this + 3), *(this + 3) = this + 32, *(v168 + 16) = 0, *(this + 4) = 0, *(this + 5) = 0, v170[1]) ? (v171 = v170[1]) : (v171 = v170), v171))
                    {
                      v172 = v171[2];
                      if (v172)
                      {
                        v173 = *v172;
                        v174 = v114;
                        if (*v172 == v171)
                        {
                          *v172 = 0;
                          while (1)
                          {
                            v203 = v172[1];
                            if (!v203)
                            {
                              break;
                            }

                            do
                            {
                              v172 = v203;
                              v203 = *v203;
                            }

                            while (v203);
                          }
                        }

                        else
                        {
                          for (v172[1] = 0; v173; v173 = v172[1])
                          {
                            do
                            {
                              v172 = v173;
                              v173 = *v173;
                            }

                            while (v173);
                          }
                        }
                      }

                      else
                      {
                        v174 = v114;
                      }

                      v186 = 0;
                      while (1)
                      {
                        while (1)
                        {
                          i = v172;
                          v188 = &v269[v186];
                          v189 = *v169;
                          if (!*v169)
                          {
                            break;
                          }

                          v190 = *v188;
                          while (1)
                          {
                            while (1)
                            {
                              v191 = v189;
                              v192 = *(v189 + 32);
                              if (v190 >= v192)
                              {
                                break;
                              }

                              v189 = *v191;
                              if (!*v191)
                              {
                                v193 = v191;
                                goto LABEL_281;
                              }
                            }

                            if (v192 >= v190)
                            {
                              break;
                            }

                            v189 = v191[1];
                            if (!v189)
                            {
                              v193 = v191 + 1;
                              goto LABEL_281;
                            }
                          }

                          v186 += 32;
                          if (v186 == 64)
                          {
LABEL_299:
                            std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(v171);
                            if (!v172)
                            {
                              goto LABEL_303;
                            }

                            v197 = v172[2];
                            for (i = v172; v197; v197 = v197[2])
                            {
                              i = v197;
                            }

LABEL_302:
                            std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(i);
                            goto LABEL_303;
                          }
                        }

                        v190 = *v188;
                        v193 = (this + 32);
                        v191 = (this + 32);
LABEL_281:
                        *(v171 + 8) = v190;
                        RestoreStep::operator=();
                        *v171 = 0;
                        v171[1] = 0;
                        v171[2] = v191;
                        *v193 = v171;
                        v194 = **(this + 3);
                        if (v194)
                        {
                          *(this + 3) = v194;
                        }

                        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v171);
                        ++*(this + 5);
                        if (!v172)
                        {
                          break;
                        }

                        v172 = v172[2];
                        if (v172)
                        {
                          v195 = *v172;
                          if (*v172 == i)
                          {
                            *v172 = 0;
                            while (1)
                            {
                              v196 = v172[1];
                              if (!v196)
                              {
                                break;
                              }

                              do
                              {
                                v172 = v196;
                                v196 = *v196;
                              }

                              while (v196);
                            }
                          }

                          else
                          {
                            for (v172[1] = 0; v195; v195 = v172[1])
                            {
                              do
                              {
                                v172 = v195;
                                v195 = *v195;
                              }

                              while (v195);
                            }
                          }

                          v171 = i;
                          v186 += 32;
                          if (v186 == 64)
                          {
                            goto LABEL_299;
                          }
                        }

                        else
                        {
                          v186 += 32;
                          v171 = i;
                          if (v186 == 64)
                          {
                            goto LABEL_302;
                          }
                        }
                      }

                      v175 = v186 + 32;
                      if (v186 != 32)
                      {
                        goto LABEL_251;
                      }
                    }

                    else
                    {
                      v174 = v114;
                      v175 = 0;
LABEL_251:
                      v176 = (this + 32);
                      do
                      {
                        v177 = &v269[v175];
                        v178 = *v176;
                        if (*v176)
                        {
                          v179 = *v177;
                          do
                          {
                            while (1)
                            {
                              v180 = v178;
                              v181 = *(v178 + 32);
                              if (v179 < v181)
                              {
                                break;
                              }

                              if (v181 >= v179)
                              {
                                goto LABEL_253;
                              }

                              v178 = v180[1];
                              if (!v178)
                              {
                                v182 = v180 + 1;
                                goto LABEL_263;
                              }
                            }

                            v178 = *v180;
                          }

                          while (*v180);
                          v182 = v180;
                        }

                        else
                        {
                          v179 = *v177;
                          v182 = (this + 32);
                          v180 = (this + 32);
                        }

LABEL_263:
                        v183 = operator new(0x40uLL);
                        v183[8] = v179;
                        v184 = *(v177 + 2);
                        *(v183 + 5) = *(v177 + 1);
                        *(v183 + 6) = v184;
                        if (v184)
                        {
                          atomic_fetch_add_explicit((v184 + 8), 1uLL, memory_order_relaxed);
                        }

                        *(v183 + 28) = *(v177 + 12);
                        *(v183 + 58) = v177[26];
                        *v183 = 0;
                        *(v183 + 1) = 0;
                        *(v183 + 2) = v180;
                        *v182 = v183;
                        v185 = **(this + 3);
                        if (v185)
                        {
                          *(this + 3) = v185;
                        }

                        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v183);
                        ++*(this + 5);
LABEL_253:
                        v175 += 32;
                      }

                      while (v175 != 64);
                    }

LABEL_303:
                    v198 = *&v270[16];
                    if (*&v270[16] && !atomic_fetch_add((*&v270[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v198->__on_zero_shared)(v198);
                      std::__shared_weak_count::__release_weak(v198);
                    }

                    v199 = *&v269[16];
                    v114 = v174;
                    if (*&v269[16] && !atomic_fetch_add((*&v269[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v199->__on_zero_shared)(v199);
                      std::__shared_weak_count::__release_weak(v199);
                    }

                    size = __t.__r_.__value_.__l.__size_;
                    v97 = v244;
                    if (__t.__r_.__value_.__l.__size_ && !atomic_fetch_add((__t.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (size->__on_zero_shared)(size);
                      std::__shared_weak_count::__release_weak(size);
                    }

                    v201 = v271.__r_.__value_.__l.__size_;
                    if (v271.__r_.__value_.__l.__size_ && !atomic_fetch_add((v271.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v201->__on_zero_shared)(v201);
                      std::__shared_weak_count::__release_weak(v201);
                    }

                    ACFUError::createAppendedDomain(*(this + 13), @"BasebandRestore");
                    v47 = 0;
LABEL_316:
                    if (!cf)
                    {
                      goto LABEL_318;
                    }

                    goto LABEL_317;
                  }

                  if ((HIDWORD(valuePtr) - 1) < 2)
                  {
                    v97 = CFDictionaryGetValue(a2, @"firmwareDataFolder");
                    if (v97)
                    {
                      AMSupportSafeRetain();
                      v98 = CFGetTypeID(v97);
                      v99 = CFStringGetTypeID();
                      if (v98 != v99)
                      {
                        v231 = ACFULogging::getLogInstance(v99);
                        ACFULogging::handleMessage(v231, 2, "%s::%s: Unexpected baseband firmware path CF type\n", "BasebandRestore", "init");
                        v114 = 0;
                        v47 = 4002;
                        goto LABEL_316;
                      }

                      GetBasebandTatsuTagToFileNameMap(v263);
                      RTKitFirmware::create();
                      v100 = *v269;
                      if (*v269)
                      {
                        v101 = operator new(0x20uLL);
                        *v101 = &unk_1F5F03B38;
                        v101[1] = 0;
                        v101[2] = 0;
                        v101[3] = v100;
                        *v269 = 0;
                        v102 = *(this + 20);
                        *(this + 19) = v100;
                        *(this + 20) = v101;
                        if (!v102)
                        {
                          goto LABEL_133;
                        }
                      }

                      else
                      {
                        *v269 = 0;
                        v102 = *(this + 20);
                        *(this + 19) = 0;
                        *(this + 20) = 0;
                        if (!v102)
                        {
LABEL_133:
                          v126 = *v269;
                          *v269 = 0;
                          if (v126)
                          {
                            (*(*v126 + 56))(v126);
                          }

                          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v263, v263[1]);
                          if (!*(this + 19))
                          {
                            v232 = ACFULogging::getLogInstance(v127);
                            ACFULogging::handleMessage(v232, 2, "%s::%s: Could not create RTKitFirmware with custom FTAB path\n", "BasebandRestore", "init");
                            v114 = 0;
                            v47 = 1000;
                            goto LABEL_316;
                          }

                          v114 = 0;
LABEL_188:
                          v144 = ACFURestore::isInternalBuild(this);
                          v145 = valuePtr;
                          v146 = 0x1000000;
                          v147 = *(this + 24);
                          if ((v31 & 1) == 0)
                          {
                            v146 = 0;
                          }

                          v148 = v146 | v65;
                          v260 = *(this + 23);
                          v261 = v147;
                          if (v147)
                          {
                            atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          v149 = *(this + 46);
                          v150 = v144 | (v145 << 32);
                          v258 = *(this + 45);
                          v259 = v149;
                          if (v149)
                          {
                            atomic_fetch_add_explicit(&v149->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                          }

                          BasebandUpdaterTransport::create(&v260, &v258, v150 | 0xAAAAAA00, v148 | v23 | v60, v269);
                          v151 = *v269;
                          if (*v269)
                          {
                            v152 = operator new(0x20uLL);
                            *v152 = &unk_1F5F03B88;
                            v152[1] = 0;
                            v152[2] = 0;
                            v152[3] = v151;
                            *v269 = 0;
                            v153 = *(this + 22);
                            *(this + 21) = v151;
                            *(this + 22) = v152;
                            if (!v153)
                            {
                              goto LABEL_200;
                            }
                          }

                          else
                          {
                            *v269 = 0;
                            v153 = *(this + 22);
                            *(this + 21) = 0;
                            *(this + 22) = 0;
                            if (!v153)
                            {
                              goto LABEL_200;
                            }
                          }

                          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v153->__on_zero_shared)(v153);
                            std::__shared_weak_count::__release_weak(v153);
                          }

LABEL_200:
                          v154 = *v269;
                          *v269 = 0;
                          if (v154)
                          {
                            (*(*v154 + 64))(v154);
                          }

                          v155 = v259;
                          if (v259)
                          {
                            std::__shared_weak_count::__release_weak(v259);
                          }

                          v156 = v261;
                          if (v261 && !atomic_fetch_add(&v261->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v156->__on_zero_shared)(v156);
                            std::__shared_weak_count::__release_weak(v156);
                          }

                          v157 = *(this + 21);
                          if (v157)
                          {
                            LOWORD(__t.__r_.__value_.__l.__data_) = 256;
                            v158 = *(this + 22);
                            v256 = v157;
                            v257 = v158;
                            if (v158)
                            {
                              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v159 = *(this + 20);
                            v254 = *(this + 19);
                            v255 = v159;
                            if (v159)
                            {
                              atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v160 = *(this + 24);
                            v252 = *(this + 23);
                            v253 = v160;
                            if (v160)
                            {
                              atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v161 = ACFURTKitROM::create();
                            v162 = *v269;
                            *v269 = 0;
                            *&v269[8] = 0;
                            v163 = *(this + 61);
                            *(this + 30) = v162;
                            if (v163 && !atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v163->__on_zero_shared)(v163);
                              std::__shared_weak_count::__release_weak(v163);
                            }

                            v164 = *&v269[8];
                            if (*&v269[8] && !atomic_fetch_add((*&v269[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v164->__on_zero_shared)(v164);
                              std::__shared_weak_count::__release_weak(v164);
                            }

                            if (v253 && !atomic_fetch_add(&v253->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v253->__on_zero_shared)(v253);
                              std::__shared_weak_count::__release_weak(v253);
                            }

                            if (v255 && !atomic_fetch_add(&v255->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v255->__on_zero_shared)(v255);
                              std::__shared_weak_count::__release_weak(v255);
                            }

                            if (v257 && !atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v257->__on_zero_shared)(v257);
                              std::__shared_weak_count::__release_weak(v257);
                            }

                            if (*(this + 60))
                            {
                              v165 = this + 280;
                              *v269 = &unk_1F5F03BD8;
                              *&v269[8] = this;
                              *&v269[24] = v269;
                              if (v269 == this + 280)
                              {
                                unk_1F5F03BF8(v269);
                                v115 = *(this + 60);
                                v116 = *(this + 61);
                                v271.__r_.__value_.__r.__words[0] = v115;
                                v271.__r_.__value_.__l.__size_ = v116;
                                if (v116)
                                {
                                  goto LABEL_236;
                                }

                                goto LABEL_119;
                              }

                              v166 = *(this + 38);
                              if (v166 == v165)
                              {
                                v271.__r_.__value_.__l.__size_ = this;
                                v271.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
                                v271.__r_.__value_.__r.__words[0] = &unk_1F5F03BD8;
                                *&v269[24] = 0;
                                (*(*v166 + 24))(v166, v269);
                                (*(**(this + 38) + 32))(*(this + 38));
                                *(this + 38) = 0;
                                *&v269[24] = v269;
                                (*(v271.__r_.__value_.__r.__words[0] + 24))(&v271, this + 280);
                                (*(v271.__r_.__value_.__r.__words[0] + 32))(&v271);
                                *(this + 38) = v165;
                                v166 = *&v269[24];
                                if (*&v269[24] != v269)
                                {
LABEL_233:
                                  if (v166)
                                  {
                                    (*(*v166 + 40))(v166);
                                  }

                                  v115 = *(this + 60);
                                  v116 = *(this + 61);
                                  v271.__r_.__value_.__r.__words[0] = v115;
                                  v271.__r_.__value_.__l.__size_ = v116;
                                  if (v116)
                                  {
                                    goto LABEL_236;
                                  }

LABEL_119:
                                  LOWORD(v271.__r_.__value_.__r.__words[2]) = 0;
                                  v271.__r_.__value_.__s.__data_[18] = 1;
                                  *&v269[8] = v115;
                                  *&v269[16] = 0;
                                  *v269 = 0;
                                  *&v269[24] = 0;
                                  v269[26] = 1;
                                  *&__t.__r_.__value_.__l.__data_ = v115;
                                  goto LABEL_238;
                                }
                              }

                              else
                              {
                                *(this + 35) = &unk_1F5F03BD8;
                                *(this + 36) = this;
                                *&v269[24] = v166;
                                *(this + 38) = v165;
                                if (v166 != v269)
                                {
                                  goto LABEL_233;
                                }
                              }

                              (*(*v166 + 32))(v166);
                              v115 = *(this + 60);
                              v116 = *(this + 61);
                              v271.__r_.__value_.__r.__words[0] = v115;
                              v271.__r_.__value_.__l.__size_ = v116;
                              if (v116)
                              {
                                goto LABEL_236;
                              }

                              goto LABEL_119;
                            }

                            v224 = ACFULogging::getLogInstance(v161);
                            ACFULogging::handleMessage(v224, 2, "%s::%s: Failed to initialize update operations\n", "BasebandRestore", "init");
                          }

                          else
                          {
                            v223 = ACFULogging::getLogInstance(v155);
                            ACFULogging::handleMessage(v223, 2, "%s::%s: Could not create BasebandUpdaterTransport\n", "BasebandRestore", "init");
                          }

                          v47 = 4008;
                          goto LABEL_316;
                        }
                      }

                      if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v102->__on_zero_shared)(v102);
                        std::__shared_weak_count::__release_weak(v102);
                      }

                      goto LABEL_133;
                    }

                    *v269 = 0xAAAAAAAAAAAAAAAALL;
                    *v269 = ACFUDataAccess::createPersonalizedFirmwarePath(@"Baseband", v96);
                    if (!*v269)
                    {
                      v236 = ACFULogging::getLogInstance(0);
                      ACFULogging::handleMessage(v236, 2, "%s::%s: Failed to obtain the default personalized FW base path\n", "BasebandRestore", "init");
                      v237 = v269;
                      goto LABEL_386;
                    }

                    GetBasebandTatsuTagToFileNameMap(v262);
                    RTKitFirmware::create();
                    v118 = v271.__r_.__value_.__r.__words[0];
                    if (v271.__r_.__value_.__r.__words[0])
                    {
                      v119 = operator new(0x20uLL);
                      *v119 = &unk_1F5F03B38;
                      v119[1] = 0;
                      v119[2] = 0;
                      v119[3] = v118;
                      v271.__r_.__value_.__r.__words[0] = 0;
                      v120 = *(this + 20);
                      *(this + 19) = v118;
                      *(this + 20) = v119;
                      if (!v120)
                      {
                        goto LABEL_151;
                      }
                    }

                    else
                    {
                      v271.__r_.__value_.__r.__words[0] = 0;
                      v120 = *(this + 20);
                      *(this + 19) = 0;
                      *(this + 20) = 0;
                      if (!v120)
                      {
LABEL_151:
                        v130 = v271.__r_.__value_.__r.__words[0];
                        v271.__r_.__value_.__r.__words[0] = 0;
                        if (v130)
                        {
                          (*(*v130 + 56))(v130);
                        }

                        std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v262, v262[1]);
                        if (*(this + 19))
                        {
                          if (*v269)
                          {
                            CFRelease(*v269);
                          }

LABEL_176:
                          v114 = 0;
LABEL_187:
                          v97 = 0;
                          goto LABEL_188;
                        }

                        v238 = ACFULogging::getLogInstance(v131);
                        ACFULogging::handleMessage(v238, 2, "%s::%s: Could not create RTKitFirmware with default FTAB path\n", "BasebandRestore", "init");
                        v47 = 1000;
                        v237 = v269;
LABEL_386:
                        ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&v237->__r_.__value_.__l.__data_);
                        v114 = 0;
                        v97 = 0;
                        goto LABEL_316;
                      }
                    }

                    if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v120->__on_zero_shared)(v120);
                      std::__shared_weak_count::__release_weak(v120);
                    }

                    goto LABEL_151;
                  }

                  if (!HIDWORD(valuePtr))
                  {
                    if (ACFURestore::isPostSealing(this))
                    {
                      v264.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
                      v103 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/%@/", *(this + 44), @"/usr/standalone/firmware/Baseband/");
                      v264.__r_.__value_.__r.__words[0] = v103;
                      if (!v103)
                      {
                        v239 = ACFULogging::getLogInstance(0);
                        ACFULogging::handleMessage(v239, 2, "%s::%s: Failed to obtain the default personalized FW base path\n", "BasebandRestore", "init");
LABEL_385:
                        v237 = &v264;
                        goto LABEL_386;
                      }

                      ACFULogging::getLogInstance(v103);
                      *(&__t.__r_.__value_.__s + 23) = 15;
                      strcpy(&__t, "BasebandRestore");
                      v104 = std::string::append(&__t, "::", 2uLL);
                      v105 = *&v104->__r_.__value_.__l.__data_;
                      v271.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
                      *&v271.__r_.__value_.__l.__data_ = v105;
                      v104->__r_.__value_.__l.__size_ = 0;
                      v104->__r_.__value_.__r.__words[2] = 0;
                      v104->__r_.__value_.__r.__words[0] = 0;
                      v106 = std::string::append(&v271, "init", 4uLL);
                      v107 = *&v106->__r_.__value_.__l.__data_;
                      *&v269[16] = *(&v106->__r_.__value_.__l + 2);
                      *v269 = v107;
                      v106->__r_.__value_.__l.__size_ = 0;
                      v106->__r_.__value_.__r.__words[2] = 0;
                      v106->__r_.__value_.__r.__words[0] = 0;
                      ACFULogging::handleMessageCFType();
                      if (v269[23] < 0)
                      {
                        operator delete(*v269);
                        if ((SHIBYTE(v271.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_103:
                          if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_104;
                          }

LABEL_167:
                          operator delete(__t.__r_.__value_.__l.__data_);
LABEL_104:
                          GetBasebandTatsuTagToFileNameMap(v265);
                          RTKitFirmware::create();
                          v108 = *v269;
                          if (*v269)
                          {
                            v109 = operator new(0x20uLL);
                            *v109 = &unk_1F5F03B38;
                            v109[1] = 0;
                            v109[2] = 0;
                            v109[3] = v108;
                            *v269 = 0;
                            v110 = *(this + 20);
                            *(this + 19) = v108;
                            *(this + 20) = v109;
                            if (!v110)
                            {
                              goto LABEL_171;
                            }
                          }

                          else
                          {
                            *v269 = 0;
                            v110 = *(this + 20);
                            *(this + 19) = 0;
                            *(this + 20) = 0;
                            if (!v110)
                            {
LABEL_171:
                              v141 = *v269;
                              *v269 = 0;
                              if (v141)
                              {
                                (*(*v141 + 56))(v141);
                              }

                              std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v265, v265[1]);
                              if (*(this + 19))
                              {
                                if (v264.__r_.__value_.__r.__words[0])
                                {
                                  CFRelease(v264.__r_.__value_.__l.__data_);
                                }

                                goto LABEL_176;
                              }

                              v241 = ACFULogging::getLogInstance(v142);
                              ACFULogging::handleMessage(v241, 2, "%s::%s: Could not create RTKitFirmware for post sealing step\n", "BasebandRestore", "init");
                              v47 = 1000;
                              goto LABEL_385;
                            }
                          }

                          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v110->__on_zero_shared)(v110);
                            std::__shared_weak_count::__release_weak(v110);
                          }

                          goto LABEL_171;
                        }
                      }

                      else if ((SHIBYTE(v271.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_103;
                      }

                      operator delete(v271.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_167;
                    }

                    v114 = CFDictionaryGetValue(a2, @"firmwareSaveFolder");
                    if (!v114)
                    {
                      URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(*(this + 44), @"/usr/standalone/firmware/Baseband/", v121);
                      v125 = v267;
                      v267 = URLByAppendingStrings;
                      if (!v125)
                      {
                        goto LABEL_158;
                      }

                      goto LABEL_157;
                    }

                    AMSupportSafeRetain();
                    v122 = CFGetTypeID(v114);
                    v123 = CFStringGetTypeID();
                    if (v122 == v123)
                    {
                      URLByAppendingStrings = AMSupportCreateURLFromString();
                      v125 = v267;
                      v267 = URLByAppendingStrings;
                      if (!v125)
                      {
                        goto LABEL_158;
                      }

LABEL_157:
                      CFRelease(v125);
LABEL_158:
                      if (!URLByAppendingStrings)
                      {
                        v240 = ACFULogging::getLogInstance(v125);
                        ACFULogging::handleMessage(v240, 2, "%s::%s: Failed to create a baseband firmware save path\n", "BasebandRestore", "init");
                        v97 = 0;
                        v47 = 4000;
                        goto LABEL_316;
                      }

                      *&v132 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v132 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *&v269[4] = -1431655766;
                      *&v269[24] = 0xAAAAAAAAAAAAAAAALL;
                      *v270 = v132;
                      *v269 = 1;
                      *&v269[8] = @"Cellular1,Ticket";
                      *&v269[16] = URLByAppendingStrings;
                      GetBasebandTatsuTagToFileNameMap(&v269[24]);
                      ACFULogging::getLogInstance(v133);
                      *(&v264.__r_.__value_.__s + 23) = 15;
                      strcpy(&v264, "BasebandRestore");
                      v134 = std::string::append(&v264, "::", 2uLL);
                      v135 = *&v134->__r_.__value_.__l.__data_;
                      __t.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
                      *&__t.__r_.__value_.__l.__data_ = v135;
                      v134->__r_.__value_.__l.__size_ = 0;
                      v134->__r_.__value_.__r.__words[2] = 0;
                      v134->__r_.__value_.__r.__words[0] = 0;
                      v136 = std::string::append(&__t, "init", 4uLL);
                      v137 = *&v136->__r_.__value_.__l.__data_;
                      v271.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
                      *&v271.__r_.__value_.__l.__data_ = v137;
                      v136->__r_.__value_.__l.__size_ = 0;
                      v136->__r_.__value_.__r.__words[2] = 0;
                      v136->__r_.__value_.__r.__words[0] = 0;
                      ACFULogging::handleMessageCFType();
                      if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v271.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_161:
                          if ((SHIBYTE(v264.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_162;
                          }

LABEL_179:
                          operator delete(v264.__r_.__value_.__l.__data_);
LABEL_162:
                          RTKitFirmware::create();
                          v138 = v271.__r_.__value_.__r.__words[0];
                          if (v271.__r_.__value_.__r.__words[0])
                          {
                            v139 = operator new(0x20uLL);
                            *v139 = &unk_1F5F03B38;
                            v139[1] = 0;
                            v139[2] = 0;
                            v139[3] = v138;
                            v271.__r_.__value_.__r.__words[0] = 0;
                            v140 = *(this + 20);
                            *(this + 19) = v138;
                            *(this + 20) = v139;
                            if (!v140)
                            {
                              goto LABEL_183;
                            }
                          }

                          else
                          {
                            v271.__r_.__value_.__r.__words[0] = 0;
                            v140 = *(this + 20);
                            *(this + 19) = 0;
                            *(this + 20) = 0;
                            if (!v140)
                            {
LABEL_183:
                              v143 = v271.__r_.__value_.__r.__words[0];
                              v271.__r_.__value_.__r.__words[0] = 0;
                              if (v143)
                              {
                                v143 = (*(*v143 + 56))(v143);
                              }

                              if (!*(this + 19))
                              {
                                v242 = ACFULogging::getLogInstance(v143);
                                ACFULogging::handleMessage(v242, 2, "%s::%s: Could not create RTKitFirmware with params\n", "BasebandRestore", "init");
                                std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v269[24], *v270);
                                v97 = 0;
                                v47 = 1000;
                                goto LABEL_316;
                              }

                              std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v269[24], *v270);
                              goto LABEL_187;
                            }
                          }

                          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v140->__on_zero_shared)(v140);
                            std::__shared_weak_count::__release_weak(v140);
                          }

                          goto LABEL_183;
                        }
                      }

                      else if ((SHIBYTE(__t.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_161;
                      }

                      operator delete(__t.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v264.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_162;
                      }

                      goto LABEL_179;
                    }

                    v243 = ACFULogging::getLogInstance(v123);
                    ACFULogging::handleMessage(v243, 2, "%s::%s: Unexpected baseband FWSaveFolder option CF type\n", "BasebandRestore", "init");
LABEL_357:
                    v97 = 0;
                    v47 = 4002;
                    goto LABEL_316;
                  }

                  v117 = ACFULogging::getLogInstance(isPreflight);
                  ACFULogging::handleMessage(v117, 2, "%s::%s: Unsupported baseband BootMode option %d\n", "BasebandRestore", "init", HIDWORD(valuePtr));
LABEL_121:
                  v114 = 0;
                  v97 = 0;
                  v47 = 1005;
                  goto LABEL_316;
                }

                v78 = CFDictionaryGetValue(*(this + 15), @"crashContextData");
                v79 = v78;
                if (!v78)
                {
                  v218 = ACFULogging::getLogInstance(0);
                  ACFULogging::handleMessage(v218, 2, "%s::%s: Could not extract crash context data\n", "BasebandRestore", "init");
                  goto LABEL_121;
                }

                v80 = CFGetTypeID(v78);
                v81 = CFDataGetTypeID();
                if (v80 == v81)
                {
                  Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], v79);
                  v83 = *(this + 67);
                  *(this + 67) = Copy;
                  if (v83)
                  {
                    CFRelease(v83);
                  }

                  goto LABEL_80;
                }

                v219 = ACFULogging::getLogInstance(v81);
                ACFULogging::handleMessage(v219, 2, "%s::%s: Unexpected crash context data type\n", "BasebandRestore", "init");
LABEL_356:
                v114 = 0;
                goto LABEL_357;
              }

              v61 = CFDictionaryGetValue(*(this + 15), @"skipReset");
              v62 = v61;
              if (v61)
              {
                v63 = CFGetTypeID(v61);
                v64 = CFBooleanGetTypeID();
                if (v63 == v64)
                {
                  v65 = (CFBooleanGetValue(v62) != 0) << 16;
                  goto LABEL_63;
                }

                v211 = ACFULogging::getLogInstance(v64);
                ACFULogging::handleMessage(v211, 2, "%s::%s: Unexpected skip reset setting type\n", "BasebandRestore", "init");
LABEL_370:
                v114 = 0;
                v97 = 0;
                v246 = 0;
                v47 = 4002;
                goto LABEL_316;
              }

              goto LABEL_367;
            }

            v38 = CFGetTypeID(v35);
            v39 = CFStringGetTypeID();
            if (v38 != v39)
            {
              v271.__r_.__value_.__r.__words[0] = 0;
              v45 = ACFULogging::getLogInstance(v39);
              ACFULogging::handleMessage(v45, 2, "%s::%s: Failed to create debug log path override object\n", "BasebandRestore", "init");
              goto LABEL_43;
            }

            CFRetain(v35);
            v271.__r_.__value_.__r.__words[0] = v35;
            v33 = *(this + 15);
          }

          else
          {
            v35 = 0;
          }

          if (!CFDictionaryContainsKey(v33, @"coreDumpPathNoTimestamp"))
          {
            if (v35)
            {
              goto LABEL_45;
            }

            goto LABEL_51;
          }

          v40 = CFDictionaryGetValue(*(this + 15), @"coreDumpPathNoTimestamp");
          v41 = v40;
          if (v40)
          {
            v42 = CFGetTypeID(v40);
            v43 = CFBooleanGetTypeID();
            if (v42 == v43)
            {
              v44 = CFBooleanGetValue(v41);
              if (v35)
              {
                if (v44)
                {
LABEL_46:
                  ACFULogging::getLogInstance(v44);
                  strcpy(v269, "BasebandRestore::init");
                  *&v269[22] = 5376;
                  LODWORD(__t.__r_.__value_.__l.__data_) = 0;
                  *(__t.__r_.__value_.__r.__words + 3) = 0;
                  v51 = ACFULogging::handleMessageCFType();
                  if (v269[23] < 0)
                  {
                    operator delete(*v269);
                  }

                  v52 = ACFULogging::getLogInstance(v51);
                  ACFULogging::handleMessage(v52, 4, "%s::%s: Creating diagnostics object...\n", "BasebandRestore", "init");
                  ACFUDiagnostics::create(v269, v271.__r_.__value_.__l.__data_, 0);
                  v53 = *v269;
                  if (*v269)
                  {
                    v54 = operator new(0x20uLL);
                    *v54 = &unk_1F5F03AE8;
                    v54[1] = 0;
                    v54[2] = 0;
                    v54[3] = v53;
                    *v269 = 0;
                    v55 = *(this + 24);
                    *(this + 23) = v53;
                    *(this + 24) = v54;
                    if (!v55)
                    {
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    *v269 = 0;
                    v55 = *(this + 24);
                    *(this + 23) = 0;
                    *(this + 24) = 0;
                    if (!v55)
                    {
LABEL_140:
                      v128 = *v269;
                      *v269 = 0;
                      if (v128)
                      {
                        v129 = MEMORY[0x1E6926260]();
                        operator delete(v129);
                      }

                      if (*(this + 23))
                      {
                        v47 = 0;
                        v46 = 1;
                        goto LABEL_144;
                      }

                      v235 = ACFULogging::getLogInstance(v128);
                      ACFULogging::handleMessage(v235, 2, "%s::%s: Failed to create diagnostics object\n", "BasebandRestore", "init");
LABEL_43:
                      v46 = 0;
                      v47 = 4008;
                      goto LABEL_144;
                    }
                  }

                  if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v55->__on_zero_shared)(v55);
                    std::__shared_weak_count::__release_weak(v55);
                  }

                  goto LABEL_140;
                }

LABEL_45:
                *&v48 = 0xAAAAAAAAAAAAAAAALL;
                *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&v270[12] = v48;
                *&v269[16] = v48;
                *v270 = v48;
                *v269 = v48;
                __t.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
                v264.__r_.__value_.__r.__words[0] = std::chrono::system_clock::to_time_t(&__t);
                v49 = __t.__r_.__value_.__r.__words[0];
                v50 = localtime(&v264);
                strftime(v269, 0x3CuLL, "%Y-%m-%d-%H-%M-%S", v50);
                v271.__r_.__value_.__r.__words[0] = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/log-bb-%s-%u-cd/", v35, v269, ((v49 / 1000) % 1000));
                CFRelease(v35);
                goto LABEL_46;
              }

LABEL_51:
              v47 = 0;
              goto LABEL_52;
            }

            v234 = ACFULogging::getLogInstance(v43);
            ACFULogging::handleMessage(v234, 2, "%s::%s: unexpected debug log path timestamp setting type\n", "BasebandRestore", "init");
            goto LABEL_378;
          }

          v233 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v233, 2, "%s::%s: Could not extract debug log path timestamp setting\n", "BasebandRestore", "init");
LABEL_376:
          v46 = 0;
          v47 = 1005;
          goto LABEL_144;
        }

        v208 = ACFULogging::getLogInstance(Value);
        ACFULogging::handleMessage(v208, 2, "%s::%s: Failed to get the baseband BootMode\n");
      }

      else
      {
        v207 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v207, 2, "%s::%s: Unexpected baseband BootMode option CF type\n");
      }

      v246 = 0;
      v97 = 0;
      v114 = 0;
      v47 = 4002;
LABEL_317:
      CFRelease(cf);
LABEL_318:
      if (v97)
      {
        CFRelease(v97);
      }

      if (v114)
      {
        CFRelease(v114);
      }

      if (v246)
      {
        CFRelease(v246);
      }

      if (v245)
      {
        goto LABEL_325;
      }

      goto LABEL_326;
    }

    v206 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v206, 2, "%s::%s: Failed to initialize BBUCapabilities\n");
  }

  v47 = 4000;
  if (v245)
  {
LABEL_325:
    CFRelease(v245);
  }

LABEL_326:
  if (v267)
  {
    CFRelease(v267);
  }

  return v47;
}

void sub_1E52FD210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v44 - 192));
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef((v44 - 208));
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::initBBUCapabilities(BasebandRestore *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v18[0] = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v18, v1);
    memset(v17, 170, sizeof(v17));
    __p = operator new(0x28uLL);
    strcpy(__p, "/private/var/wireless/baseband_data");
    ctu::cf::map_adapter::getString();
    operator delete(__p);
    LogInstance = ACFULogging::getLogInstance(v2);
    if (SHIBYTE(v17[2]) >= 0)
    {
      v4 = v17;
    }

    else
    {
      v4 = v17[0];
    }

    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Setting baseband FS partition root to: %s\n", "BasebandRestore", "initBBUCapabilities", v4);
    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v5 = off_1ED944170;
    if (!off_1ED944170)
    {
      v6 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v6);
      v18[2] = v6;
      v7 = operator new(0x20uLL);
      *v7 = &unk_1F5F05A00;
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = v6;
      v8 = off_1ED944178;
      off_1ED944170 = v6;
      off_1ED944178 = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      v5 = off_1ED944170;
    }

    v9 = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v10 = v5[1];
    if (!v10)
    {
LABEL_18:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v11 = *(v10 + 8);
        if (v11 < 3)
        {
          break;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      if (v11 == 2)
      {
        break;
      }

      v10 = v10[1];
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    v12 = (v10 + 5);
    if (v10 + 5 != v17)
    {
      if (*(v10 + 63) < 0)
      {
        if (SHIBYTE(v17[2]) >= 0)
        {
          v13 = v17;
        }

        else
        {
          v13 = v17[0];
        }

        if (SHIBYTE(v17[2]) >= 0)
        {
          v14 = HIBYTE(v17[2]);
        }

        else
        {
          v14 = v17[1];
        }

        std::string::__assign_no_alias<false>(v12, v13, v14);
      }

      else if ((HIBYTE(v17[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v12, v17[0], v17[1]);
      }

      else
      {
        *v12 = *v17;
        v10[7] = v17[2];
      }
    }

    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
    {
LABEL_35:
      MEMORY[0x1E69265E0](v18);
      return 0;
    }

    operator delete(v17[0]);
    goto LABEL_35;
  }

  return 0;
}

void sub_1E52FD8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v23 - 40));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69265E0](v23 - 56);
  _Unwind_Resume(a1);
}

CFComparisonResult BasebandRestore::basebandRestoreCommand(CFStringRef theString2, const __CFString *a2)
{
  result = CFStringCompare(@"performBootup", theString2, 0);
  if (result)
  {
    if (CFStringCompare(@"performCoreDump", theString2, 0))
    {
      if (CFStringCompare(@"requireSystemPartitionMount", theString2, 0) && CFStringCompare(@"requirePartitionMount", theString2, 0))
      {
        if (CFStringCompare(@"copyBasebandMigrationData", theString2, 0))
        {
          if (CFStringCompare(@"restoreBasebandMigrationData", theString2, 0))
          {
            if (CFStringCompare(@"CopyIdentifier", theString2, 0))
            {
              if (CFStringCompare(@"ping", theString2, 0))
              {
                if (CFStringCompare(@"performManifestCheck", theString2, 0))
                {
                  if (CFStringCompare(@"provision", theString2, 0))
                  {
                    if (CFStringCompare(@"performFusing", theString2, 0))
                    {
                      if (CFStringCompare(@"verifyFusing", theString2, 0))
                      {
                        if (CFStringCompare(@"downloadFusingProgram", theString2, 0))
                        {
                          return 0xFFFFFFFFLL;
                        }

                        else
                        {
                          return 11;
                        }
                      }

                      else
                      {
                        return 10;
                      }
                    }

                    else
                    {
                      return 9;
                    }
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BasebandRestore *BasebandRestore::gatherPreflightParameters(BasebandRestore *this)
{
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  if (*(this + 544) != 1)
  {
    if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
    {
      v7 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
      if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
      v7 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
      if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
      {
LABEL_10:
        this = v7(@"FirmwarePreflightInfo", 0);
        v8 = this;
        if (this)
        {
          v9 = CFGetTypeID(this);
          TypeID = CFDictionaryGetTypeID();
          if (v9 != TypeID)
          {
            LogInstance = ACFULogging::getLogInstance(TypeID);
            ACFULogging::handleMessage(LogInstance, 2, "%s::%s: MG read for preflight info returned incorrect data type\n", "BasebandRestore", "gatherPreflightParameters");
          }

LABEL_21:
          v16 = v28;
          if (!v28)
          {
            return v8;
          }

          goto LABEL_22;
        }
      }
    }

    v18 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v18, 2, "%s::%s: MG read for preflight info gathering failed\n");
    goto LABEL_27;
  }

  v1 = *(this + 21);
  if (v1)
  {
    v2 = (**v1)(&v24);
    v3 = v24;
    v4 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v25;
      v27 = v3;
      v28 = v4;
      v6 = v26;
      LODWORD(v29) = v26;
      if (v25)
      {
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v6 = v29;
      }
    }

    else
    {
      v27 = v24;
      v28 = 0;
      v6 = v26;
      LODWORD(v29) = v26;
    }

    if (v6)
    {
      v20 = ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage(v20, 2, "%s::%s: Failed to get board params (%d)\n", "BasebandRestore", "gatherPreflightParameters", v6);
    }

    else
    {
      v12 = ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage(v12, 3, "%s::%s: Successfully gathered preflight personalization parameters\n", "BasebandRestore", "gatherPreflightParameters");
      v13 = v27;
      v14 = v28;
      v24 = v27;
      v25 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ParametersDictionary = ACFUCommon::PersonalizeParams::getParametersDictionary(v13);
      v8 = ParametersDictionary;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        goto LABEL_21;
      }

      v21 = ACFULogging::getLogInstance(ParametersDictionary);
      ACFULogging::handleMessage(v21, 2, "%s::%s: Failed to create personalization parameters dictionary\n", "BasebandRestore", "gatherPreflightParameters");
      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to create personalization parameters dictionary");
      ACFUError::addError();
      if (v23 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v17 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v17, 2, "%s::%s: Transport object instance missing\n");
  }

LABEL_27:
  v8 = 0;
  v16 = v28;
  if (!v28)
  {
    return v8;
  }

LABEL_22:
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return v8;
}

void sub_1E52FDEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::performCmd(BasebandRestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  CurrentUpdateStep = ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getStepName();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- PERFORM (Step %d - %s) --------\n", "BasebandRestore", "performCmd", CurrentUpdateStep, p_p);
  if ((v8 & 0x80000000) == 0)
  {
    v5 = ACFURestore::getCurrentUpdateStep(this);
    if (v5)
    {
      goto LABEL_6;
    }

    return (*(*this + 152))(this);
  }

  operator delete(__p);
  v5 = ACFURestore::getCurrentUpdateStep(this);
  if (!v5)
  {
    return (*(*this + 152))(this);
  }

LABEL_6:
  if (v5 == 3)
  {
    return 1;
  }

  else
  {
    return ACFURestore::performCmd(this);
  }
}

void sub_1E52FE03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::FWUpdatePerform(BasebandRestore *this)
{
  v264 = *MEMORY[0x1E69E9840];
  result = ACFURestore::performCmd(this);
  if (result)
  {
    isInternalBuild = ACFURestore::isInternalBuild(this);
    if (isInternalBuild)
    {
      if (*(this + 401))
      {
        v4 = "%s::%s: Bypassing baseband file system sync based on updater debug args\n";
LABEL_5:
        LogInstance = ACFULogging::getLogInstance(isInternalBuild);
        ACFULogging::handleMessage(LogInstance, 0, v4, "BasebandRestore", "shouldBypassNVMSync");
        goto LABEL_129;
      }

      isInternalBuild = *(this + 16);
      if (isInternalBuild)
      {
        isInternalBuild = CFDictionaryGetValue(isInternalBuild, @"BypassNVMSync");
        if (isInternalBuild)
        {
          v6 = isInternalBuild;
          v7 = CFGetTypeID(isInternalBuild);
          isInternalBuild = CFBooleanGetTypeID();
          if (v7 == isInternalBuild)
          {
            isInternalBuild = CFBooleanGetValue(v6);
            if (isInternalBuild == 1)
            {
              v4 = "%s::%s: Bypassing baseband file system sync based on updater options\n";
              goto LABEL_5;
            }
          }
        }
      }
    }

    v8 = ACFULogging::getLogInstance(isInternalBuild);
    ACFULogging::handleMessage(v8, 0, "%s::%s: Syncing baseband file system\n", "BasebandRestore", "syncBasebandFileSystem");
    memset(&v221, 170, sizeof(v221));
    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v9 = off_1ED944170;
    if (!off_1ED944170)
    {
      v10 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v10);
      *&__src[0] = v10;
      v11 = operator new(0x20uLL);
      *v11 = &unk_1F5F05A00;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = v10;
      v12 = off_1ED944178;
      off_1ED944170 = v10;
      off_1ED944178 = v11;
      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v9 = off_1ED944170;
    }

    v13 = off_1ED944178;
    *&value = v9;
    *(&value + 1) = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    BBUPartitionManager::getBBUFSPath(v9, &v221);
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v15 = ACFULogging::getLogInstance(v14);
    if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v221;
    }

    else
    {
      v16 = v221.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v15, 3, "%s::%s: Preparing BBUFSServer with path: %s\n", "BasebandRestore", "syncBasebandFileSystem", v16);
    if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v221;
    }

    else
    {
      v18 = v221.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (bbufs::prepareDestination(v18, v17))
      {
        ValueIfPresent = *(this + 16);
        *&value = 0;
        if (!ValueIfPresent || (ValueIfPresent = CFDictionaryGetValueIfPresent(ValueIfPresent, @"NVRestoreSetting", &value), !ValueIfPresent) || (LODWORD(__src[0]) = -1431655766, (v20 = value) == 0) || (v21 = CFGetTypeID(value), ValueIfPresent = CFNumberGetTypeID(), v21 != ValueIfPresent) || (ValueIfPresent = ctu::cf::assign(__src, v20, v22), (ValueIfPresent & 1) == 0) || (v23 = __src[0], (LODWORD(__src[0]) - 6) <= 0xFFFFFFFA))
        {
          v24 = ACFULogging::getLogInstance(ValueIfPresent);
          v25 = "%s::%s: NV items setting not provided in the options: defaulting to %s\n";
LABEL_36:
          v26 = "kBBUNVRestoreSettingNoUpdate";
          v23 = 3;
          goto LABEL_37;
        }

        v24 = ACFULogging::getLogInstance(ValueIfPresent);
        v25 = "%s::%s: NV items setting provided in the options: %s\n";
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            v26 = "kBBUNVRestoreSettingFactory";
          }

          else
          {
            v26 = "kBBUNVRestoreSettingShipping";
          }
        }

        else
        {
          if (v23 == 3)
          {
            goto LABEL_36;
          }

          if (v23 == 4)
          {
            v26 = "kBBUNVRestoreSettingFATP";
          }

          else
          {
            v26 = "kBBUNVRestoreSettingOQCMagic";
          }
        }

LABEL_37:
        ACFULogging::handleMessage(v24, 3, v25, "BasebandRestore", "getNVRestoreSettingOption", v26);
        *&value = 0xAAAAAAAAAAAAAAAALL;
        support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, &value);
        v28 = value;
        if (!value)
        {
          v190 = ACFULogging::getLogInstance(v27);
          v37 = ACFULogging::handleMessage(v190, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n", "BasebandRestore", "setNVItems");
          goto LABEL_272;
        }

        if (v23 > 3)
        {
          if (v23 == 4)
          {
            v33 = ACFULogging::getLogInstance(v27);
            ACFULogging::handleMessage(v33, 0, "%s::%s: Restoring NV items to FATP defaults\n", "BasebandRestore", "setNVItems");
            goto LABEL_48;
          }

          if (v23 == 5)
          {
            v30 = ACFULogging::getLogInstance(v27);
            ACFULogging::handleMessage(v30, 0, "%s::%s: Restoring NV items to OQC defaults\n", "BasebandRestore", "setNVItems");
            goto LABEL_48;
          }
        }

        else
        {
          if (v23 == 1)
          {
            v32 = ACFULogging::getLogInstance(v27);
            ACFULogging::handleMessage(v32, 0, "%s::%s: Restoring NV items to Factory defaults\n", "BasebandRestore", "setNVItems");
            goto LABEL_48;
          }

          if (v23 == 2)
          {
            v29 = ACFULogging::getLogInstance(v27);
            ACFULogging::handleMessage(v29, 0, "%s::%s: Restoring NV items to Shipping defaults\n", "BasebandRestore", "setNVItems");
LABEL_48:
            v34 = KTLBspSetNvItemsToState();
            if (v34)
            {
              v35 = ACFULogging::getLogInstance(v34);
              ACFULogging::handleMessage(v35, 3, "%s::%s: Successfully set NV items to %s\n", "BasebandRestore", "setNVItems", off_1E876E858[v23 - 1]);
              goto LABEL_50;
            }

            v36 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v36, 2, "%s::%s: Failed to set NV items to %s\n", "BasebandRestore", "setNVItems", off_1E876E858[v23 - 1]);
            v37 = (*(*v28 + 8))(v28);
LABEL_272:
            v191 = ACFULogging::getLogInstance(v37);
            v192 = BBUNVRestoreSettingAsString(v23);
            v88 = ACFULogging::handleMessage(v191, 2, "%s::%s: Failed to set NV items to %s\n", "BasebandRestore", "syncBasebandFileSystem", v192);
            goto LABEL_277;
          }
        }

        v31 = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(v31, 3, "%s::%s: Not setting NV items\n", "BasebandRestore", "setNVItems");
LABEL_50:
        (*(*v28 + 8))(v28);
        v38 = 0xFFFFFFFFLL;
        LODWORD(__src[0]) = -1;
        TypeID = *(this + 16);
        if (TypeID)
        {
          *&value = 0xAAAAAAAAAAAAAAAALL;
          TypeID = CFDictionaryGetValueIfPresent(TypeID, @"IMEISwVersion", &value);
          if (TypeID && (v40 = value) != 0 && (v41 = CFGetTypeID(value), TypeID = CFNumberGetTypeID(), v41 == TypeID))
          {
            TypeID = ctu::cf::assign(__src, v40, v42);
            if (TypeID)
            {
              v38 = LODWORD(__src[0]);
            }

            else
            {
              v38 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v38 = 0xFFFFFFFFLL;
          }
        }

        v43 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v43, 3, "%s::%s: Retrieved IMEI SV of %d from the restore options\n", "BasebandRestore", "syncBasebandFileSystem", v38);
        if (((*(*this + 144))(this, v38) & 1) == 0)
        {
          HardwareConfig = TelephonyRadiosGetHardwareConfig();
          if (HardwareConfig == 2 && (*(this + 424) & 1) == 0)
          {
            v202 = ACFULogging::getLogInstance(HardwareConfig);
            v88 = ACFULogging::handleMessage(v202, 2, "%s::%s: Failed to update IMEI SVN to %d\n", "BasebandRestore", "syncBasebandFileSystem", v38);
LABEL_277:
            v89 = 0;
            if ((SHIBYTE(v221.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_128:
              if (!v89)
              {
                v187 = "%s::%s: Failed to sync baseband file system\n";
                goto LABEL_318;
              }

LABEL_129:
              v222.__r_.__value_.__r.__words[0] = 0;
              if (!*(this + 18))
              {
                goto LABEL_147;
              }

              v263 = 0xAAAAAAAAAAAAAAAALL;
              *&v90 = 0xAAAAAAAAAAAAAAAALL;
              *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v261 = v90;
              v262 = v90;
              v259 = v90;
              v260 = v90;
              v257 = v90;
              v258 = v90;
              v255 = v90;
              v256 = v90;
              v253 = v90;
              v254 = v90;
              v251 = v90;
              v252 = v90;
              v249 = v90;
              v250 = v90;
              v247 = v90;
              v248 = v90;
              v245 = v90;
              v246 = v90;
              v243 = v90;
              v244 = v90;
              v241 = v90;
              v242 = v90;
              v239 = v90;
              v240 = v90;
              v237 = v90;
              v238 = v90;
              value = v90;
              v236 = v90;
              isPostSealing = ACFURestore::isPostSealing(this);
              if (isPostSealing)
              {
                goto LABEL_147;
              }

              v92 = ACFULogging::getLogInstance(isPostSealing);
              v93 = ACFULogging::handleMessage(v92, 0, "%s::%s: Enabling Baseband certification\n", "BasebandRestore", "handleCertification");
              *(this + 25) = 0;
              v94 = *(this + 18);
              *(this + 26) = v94;
              *(this + 27) = @"Baseband";
              *(this + 28) = @"scrt";
              *(this + 58) = 2;
              *(this + 31) = 0;
              *(this + 32) = 0;
              *(this + 30) = 0;
              *(this + 264) = 0;
              *(this + 34) = 0;
              if (!v94)
              {
                v208 = ACFULogging::getLogInstance(v93);
                v88 = ACFULogging::handleMessage(v208, 2, "%s::%s: No certification URL found for certification step.\n");
                goto LABEL_317;
              }

              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
              {
                if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
                if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
                {
LABEL_134:
                  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
                  {
                    goto LABEL_135;
                  }

                  goto LABEL_136;
                }
              }

              dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
              if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
              {
LABEL_135:
                if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
                {
                  v209 = ACFULogging::getLogInstance(v93);
                  v88 = ACFULogging::handleMessage(v209, 2, "%s::%s: Certification can only happen in restoreOS\n");
                  goto LABEL_317;
                }
              }

LABEL_136:
              Manifest = ACFUFirmware::getManifest(*(this + 19));
              v96 = Manifest;
              if (Manifest)
              {
                Length = CFDataGetLength(Manifest);
                if (Length <= 0)
                {
                  v211 = ACFULogging::getLogInstance(Length);
                  v212 = CFDataGetLength(v96);
                  v88 = ACFULogging::handleMessage(v211, 2, "%s::%s: Incorrect root manifest size: %d\n", "BasebandRestore", "handleCertification", v212);
                }

                else
                {
                  v98 = ACFULogging::getLogInstance(Length);
                  v99 = ACFULogging::handleMessage(v98, 0, "%s::%s: RootManifest: \n", "BasebandRestore", "handleCertification");
                  ACFULogging::getLogInstance(v99);
                  qmemcpy(__dst, "Restore::", 9);
                  v100 = operator new(0x30uLL);
                  v101 = __dst[0];
                  *v100 = 0x646E616265736142;
                  *(v100 + 1) = v101;
                  *(v100 + 16) = __dst[1];
                  strcpy(v100 + 17, "handleCertification");
                  *__dst = xmmword_1E5393180;
                  *&__src[0] = v100;
                  *(__src + 8) = xmmword_1E5393180;
                  CFDataGetBytePtr(v96);
                  CFDataGetLength(v96);
                  ACFULogging::handleMessageBinary();
                  if (SBYTE7(__src[1]) < 0)
                  {
                    operator delete(*&__src[0]);
                  }

                  BytePtr = CFDataGetBytePtr(v96);
                  v103 = CFDataGetLength(v96);
                  inited = Img4DecodeInitManifest(BytePtr, v103, &value);
                  v105 = inited;
                  if (inited)
                  {
                    v213 = ACFULogging::getLogInstance(inited);
                    v88 = ACFULogging::handleMessage(v213, 2, "%s::%s: Failed to decode manifest object (status: %d)\n", "BasebandRestore", "handleCertification", v105);
                  }

                  else
                  {
                    v106 = CFDataGetLength(v96);
                    v107 = ACFULogging::getLogInstance(v106);
                    ACFULogging::handleMessage(v107, 0, "%s::%s: RootManifest Size: %ld\n", "BasebandRestore", "handleCertification", v106);
                    v108 = CFDataGetBytePtr(v96);
                    v109 = *(&v251 + 1);
                    v110 = v252;
                    v111 = ACFULogging::getLogInstance(v108);
                    v112 = (v109 + v110);
                    v113 = v106 + v108 - v112;
                    v114 = ACFULogging::handleMessage(v111, 0, "%s::%s: RootManifest post_signed_section size: %ld\n", "BasebandRestore", "handleCertification", v113);
                    v115 = ACFULogging::getLogInstance(v114);
                    v116 = ACFULogging::handleMessage(v115, 0, "%s::%s: RootManifest post_signed_section: \n", "BasebandRestore", "handleCertification");
                    ACFULogging::getLogInstance(v116);
                    qmemcpy(__dst, "Restore::", 9);
                    v117 = operator new(0x30uLL);
                    v118 = __dst[0];
                    *v117 = 0x646E616265736142;
                    *(v117 + 1) = v118;
                    *(v117 + 16) = __dst[1];
                    strcpy(v117 + 17, "handleCertification");
                    *__dst = xmmword_1E5393180;
                    *&__src[0] = v117;
                    *(__src + 8) = xmmword_1E5393180;
                    ACFULogging::handleMessageBinary();
                    if (SBYTE7(__src[1]) < 0)
                    {
                      operator delete(*&__src[0]);
                    }

                    v119 = CFDataCreate(*MEMORY[0x1E695E480], v112, v113);
                    v120 = v119;
                    v222.__r_.__value_.__r.__words[0] = v119;
                    if (v119)
                    {
                      *(this + 32) = v119;
                      v121 = (*(**(this + 60) + 32))(*(this + 60), this + 200, *(this + 17), *(this + 15), 1);
                      v122 = v121;
                      if (v121)
                      {
                        v216 = ACFULogging::getLogInstance(v121);
                        ACFULogging::handleMessage(v216, 2, "%s::%s: Certification failed.\n", "BasebandRestore", "handleCertification");
                      }

                      CFRelease(v120);
                      if (!v122)
                      {
LABEL_147:
                        v231 = 0;
                        v232 = 0;
                        cf = 0;
                        v230 = 0;
                        v228 = 1;
                        v227 = 0;
                        v123 = *(this + 17);
                        if (v123)
                        {
                          v123 = CFDictionaryGetValue(v123, @"BasebandEnableProvisioning");
                          v124 = v123;
                          if (v123)
                          {
                            v125 = CFGetTypeID(v123);
                            v126 = CFBooleanGetTypeID();
                            if (v125 != v126)
                            {
                              v200 = ACFULogging::getLogInstance(v126);
                              ACFULogging::handleMessage(v200, 2, "%s::%s: Wrong type for Enable Prov PR3 option\n");
                              goto LABEL_323;
                            }

                            CFRetain(v124);
                            v232 = v124;
                            v123 = CFBooleanGetValue(v124);
                            LODWORD(v124) = v123 != 0;
                          }
                        }

                        else
                        {
                          LODWORD(v124) = 0;
                        }

                        v127 = ACFULogging::getLogInstance(v123);
                        if (v124)
                        {
                          v128 = "true";
                        }

                        else
                        {
                          v128 = "false";
                        }

                        ACFULogging::handleMessage(v127, 0, "%s::%s: PR3 Enable Provisioning option: %s\n", "BasebandRestore", "handleProvisioning", v128);
                        if (!v124)
                        {
                          goto LABEL_288;
                        }

                        v129 = CFDictionaryGetValue(*(this + 17), @"ForceServerProvisioning");
                        v130 = v129;
                        if (v129 && (v131 = CFGetTypeID(v129), v129 = CFBooleanGetTypeID(), v131 == v129))
                        {
                          CFRetain(v130);
                          v231 = v130;
                          v129 = CFBooleanGetValue(v130);
                          v132 = v129 != 0;
                        }

                        else
                        {
                          v132 = 0;
                          v231 = 0;
                        }

                        v133 = ACFULogging::getLogInstance(v129);
                        if (v132)
                        {
                          v134 = "true";
                        }

                        else
                        {
                          v134 = "false";
                        }

                        ACFULogging::handleMessage(v133, 0, "%s::%s: PR3 Force Server Provisioning option: %s\n", "BasebandRestore", "handleProvisioning", v134);
                        v135 = (*(*this + 88))(this, &v228);
                        if ((v135 & 1) == 0)
                        {
                          v199 = ACFULogging::getLogInstance(v135);
                          ACFULogging::handleMessage(v199, 2, "%s::%s: Baseband provisioning status check failed\n");
                          goto LABEL_323;
                        }

                        v136 = ACFULogging::getLogInstance(v135);
                        if (v228)
                        {
                          v137 = "true";
                        }

                        else
                        {
                          v137 = "false";
                        }

                        v138 = ACFULogging::handleMessage(v136, 0, "%s::%s: Current baseband provisioning status: %s\n", "BasebandRestore", "handleProvisioning", v137);
                        if (v132 || (v228 & 1) == 0)
                        {
                          v139 = ACFULogging::getLogInstance(v138);
                          ACFULogging::handleMessage(v139, 0, "%s::%s: Enabling provisioning flow.\n", "BasebandRestore", "handleProvisioning");
                          v140 = *(this + 17);
                          v141 = *(this + 22);
                          *&value = *(this + 21);
                          *(&value + 1) = v141;
                          if (v141)
                          {
                            atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
                          }

                          v142 = *(this + 20);
                          *&__src[0] = *(this + 19);
                          *(&__src[0] + 1) = v142;
                          if (v142)
                          {
                            atomic_fetch_add_explicit((v142 + 8), 1uLL, memory_order_relaxed);
                          }

                          v143 = *(this + 59);
                          __dst[0] = *(this + 58);
                          __dst[1] = v143;
                          if (v143)
                          {
                            atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
                          }

                          v144 = provisionBaseband(v140, &value, __src, &v230, __dst);
                          v145 = v144;
                          v146 = __dst[1];
                          if (__dst[1] && !atomic_fetch_add(__dst[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v146->__on_zero_shared)(v146);
                            std::__shared_weak_count::__release_weak(v146);
                          }

                          v147 = *(&__src[0] + 1);
                          if (*(&__src[0] + 1) && !atomic_fetch_add((*(&__src[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v147->__on_zero_shared)(v147);
                            std::__shared_weak_count::__release_weak(v147);
                          }

                          v148 = *(&value + 1);
                          if (*(&value + 1) && !atomic_fetch_add((*(&value + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v148->__on_zero_shared)(v148);
                            std::__shared_weak_count::__release_weak(v148);
                          }

                          if (v145)
                          {
LABEL_184:
                            if (v230)
                            {
                              v149 = *(this + 69);
                              *(this + 69) = v230;
                              if (!v149)
                              {
                                goto LABEL_187;
                              }

                              goto LABEL_186;
                            }

                            v201 = ACFULogging::getLogInstance(v144);
                            ACFULogging::handleMessage(v201, 2, "%s::%s: Null lai prov info\n", "BasebandRestore", "handleProvisioning");
LABEL_288:
                            v182 = 1;
                            v183 = cf;
                            if (!cf)
                            {
LABEL_290:
                              if (v231)
                              {
                                CFRelease(v231);
                              }

                              v88 = v232;
                              if (v232)
                              {
                                CFRelease(v232);
                              }

                              if (v182)
                              {
                                return 1;
                              }

                              v187 = "%s::%s: Failed to handle provisioning\n";
LABEL_318:
                              v215 = ACFULogging::getLogInstance(v88);
                              ACFULogging::handleMessage(v215, 2, v187, "BasebandRestore", "FWUpdatePerform");
                              return 0;
                            }

LABEL_289:
                            CFRelease(v183);
                            goto LABEL_290;
                          }

                          goto LABEL_242;
                        }

                        v156 = ACFULogging::getLogInstance(v138);
                        ACFULogging::handleMessage(v156, 0, "%s::%s: Device is provisioned. Let's send a PING and confirm it is provisioned properly.\n", "BasebandRestore", "handleProvisioning");
                        v157 = *(this + 17);
                        v158 = *(this + 22);
                        *&value = *(this + 21);
                        *(&value + 1) = v158;
                        if (v158)
                        {
                          atomic_fetch_add_explicit((v158 + 8), 1uLL, memory_order_relaxed);
                        }

                        v159 = *(this + 20);
                        *&__src[0] = *(this + 19);
                        *(&__src[0] + 1) = v159;
                        if (v159)
                        {
                          atomic_fetch_add_explicit((v159 + 8), 1uLL, memory_order_relaxed);
                        }

                        v160 = *(this + 59);
                        __dst[0] = *(this + 58);
                        __dst[1] = v160;
                        if (v160)
                        {
                          atomic_fetch_add_explicit((v160 + 8), 1uLL, memory_order_relaxed);
                        }

                        v161 = sendProvisionPing(v157, &value, __src, &v227, __dst);
                        v162 = v161;
                        v163 = __dst[1];
                        if (__dst[1] && !atomic_fetch_add(__dst[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v163->__on_zero_shared)(v163);
                          std::__shared_weak_count::__release_weak(v163);
                        }

                        v164 = *(&__src[0] + 1);
                        if (*(&__src[0] + 1) && !atomic_fetch_add((*(&__src[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v164->__on_zero_shared)(v164);
                          std::__shared_weak_count::__release_weak(v164);
                        }

                        v165 = *(&value + 1);
                        if (*(&value + 1) && !atomic_fetch_add((*(&value + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v165->__on_zero_shared)(v165);
                          std::__shared_weak_count::__release_weak(v165);
                        }

                        if ((v162 & 1) == 0)
                        {
                          v217 = ACFULogging::getLogInstance(v161);
                          ACFULogging::handleMessage(v217, 2, "%s::%s: Provisioning Ping failed\n");
                          goto LABEL_323;
                        }

                        if (!v227)
                        {
                          v172 = ACFULogging::getLogInstance(v161);
                          ACFULogging::handleMessage(v172, 0, "%s::%s: Enabling provisioning flow to fix incorrect region setup\n", "BasebandRestore", "handleProvisioning");
                          v173 = *(this + 17);
                          v174 = *(this + 22);
                          v222.__r_.__value_.__r.__words[0] = *(this + 21);
                          v222.__r_.__value_.__l.__size_ = v174;
                          if (v174)
                          {
                            atomic_fetch_add_explicit((v174 + 8), 1uLL, memory_order_relaxed);
                          }

                          v175 = *(this + 20);
                          v221.__r_.__value_.__r.__words[0] = *(this + 19);
                          v221.__r_.__value_.__l.__size_ = v175;
                          if (v175)
                          {
                            atomic_fetch_add_explicit((v175 + 8), 1uLL, memory_order_relaxed);
                          }

                          v176 = *(this + 59);
                          v225 = *(this + 58);
                          p_cf = v176;
                          if (v176)
                          {
                            atomic_fetch_add_explicit((v176 + 8), 1uLL, memory_order_relaxed);
                          }

                          v144 = provisionBaseband(v173, &v222, &v221, &v230, &v225);
                          v177 = v144;
                          v178 = p_cf;
                          if (p_cf && !atomic_fetch_add(p_cf + 1, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v178->__on_zero_shared)(v178);
                            std::__shared_weak_count::__release_weak(v178);
                          }

                          size = v221.__r_.__value_.__l.__size_;
                          if (v221.__r_.__value_.__l.__size_ && !atomic_fetch_add((v221.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (size->__on_zero_shared)(size);
                            std::__shared_weak_count::__release_weak(size);
                          }

                          v180 = v222.__r_.__value_.__l.__size_;
                          if (v222.__r_.__value_.__l.__size_ && !atomic_fetch_add((v222.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v180->__on_zero_shared)(v180);
                            std::__shared_weak_count::__release_weak(v180);
                          }

                          if (v177)
                          {
                            goto LABEL_184;
                          }

LABEL_242:
                          v181 = ACFULogging::getLogInstance(v144);
                          ACFULogging::handleMessage(v181, 2, "%s::%s: Provisioning failed\n");
                          goto LABEL_323;
                        }

                        v166 = *(this + 22);
                        v222.__r_.__value_.__r.__words[0] = *(this + 21);
                        v222.__r_.__value_.__l.__size_ = v166;
                        if (v166)
                        {
                          atomic_fetch_add_explicit((v166 + 8), 1uLL, memory_order_relaxed);
                        }

                        v167 = *(this + 20);
                        v221.__r_.__value_.__r.__words[0] = *(this + 19);
                        v221.__r_.__value_.__l.__size_ = v167;
                        if (v167)
                        {
                          atomic_fetch_add_explicit((v167 + 8), 1uLL, memory_order_relaxed);
                        }

                        v225 = 0;
                        p_cf = &cf;
                        v168 = *(this + 59);
                        v223 = *(this + 58);
                        v224 = v168;
                        if (v168)
                        {
                          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v169 = createBasebandProvInfo(0, &v222, &v221, &v225, &v223, *(this + 17));
                        v170 = v224;
                        if (v224 && !atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v170->__on_zero_shared)(v170);
                          std::__shared_weak_count::__release_weak(v170);
                        }

                        v171 = *p_cf;
                        if (v225)
                        {
                          *p_cf = v225;
                          if (v171)
                          {
                            goto LABEL_247;
                          }
                        }

                        else
                        {
                          *p_cf = 0;
                          if (v171)
                          {
LABEL_247:
                            CFRelease(v171);
                          }
                        }

                        v184 = v221.__r_.__value_.__l.__size_;
                        if (v221.__r_.__value_.__l.__size_ && !atomic_fetch_add((v221.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v184->__on_zero_shared)(v184);
                          std::__shared_weak_count::__release_weak(v184);
                        }

                        v185 = v222.__r_.__value_.__l.__size_;
                        if (v222.__r_.__value_.__l.__size_ && !atomic_fetch_add((v222.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v185->__on_zero_shared)(v185);
                          std::__shared_weak_count::__release_weak(v185);
                        }

                        if (v169)
                        {
                          if (cf)
                          {
                            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            v230 = Mutable;
                            if (Mutable)
                            {
                              CFDictionaryAddValue(Mutable, @"BasebandProvInfo", cf);
                              v149 = *(this + 69);
                              *(this + 69) = v230;
                              if (!v149)
                              {
LABEL_187:
                                v151 = (this + 32);
                                v150 = *(this + 4);
                                if (v150)
                                {
                                  while (1)
                                  {
                                    while (1)
                                    {
                                      v152 = v150;
                                      v153 = *(v150 + 32);
                                      if (v153 < 4)
                                      {
                                        break;
                                      }

                                      v150 = *v152;
                                      v151 = v152;
                                      if (!*v152)
                                      {
                                        goto LABEL_194;
                                      }
                                    }

                                    if (v153 == 3)
                                    {
                                      break;
                                    }

                                    v150 = v152[1];
                                    if (!v150)
                                    {
                                      v151 = v152 + 1;
                                      goto LABEL_194;
                                    }
                                  }

                                  v154 = v152;
                                }

                                else
                                {
                                  v152 = (this + 32);
LABEL_194:
                                  v154 = operator new(0x40uLL);
                                  v154[8] = 3;
                                  *(v154 + 6) = 0;
                                  *(v154 + 7) = 0;
                                  *(v154 + 5) = 0;
                                  *v154 = 0;
                                  *(v154 + 1) = 0;
                                  *(v154 + 2) = v152;
                                  *v151 = v154;
                                  v155 = **(this + 3);
                                  if (v155)
                                  {
                                    *(this + 3) = v155;
                                  }

                                  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 4), v154);
                                  ++*(this + 5);
                                }

                                v182 = 1;
                                *(v154 + 58) = 1;
                                v183 = cf;
                                if (!cf)
                                {
                                  goto LABEL_290;
                                }

                                goto LABEL_289;
                              }

LABEL_186:
                              CFRelease(v149);
                              goto LABEL_187;
                            }

                            v220 = ACFULogging::getLogInstance(0);
                            ACFULogging::handleMessage(v220, 2, "%s::%s: Unable create LAI prov dictionary\n");
                          }

                          else
                          {
                            v219 = ACFULogging::getLogInstance(v171);
                            ACFULogging::handleMessage(v219, 2, "%s::%s: Null lai baseband info\n");
                          }
                        }

                        else
                        {
                          v218 = ACFULogging::getLogInstance(v171);
                          ACFULogging::handleMessage(v218, 2, "%s::%s: Failed while getting baseband prov info\n");
                        }

LABEL_323:
                        v182 = 0;
                        v183 = cf;
                        if (!cf)
                        {
                          goto LABEL_290;
                        }

                        goto LABEL_289;
                      }
                    }

                    else
                    {
                      v214 = ACFULogging::getLogInstance(0);
                      v88 = ACFULogging::handleMessage(v214, 2, "%s::%s: rootManifestSigCert CFDataCreate error.\n");
                    }
                  }
                }
              }

              else
              {
                v210 = ACFULogging::getLogInstance(0);
                v88 = ACFULogging::handleMessage(v210, 2, "%s::%s: Null root manifest\n");
              }

LABEL_317:
              v187 = "%s::%s: Failed to handle certification\n";
              goto LABEL_318;
            }

LABEL_127:
            operator delete(v221.__r_.__value_.__l.__data_);
            goto LABEL_128;
          }

          v45 = ACFULogging::getLogInstance(HardwareConfig);
          ACFULogging::handleMessage(v45, 0, "%s::%s: Unable to update IMEI SVN to %d, but proceeding with restore\n", "BasebandRestore", "syncBasebandFileSystem", v38);
        }

        *&v260 = 0;
        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v250 = 0u;
        v251 = 0u;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        value = 0u;
        memset(__src, 0, sizeof(__src));
        memset(&v222, 170, sizeof(v222));
        pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
        v46 = off_1ED944170;
        if (!off_1ED944170)
        {
          v47 = operator new(0x18uLL);
          BBUPartitionManager::BBUPartitionManager(v47);
          v225 = v47;
          v48 = operator new(0x20uLL);
          *v48 = &unk_1F5F05A00;
          v48[1] = 0;
          v48[2] = 0;
          v48[3] = v47;
          v49 = off_1ED944178;
          off_1ED944170 = v47;
          off_1ED944178 = v48;
          if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
          }

          v46 = off_1ED944170;
        }

        v50 = off_1ED944178;
        __dst[0] = v46;
        __dst[1] = off_1ED944178;
        if (off_1ED944178)
        {
          atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
        BBUPartitionManager::getBBUFSPath(v46, &v222);
        if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v50->__on_zero_shared)(v50);
          std::__shared_weak_count::__release_weak(v50);
        }

        v52 = ACFULogging::getLogInstance(v51);
        v53 = &v222;
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v222;
        }

        else
        {
          v54 = v222.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v52, 0, "%s::%s: Performing NVM sync to: %s\n", "BasebandRestore", "performNVMSync", v54);
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v53 = v222.__r_.__value_.__r.__words[0];
        }

        if (v53)
        {
          memset(__src, 0, sizeof(__src));
          v55 = strnlen(v53, 0x100uLL);
          v56 = TelephonyUtilStrlcpy();
          if (v56 == v55 && (v56 + 1) < 0x101)
          {
            *(&__src[22] + 1) = 0;
            memcpy(__dst, __src, sizeof(__dst));
            v57 = BBUFSServerCreate(&value, __dst);
            if ((v57 & 1) == 0)
            {
              v203 = ACFULogging::getLogInstance(v57);
              ACFULogging::handleMessage(v203, 2, "%s::%s: Error: BBUFSServer create failed\n");
              goto LABEL_98;
            }

            if (sBBUFSServerSetConfig)
            {
              v58 = sBBUFSServerSetConfig(&value, "ForceSync", 0xAAAAAAAA00000000);
              if (v58)
              {
                if (sBBUFSServerSetConfig)
                {
                  v59 = sBBUFSServerSetConfig(&value, "ShutdownSync", 0xAAAAAAAA00000000);
                  if (v59)
                  {
                    if (sBBUFSServerStart)
                    {
                      v60 = sBBUFSServerStart(&value);
                      if (v60)
                      {
                        if (sBBUFSServerFlush)
                        {
                          v61 = sBBUFSServerFlush(&value);
                          if (v258)
                          {
                            if (v61)
                            {
                              v62 = ACFULogging::getLogInstance(v61);
                              ACFULogging::handleMessage(v62, 3, "%s::%s: NVM sync successful\n", "BasebandRestore", "performNVMSync");
                              v63 = 1;
                              v64 = &unk_1ECFD5000;
                              if (v258 != 1)
                              {
                                goto LABEL_104;
                              }

LABEL_99:
                              v68 = v64[276];
                              if (v68)
                              {
                                v69 = v68(&value);
                                if (v69)
                                {
LABEL_104:
                                  if (*(&v257 + 1))
                                  {
                                    _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer releasing registry\n");
                                    v71 = *(&v257 + 1);
                                    if (*(&v257 + 1))
                                    {
                                      v72 = *(*(&v257 + 1) + 8);
                                      if (v72)
                                      {
                                        std::__shared_weak_count::__release_weak(v72);
                                      }

                                      operator delete(v71);
                                    }

                                    *(&v257 + 1) = 0;
                                  }

                                  sBBUFSServerStart = 0;
                                  v64[276] = 0;
                                  sBBUFSServerFlush = 0;
                                  sBBUFSServerFlushInProgress = 0;
                                  sBBUFSServerSetConfig = 0;
                                  sBBUFSServerSetConfigDefaults = 0;
                                  v73 = _BBUFSDebugPrint("BBUFSServerRelease", "BBUFSServer destroyed\n");
                                  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v222.__r_.__value_.__l.__data_);
                                  }

                                  if ((v63 & 1) == 0)
                                  {
                                    v193 = ACFULogging::getLogInstance(v73);
                                    v88 = ACFULogging::handleMessage(v193, 2, "%s::%s: Failed to perform NVM sync\n");
                                    goto LABEL_277;
                                  }

                                  __dst[0] = 0xAAAAAAAAAAAAAAAALL;
                                  support::transport::ARI::create("BasebandRestore", 0x2710, 0, 0, __dst);
                                  v75 = __dst[0];
                                  if (!__dst[0])
                                  {
                                    v194 = ACFULogging::getLogInstance(v74);
                                    v84 = ACFULogging::handleMessage(v194, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n", "BasebandRestore", "getNVItems");
LABEL_276:
                                    v195 = ACFULogging::getLogInstance(v84);
                                    v88 = ACFULogging::handleMessage(v195, 2, "%s::%s: Failed to get NV items settings from the baseband\n");
                                    goto LABEL_277;
                                  }

                                  *&v238 = 0xAAAAAAAAAAAAAAAALL;
                                  *&v76 = 0xAAAAAAAAAAAAAAAALL;
                                  *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                  v236 = v76;
                                  v237 = v76;
                                  value = v76;
                                  *(&v238 + 1) = 0xAAAAAAAAFFFFFFFFLL;
                                  Bsp::ARICommandDriver::ARICommandDriver();
                                  *&v77 = 0xAAAAAAAAAAAAAAAALL;
                                  *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                  __src[2] = v77;
                                  __src[3] = v77;
                                  __src[0] = v77;
                                  __src[1] = v77;
                                  AriSdk::ARI_FactoryGetNvItemsSettingReq_SDK::ARI_FactoryGetNvItemsSettingReq_SDK(__src);
                                  v222.__r_.__value_.__r.__words[0] = 0;
                                  NvItemsSetting = Bsp::ARICommandDriver::GetNvItemsSetting();
                                  v79 = v222.__r_.__value_.__r.__words[0];
                                  if (v222.__r_.__value_.__r.__words[0])
                                  {
                                    v80 = NvItemsSetting;
                                  }

                                  else
                                  {
                                    v80 = 0;
                                  }

                                  if (v80)
                                  {
                                    if (**(v222.__r_.__value_.__r.__words[0] + 64))
                                    {
                                      v197 = ACFULogging::getLogInstance(v222.__r_.__value_.__l.__data_);
                                      ACFULogging::handleMessage(v197, 2, "%s::%s: Failed GetNvItemsSetting ARI command: result %d\n", "BasebandRestore", "getNVItems", **(v222.__r_.__value_.__r.__words[0] + 64));
                                    }

                                    else
                                    {
                                      v81 = **(v222.__r_.__value_.__r.__words[0] + 72);
                                      if (v81 < 4)
                                      {
                                        if (v81 > 3)
                                        {
                                          v23 = 6;
                                        }

                                        else
                                        {
                                          v23 = dword_1E5391EE0[v81];
                                        }

                                        v82 = **(v222.__r_.__value_.__r.__words[0] + 80);
                                        NvItemsSetting = 1;
                                        goto LABEL_124;
                                      }

                                      v198 = ACFULogging::getLogInstance(v222.__r_.__value_.__l.__data_);
                                      ACFULogging::handleMessage(v198, 2, "%s::%s: Invalid NV items setting returned by the baseband: NVM(%u), EEPROM(%u)\n", "BasebandRestore", "getNVItems", **(v222.__r_.__value_.__r.__words[0] + 72), **(v222.__r_.__value_.__r.__words[0] + 80));
                                    }

                                    NvItemsSetting = 0;
                                  }

                                  else
                                  {
                                    v196 = ACFULogging::getLogInstance(v222.__r_.__value_.__l.__data_);
                                    ACFULogging::handleMessage(v196, 2, "%s::%s: Failed GetNvItemsSetting ARI command\n", "BasebandRestore", "getNVItems");
                                  }

                                  v82 = 0;
                                  v83 = 0;
                                  v79 = v222.__r_.__value_.__r.__words[0];
                                  if (!v222.__r_.__value_.__r.__words[0])
                                  {
LABEL_125:
                                    MEMORY[0x1E6926C30](__src);
                                    Bsp::ARICommandDriver::~ARICommandDriver(&value);
                                    v84 = (*(*v75 + 8))(v75);
                                    if (NvItemsSetting)
                                    {
                                      v85 = ACFULogging::getLogInstance(v84);
                                      v86 = ACFULogging::handleMessage(v85, 3, "%s::%s: Got NV items settings from the baseband: NVM (%s), EEPROM (%u)\n", "BasebandRestore", "syncBasebandFileSystem", off_1E876E880[v23 - 1], v83);
                                      v87 = ACFULogging::getLogInstance(v86);
                                      v88 = ACFULogging::handleMessage(v87, 3, "%s::%s: Successfully synced baseband file system\n", "BasebandRestore", "syncBasebandFileSystem");
                                      v89 = 1;
                                      if ((SHIBYTE(v221.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_128;
                                      }

                                      goto LABEL_127;
                                    }

                                    goto LABEL_276;
                                  }

LABEL_124:
                                  (*(*v79 + 16))(v79);
                                  v83 = v82;
                                  goto LABEL_125;
                                }
                              }

                              else
                              {
                                v69 = _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n");
                              }

                              v70 = ACFULogging::getLogInstance(v69);
                              ACFULogging::handleMessage(v70, 2, "%s::%s: Error: BBUFSServer stop failed\n", "BasebandRestore", "performNVMSync");
                              goto LABEL_104;
                            }

                            goto LABEL_97;
                          }
                        }

                        else
                        {
                          v61 = _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n");
                          if (v258)
                          {
LABEL_97:
                            v67 = ACFULogging::getLogInstance(v61);
                            ACFULogging::handleMessage(v67, 2, "%s::%s: Error: BBUFSServer flush failed\n");
                            goto LABEL_98;
                          }
                        }

                        v207 = ACFULogging::getLogInstance(v61);
                        ACFULogging::handleMessage(v207, 2, "%s::%s: Error: BBUFSServer stopped during flush\n");
LABEL_98:
                        v63 = 0;
                        v64 = &unk_1ECFD5000;
                        if (v258 != 1)
                        {
                          goto LABEL_104;
                        }

                        goto LABEL_99;
                      }
                    }

                    else
                    {
                      v60 = _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n");
                    }

                    v206 = ACFULogging::getLogInstance(v60);
                    ACFULogging::handleMessage(v206, 2, "%s::%s: Error: BBUFSServer start failed\n");
                    goto LABEL_98;
                  }
                }

                else
                {
                  v59 = _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n");
                }

                v204 = ACFULogging::getLogInstance(v59);
                v205 = "ShutdownSync";
LABEL_304:
                ACFULogging::handleMessage(v204, 2, "%s::%s: Error: BBUFSServer failed to set config %s\n", "BasebandRestore", "performNVMSync", v205);
                goto LABEL_98;
              }
            }

            else
            {
              v58 = _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n");
            }

            v204 = ACFULogging::getLogInstance(v58);
            v205 = "ForceSync";
            goto LABEL_304;
          }

          v65 = _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v55 + 1, v56 + 1, 0x100uLL);
          *(&__src[22] + 1) = 0;
        }

        else
        {
          v65 = _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", __src, 0);
        }

        v66 = ACFULogging::getLogInstance(v65);
        ACFULogging::handleMessage(v66, 2, "%s::%s: Error: BBUFSServer parameters init failed\n");
        goto LABEL_98;
      }

      v188 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
    }

    else
    {
      v188 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    }

    v189 = ACFULogging::getLogInstance(v188);
    v88 = ACFULogging::handleMessage(v189, 2, "%s::%s: Failed BBUFSServer prepare\n");
    goto LABEL_277;
  }

  return result;
}

void sub_1E52FFE3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::addEntitlements(CFDictionaryRef *this, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(this[17], @"BasebandEnableCalibration");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbCalibrationEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v7 = CFDictionaryGetValue(this[17], @"BasebandEnableFactoryDebug");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbFactoryDebugEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v10 = CFDictionaryGetValue(this[17], @"BasebandEnableActivationBypass");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,BbActivationBypassEnable", *MEMORY[0x1E695E4D0]);
    }
  }

  v13 = CFDictionaryGetValue(this[16], @"BasebandHardwareConfigLockOverride");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID() && CFBooleanGetValue(v14) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,HardwareConfigLockOverride", *MEMORY[0x1E695E4D0]);
    }
  }

  v16 = CFDictionaryGetValue(this[17], @"BasebandFactoryActivationKeyID");
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  LogInstance = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Found the fact ack key hash in restore options\n", "BasebandRestore", "addEntitlements");
  v19 = CFGetTypeID(v17);
  if (v19 != CFStringGetTypeID())
  {
    goto LABEL_29;
  }

  v44.isa = 0;
  v44.info = &v44.data;
  v44.data = 0;
  v21 = support::cf::copyDataFromHexString(v17, &v44, v20);
  v22 = *v44.info;
  if (v44.isa)
  {
    *v44.info = v44.isa;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v44.info = 0;
    if (v22)
    {
LABEL_23:
      CFRelease(v22);
    }
  }

  if (v21)
  {
    if (!v44.data)
    {
      goto LABEL_29;
    }

    v23 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v23, 0, "%s::%s: Append fact act key hash to request\n", "BasebandRestore", "addEntitlements");
    CFDictionarySetValue(a2, @"Cellular1,BbFactoryActivationManifestKeyHash", v44.data);
  }

  if (v44.data)
  {
    CFRelease(v44.data);
  }

LABEL_29:
  v24 = CFDictionaryGetValue(this[17], @"FDRAllowUnsealedData");
  if (v24)
  {
    v25 = v24;
    v26 = CFGetTypeID(v24);
    if (v26 == CFBooleanGetTypeID() && CFBooleanGetValue(v25) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,FDRAllowUnsealed", *MEMORY[0x1E695E4D0]);
    }
  }

  v27 = CFDictionaryGetValue(this[17], @"FDRSkipSealing");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFBooleanGetTypeID() && CFBooleanGetValue(v28) == 1)
    {
      CFDictionarySetValue(a2, @"Cellular1,FDRAllowUnsealed", *MEMORY[0x1E695E4D0]);
    }
  }

  v30 = CFDictionaryGetValue(this[17], @"BbRequestEntries");
  if (v30)
  {
    v31 = v30;
    v32 = CFGetTypeID(v30);
    if (v32 == CFDictionaryGetTypeID())
    {
      AMSupportSafeRetain();
      v33 = CFDictionaryGetValue(v31, @"BbFATPCalibrationEnable");
      if (v33)
      {
        v34 = v33;
        v35 = CFGetTypeID(v33);
        if (v35 == CFBooleanGetTypeID() && CFBooleanGetValue(v34) == 1)
        {
          CFDictionarySetValue(a2, @"Cellular1,BbFATPCalibrationEnable", *MEMORY[0x1E695E4D0]);
        }
      }

      v36 = CFDictionaryGetValue(v31, @"BbProvisioningEnable");
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFBooleanGetTypeID() && CFBooleanGetValue(v37) == 1)
        {
          CFDictionarySetValue(a2, @"Cellular1,BbProvisioningEnable", *MEMORY[0x1E695E4D0]);
        }
      }

      CFRelease(v31);
    }

    else
    {
      v40 = CFGetTypeID(v31);
      TypeID = CFDictionaryGetTypeID();
      if (v40 != TypeID)
      {
        v42 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v42, 0, "%s::%s: Incorrect type for BasebandOptions dictionary which is passed in by PR.\n");
      }
    }
  }

  else
  {
    v39 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v39, 0, "%s::%s: No BbRequestEntries in dictionary passed in by PR.\n");
  }

  CFDictionarySetValue(a2, @"LocalSigningID", *MEMORY[0x1E695E4C0]);
  return 1;
}

void sub_1E5300510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5300524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFData const>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void BasebandRestore::queryCmd(const __CFDictionary **this@<X0>, uint64_t a2@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  CurrentUpdateStep = ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getCurrentUpdateStep(this);
  ACFURestore::getStepName();
  if (SHIBYTE(__p[2]) >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- QUERY (Step %d - %s) --------\n", "BasebandRestore", "queryCmd", CurrentUpdateStep, v6);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v7 = ACFURestore::getCurrentUpdateStep(this);
    if (!v7)
    {
LABEL_16:
      if (ACFURestore::isNeRDOS(this))
      {
        isPreflighted = ACFURestore::isPreflighted(this);
        if (isPreflighted)
        {
          v16 = ACFULogging::getLogInstance(isPreflighted);
          ACFULogging::handleMessage(v16, 0, "%s::%s: NerdOS second query - simply gather baseband info from ROM without a nonce\n", "BasebandRestore", "FWUpdateQuery");
          v17 = this[21];
          if (!v17)
          {
            v40 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v40, 2, "%s::%s: Transport object instance missing\n", "BasebandRestore", "FWUpdateQuery");
            goto LABEL_48;
          }

          memset(__p, 170, sizeof(__p));
          v18 = (**v17)(__p);
          if (LODWORD(__p[2]))
          {
            v41 = ACFULogging::getLogInstance(v18);
            ACFULogging::handleMessage(v41, 2, "%s::%s: Failed to get board params (%d)\n", "BasebandRestore", "FWUpdateQuery", LODWORD(__p[2]));
          }

          else
          {
            v19 = ACFULogging::getLogInstance(v18);
            ACFULogging::handleMessage(v19, 3, "%s::%s: Successfully gathered NerdOS second personalization parameters\n", "BasebandRestore", "FWUpdateQuery");
            v20 = __p[0];
            v21 = __p[1];
            *v45 = __p[0];
            *&v45[8] = __p[1];
            if (__p[1])
            {
              atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
            }

            ParametersDictionary = ACFUCommon::PersonalizeParams::getParametersDictionary(v20);
            v23 = ParametersDictionary;
            if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            if (v23)
            {
              ACFULogging::getLogInstance(ParametersDictionary);
              *(&v43 + 3) = 1701998452;
              LODWORD(v43) = 1953719634;
              HIBYTE(v43) = 58;
              v24 = operator new(0x30uLL);
              *v24 = 0x646E616265736142;
              *(v24 + 1) = v43;
              strcpy(v24 + 16, ":FWUpdateQuery");
              *v45 = v24;
              *&v45[8] = xmmword_1E53931A0;
              ACFULogging::handleMessageCFType();
              operator delete(*v45);
              v25 = 1;
              v26 = __p[1];
              if (__p[1])
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            }

            v42 = ACFULogging::getLogInstance(ParametersDictionary);
            ACFULogging::handleMessage(v42, 2, "%s::%s: Failed to create personalization parameters dictionary\n", "BasebandRestore", "FWUpdateQuery");
            std::string::basic_string[abi:ne200100]<0>(v45, "Failed to create personalization parameters dictionary");
            ACFUError::addError();
            if ((v45[23] & 0x80000000) != 0)
            {
              operator delete(*v45);
            }
          }

          v25 = 0;
          v23 = 0;
          v26 = __p[1];
          if (__p[1])
          {
LABEL_27:
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v26->__on_zero_shared)(v26);
              std::__shared_weak_count::__release_weak(v26);
            }
          }

LABEL_45:
          if ((v25 & 1) != 0 || !v23)
          {
            goto LABEL_49;
          }

          CFRelease(v23);
LABEL_48:
          v25 = 0;
          v23 = 0;
LABEL_49:
          *a2 = v23;
          *(a2 + 8) = v25;
          return;
        }
      }

      memset(v45, 170, 16);
      ACFURestore::queryCmd(v45, this);
      if ((v45[8] & 1) == 0)
      {
        v23 = 0;
        v25 = 0;
        goto LABEL_45;
      }

      v23 = *v45;
      if (*v45)
      {
        v27 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"BundleOverrides", @"BasebandFirmware");
        if (v27)
        {
          ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
          v29 = ValueForKeyPathInDict;
          if (ValueForKeyPathInDict)
          {
            TypeID = CFStringGetTypeID();
            v31 = CFGetTypeID(v29);
            if (TypeID != v31)
            {
              v36 = ACFULogging::getLogInstance(v31);
              v37 = CFGetTypeID(v29);
              ACFULogging::handleMessage(v36, 2, "%s::%s: Baseband Firmware override has wrong type %lu\n", "BasebandRestore", "FWUpdateQuery", v37);
              goto LABEL_62;
            }

            CFDictionarySetValue(v23, @"ACFUFirmware", v29);
          }

          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
          {
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
            {
LABEL_37:
              if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            }
          }

          dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
          if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
          {
LABEL_38:
            if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
            {
LABEL_41:
              ACFULogging::getLogInstance(ValueForKeyPathInDict);
              *(&v44 + 3) = 1701998452;
              LODWORD(v44) = 1953719634;
              HIBYTE(v44) = 58;
              v32 = operator new(0x30uLL);
              *v32 = 0x646E616265736142;
              *(v32 + 1) = v44;
              strcpy(v32 + 16, ":FWUpdateQuery");
              __p[0] = v32;
              *&__p[1] = xmmword_1E53931A0;
              ACFULogging::handleMessageCFType();
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              v25 = 1;
              goto LABEL_44;
            }
          }

LABEL_39:
          if (this[17])
          {
            ValueForKeyPathInDict = (*(*this + 16))(this, v23);
            if (ValueForKeyPathInDict)
            {
              goto LABEL_41;
            }

            v39 = ACFULogging::getLogInstance(ValueForKeyPathInDict);
            ACFULogging::handleMessage(v39, 2, "%s::%s: failed to add entitlements to the output dictionary\n");
          }

          else
          {
            v38 = ACFULogging::getLogInstance(ValueForKeyPathInDict);
            ACFULogging::handleMessage(v38, 2, "%s::%s: fRestoreOptions dictionary passed in by PR is null. Fail!\n");
          }

LABEL_62:
          v25 = 0;
LABEL_44:
          CFRelease(v27);
          goto LABEL_45;
        }

        v33 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v33, 2, "%s::%s: Failed to create Baseband Firmware override key path\n", "BasebandRestore", "FWUpdateQuery");
      }

      v25 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v7 = ACFURestore::getCurrentUpdateStep(this);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v7 == 2)
  {
    goto LABEL_16;
  }

  if (v7 == 3)
  {
    v8 = this[69];
    if (v8)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
      v10 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryAddValue(MutableCopy, @"LocalSigningID", *MEMORY[0x1E695E4D0]);
        ACFULogging::getLogInstance(v11);
        qmemcpy(v45, "Restore::", 9);
        v12 = operator new(0x30uLL);
        v13 = *v45;
        *v12 = 0x646E616265736142;
        *(v12 + 1) = v13;
        *(v12 + 16) = v45[8];
        strcpy(v12 + 17, "ProvisionQuery");
        *v45 = xmmword_1E5393190;
        __p[0] = v12;
        *&__p[1] = xmmword_1E5393190;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v14 = 1;
      }

      else
      {
        v35 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v35, 2, "%s::%s: Failed to create options cp\n", "BasebandRestore", "ProvisionQuery");
        v14 = 0;
      }
    }

    else
    {
      v34 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v34, 2, "%s::%s: fLaiProvInfo is null which means sth is wrong. Failing provisioning.\n", "BasebandRestore", "ProvisionQuery");
      v10 = 0;
      v14 = 0;
    }

    *a2 = v10;
    *(a2 + 8) = v14;
  }

  else
  {
    ACFURestore::queryCmd(a2, this);
  }
}

void sub_1E5300D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::bootInternal(ACFURTKitROM **this)
{
  __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Booting baseband...\n", "BasebandRestore", "bootInternal");
  v3 = this[19];
  if (!v3)
  {
    v65 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v65, 2, "%s::%s: Firmware object instance missing\n");
    goto LABEL_184;
  }

  if (!this[21])
  {
    v66 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v66, 2, "%s::%s: Transport object instance missing\n");
    goto LABEL_184;
  }

  if (!this[60])
  {
    v67 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v67, 2, "%s::%s: ROM object instance/s missing\n");
    goto LABEL_184;
  }

  if (*(this + 545))
  {
    memset(&v87, 0, sizeof(v87));
    v86.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    v86.__r_.__value_.__r.__words[2] = 0x5AAAAAAAAAAAAAALL;
    v86.__r_.__value_.__r.__words[0] = 0xAAAA003A57464242;
    *(&__dst.__r_.__value_.__s + 23) = 4;
    strcpy(&__dst, "bver");
    v4 = ACFUFirmware::copyFWDataByFileName();
    v5 = v4;
    cf = v4;
    if (!v4)
    {
      v71 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v71, 2, "%s::%s: bver tag not found in FTAB\n");
      goto LABEL_29;
    }

    BytePtr = CFDataGetBytePtr(v4);
    if (!BytePtr)
    {
      v73 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v73, 2, "%s::%s: dataptr get nullptr after CFDataGetBytePtr\n");
      goto LABEL_29;
    }

    Length = CFDataGetLength(v5);
    if (Length <= 0)
    {
      v74 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v74, 2, "%s::%s: data length is equal or less than zero\n");
      goto LABEL_29;
    }

    v8 = std::string::__assign_external(&v87, BytePtr);
    v9 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    size = v87.__r_.__value_.__l.__size_;
    v11 = v87.__r_.__value_.__r.__words[0];
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v87;
    }

    else
    {
      v12 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v87.__r_.__value_.__l.__size_;
    }

    if (v13 < 5)
    {
      goto LABEL_28;
    }

    v14 = v12 + v13;
    v8 = v12;
    while (1)
    {
      v8 = memchr(v8, v86.__r_.__value_.__s.__data_[0], v13 - 4);
      if (!v8)
      {
        goto LABEL_28;
      }

      if (*v8 == LODWORD(v86.__r_.__value_.__l.__data_) && v8[4] == v86.__r_.__value_.__s.__data_[4])
      {
        break;
      }

      ++v8;
      v13 = v14 - v8;
      if (v14 - v8 < 5)
      {
        goto LABEL_28;
      }
    }

    if (v8 == v14 || v8 - v12 == -1)
    {
LABEL_28:
      v17 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v17, 2, "%s::%s: keyword 'BBFW:' not exist in bver tag\n");
      goto LABEL_29;
    }

    v16 = v8 - v12 + 5;
    if ((v9 & 0x80) != 0)
    {
      if (size >= v16)
      {
LABEL_34:
        v20 = size - v16;
        if (size - v16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v20 >= 0x17)
        {
          if ((v20 | 7) == 0x17)
          {
            v22 = 25;
          }

          else
          {
            v22 = (v20 | 7) + 1;
          }

          p_dst = operator new(v22);
          __dst.__r_.__value_.__l.__size_ = v20;
          __dst.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = size - v16;
          p_dst = &__dst;
          if (size == v16)
          {
            goto LABEL_43;
          }
        }

        v8 = memmove(p_dst, v11 + v16, v20);
LABEL_43:
        p_dst->__r_.__value_.__s.__data_[v20] = 0;
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        v87 = __dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v87;
        }

        else
        {
          v23 = v87.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v87.__r_.__value_.__l.__size_;
        }

        if (v24 >= 1)
        {
          v25 = v23 + v24;
          v26 = v24;
          v8 = v23;
          while (1)
          {
            v8 = memchr(v8, 124, v26);
            if (!v8)
            {
              goto LABEL_65;
            }

            if (*v8 == 124)
            {
              break;
            }

            ++v8;
            v26 = v25 - v8;
            if (v25 - v8 < 1)
            {
              goto LABEL_65;
            }
          }

          if (v8 == v25 || v8 - v23 == -1)
          {
            goto LABEL_65;
          }

          if (v24 >= v8 - v23)
          {
            v24 = v8 - v23;
          }

          if (v24 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v24 >= 0x17)
          {
            if ((v24 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v24 | 7) + 1;
            }

            v27 = operator new(v29);
            __dst.__r_.__value_.__l.__size_ = v24;
            __dst.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v27;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v24;
            v27 = &__dst;
            if (v8 == v23)
            {
LABEL_71:
              v27->__r_.__value_.__s.__data_[v24] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p = __dst;
              v18 = 1;
              if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_74;
            }
          }

          memmove(v27, v23, v24);
          goto LABEL_71;
        }

LABEL_65:
        v28 = ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage(v28, 2, "%s::%s: end token '|' does not exist in bver tag\n");
LABEL_29:
        v18 = 0;
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_74:
          operator delete(v86.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_31:
            v19 = cf;
            if (!cf)
            {
LABEL_77:
              if ((v18 & 1) == 0)
              {
                v72 = ACFULogging::getLogInstance(v19);
                ACFULogging::handleMessage(v72, 2, "%s::%s: Failed to get firmware version\n");
LABEL_184:
                v63 = 0;
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return v63;
                }

                goto LABEL_174;
              }

              v87.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
              v87.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
              v87.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
              pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v30 = off_1ECFD4E60;
              if (!off_1ECFD4E60)
              {
                SharedData::create_default_global(&v86);
                v31 = *&v86.__r_.__value_.__l.__data_;
                *&v86.__r_.__value_.__l.__data_ = 0uLL;
                v32 = *(&off_1ECFD4E60 + 1);
                off_1ECFD4E60 = v31;
                if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v32->__on_zero_shared)(v32);
                  std::__shared_weak_count::__release_weak(v32);
                }

                v33 = v86.__r_.__value_.__l.__size_;
                if (v86.__r_.__value_.__l.__size_ && !atomic_fetch_add((v86.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v33->__on_zero_shared)(v33);
                  std::__shared_weak_count::__release_weak(v33);
                }

                v30 = off_1ECFD4E60;
              }

              v34 = *(&off_1ECFD4E60 + 1);
              __dst.__r_.__value_.__r.__words[0] = v30;
              __dst.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
              if (*(&off_1ECFD4E60 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v86.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
              v76 = xmmword_1E5391A10;
              *&v86.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
              strcpy(v86.__r_.__value_.__l.__data_, "Baseband firmware version");
              qmemcpy(v75, "firmware versionBaseband firmwar", sizeof(v75));
              SharedData::getPreference<std::string>(v30, &v86, &v87);
              if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v86.__r_.__value_.__l.__data_);
              }

              if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v34->__on_zero_shared)(v34);
                std::__shared_weak_count::__release_weak(v34);
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v35 = __p.__r_.__value_.__l.__size_;
              }

              v36 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
              v37 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
              if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v36 = v87.__r_.__value_.__l.__size_;
              }

              if (v35 == v36)
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v39 = &v87;
                }

                else
                {
                  v39 = v87.__r_.__value_.__r.__words[0];
                }

                v40 = memcmp(p_p, v39, v35) != 0;
                if ((v37 & 0x80000000) == 0)
                {
LABEL_106:
                  if (!v40)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_110;
                }
              }

              else
              {
                v40 = 1;
                if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_106;
                }
              }

              operator delete(v87.__r_.__value_.__l.__data_);
              if (!v40)
              {
                goto LABEL_159;
              }

LABEL_110:
              pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v41 = off_1ECFD4E60;
              if (!off_1ECFD4E60)
              {
                SharedData::create_default_global(&v87);
                v42 = *&v87.__r_.__value_.__l.__data_;
                *&v87.__r_.__value_.__l.__data_ = 0uLL;
                v43 = *(&off_1ECFD4E60 + 1);
                off_1ECFD4E60 = v42;
                if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v43->__on_zero_shared)(v43);
                  std::__shared_weak_count::__release_weak(v43);
                }

                v44 = v87.__r_.__value_.__l.__size_;
                if (v87.__r_.__value_.__l.__size_ && !atomic_fetch_add((v87.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v44->__on_zero_shared)(v44);
                  std::__shared_weak_count::__release_weak(v44);
                }

                v41 = off_1ECFD4E60;
              }

              v45 = *(&off_1ECFD4E60 + 1);
              v86.__r_.__value_.__r.__words[0] = v41;
              v86.__r_.__value_.__l.__size_ = *(&off_1ECFD4E60 + 1);
              if (*(&off_1ECFD4E60 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v87.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
              *&v87.__r_.__value_.__r.__words[1] = xmmword_1E5391A20;
              strcpy(v87.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
              SharedData::setPreference<BOOL>(v41, &v87, 1);
              if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v87.__r_.__value_.__l.__data_);
              }

              if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v45->__on_zero_shared)(v45);
                std::__shared_weak_count::__release_weak(v45);
              }

              pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v46 = off_1ECFD4E60;
              if (!off_1ECFD4E60)
              {
                SharedData::create_default_global(&v87);
                v47 = *&v87.__r_.__value_.__l.__data_;
                *&v87.__r_.__value_.__l.__data_ = 0uLL;
                v48 = *(&off_1ECFD4E60 + 1);
                off_1ECFD4E60 = v47;
                if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v48->__on_zero_shared)(v48);
                  std::__shared_weak_count::__release_weak(v48);
                }

                v49 = v87.__r_.__value_.__l.__size_;
                if (v87.__r_.__value_.__l.__size_ && !atomic_fetch_add((v87.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v49->__on_zero_shared)(v49);
                  std::__shared_weak_count::__release_weak(v49);
                }

                v46 = off_1ECFD4E60;
              }

              cf = v46;
              v83 = *(&off_1ECFD4E60 + 1);
              if (*(&off_1ECFD4E60 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v50 = operator new(0x20uLL);
              __dst.__r_.__value_.__r.__words[0] = v50;
              *&__dst.__r_.__value_.__r.__words[1] = v76;
              *v50 = v75[1];
              *(v50 + 9) = v75[0];
              v50[25] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v81, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              }

              else
              {
                v81 = __p;
              }

              os_unfair_lock_lock(v46 + 10);
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v86, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
              }

              else
              {
                v86 = v81;
              }

              if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v87, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
              }

              else
              {
                v87 = v86;
              }

              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v51 = &__dst;
              }

              else
              {
                v51 = __dst.__r_.__value_.__r.__words[0];
              }

              ctu::cf::plist_adapter::set<std::string>(v46, &v87, v51, 1);
              if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v87.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_149:
                  os_unfair_lock_unlock(v46 + 10);
                  if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_150;
                  }

                  goto LABEL_155;
                }
              }

              else if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_149;
              }

              operator delete(v86.__r_.__value_.__l.__data_);
              os_unfair_lock_unlock(v46 + 10);
              if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_150:
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_151;
                }

                goto LABEL_156;
              }

LABEL_155:
              operator delete(v81.__r_.__value_.__l.__data_);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_151:
                v52 = v83;
                if (!v83)
                {
                  goto LABEL_159;
                }

                goto LABEL_157;
              }

LABEL_156:
              operator delete(__dst.__r_.__value_.__l.__data_);
              v52 = v83;
              if (!v83)
              {
                goto LABEL_159;
              }

LABEL_157:
              if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v52->__on_zero_shared)(v52);
                std::__shared_weak_count::__release_weak(v52);
              }

              goto LABEL_159;
            }

LABEL_76:
            CFRelease(v19);
            goto LABEL_77;
          }
        }

        else
        {
LABEL_30:
          if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }
        }

        operator delete(v87.__r_.__value_.__l.__data_);
        v19 = cf;
        if (!cf)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    else if (v16 <= v9)
    {
      v11 = &v87;
      size = v9;
      goto LABEL_34;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_159:
  v53 = (*(*this[21] + 32))(this[21]);
  if (v53)
  {
    v68 = ACFULogging::getLogInstance(v53);
    ACFULogging::handleMessage(v68, 2, "%s::%s: Failed to reset chip (ACFU error code = %d)\n");
    goto LABEL_184;
  }

  v54 = this[22];
  v79 = this[21];
  v80 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
  }

  v55 = this[20];
  v77 = this[19];
  v78 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(v55 + 1, 1uLL, memory_order_relaxed);
  }

  v56 = this[38];
  if (!v56)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v57 = (*(*v56 + 48))(v56, &v79, &v77);
  v58 = v57;
  v59 = v78;
  if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
  }

  v60 = v80;
  if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  if (v58)
  {
    v69 = ACFULogging::getLogInstance(v57);
    ACFULogging::handleMessage(v69, 2, "%s::%s: Failed to perform preBoot actions (ACFU error code = %d)\n");
    goto LABEL_184;
  }

  v61 = ACFURTKitROM::bootFirmware(this[60]);
  if (v61)
  {
    v70 = ACFULogging::getLogInstance(v61);
    ACFULogging::handleMessage(v70, 2, "%s::%s: Baseband boot failed (ACFU error code = %d)\n");
    goto LABEL_184;
  }

  v62 = ACFULogging::getLogInstance(v61);
  ACFULogging::handleMessage(v62, 0, "%s::%s: Boot success\n", "BasebandRestore", "bootInternal");
  v63 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_174:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v63;
}

void sub_1E53019E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
    if ((*(v34 - 89) & 0x80000000) == 0)
    {
LABEL_7:
      ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a27);
      if (a34 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((*(v34 - 89) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(v34 - 112));
  goto LABEL_7;
}

ACFULogging *BasebandRestore::bootCmd(BasebandRestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- BOOT --------\n", "BasebandRestore", "bootCmd");
  v3 = BasebandRestore::bootInternal(this);
  v4 = ACFULogging::getLogInstance(v3);
  if (v3)
  {
    ACFULogging::handleMessage(v4, 3, "%s::%s: Boot command success\n", "BasebandRestore", "bootCmd");
  }

  else
  {
    ACFULogging::handleMessage(v4, 2, "%s::%s: Baseband boot failed\n", "BasebandRestore", "bootCmd");
    BasebandRestore::coredumpInternal(this);
  }

  return v3;
}

uint64_t BasebandRestore::coredumpInternal(CFDictionaryRef *this)
{
  v45 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Collecting coredump...\n", "BasebandRestore", "coredumpInternal");
  if (!this[19])
  {
    v34 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v34, 2, "%s::%s: Firmware instance missing\n");
    goto LABEL_13;
  }

  if (!this[21])
  {
    v35 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v35, 2, "%s::%s: Transport instance missing\n");
    goto LABEL_13;
  }

  if (!CFDictionaryContainsKey(this[15], @"coreDumpReason"))
  {
    goto LABEL_46;
  }

  Value = CFDictionaryGetValue(this[15], @"coreDumpReason");
  v5 = Value;
  if (!Value)
  {
    v37 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v37, 2, "%s::%s: Could not extract core dump reason\n");
    goto LABEL_13;
  }

  v6 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v6 != TypeID)
  {
    v38 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v38, 2, "%s::%s: unexpected core dump reason type\n");
LABEL_13:
    v16 = 0;
    v17 = v45;
    if (!v45)
    {
      return v16;
    }

    goto LABEL_53;
  }

  v8 = CFGetTypeID(v5);
  v9 = CFStringGetTypeID();
  if (v8 != v9)
  {
    v45 = 0;
    v15 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v15, 2, "%s::%s: Failed to create core dump reason override object\n");
    goto LABEL_13;
  }

  CFRetain(v5);
  v45 = v5;
  memset(&__dst, 170, sizeof(__dst));
  v10 = [v5 UTF8String];
  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v11 | 7) + 1;
    }

    p_dst = operator new(v18);
    __dst.__r_.__value_.__l.__size_ = v12;
    __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v11;
    p_dst = &__dst;
    if (!v11)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v14 = this[21];
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  memmove(p_dst, v10, v12);
  p_dst->__r_.__value_.__s.__data_[v12] = 0;
  v14 = this[21];
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v19)
  {
    v20 = v19;
    v21 = this[22];
    v42 = v19;
    v43 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_25:
  v20 = 0;
  v42 = 0;
  v43 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    std::string::__init_copy_ctor_external(&v41, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_27;
  }

LABEL_24:
  v41 = __dst;
LABEL_27:
  v22 = (v20 + 208);
  if (v20 + 208 != &v41)
  {
    if (v20[231] < 0)
    {
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v41;
      }

      else
      {
        v23 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v41.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(v22, v23, size);
    }

    else if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v22, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      *v22 = *&v41.__r_.__value_.__l.__data_;
      *(v20 + 28) = *(&v41.__r_.__value_.__l + 2);
    }
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    v25 = v43;
    if (!v43)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v25 = v43;
    if (!v43)
    {
LABEL_44:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_44;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_45:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_46:
  v27 = this[20];
  v26 = this[21];
  v39 = this[19];
  v40 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
  }

  v28 = (*(*v26 + 40))(v26, &v39, 1);
  v29 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v30 = v28;
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v28 = v30;
  }

  if (v28)
  {
    v36 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v36, 2, "%s::%s: Failed to get transport debug info\n");
    goto LABEL_13;
  }

  v31 = ACFUDiagnostics::perform(this[23]);
  v32 = ACFULogging::getLogInstance(v31);
  ACFULogging::handleMessage(v32, 0, "%s::%s: Coredump success\n", "BasebandRestore", "coredumpInternal");
  v16 = 1;
  v17 = v45;
  if (v45)
  {
LABEL_53:
    CFRelease(v17);
  }

  return v16;
}

void sub_1E5302084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v16);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v17 - 72));
  _Unwind_Resume(a1);
}

void sub_1E53020A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a20);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a20);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_3:
      ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v23 - 72));
      _Unwind_Resume(a1);
    }
  }

  operator delete(a22);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_1E5302108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v5 - 72));
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::coredumpCmd(BasebandRestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- COREDUMP --------\n", "BasebandRestore", "coredumpCmd");
  v3 = BasebandRestore::coredumpInternal(this);
  v4 = ACFULogging::getLogInstance(v3);
  if (v3)
  {
    ACFULogging::handleMessage(v4, 0, "%s::%s: Coredump command success\n");
  }

  else
  {
    ACFULogging::handleMessage(v4, 2, "%s::%s: Baseband coredump failed\n");
  }

  return v3;
}

uint64_t BasebandRestore::performFusingCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- PERFORM FUSING --------\n", "BasebandRestore", "performFusingCmd");
  v4 = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(v4, 0, "%s::%s: Not Implemented\n", "BasebandRestore", "performFusingCmd");
  return 0;
}

uint64_t BasebandRestore::verifyFusingCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- VERIFY FUSING --------\n", "BasebandRestore", "verifyFusingCmd");
  v4 = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(v4, 0, "%s::%s: Not Implemented\n", "BasebandRestore", "verifyFusingCmd");
  return 0;
}

uint64_t BasebandRestore::downloadFusingProgramCmd(BasebandRestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- DOWNLOAD FUSING PROGRAM --------\n", "BasebandRestore", "downloadFusingProgramCmd");
  v3 = ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage(v3, 0, "%s::%s: Not Implemented\n", "BasebandRestore", "downloadFusingProgramCmd");
  return 0;
}

BOOL BasebandRestore::requirePartitionMountsCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  v3 = capabilities::updater::BBUFSPartitionSizeMB(this);
  LogInstance = ACFULogging::getLogInstance(v3);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- REQUIRE PARTITION MOUNTS --------\n", "BasebandRestore", "requirePartitionMountsCmd");
  if (a2)
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireSystemPartitionMount", 1);
    v9 = ACFULogging::getLogInstance(v8);
    CStringPtr = CFStringGetCStringPtr(@"requireSystemPartitionMount", 0x8000100u);
    v11 = ACFULogging::handleMessage(v9, 0, "%s::%s: %s: true\n", "BasebandRestore", "requirePartitionMountsCmd", CStringPtr);
    v12 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v12, 0, "%s::%s: REFS supported: %d\n", "BasebandRestore", "requirePartitionMountsCmd", 1);
    v13 = ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireUserPartitionMount", 1);
    v14 = ACFULogging::getLogInstance(v13);
    v15 = CFStringGetCStringPtr(@"requireUserPartitionMount", 0x8000100u);
    ACFULogging::handleMessage(v14, 0, "%s::%s: %s: true\n", "BasebandRestore", "requirePartitionMountsCmd", v15);
    CFRetain(@"requestedBasebandFSPartitionMountSize");
    valuePtr = v3;
    v16 = CFNumberCreate(v6, kCFNumberLongLongType, &valuePtr);
    if (v16)
    {
      CFDictionaryAddValue(Mutable, @"requestedBasebandFSPartitionMountSize", v16);
      CFRelease(v16);
    }

    CFRelease(@"requestedBasebandFSPartitionMountSize");
    v18 = ACFULogging::getLogInstance(v17);
    v19 = CFStringGetCStringPtr(@"requestedBasebandFSPartitionMountSize", 0x8000100u);
    v20 = ACFULogging::handleMessage(v18, 0, "%s::%s: %s: %u\n", "BasebandRestore", "requirePartitionMountsCmd", v19, v3);
    *a2 = Mutable;
    v21 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v21, 0, "%s::%s: Require partition mounts command success\n");
  }

  else
  {
    v23 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v23, 2, "%s::%s: NULL output param\n");
  }

  return a2 != 0;
}

void sub_1E530257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_1E530259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::copyBasebandMigrationDataCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  memset(&v67, 170, sizeof(v67));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v3 = off_1ED944170;
  if (!off_1ED944170)
  {
    v4 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v4);
    v65 = v4;
    v5 = operator new(0x20uLL);
    *v5 = &unk_1F5F05A00;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
    v6 = off_1ED944178;
    off_1ED944170 = v4;
    off_1ED944178 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_1ED944170;
  }

  v7 = off_1ED944178;
  *&__p.st_dev = v3;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v3, &v67);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  LogInstance = ACFULogging::getLogInstance(v8);
  v10 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- COPY BASEBAND MIGRATION DATA --------\n", "BasebandRestore", "copyBasebandMigrationDataCmd");
  if (!a2)
  {
    v59 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v59, 2, "%s::%s: NULL output param\n");
LABEL_114:
    result = 0;
    *a2 = 0;
    if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_115;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v11 = off_1ED944170;
  if (!off_1ED944170)
  {
    v12 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v12);
    __dst.__r_.__value_.__r.__words[0] = v12;
    v13 = operator new(0x20uLL);
    *v13 = &unk_1F5F05A00;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = v12;
    v14 = off_1ED944178;
    off_1ED944170 = v12;
    off_1ED944178 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v11 = off_1ED944170;
  }

  v15 = off_1ED944178;
  v65 = v11;
  v66[0] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v11, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (!p_p)
  {
    v18 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    goto LABEL_28;
  }

  v18 = bbufs::prepareDestination(p_p, v16);
  if ((v18 & 1) == 0)
  {
    v18 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
LABEL_28:
    v19 = 0;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v19 = 1;
  if (SHIBYTE(__p.st_gid) < 0)
  {
LABEL_31:
    operator delete(*&__p.st_dev);
    if (!v15)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (!v15)
  {
LABEL_33:
    if (v19)
    {
      goto LABEL_34;
    }

LABEL_112:
    v56 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v56, 2, "%s::%s: Failed BBUFSServer prepare\n");
    goto LABEL_114;
  }

LABEL_32:
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!v19)
  {
    goto LABEL_112;
  }

LABEL_34:
  v20 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v57 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v57, 2, "%s::%s: Failed to allocate output dictionary for baseband migration data\n");
    goto LABEL_114;
  }

  v60 = Mutable;
  GetBasebandNVM4ccToFileNameMap(&v65);
  v22 = v65;
  if (v65 != v66)
  {
    while (1)
    {
      memset(&__dst, 170, sizeof(__dst));
      pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
      v23 = off_1ED944170;
      if (off_1ED944170)
      {
        break;
      }

      v42 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v42);
      v68 = v42;
      v43 = operator new(0x20uLL);
      *v43 = &unk_1F5F05A00;
      v43[1] = 0;
      v43[2] = 0;
      v43[3] = v42;
      v44 = off_1ED944178;
      off_1ED944170 = v42;
      off_1ED944178 = v43;
      if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
        v23 = off_1ED944170;
        v24 = off_1ED944178;
        v62 = off_1ED944170;
        v63 = off_1ED944178;
        if (off_1ED944178)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v23 = off_1ED944170;
        v24 = off_1ED944178;
        v62 = off_1ED944170;
        v63 = off_1ED944178;
        if (off_1ED944178)
        {
          goto LABEL_40;
        }
      }

LABEL_41:
      pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
      BBUPartitionManager::getBBUFSPath(v23, &__p);
      if ((__p.st_gid & 0x80000000) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = *&__p.st_dev;
      }

      v26 = strlen(v25);
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v27 = v26;
      if (v26 >= 0x17)
      {
        if ((v26 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (v26 | 7) + 1;
        }

        p_dst = operator new(v30);
        __dst.__r_.__value_.__l.__size_ = v27;
        __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v26;
        p_dst = &__dst;
        if (!v26)
        {
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_55;
        }
      }

      memmove(p_dst, v25, v27);
      p_dst->__r_.__value_.__s.__data_[v27] = 0;
      if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
      {
LABEL_48:
        v29 = v63;
        if (!v63)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(*&__p.st_dev);
      v29 = v63;
      if (!v63)
      {
        goto LABEL_58;
      }

LABEL_56:
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

LABEL_58:
      v31 = *(v22 + 79);
      if (v31 >= 0)
      {
        v32 = (v22 + 7);
      }

      else
      {
        v32 = v22[7];
      }

      if (v31 >= 0)
      {
        v33 = *(v22 + 79);
      }

      else
      {
        v33 = v22[8];
      }

      std::string::append(&__dst, v32, v33);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst.__r_.__value_.__r.__words[0];
      }

      v35 = CFStringCreateWithCString(v20, v34, 0x8000100u);
      v62 = v35;
      v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__p.st_blksize = v36;
      *__p.st_qspare = v36;
      __p.st_birthtimespec = v36;
      *&__p.st_size = v36;
      __p.st_mtimespec = v36;
      __p.st_ctimespec = v36;
      *&__p.st_uid = v36;
      __p.st_atimespec = v36;
      *&__p.st_dev = v36;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__dst;
      }

      else
      {
        v37 = __dst.__r_.__value_.__r.__words[0];
      }

      v38 = stat(v37, &__p);
      if (v38)
      {
        v40 = ACFULogging::getLogInstance(v38);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &__dst;
        }

        else
        {
          v41 = __dst.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v40, 0, "%s::%s: NVM file %s not present\n", "BasebandRestore", "copyBasebandMigrationDataCmd", v41);
        goto LABEL_98;
      }

      FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(v35, v39);
      *&__p.st_dev = FileDatafromFilePath;
      if (!FileDatafromFilePath)
      {
        v46 = ACFULogging::getLogInstance(0);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &__dst;
        }

        else
        {
          v47 = __dst.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v46, 2, "%s::%s: Failed to create data from NVM file %s\n", "BasebandRestore", "copyBasebandMigrationDataCmd", v47);
        goto LABEL_98;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v61, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v61 = __dst;
      }

      v48 = ctu::cf::insert<std::string,__CFData const*>(v60, &v61, FileDatafromFilePath, v20);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        v49 = v48;
        operator delete(v61.__r_.__value_.__l.__data_);
        v48 = v49;
        if ((v49 & 1) == 0)
        {
LABEL_93:
          v50 = ACFULogging::getLogInstance(v48);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &__dst;
          }

          else
          {
            v51 = __dst.__r_.__value_.__r.__words[0];
          }

          ACFULogging::handleMessage(v50, 2, "%s::%s: Failed to add NVM file %s to baseband migration data output dict\n", "BasebandRestore", "copyBasebandMigrationDataCmd", v51);
        }
      }

      else if ((v48 & 1) == 0)
      {
        goto LABEL_93;
      }

      CFRelease(FileDatafromFilePath);
LABEL_98:
      if (v35)
      {
        CFRelease(v35);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v52 = v22[1];
        if (v52)
        {
          do
          {
LABEL_104:
            v53 = v52;
            v52 = *v52;
          }

          while (v52);
          goto LABEL_37;
        }
      }

      else
      {
        v52 = v22[1];
        if (v52)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v53 = v22[2];
        v54 = *v53 == v22;
        v22 = v53;
      }

      while (!v54);
LABEL_37:
      v22 = v53;
      if (v53 == v66)
      {
        goto LABEL_109;
      }
    }

    v24 = off_1ED944178;
    v62 = off_1ED944170;
    v63 = off_1ED944178;
    if (!off_1ED944178)
    {
      goto LABEL_41;
    }

LABEL_40:
    atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_41;
  }

LABEL_109:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v65, v66[0]);
  result = 1;
  *a2 = v60;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_115:
    v58 = result;
    operator delete(v67.__r_.__value_.__l.__data_);
    return v58;
  }

  return result;
}

void sub_1E5302DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandRestore::restoreBasebandMigrationDataCmd(BasebandRestore *this, const __CFDictionary **a2)
{
  *(&v39 + 1) = 0;
  v40 = 0;
  *&v39 = &v39 + 8;
  LogInstance = ACFULogging::getLogInstance(this);
  v4 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- RESTORE BASEBAND MIGRATION DATA --------\n", "BasebandRestore", "restoreBasebandMigrationDataCmd");
  if (!a2)
  {
    v14 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v14, 2, "%s::%s: NULL output param\n", "BasebandRestore", "restoreBasebandMigrationDataCmd");
    v13 = 0;
    goto LABEL_77;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v5 = off_1ED944170;
  if (!off_1ED944170)
  {
    v6 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v6);
    v38[0] = v6;
    v7 = operator new(0x20uLL);
    *v7 = &unk_1F5F05A00;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    v8 = off_1ED944178;
    off_1ED944170 = v6;
    off_1ED944178 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_1ED944170;
  }

  v9 = off_1ED944178;
  context.__r_.__value_.__r.__words[0] = v5;
  context.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v5, &v43);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v43;
  }

  else
  {
    v11 = v43.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    v12 = bbufs::prepareDestination(v11, v10);
    if (v12)
    {
      v13 = 1;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v12 = _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
  }

  else
  {
    v12 = _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
  }

  v13 = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_20:
    operator delete(v43.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v13)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if ((v13 & 1) == 0)
  {
LABEL_24:
    v15 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v15, 2, "%s::%s: Failed BBUFSServer prepare\n", "BasebandRestore", "restoreBasebandMigrationDataCmd");
  }

LABEL_25:
  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v38, *a2);
  v16 = (*v38[0])(v38, @"MigrationData");
  v17 = v16;
  if (v16 && ((v18 = CFGetTypeID(v16), v18 != CFDictionaryGetTypeID()) ? (v19 = 0) : (v19 = v17), CFRelease(v17), v19))
  {
    *&v43.__r_.__value_.__r.__words[1] = 0uLL;
    v43.__r_.__value_.__r.__words[0] = &v43.__r_.__value_.__l.__size_;
    context.__r_.__value_.__r.__words[0] = &v43;
    context.__r_.__value_.__l.__size_ = &v43.__r_.__value_.__l.__size_;
    CFDictionaryApplyFunction(v19, ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>, &context);
    v20 = v39;
    v39 = *&v43.__r_.__value_.__l.__data_;
    *&v43.__r_.__value_.__l.__data_ = v20;
    v21 = v40;
    v40 = v43.__r_.__value_.__r.__words[2];
    v22 = v43.__r_.__value_.__r.__words[2];
    v43.__r_.__value_.__r.__words[2] = v21;
    v23 = v22 == 0;
    v24 = &v39;
    if (!v23)
    {
      v24 = (*(&v39 + 1) + 16);
    }

    *v24 = &v39 + 8;
    if (v21)
    {
      v25 = (*(&v20 + 1) + 16);
    }

    else
    {
      v25 = &v43;
    }

    v25->__r_.__value_.__r.__words[0] = &v43.__r_.__value_.__l.__size_;
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v43, *(&v20 + 1));
    v26 = v39;
    if (v39 != (&v39 + 8))
    {
      do
      {
        v27 = (v26 + 2);
        if (*(v26 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *(v26 + 4), *(v26 + 5));
        }

        else
        {
          *&v36.__r_.__value_.__l.__data_ = *v27;
          v36.__r_.__value_.__r.__words[2] = *(v26 + 6);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&context, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          context = v36;
        }

        v41 = 0;
        if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v43, context.__r_.__value_.__l.__data_, context.__r_.__value_.__l.__size_);
        }

        else
        {
          v43 = context;
        }

        v44 = 0;
        if (ctu::cf::convert_copy())
        {
          v28 = v44;
        }

        else
        {
          v28 = 0;
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
          cf = v28;
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_59:
            operator delete(context.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_60;
          }
        }

        else
        {
          cf = v28;
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_60:
        operator delete(v36.__r_.__value_.__l.__data_);
LABEL_53:
        v43.__r_.__value_.__r.__words[0] = AMSupportCreateURLFromString();
        if (!v43.__r_.__value_.__r.__words[0])
        {
          v31 = ACFULogging::getLogInstance(0);
          if (*(v26 + 55) < 0)
          {
            v27 = *v27;
          }

          ACFULogging::handleMessage(v31, 2, "%s::%s: Failed to create URL for NVM file %s while restoring baseband migration data\n", "BasebandRestore", "restoreBasebandMigrationDataCmd", v27);
          goto LABEL_64;
        }

        v29 = AMSupportWriteDataToFileURL();
        if (v29)
        {
          v30 = ACFULogging::getLogInstance(v29);
          if (*(v26 + 55) < 0)
          {
            v27 = *v27;
          }

          ACFULogging::handleMessage(v30, 2, "%s::%s: Failed to write NVM file %s while restoring baseband migration data\n", "BasebandRestore", "restoreBasebandMigrationDataCmd", v27);
LABEL_64:
          v13 = 0;
        }

        if (v43.__r_.__value_.__r.__words[0])
        {
          CFRelease(v43.__r_.__value_.__l.__data_);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v32 = *(v26 + 1);
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = *(v26 + 2);
            v23 = *v33 == v26;
            v26 = v33;
          }

          while (!v23);
        }

        v26 = v33;
      }

      while (v33 != (&v39 + 8));
    }
  }

  else
  {
    v34 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v34, 2, "%s::%s: Did not find baseband migration data in the output dict. Nothing to restore\n", "BasebandRestore", "restoreBasebandMigrationDataCmd");
    v13 = 1;
  }

  MEMORY[0x1E69265E0](v38);
LABEL_77:
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v39, *(&v39 + 1));
  return v13 & 1;
}

void sub_1E5303500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, char **a21, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](&a21);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::pingCmd(std::__shared_weak_count **this, const __CFDictionary **a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: -------- PING --------\n", "BasebandRestore", "pingCmd");
  v5 = this[21];
  if (!v5)
  {
    v8 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v8, 2, "%s::%s: Transport obj has not been created. Unable to ping\n");
    return 0;
  }

  if (v6)
  {
    v7 = this[22];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  FWVersion = BasebandUpdaterTransport::pingAndGetFWVersion(v6, a2);
  v10 = FWVersion;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v11 = ACFULogging::getLogInstance(v13);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = ACFULogging::getLogInstance(FWVersion);
    if (v10)
    {
LABEL_10:
      ACFULogging::handleMessage(v11, 2, "%s::%s: Ping command failed\n");
      return 0;
    }
  }

  ACFULogging::handleMessage(v11, 3, "%s::%s: Ping command success\n", "BasebandRestore", "pingCmd");
  return 1;
}

void sub_1E5303800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BasebandRestore::performManifestCheckCmd(BasebandRestore *this)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: -------- PERFORM MANIFEST CHECK --------\n", "BasebandRestore", "performManifestCheckCmd");
  v3 = BasebandRestore::bootInternal(this);
  if (!v3)
  {
    v11 = "%s::%s: Failed to boot Baseband for manifest check\n";
LABEL_16:
    v12 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v12, 2, v11, "BasebandRestore", "performManifestCheckCmd");
    v4 = 0;
    goto LABEL_11;
  }

  support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, &v14);
  v4 = v14;
  if (!v14)
  {
    v11 = "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n";
    goto LABEL_16;
  }

  v5 = KTLGetManifestStatus();
  if ((v5 & 1) == 0)
  {
    v13 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v13, 2, "%s::%s: Failed to send get manifest status command\n");
LABEL_11:
    BasebandRestore::coredumpInternal(this);
    v8 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  logManifestStatus(v15);
  if (WORD2(v15[0]) | WORD4(v15[0]) || ((v6 = capabilities::updater::supportsFATPCalibrationManifestStatus(v6), WORD3(v15[0])) ? (v7 = v6) : (v7 = 0), v7 == 1))
  {
    v9 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v9, 2, "%s::%s: Detected non-zero cal/prov/fac manifests status\n");
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:
  (*(*v4 + 8))(v4);
  return v8;
}

void sub_1E53039E4(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(exception_object);
}

void logManifestStatus(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  if (a1)
  {
    v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Manifest status: \n\t\t\t  status             : %u\n \t\t\t  provision_status   : %u\n \t\t\t  fatp_cal_status    : %u\n \t\t\t  calibration_status : %u\n \t\t\t  skey_hash length   : %u\n", "BasebandRestore", "logManifestStatus", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5));
    LODWORD(v4) = *(a1 + 5);
    if (*(a1 + 5))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v5 + v4;
        if (v7 >= 0x10)
        {
          v8 = 16;
        }

        else
        {
          v8 = v7;
        }

        v9 = ACFULogging::getLogInstance(v3);
        ctu::hex(__p, (a1 + v6 + 12), v8);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v3 = ACFULogging::handleMessage(v9, 0, "%s::%s:   skey_hash    [0x%02x]: %s\n", "BasebandRestore", "logManifestStatus", v6, v10);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v6 += 16;
        v4 = *(a1 + 5);
        v5 -= 16;
      }

      while (v6 < v4);
    }

    LODWORD(v11) = *(a1 + 70);
    if (*(a1 + 70))
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v12 + v11;
        if (v14 >= 0x10)
        {
          v15 = 16;
        }

        else
        {
          v15 = v14;
        }

        v16 = ACFULogging::getLogInstance(v3);
        ctu::hex(__p, (a1 + v13 + 142), v15);
        if (v19 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        v3 = ACFULogging::handleMessage(v16, 0, "%s::%s:   ckey_hash    [0x%02x]: %s\n", "BasebandRestore", "logManifestStatus", v13, v17);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v13 += 16;
        v11 = *(a1 + 70);
        v12 -= 16;
      }

      while (v13 < v11);
    }
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad argument\n", "BasebandRestore", "logManifestStatus");
  }
}