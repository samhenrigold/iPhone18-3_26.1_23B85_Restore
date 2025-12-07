void RoseCapabilities::create(RoseCapabilities *this@<X0>, RoseCapabilities **a2@<X8>)
{
  v2 = this;
  v4 = operator new(4uLL);
  std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(a2, v4);
  if (*a2)
  {
    v5 = RoseCapabilities::init(*a2, v2);
    if ((v5 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "RoseCapabilities", "create");
      v8 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to create capabilities object\n", "RoseCapabilities", "create");
  }
}

void sub_2980C0D2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseCapabilities::init(RoseCapabilities *this, int a2)
{
  if (a2 == 8228)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Identified chip as R2\n", "RoseCapabilities", "init");
    result = 1;
    *this = 1;
  }

  else if (a2 == 8198)
  {
    v4 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v4, 0, "%s::%s: Identified chip as R1\n", "RoseCapabilities", "init");
    *this = 0;
    return 1;
  }

  else
  {
    v7 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v7, 2, "%s::%s: Unrecognized chipID 0x%x\n", "RoseCapabilities", "init", a2);
    return 0;
  }

  return result;
}

uint64_t RoseCapabilities::supportsRoseSEPairing(RoseCapabilities *this, int a2)
{
  v2 = *this;
  HIDWORD(v4) = a2 - 8;
  LODWORD(v4) = a2 - 8;
  v3 = v4 >> 1;
  v5 = v3 > 0x10;
  v6 = 0x1F141u >> v3;
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  LOBYTE(v7) = (a2 & 0xFC) == 8;
  if (v2)
  {
    v7 = *this;
  }

  if (v2 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return v8 & 1;
}

void RoseCapabilities::supportedFDRDataClassesForCalibrationType(_DWORD *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        ACFUCommon::FDRDataClass::FDRDataClass(v4, "rMCl");
        a3->__r_.__value_.__r.__words[0] = 0;
        a3->__r_.__value_.__l.__size_ = 0;
        a3->__r_.__value_.__r.__words[2] = 0;
        std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v4, &v8, 1uLL);
        goto LABEL_13;
      }

LABEL_9:
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
      return;
    }

LABEL_12:
    ACFUCommon::FDRDataClass::FDRDataClass(v4, "rSCl");
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v4, &v8, 1uLL);
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    ACFUCommon::FDRDataClass::FDRDataClass(v4, "rMNB", "rMC2");
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v4, &v8, 1uLL);
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  ACFUCommon::FDRDataClass::FDRDataClass(v4, "rMUB", "rMC2");
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(a3, v4, &v8, 1uLL);
LABEL_13:
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_2980C1048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ACFUCommon::FDRDataClass::~FDRDataClass(va);
  _Unwind_Resume(a1);
}

void ACFUCommon::FDRDataClass::~FDRDataClass(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__CFString *RoseCapabilities::chipNameForCertification(RoseCapabilities *this)
{
  if (*this)
  {
    return @"R2";
  }

  else
  {
    return @"R1";
  }
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, &unk_2980D6D57);
  return this;
}

void sub_2980C1120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8A030, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return this;
}

void sub_2980C130C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EA01F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2980C1380(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<RoseCapabilities *,std::shared_ptr<RoseCapabilities>::__shared_ptr_default_delete<RoseCapabilities,RoseCapabilities>,std::allocator<RoseCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

std::string *std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(std::string *result, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2980C153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 48 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ACFUCommon::FDRDataClass::FDRDataClass(v4, v6);
      v6 = (v6 + 48);
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *ACFUCommon::FDRDataClass::FDRDataClass(std::string *this, const ACFUCommon::FDRDataClass *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_2980C1724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 48;
      std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t RoseCalibration::sendCalibration(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = 0x100000000;
  LODWORD(v23) = 2;
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<RoseCapabilities::CalibrationType>::__init_with_size[abi:ne200100]<RoseCapabilities::CalibrationType const*,RoseCapabilities::CalibrationType const*>(&__p, &v22, &v23 + 1, 3uLL);
  v8 = *a1;
  v9 = a1[1];
  v18[0] = v8;
  v18[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v17[0] = v10;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a3;
  v13 = a3[1];
  v16[0] = v12;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  RoseCalibration::sendCalibration(v18, v17, v16, a4, &__p, &v22);
  v14 = v24;
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v22, v23);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_2980C1A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (!v16)
  {
LABEL_5:
    if (__p)
    {
      operator delete(__p);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  goto LABEL_5;
}

void RoseCalibration::sendCalibration(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t *a6@<X8>)
{
  v82 = *MEMORY[0x29EDCA608];
  v69[0] = 0;
  v69[1] = 0;
  v67 = 0;
  v68 = v69;
  v65 = 0;
  v66 = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63 = v64;
  *&v72.__r_.__value_.__l.__data_ = *a4;
  v72.__r_.__value_.__s.__data_[16] = *(a4 + 16);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1EA0290;
  *(v8 + 8) = v72;
  v81 = v8;
  v9 = *a5;
  v53 = a5[1];
  if (*a5 == v53)
  {
LABEL_80:
    memset(&v72, 0, sizeof(v72));
    v32 = v65;
    v33 = v66;
    if (v65 == v66)
    {
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = v35;
        if ((v35 & 0x80u) == 0)
        {
          size = v35;
        }

        else
        {
          size = v72.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v60, size + 1);
        if (v61.__r_.__value_.__s.__data_[7] >= 0)
        {
          v38 = &v60;
        }

        else
        {
          v38 = v60;
        }

        if (size)
        {
          if ((v35 & 0x80u) == 0)
          {
            v39 = &v72;
          }

          else
          {
            v39 = v34;
          }

          memmove(v38, v39, size);
        }

        *(v38 + size) = 32;
        v40 = *(v32 + 23);
        if (v40 >= 0)
        {
          v41 = v32;
        }

        else
        {
          v41 = *v32;
        }

        if (v40 >= 0)
        {
          v42 = *(v32 + 23);
        }

        else
        {
          v42 = *(v32 + 8);
        }

        v8 = std::string::append(&v60, v41, v42);
        v43 = *v8;
        *&v70 = *(v8 + 1);
        *(&v70 + 7) = *(v8 + 15);
        v35 = v8[23];
        *v8 = 0;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        if (v36 < 0)
        {
          operator delete(v34);
        }

        v72.__r_.__value_.__r.__words[0] = v43;
        v72.__r_.__value_.__l.__size_ = v70;
        *(&v72.__r_.__value_.__r.__words[1] + 7) = *(&v70 + 7);
        *(&v72.__r_.__value_.__s + 23) = v35;
        if (v61.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v60);
        }

        v32 += 24;
        v34 = v43;
      }

      while (v32 != v33);
      v44 = (v35 & 0x80u) != 0;
    }

    LogInstance = ACFULogging::getLogInstance(v8);
    v46 = "raw";
    if (*(a4 + 16))
    {
      v46 = "combined";
    }

    v47 = &v72;
    if (v44)
    {
      v47 = v43;
    }

    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Sent %lu %s file(s):%s\n", "RoseCalibration", "sendCalibration", 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3), v46, v47);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    data = 0;
LABEL_113:
    std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](v56, &v68);
    *(std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](a6, v56) + 6) = data;
    std::__tree<RoseCapabilities::CalibrationType>::destroy(v56, v57);
    goto LABEL_114;
  }

  v51 = *MEMORY[0x29EDB8ED8];
  v50 = *MEMORY[0x29EDB8EE8];
  while (2)
  {
    RoseCapabilities::supportedFDRDataClassesForCalibrationType(*a3, *v9, &v62);
    v11 = v62.__r_.__value_.__l.__size_;
    for (i = v62.__r_.__value_.__r.__words[0]; i != v11; i += 48)
    {
      if (*(a4 + 16) != 1)
      {
        goto LABEL_11;
      }

      if ((*(i + 47) & 0x8000000000000000) != 0)
      {
        if (!*(i + 32))
        {
          goto LABEL_11;
        }
      }

      else if (!*(i + 47))
      {
        goto LABEL_11;
      }

      v12 = std::__tree<std::string>::__count_unique<std::string>(&v63, (i + 24));
      if (v12)
      {
        v26 = ACFULogging::getLogInstance(v12);
        v27 = i;
        if (*(i + 23) < 0)
        {
          v27 = *i;
        }

        v28 = (i + 24);
        if (*(i + 47) < 0)
        {
          v28 = *v28;
        }

        ACFULogging::handleMessage(v26, 0, "%s::%s: Skipping %s because its parent %s has already been sent\n", "RoseCalibration", "sendCalibration", v27, v28);
        goto LABEL_51;
      }

LABEL_11:
      ACFUCommon::FDRDataClass::FDRDataClass(&v72, i);
      v60 = 0uLL;
      v61.__r_.__value_.__r.__words[0] = 0;
      std::vector<ACFUCommon::FDRDataClass>::__init_with_size[abi:ne200100]<ACFUCommon::FDRDataClass const*,ACFUCommon::FDRDataClass const*>(&v60, &v72, &v74, 1uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      (*(**a2 + 24))(&v72);
      v70 = 0uLL;
      v71.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v70, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v72.__r_.__value_.__l.__size_ - v72.__r_.__value_.__r.__words[0]) >> 3));
      v13 = v70;
      *&v58 = &v70;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
      if (v13 != *(&v13 + 1))
      {
        std::__tree<RoseCapabilities::CalibrationType>::__emplace_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(&v68, v9, v9);
        if (*(a4 + 16) == 1)
        {
          if ((*(i + 47) & 0x8000000000000000) != 0)
          {
            if (*(i + 32))
            {
LABEL_19:
              std::vector<std::string>::push_back[abi:ne200100](&v65, (i + 24));
              v14 = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v63, (i + 24), i + 24);
              goto LABEL_22;
            }
          }

          else if (*(i + 47))
          {
            goto LABEL_19;
          }
        }

        v14 = std::vector<std::string>::push_back[abi:ne200100](&v65, i);
      }

LABEL_22:
      if (LODWORD(__p.__r_.__value_.__l.__data_))
      {
        v48 = ACFULogging::getLogInstance(v14);
        ACFULogging::handleMessage(v48, 2, "%s::%s: Failed to send FDR files (ret: %d)\n", "RoseCalibration", "sendCalibration", LODWORD(__p.__r_.__value_.__l.__data_));
        data = __p.__r_.__value_.__l.__data_;
        *&v70 = &v72;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
        v72.__r_.__value_.__r.__words[0] = &v60;
        std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v72);
        v72.__r_.__value_.__r.__words[0] = &v62;
        std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v72);
        goto LABEL_113;
      }

      v70 = 0uLL;
      v71.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v70, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v72.__r_.__value_.__l.__size_ - v72.__r_.__value_.__r.__words[0]) >> 3));
      v15 = v70;
      *&v58 = &v70;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
      *&v70 = &v72;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
      v72.__r_.__value_.__r.__words[0] = &v60;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v72);
      if (v15 != *(&v15 + 1))
      {
        goto LABEL_51;
      }
    }

    if (RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::only_once != -1)
    {
      RoseCalibration::sendCalibration();
    }

    if (RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::productType != 877582975)
    {
      goto LABEL_51;
    }

    {
      *&v60 = &kT2030GoldenMLBCal;
      *(&v60 + 1) = 1421;
      std::string::basic_string[abi:ne200100]<0>(&v61, "T2030GoldenMLB");
      LODWORD(v72.__r_.__value_.__l.__data_) = 0;
      *&v72.__r_.__value_.__r.__words[1] = v60;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v61;
      }

      *&v70 = &kT2030GoldenFFCal;
      *(&v70 + 1) = 162;
      std::string::basic_string[abi:ne200100]<0>(&v71, "T2030GoldenFF");
      v74 = 1;
      v75 = v70;
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v76, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
      }

      else
      {
        v76 = v71;
      }

      *&v58 = &kT2030GoldenNBCal;
      *(&v58 + 1) = 136;
      std::string::basic_string[abi:ne200100]<0>(&v59, "T2030GoldenNB");
      v77 = 2;
      v78 = v58;
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v79, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
      }

      else
      {
        v79 = v59;
      }

      std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::map[abi:ne200100](&RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, &v72, 3);
      for (j = 0; j != -18; j -= 6)
      {
        if (SHIBYTE(v79.__r_.__value_.__r.__words[j + 2]) < 0)
        {
          operator delete(*(&v79.__r_.__value_.__l.__data_ + j * 8));
        }
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::~map[abi:ne200100], &RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, &dword_2980C0000);
    }

    v16 = std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::at(&RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::kT2030GoldenCalMap, v9);
    v17 = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(&v72, v16);
    v18 = ACFULogging::getLogInstance(v17);
    v19 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v72.__r_.__value_.__r.__words[2] : v72.__r_.__value_.__r.__words[2];
    ACFULogging::handleMessage(v18, 0, "%s::%s: Handling %s\n", "RoseCalibration", "sendCalibration", v19);
    v20 = CFDataCreateWithBytesNoCopy(v51, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_, v50);
    if (v20)
    {
      v21 = *a1;
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v22 = 0;
      }

      data = RoseTransport::sendCalibration(v21, v20, 0, &v72.__r_.__value_.__r.__words[2]);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      AMSupportSafeRelease();
      if (!data)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v65, &v72.__r_.__value_.__r.__words[2]);
        v24 = 0;
        data = 0;
        v25 = 1;
        goto LABEL_42;
      }

      v25 = 0;
    }

    else
    {
      v29 = ACFULogging::getLogInstance(0);
      v30 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v72.__r_.__value_.__r.__words[2] : v72.__r_.__value_.__r.__words[2];
      ACFULogging::handleMessage(v29, 2, "%s::%s: failed to allocate CFData for %s\n", "RoseCalibration", "sendCalibration", v30);
      v25 = 0;
      data = 4000;
    }

    v24 = 1;
LABEL_42:
    if (__p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v72.__r_.__value_.__r.__words[2]);
    }

    if (v25)
    {
LABEL_51:
      v72.__r_.__value_.__r.__words[0] = &v62;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v72);
      if (++v9 != v53)
      {
        continue;
      }

      goto LABEL_80;
    }

    break;
  }

  v72.__r_.__value_.__r.__words[0] = &v62;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v72);
  if (v24)
  {
    goto LABEL_113;
  }

LABEL_114:
  std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](v80);
  std::__tree<std::string>::destroy(&v63, v64[0]);
  v72.__r_.__value_.__r.__words[0] = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v68, v69[0]);
}

void sub_2980C2494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char *a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char *a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  v68 = &STACK[0x208];
  v69 = -144;
  while (1)
  {
    if (*(v68 + 23) < 0)
    {
      operator delete(*v68);
    }

    v68 -= 6;
    v69 += 48;
    if (!v69)
    {
      if (a36 < 0)
      {
        operator delete(__p);
      }

      if (a65 < 0)
      {
        operator delete(a61);
      }

      if (a45 < 0)
      {
        operator delete(a40);
      }

      a66 = &a47;
      std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a66);
      std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](v66 - 136);
      std::__tree<std::string>::destroy(&a50, a51);
      a38 = &a53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
      std::__tree<RoseCapabilities::CalibrationType>::destroy(&a56, a57);
      _Unwind_Resume(a1);
    }
  }
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

uint64_t ___ZN15RoseCalibration15sendCalibrationENSt3__110shared_ptrI13ACFUTransportEENS1_I7ACFUROMEENS1_I16RoseCapabilitiesEERKN7ACFUFDR6ConfigERNS0_6vectorINS6_15CalibrationTypeENS0_9allocatorISD_EEEE_block_invoke()
{
  result = MGGetProductType();
  RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::productType = result;
  return result;
}

uint64_t *std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

_OWORD *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(_OWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 1);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 32);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::vector<RoseCapabilities::CalibrationType>::__init_with_size[abi:ne200100]<RoseCapabilities::CalibrationType const*,RoseCapabilities::CalibrationType const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<RoseCapabilities::CalibrationType>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_2980C28E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<RoseCapabilities::CalibrationType>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 4 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(4 * a2);
}

void std::__tree<RoseCapabilities::CalibrationType>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<RoseCapabilities::CalibrationType>::destroy(a1, *a2);
    std::__tree<RoseCapabilities::CalibrationType>::destroy(a1, a2[1]);

    operator delete(a2);
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

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

__n128 std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EA0290;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA0290;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const __CFData **a5)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = RoseTransport::sendCalibration(v6, v10, *(a1 + 24), a4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad transport object provided\n", "RoseCalibration", "operator()");
    v11 = 1;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v11;
}

void sub_2980C2C74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_5;
}

uint64_t std::__function::__func<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0,std::allocator<RoseCalibration::sendCalibration(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUROM>,std::shared_ptr<RoseCapabilities>,ACFUFDR::Config const&,std::vector<RoseCapabilities::CalibrationType> &)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, const void **a2)
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

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2980C2E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t **std::__tree<RoseCapabilities::CalibrationType>::__emplace_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
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

  v18.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  begin = v7 + v2;
  v18.__first_ = v7;
  v18.__begin_ = begin;
  value = &v7[v6];
  v18.__end_ = begin;
  v18.__end_cap_.__value_ = value;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v18.__begin_;
    end = v18.__end_;
    value = v18.__end_cap_.__value_;
  }

  else
  {
    v10 = *a2;
    begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v10;
    end = v7 + v2;
  }

  v12 = end + 1;
  v13 = *(a1 + 8) - *a1;
  v14 = begin - v13;
  memcpy(begin - v13, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = value;
  v18.__end_ = v15;
  v18.__end_cap_.__value_ = v16;
  v18.__first_ = v15;
  v18.__begin_ = v15;
  std::__split_buffer<std::string>::~__split_buffer(&v18);
  return v12;
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

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t ***a1, const void **a2, uint64_t a3)
{
  v5 = std::__tree<std::string>::__find_equal<std::string>(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    std::__tree<std::string>::__construct_node<std::string const&>(a1, a3, &v7);
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
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

void std::__tree<std::string>::__construct_node<std::string const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(a3 + 16) = 1;
}

void sub_2980C36C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t **std::map<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(a1, v4, a2, a2);
      a2 += 12;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__find_equal<RoseCapabilities::CalibrationType>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__construct_node<std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>(a1, a4, &v8);
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__find_equal<RoseCapabilities::CalibrationType>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
        v9 = *(v9 + 8);
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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
      v17 = (a1 + 1);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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
      v21 = (a1 + 1);
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

_OWORD *std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::__construct_node<std::pair<RoseCapabilities::CalibrationType const,std::tuple<unsigned char const*,unsigned long,std::string>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[8] = *a2;
  result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,unsigned char const*,unsigned long,std::string>::__tuple_impl(v6 + 10, (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

void sub_2980C3A68(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::__map_value_compare<RoseCapabilities::CalibrationType,std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>,std::less<RoseCapabilities::CalibrationType>,true>,std::allocator<std::__value_type<RoseCapabilities::CalibrationType,std::tuple<unsigned char const*,unsigned long,std::string>>>>::destroy(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8A038, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

uint64_t *std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::set<RoseCapabilities::CalibrationType>::insert[abi:ne200100]<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::set<RoseCapabilities::CalibrationType>::insert[abi:ne200100]<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(uint64_t *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<RoseCapabilities::CalibrationType>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__emplace_hint_unique_key_args<RoseCapabilities::CalibrationType,RoseCapabilities::CalibrationType const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<RoseCapabilities::CalibrationType>::__find_equal<RoseCapabilities::CalibrationType>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x20uLL);
    *(v7 + 7) = *a4;
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__find_equal<RoseCapabilities::CalibrationType>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
        v9 = *(v9 + 8);
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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
      v17 = (a1 + 1);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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
      v21 = (a1 + 1);
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

uint64_t RoseTargetMap::getRoseTarget(RoseTargetMap *this)
{
  if (RoseTargetMap::getRoseTarget(void)::onceToken != -1)
  {
    RoseTargetMap::getRoseTarget();
  }

  LogInstance = ACFULogging::getLogInstance(this);
  if (RoseTargetMap::getRoseTarget(void)::roseTarget)
  {
    v2 = [RoseTargetMap::getRoseTarget(void)::roseTarget UTF8String];
  }

  else
  {
    v2 = "NULL";
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Rose target string: %s\n", "RoseTargetMap", "getRoseTarget", v2);
  return RoseTargetMap::getRoseTarget(void)::roseTarget;
}

uint64_t ___ZN13RoseTargetMap13getRoseTargetEv_block_invoke()
{
  result = MGGetProductType();
  if (result <= 2309863437)
  {
    if (result <= 1280909811)
    {
      if (result > 749116820)
      {
        if (result <= 877582974)
        {
          if (result == 749116821)
          {
            goto LABEL_101;
          }

          if (result != 851437781)
          {
            v7 = 861924853;
LABEL_63:
            if (result != v7)
            {
              goto LABEL_114;
            }

            goto LABEL_71;
          }

          goto LABEL_105;
        }

        if (result > 1169082143)
        {
          if (result == 1169082144)
          {
            goto LABEL_100;
          }

          v1 = 1260109173;
LABEL_104:
          if (result == v1)
          {
            goto LABEL_105;
          }

          goto LABEL_114;
        }

        if (result == 877582975)
        {
          goto LABEL_105;
        }

        v5 = 1060988941;
      }

      else
      {
        if (result <= 347088859)
        {
          if (result == -1)
          {
            LogInstance = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
            return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: MGProductTypeUnknown\n");
          }

          if (result != 133314240)
          {
            v1 = 330877086;
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        if (result <= 574536382)
        {
          if (result != 347088860)
          {
            v2 = 425046865;
            goto LABEL_43;
          }

          goto LABEL_71;
        }

        if (result == 574536383)
        {
          goto LABEL_105;
        }

        v5 = 689804742;
      }

LABEL_84:
      if (result != v5)
      {
        goto LABEL_114;
      }

      goto LABEL_85;
    }

    if (result <= 1770142588)
    {
      if (result > 1434404432)
      {
        if (result > 1554479184)
        {
          if (result != 1554479185)
          {
            v9 = 1602181456;
            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (result == 1434404433)
        {
          goto LABEL_75;
        }

        if (result != 1540760353)
        {
          goto LABEL_114;
        }

        v3 = 0x2A13A6000;
        v4 = @"r1hp1";
LABEL_112:
        *(v3 + 56) = v4;
        return result;
      }

      if (result == 1280909812)
      {
LABEL_109:
        v3 = 0x2A13A6000;
        v4 = @"r1w1";
        goto LABEL_112;
      }

      if (result == 1371389549)
      {
LABEL_72:
        v3 = 0x2A13A6000;
        v4 = @"r1p0";
        goto LABEL_112;
      }

      v8 = 1408738134;
    }

    else
    {
      if (result <= 2080700390)
      {
        if (result <= 1872992316)
        {
          if (result != 1770142589)
          {
            v1 = 1781728947;
            goto LABEL_104;
          }

          goto LABEL_101;
        }

        if (result != 1872992317)
        {
          if (result != 2021146989)
          {
            goto LABEL_114;
          }

          goto LABEL_75;
        }

        goto LABEL_105;
      }

      if (result <= 2085054104)
      {
        if (result != 2080700391)
        {
          v6 = 2084894489;
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      if (result == 2085054105)
      {
        goto LABEL_110;
      }

      v8 = 2132302344;
    }

    if (result != v8)
    {
      goto LABEL_114;
    }

    goto LABEL_90;
  }

  if (result <= 3564012491)
  {
    if (result > 2940697644)
    {
      if (result <= 3001488777)
      {
        if (result <= 2943112656)
        {
          if (result != 2940697645)
          {
            v1 = 2941181571;
            goto LABEL_104;
          }

          goto LABEL_75;
        }

        if (result != 2943112657)
        {
          v9 = 2979575960;
          goto LABEL_108;
        }

LABEL_90:
        v3 = 0x2A13A6000;
        v4 = @"r1w0";
        goto LABEL_112;
      }

      if (result <= 3143587591)
      {
        if (result != 3001488778)
        {
          v1 = 3048527336;
          goto LABEL_104;
        }

LABEL_100:
        v3 = 0x2A13A6000;
        v4 = @"r1p1";
        goto LABEL_112;
      }

      if (result != 3143587592)
      {
        if (result == 3348380076)
        {
          v3 = 0x2A13A6000;
          v4 = @"r1hp0";
          goto LABEL_112;
        }

        goto LABEL_114;
      }

      goto LABEL_101;
    }

    if (result > 2688879998)
    {
      if (result <= 2793418700)
      {
        if (result != 2688879999)
        {
          if (result != 2722529672)
          {
            goto LABEL_114;
          }

          goto LABEL_72;
        }

LABEL_75:
        v3 = 0x2A13A6000;
        v4 = @"r1p3";
        goto LABEL_112;
      }

      if (result != 2793418701)
      {
        v1 = 2795618603;
        goto LABEL_104;
      }

LABEL_111:
      v3 = 0x2A13A6000uLL;
      v4 = @"r2p0";
      goto LABEL_112;
    }

    if (result != 2309863438)
    {
      if (result != 2390434178)
      {
        v6 = 2625074843;
LABEL_93:
        if (result != v6)
        {
          goto LABEL_114;
        }

        goto LABEL_101;
      }

      goto LABEL_71;
    }

LABEL_85:
    v3 = 0x2A13A6000;
    v4 = @"r1p2";
    goto LABEL_112;
  }

  if (result > 3819635029)
  {
    if (result <= 3885279869)
    {
      if (result > 3839750254)
      {
        if (result == 3839750255)
        {
          goto LABEL_101;
        }

        v6 = 3867318491;
        goto LABEL_93;
      }

      if (result != 3819635030)
      {
        if (result != 3825599860)
        {
          goto LABEL_114;
        }

        goto LABEL_111;
      }

LABEL_110:
      v3 = 0x2A13A6000;
      v4 = @"r1w2";
      goto LABEL_112;
    }

    if (result > 4068102501)
    {
      if (result != 4068102502)
      {
        if (result != 4201643249)
        {
          goto LABEL_114;
        }

        goto LABEL_100;
      }

LABEL_101:
      v3 = 0x2A13A6000;
      v4 = @"r2w0";
      goto LABEL_112;
    }

    if (result == 3885279870)
    {
      goto LABEL_100;
    }

    v7 = 4018315120;
    goto LABEL_63;
  }

  if (result <= 3591055298)
  {
    if (result != 3564012492)
    {
      if (result == 3571532206)
      {
        goto LABEL_90;
      }

      v5 = 3585085679;
      goto LABEL_84;
    }

LABEL_71:
    v3 = 0x2A13A6000;
    v4 = @"r2w2";
    goto LABEL_112;
  }

  if (result <= 3742999857)
  {
    if (result != 3591055299)
    {
      v2 = 3663011141;
LABEL_43:
      if (result != v2)
      {
        goto LABEL_114;
      }

      goto LABEL_110;
    }

LABEL_105:
    v3 = 0x2A13A6000;
    v4 = @"r2p1";
    goto LABEL_112;
  }

  if (result == 3742999858)
  {
    goto LABEL_110;
  }

  v9 = 3767261006;
LABEL_108:
  if (result == v9)
  {
    goto LABEL_109;
  }

LABEL_114:
  v11 = ACFULogging::getLogInstance(result);
  return ACFULogging::handleMessage(v11, 2, "%s::%s: unhandled product %lld\n");
}

void GetRoseTatsuTagToFileNameMap(uint64_t ***a1@<X8>)
{
  v6[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v3, &kRoseSwDsp1, "sbd1");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v4, &kRoseRtkitos, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, &kRoseRestoreRtkitos, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v6, &kRoseRtkitosICNF, "icnf");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v3, 4);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v6[i + 3]) < 0)
    {
      operator delete(v6[i + 1]);
    }
  }
}

void sub_2980C4780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 104;
  v13 = -128;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
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
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t ***std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t ***a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v10, v6, v8);
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

void sub_2980C4BC8(_Unwind_Exception *a1)
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

uint64_t RoseRestoreHost::create@<X0>(RoseRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: RoseUpdater Version: %s\n", "RoseRestoreHost", "create", "RoseUpdater-115~31852");
  v7 = operator new(0xF8uLL);
  ACFURestoreHost::ACFURestoreHost(v7);
  *v7 = &unk_2A1EA0340;
  *(v7 + 29) = 0;
  *(v7 + 30) = 0;
  *a3 = v7;
  result = RoseRestoreHost::init(v7, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v9 = *(*v7 + 24);

    return v9(v7);
  }

  return result;
}

void sub_2980C4DAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void RoseRestoreHost::RoseRestoreHost(RoseRestoreHost *this)
{
  ACFURestoreHost::ACFURestoreHost(this);
  *v1 = &unk_2A1EA0340;
  v1[29] = 0;
  v1[30] = 0;
}

__CFDictionary *RoseRestoreHost::createRequest(ACFULogging *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    RoseRestoreHost::createRequest(a1);
    return 0;
  }

  else
  {
    v4 = a2[1];
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    Request = ACFURestoreHost::createRequest();
    v6 = v8;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (Request)
    {
      if (*(a3 + 16) == 1)
      {
        CFDictionaryRemoveValue(Request, @"Rap,RestoreRTKitOS");
      }
    }

    else
    {
      RoseRestoreHost::createRequest(v6);
    }
  }

  return Request;
}

void sub_2980C4EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RoseRestoreHost::~RoseRestoreHost(RoseRestoreHost *this)
{
  *this = &unk_2A1EA0340;
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MEMORY[0x2A1C5F1B0](this);
}

{
  RoseRestoreHost::~RoseRestoreHost(this);

  operator delete(v1);
}

uint64_t RoseRestoreHost::init(RoseRestoreHost *this, CFTypeRef cf, const __CFString *a3)
{
  v47[1] = *MEMORY[0x29EDCA608];
  if (!cf || (v5 = this, v6 = CFGetTypeID(cf), this = CFDictionaryGetTypeID(), v6 != this))
  {
    RoseRestoreHost::init(this);
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"DeviceInfo");
  if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v9 != Value))
  {
    RoseRestoreHost::init(Value);
    return 0;
  }

  TypeID = CFDictionaryGetValue(v8, @"Rap,ChipID");
  if (!TypeID || (v11 = TypeID, v12 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v12 != TypeID))
  {
    RoseRestoreHost::init(TypeID);
    return 0;
  }

  Length = CFDataGetLength(v11);
  if (Length != 2)
  {
    RoseRestoreHost::init(Length);
    return 0;
  }

  BytePtr = CFDataGetBytePtr(v11);
  RoseCapabilities::create(*BytePtr, &v41);
  v15 = v41;
  v41 = 0uLL;
  v16 = *(v5 + 30);
  *(v5 + 232) = v15;
  if (!v16)
  {
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v16 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
  }

  if (!*(v5 + 29))
  {
LABEL_20:
    RoseRestoreHost::init(v16);
    return 0;
  }

LABEL_12:
  v41 = xmmword_29EE8A080;
  v42 = *&off_29EE8A090;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 5, &v41, &v43, 4uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRtkitosICNF);
  }

  if (RoseCapabilities::requiresSeparateFirmwareTargetForCertification(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRestoreRtkitos);
  }

  v41 = xmmword_29EE8A0B0;
  v42 = *&off_29EE8A0C0;
  v43 = xmmword_29EE8A0D0;
  v44 = @"Rap,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 8, &v41, &v45, 7uLL);
  *&v41 = @"@Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 11, &v41, &v41 + 8, 1uLL);
  *&v41 = @"Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 14, &v41, &v41 + 8, 1uLL);
  v41 = xmmword_29EE8A0E8;
  v42 = *&off_29EE8A0F8;
  v43 = xmmword_29EE8A108;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(v5 + 17, &v41, &v44, 3uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    v18 = *(v5 + 18);
    v17 = *(v5 + 19);
    if (v18 >= v17)
    {
      v20 = *(v5 + 17);
      v21 = (v18 - v20) >> 4;
      v22 = v21 + 1;
      if ((v21 + 1) >> 60)
      {
        std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
      }

      v23 = v17 - v20;
      if (v23 >> 3 > v22)
      {
        v22 = v23 >> 3;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(v5 + 136, v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[16 * v21];
      v27 = &v25[16 * v24];
      *v26 = @"Rap,RTKitIOConfig";
      v26[8] = 1;
      v19 = v26 + 16;
      v28 = *(v5 + 17);
      v29 = *(v5 + 18) - v28;
      v30 = &v26[-v29];
      memcpy(&v26[-v29], v28, v29);
      v31 = *(v5 + 17);
      *(v5 + 17) = v30;
      *(v5 + 18) = v19;
      *(v5 + 19) = v27;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v18 = @"Rap,RTKitIOConfig";
      *(v18 + 8) = 1;
      v19 = (v18 + 16);
    }

    *(v5 + 18) = v19;
  }

  v32 = CFNumberGetTypeID();
  *&v41 = @"Rap,ChipID";
  *(&v41 + 1) = v32;
  v33 = CFNumberGetTypeID();
  *&v42 = @"Rap,BoardID";
  *(&v42 + 1) = v33;
  v34 = CFNumberGetTypeID();
  *&v43 = @"Rap,SecurityDomain";
  *(&v43 + 1) = v34;
  v35 = CFBooleanGetTypeID();
  v44 = @"Rap,ProductionMode";
  v45 = v35;
  v36 = CFBooleanGetTypeID();
  v46[0] = @"Rap,SecurityMode";
  v46[1] = v36;
  v37 = CFNumberGetTypeID();
  v46[2] = @"Rap,ECID";
  v46[3] = v37;
  v38 = CFDataGetTypeID();
  v46[4] = @"Rap,Nonce";
  v46[5] = v38;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(v5 + 20, &v41, v47);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 23) = @"Rap,FdrRootCaDigest";
  }

  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    *(v5 + 24) = @"Rap,FDRAllowUnsealed";
  }

  *&v41 = @"Rap,RTKitOS";
  WORD4(v41) = 1;
  *&v42 = @"Rap,RestoreRTKitOS";
  WORD4(v42) = 1;
  *&v43 = @"Rap,SoftwareBinaryDsp1";
  WORD4(v43) = 0;
  v44 = @"Rap,RTKitIOConfig";
  LOWORD(v45) = 0;
  std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(v5 + 25, &v41, v46);
  *(v5 + 28) = @"Rose";
  v39 = ACFURestoreHost::init(v5, cf, a3);
  if ((v39 & 1) == 0)
  {
    RoseRestoreHost::init(v39);
    return 0;
  }

  return 1;
}

void std::vector<__CFString const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
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
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const void *RoseRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  GetRoseTatsuTagToFileNameMap(&v129);
  v4 = std::map<__CFString const*,std::string>::at(&v129, &kRoseRestoreRtkitos);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, *v4, v4[1]);
  }

  else
  {
    v5 = *v4;
    v130.__r_.__value_.__r.__words[2] = v4[2];
    *&v130.__r_.__value_.__l.__data_ = v5;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v129, v129.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v128);
  v6 = std::map<__CFString const*,std::string>::at(&v128, &kRoseRtkitos);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v129.__r_.__value_.__r.__words[2] = v6[2];
    *&v129.__r_.__value_.__l.__data_ = v7;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v128, v128.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v127);
  v8 = std::map<__CFString const*,std::string>::at(&v127, &kRoseSwDsp1);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    v128.__r_.__value_.__r.__words[2] = v8[2];
    *&v128.__r_.__value_.__l.__data_ = v9;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v127, v127.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v125);
  v10 = std::map<__CFString const*,std::string>::at(&v125, &kRoseRtkitosICNF);
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v127.__r_.__value_.__r.__words[2] = v10[2];
    *&v127.__r_.__value_.__l.__data_ = v11;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v125, *(&v125 + 1));
  Value = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  v13 = Value;
  if (!Value || (v14 = CFGetTypeID(Value), v14 != CFDictionaryGetTypeID()))
  {
    std::string::basic_string[abi:ne200100]<0>(&v123, "copyFirmwareUpdater: failed to get device info list");
    v69 = ACFUError::addError();
    if (v124 < 0)
    {
      operator delete(v123);
    }

    LogInstance = ACFULogging::getLogInstance(v69);
    v68 = "%s::%s: failed to get device info list\n";
    goto LABEL_110;
  }

  v15 = CFDictionaryGetValue(v13, @"Rap,RestoreBootNonce");
  if (v15)
  {
    TypeID = CFDataGetTypeID();
    v17 = CFGetTypeID(v15);
    if (TypeID == v17)
    {
      v18 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v18, 0, "%s::%s: Restore boot nonce present!\n", "RoseRestoreHost", "copyFirmwareUpdater");
      if (CFDataGetLength(v15) != 8)
      {
        std::string::basic_string[abi:ne200100]<0>(&v121, "copyFirmwareUpdater: nonce is of unexpected size");
        v90 = ACFUError::addError();
        if (v122 < 0)
        {
          operator delete(v121);
        }

        LogInstance = ACFULogging::getLogInstance(v90);
        v68 = "%s::%s: nonce is of unexpected size\n";
        goto LABEL_110;
      }

      v15 = *CFDataGetBytePtr(v15);
    }

    else
    {
      v15 = 0;
    }
  }

  v19 = CFDictionaryGetValue(v13, @"Rap,ChipRev");
  v20 = CFDictionaryGetValue(v13, @"Rap,BoardID");
  if (!v19 || (v21 = v20) == 0 || (v22 = CFDataGetTypeID(), v22 != CFGetTypeID(v19)) || (v23 = CFDataGetTypeID(), v23 != CFGetTypeID(v21)))
  {
    std::string::basic_string[abi:ne200100]<0>(&v119, "copyFirmwareUpdater: unexpected device info parameters");
    v66 = ACFUError::addError();
    if (v120 < 0)
    {
      operator delete(v119);
    }

    LogInstance = ACFULogging::getLogInstance(v66);
    v68 = "%s::%s: unexpected device info parameters\n";
    goto LABEL_110;
  }

  if (CFDataGetLength(v19) != 2 || CFDataGetLength(v21) != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v117, "copyFirmwareUpdater: bad device info parameters");
    v70 = ACFUError::addError();
    if (v118 < 0)
    {
      operator delete(v117);
    }

    LogInstance = ACFULogging::getLogInstance(v70);
    v68 = "%s::%s: bad device info parameters\n";
LABEL_110:
    v35 = 0;
    v50 = 0;
    v42 = 0;
    ACFULogging::handleMessage(LogInstance, 2, v68, "RoseRestoreHost", "copyFirmwareUpdater");
    v58 = 0;
    goto LABEL_86;
  }

  v24 = *CFDataGetBytePtr(v19);
  BytePtr = CFDataGetBytePtr(v21);
  v26 = *BytePtr;
  v27 = ACFULogging::getLogInstance(BytePtr);
  v28 = ACFULogging::handleMessage(v27, 0, "%s::%s: Rose Hardware Info (Board ID: 0x%04x, Chip Revision: 0x%04x)\n", "RoseRestoreHost", "copyFirmwareUpdater", v26, v24);
  ACFULogging::getLogInstance(v28);
  std::string::basic_string[abi:ne200100]<0>(&v115, "RoseRestoreHost");
  v29 = std::string::append(&v115, "::");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v116, "copyFirmwareUpdater");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v126 = v31->__r_.__value_.__r.__words[2];
  v125 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v33 = ACFURestoreHost::copyDataFromFileDictionary();
  cf = v33;
  if (v33)
  {
    v34 = CFGetTypeID(v33);
    if (v34 == CFDataGetTypeID())
    {
      ACFUFTABFile::create();
      v35 = v125;
      if (!v125)
      {
        std::string::basic_string[abi:ne200100]<0>(&v111, "copyFirmware: failed to init bundle firmware");
        v81 = ACFUError::addError();
        if (v112 < 0)
        {
          operator delete(v111);
        }

        v82 = ACFULogging::getLogInstance(v81);
        v35 = 0;
        v50 = 0;
        v42 = 0;
        ACFULogging::handleMessage(v82, 2, "%s::%s: failed to init bundle firmware\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v57 = 0;
        v40 = 0;
        v48 = 0;
        v58 = 0;
        goto LABEL_80;
      }

      if (!(*(*v125 + 16))(v125, &v128) || ((*(*v35 + 16))(v35, &v129) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v109, "copyFirmware: bundle firmware specified is invalid");
        v73 = ACFUError::addError();
        if (v110 < 0)
        {
          operator delete(v109);
        }

        v74 = ACFULogging::getLogInstance(v73);
        v50 = 0;
        v42 = 0;
        ACFULogging::handleMessage(v74, 2, "%s::%s: bundle firmware specified is invalid\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v57 = 0;
        v40 = 0;
        v48 = 0;
        v58 = 0;
        goto LABEL_80;
      }

      if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 232)))
      {
        v36 = (*(*v35 + 16))(v35, &v127);
        if ((v36 & 1) == 0)
        {
          v37 = ACFULogging::getLogInstance(v36);
          ACFULogging::handleMessage(v37, 3, "%s::%s: copyfirmware: ICNF missing in bundle firmware\n", "RoseRestoreHost", "copyFirmwareUpdater");
        }
      }

      v38 = CFDictionaryContainsKey(a2, *(a1 + 8));
      if (v38)
      {
        v39 = ACFURestoreHost::copyDataFromFileDictionary();
        v40 = v39;
        if (!v39 || (v41 = CFGetTypeID(v39), v41 != CFDataGetTypeID()))
        {
          std::string::basic_string[abi:ne200100]<0>(&v107, "copyFirmware: rooted override data unavailable");
          v77 = ACFUError::addError();
          if (v108 < 0)
          {
            operator delete(v107);
          }

          v44 = ACFULogging::getLogInstance(v77);
          v45 = "%s::%s: rooted override data unavailable\n";
          goto LABEL_124;
        }

        ACFUFTABFile::create();
        v42 = v125;
        if (!v125)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "copyFirmware: failed to init ftab file object");
          v43 = ACFUError::addError();
          if (v106 < 0)
          {
            operator delete(__p);
          }

          v44 = ACFULogging::getLogInstance(v43);
          v45 = "%s::%s: failed to init ftab file object\n";
LABEL_124:
          v50 = 0;
          v42 = 0;
          ACFULogging::handleMessage(v44, 2, v45, "RoseRestoreHost", "copyFirmwareUpdater");
          v57 = 0;
          v48 = 0;
          v58 = 0;
LABEL_80:
          CFRelease(cf);
          if (v48)
          {
            CFRelease(v48);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (v57)
          {
            CFRelease(v57);
          }

          goto LABEL_86;
        }
      }

      else
      {
        v46 = ACFULogging::getLogInstance(v38);
        v42 = 0;
        ACFULogging::handleMessage(v46, 0, "%s::%s: no firmware override specified\n", "RoseRestoreHost", "copyFirmwareUpdater");
        v40 = 0;
      }

      if (CFDictionaryContainsKey(a2, @"Rap,RestoreRTKitOS"))
      {
        v47 = ACFURestoreHost::copyDataFromFileDictionary();
        v48 = v47;
        if (v47 && (v49 = CFGetTypeID(v47), v49 == CFDataGetTypeID()))
        {
          ACFUFTABFile::create();
          v50 = v125;
          if (v125)
          {
            if (((*(*v125 + 16))(v125, &v130) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v99, "copyFirmware: bundle cert firmware doesn't have rrko");
              v84 = ACFUError::addError();
              if (v100 < 0)
              {
                operator delete(v99);
              }

              v85 = ACFULogging::getLogInstance(v84);
              ACFULogging::handleMessage(v85, 2, "%s::%s: bundle cert firmware doesn't have 'rrko'\n", "RoseRestoreHost", "copyFirmwareUpdater");
              goto LABEL_141;
            }

            if (v42)
            {
              goto LABEL_54;
            }

            goto LABEL_61;
          }

          std::string::basic_string[abi:ne200100]<0>(&v101, "copyFirmware: failed to init certification firmware");
          v83 = ACFUError::addError();
          if (v102 < 0)
          {
            operator delete(v101);
          }

          v79 = ACFULogging::getLogInstance(v83);
          v80 = "%s::%s: failed to init certification firmware\n";
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v103, "copyFirmware: rrko bundle data unavailable");
          v78 = ACFUError::addError();
          if (v104 < 0)
          {
            operator delete(v103);
          }

          v79 = ACFULogging::getLogInstance(v78);
          v80 = "%s::%s: rrko bundle data unavailable\n";
        }

        v50 = 0;
        ACFULogging::handleMessage(v79, 2, v80, "RoseRestoreHost", "copyFirmwareUpdater");
        v57 = 0;
        v58 = 0;
        goto LABEL_80;
      }

      v50 = 0;
      v48 = 0;
      if (v42)
      {
LABEL_54:
        v51 = (*v42)[2](v42, &v130);
        v52 = (*v42)[2](v42, &v129);
        if (v51)
        {
          v53 = v42;
        }

        else
        {
          v53 = v50;
        }

        if (v52)
        {
          v54 = v42;
        }

        else
        {
          v54 = v35;
        }

        goto LABEL_62;
      }

LABEL_61:
      v53 = v50;
      v54 = v35;
LABEL_62:
      v55 = (*(*v54 + 16))(v54, &v130);
      if (v53)
      {
        v56 = v55;
      }

      else
      {
        v56 = 1;
      }

      if (v56)
      {
        v57 = 0;
LABEL_69:
        if (v15)
        {
          ACFUFTABFile::setBootNonce(v54);
        }

        v58 = (*(*v54 + 40))(v54);
        if (v58 && (v59 = CFDataGetTypeID(), v60 = CFGetTypeID(v58), v59 == v60))
        {
          ACFULogging::getLogInstance(v60);
          std::string::basic_string[abi:ne200100]<0>(&v115, "RoseRestoreHost");
          v61 = std::string::append(&v115, "::");
          v62 = *&v61->__r_.__value_.__l.__data_;
          v116.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v116.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          v63 = std::string::append(&v116, "copyFirmwareUpdater");
          v64 = *&v63->__r_.__value_.__l.__data_;
          v126 = v63->__r_.__value_.__r.__words[2];
          v125 = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType();
          if (SHIBYTE(v126) < 0)
          {
            operator delete(v125);
          }

          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          (*(*v54 + 24))(v54);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "copyFirmware: could not create output data");
          v75 = ACFUError::addError();
          if (v94 < 0)
          {
            operator delete(v93);
          }

          v76 = ACFULogging::getLogInstance(v75);
          ACFULogging::handleMessage(v76, 2, "%s::%s: could not create output data\n", "RoseRestoreHost", "copyFirmwareUpdater");
        }

        goto LABEL_80;
      }

      v57 = (**v53)(v53, &v130);
      if (v57)
      {
        if (ACFUFTABFile::addNewFileToFTAB())
        {
          goto LABEL_69;
        }

        std::string::basic_string[abi:ne200100]<0>(&v95, "copyFirmware: could not add 'rrko' object to final ftab");
        v88 = ACFUError::addError();
        if (v96 < 0)
        {
          operator delete(v95);
        }

        v89 = ACFULogging::getLogInstance(v88);
        ACFULogging::handleMessage(v89, 2, "%s::%s: could not add 'rrko' object to final ftab\n", "RoseRestoreHost", "copyFirmwareUpdater");
LABEL_145:
        v58 = 0;
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v97, "copyFirmware: could not get 'rrko' object from ftab");
      v86 = ACFUError::addError();
      if (v98 < 0)
      {
        operator delete(v97);
      }

      v87 = ACFULogging::getLogInstance(v86);
      ACFULogging::handleMessage(v87, 2, "%s::%s: could not get 'rrko' object from ftab\n", "RoseRestoreHost", "copyFirmwareUpdater");
LABEL_141:
      v57 = 0;
      goto LABEL_145;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v113, "copyFirmware: rkos bundle data unavailable");
  v71 = ACFUError::addError();
  if (v114 < 0)
  {
    operator delete(v113);
  }

  v72 = ACFULogging::getLogInstance(v71);
  ACFULogging::handleMessage(v72, 2, "%s::%s: rkos bundle data unavailable\n", "RoseRestoreHost", "copyFirmwareUpdater");
  v57 = 0;
  v40 = 0;
  v48 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v35 = 0;
  if (cf)
  {
    goto LABEL_80;
  }

LABEL_86:
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (v42)
  {
    ((*v42)[7])(v42);
  }

  if (v50)
  {
    ((*v50)[7])(v50);
  }

  if (v35)
  {
    (*(*v35 + 56))(v35);
  }

  return v58;
}

void sub_2980C662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 185) < 0)
  {
    operator delete(*(v65 - 208));
  }

  if (*(v65 - 153) < 0)
  {
    operator delete(*(v65 - 176));
  }

  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  _Unwind_Resume(a1);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void **std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 3)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 8;
          *v18 = v19;
          v18 += 8;
          v17 += 8;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 8;
      *v12 = v13;
      v12 += 8;
    }
  }

  v7[1] = v12;
  return result;
}

void *std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void **std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 4)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20 - 7);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15 - 7);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 16;
          *v18 = v19;
          v18 += 16;
          v17 += 16;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 60)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 16;
      *v12 = v13;
      v12 += 16;
    }
  }

  v7[1] = v12;
  return result;
}

void *std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 16 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(void *result, unint64_t *a2, unint64_t *a3)
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

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_2980C6E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_9:
    v9 = a2[1];
    a3[4] = v6;
    a3[5] = v9;
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<RoseCapabilities::CalibrationType>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<RoseCapabilities::CalibrationType>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    v10 = operator new(0x30uLL);
    *(v10 + 2) = *a3;
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void *std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(void *result, unint64_t *a2, unint64_t *a3)
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
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_2980C7138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__node_assign_unique(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_9:
    *(a3 + 32) = v6;
    *(a3 + 40) = *(a2 + 4);
    std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t RoseEvent::create@<X0>(ACFULogging *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  if (!a1 || a2 <= 3)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad input event\n");
  }

  v6 = a3;
  v8 = *a1 & 0x3FF;
  switch(v8)
  {
    case 525:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A1EA0428;
      break;
    case 144:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A1EA03F8;
      break;
    case 128:
      v9 = operator new(0x18uLL);
      v9[1] = 0;
      v10 = &unk_2A1EA03C8;
      break;
    default:
      v13 = ACFULogging::getLogInstance(a1);
      v14 = ACFULogging::handleMessage(v13, 2, "%s::%s: unrecognized event oid 0x%03x\n", "RoseEvent", "create", *a1 & 0x3FF);
      v15 = ACFULogging::getLogInstance(v14);
      return ACFULogging::handleMessage(v15, 2, "%s::%s: failed to create event\n");
  }

  *v9 = v10;
  *a4 = v9;
  result = RoseEvent::init(v9, a1, a2, v6);
  if ((result & 1) == 0)
  {
    v12 = ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage(v12, 2, "%s::%s: failed to init base\n", "RoseEvent", "create");
  }

  return result;
}

uint64_t RoseEvent::init(uint64_t a1, const UInt8 *a2, CFIndex a3, int a4)
{
  if (a2 && a3)
  {
    v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], a2, a3);
    *(a1 + 8) = v6;
    if (v6)
    {
      *(a1 + 16) = a4;
      return 1;
    }

    RoseEvent::init(0);
  }

  else
  {
    RoseEvent::init(a1);
  }

  return 0;
}

uint64_t RoseEvent::validate(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  Length = CFDataGetLength(this[1]);
  if (!BytePtr)
  {
    RoseEvent::validate(Length);
    return 0;
  }

  v4 = Length;
  v5 = Length - 113;
  LogInstance = ACFULogging::getLogInstance(Length);
  if (v5 <= 0xFFFFFFFFFFFFFF94)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid event size: %zu\n", "RoseEvent", "validate", v4);
    return 0;
  }

  *(&v13.__r_.__value_.__s + 23) = 9;
  strcpy(&v13, "RoseEvent");
  v7 = std::string::append(&v13, "::");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v14, "validate");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if ((~*BytePtr & 0xC000) != 0)
  {
    RoseEvent::validate(v11);
    return 0;
  }

  return 1;
}

void sub_2980C75B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

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

void RoseEvent::~RoseEvent(RoseEvent *this)
{
  *this = &unk_2A1EA0398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

uint64_t RoseCommandCompleteEvent::validate(CFDataRef *a1, int a2)
{
  Length = CFDataGetLength(a1[1]);
  BytePtr = CFDataGetBytePtr(a1[1]);
  v6 = (**a1)(a1);
  if (v6)
  {
    if ((*BytePtr & 0x3C00) == 0x800 && Length == 10)
    {
      v9 = BytePtr[3];
      v8 = (BytePtr + 3);
      v10 = (v8 - 2);
      if (v9 == a2 && !*v10)
      {
        (*(*a1 + 3))(a1);
        return 1;
      }

      RoseCommandCompleteEvent::validate(v8, v10, a1);
    }

    else
    {
      RoseCommandCompleteEvent::validate(BytePtr);
    }
  }

  else
  {
    RoseCommandCompleteEvent::validate(v6);
  }

  return 0;
}

uint64_t RoseCommandCompleteEvent::log(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v3 = BytePtr;
  BytePtr = CFDataGetLength(this[1]);
  if (BytePtr != 10)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  LogInstance = ACFULogging::getLogInstance(0xA);
  v5 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Header: gid: 0x%02x, oid: 0x%03x, msgType: 0x%02x\n", "RoseEvent", "log", (*v3 >> 10) & 0xF, *v3 & 0x3FF, *v3 >> 14);
  v6 = ACFULogging::getLogInstance(v5);
  return ACFULogging::handleMessage(v6, 3, "%s::%s: Content: status: 0x%02x, completedCmdOid: 0x%03x, debugData: 0x%02x\n", "RoseEvent", "log", *(v3 + 2), *(v3 + 3), *(v3 + 4));
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::validate(CFDataRef *this)
{
  Length = CFDataGetLength(this[1]);
  BytePtr = CFDataGetBytePtr(this[1]);
  v4 = RoseEvent::validate(this);
  if (v4)
  {
    if ((*BytePtr & 0x3FFF) == 0x890 && Length == 48)
    {
      v6 = *(BytePtr + 6);
      v5 = BytePtr + 6;
      v7 = (v5 - 2);
      if (!v6 && !*v7)
      {
        (*(*this + 3))(this);
        return 1;
      }

      RoseFDRTrustEvaluationCompleteEvent::validate(v7, v5, this);
    }

    else
    {
      RoseCommandCompleteEvent::validate(BytePtr);
    }
  }

  else
  {
    RoseCommandCompleteEvent::validate(v4);
  }

  return 0;
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::log(CFDataRef *this)
{
  BytePtr = CFDataGetBytePtr(this[1]);
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v3 = BytePtr;
  BytePtr = CFDataGetLength(this[1]);
  if (BytePtr != 48)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  LogInstance = ACFULogging::getLogInstance(0x30);
  v5 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Header: gid: 0x%02x, oid: 0x%03x, msgType: 0x%02x\n", "RoseEvent", "log", (*v3 >> 10) & 0xF, *v3 & 0x3FF, *v3 >> 14);
  v6 = ACFULogging::getLogInstance(v5);
  return ACFULogging::handleMessage(v6, 3, "%s::%s: Content: status: 0x%04x, trustEvaluationError: 0x%016llx\n", "RoseEvent", "log", *(v3 + 2), *(v3 + 6));
}

uint64_t RoseInitDoneEvent::validate(CFDataRef *this)
{
  Length = CFDataGetLength(this[1]);
  BytePtr = CFDataGetBytePtr(this[1]);
  v4 = RoseEvent::validate(this);
  if ((v4 & 1) == 0)
  {
    RoseCommandCompleteEvent::validate(v4);
    return 0;
  }

  v5 = *(this + 4);
  if (v5 == 1)
  {
    if ((*BytePtr & 0x3C00) == 0 && (*BytePtr & 0x3FF) == 0x20D && Length >= 0x70 && Length < 129)
    {
      v8 = *(BytePtr + 2);
      v6 = (BytePtr + 4);
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_16:
      (*(*this + 3))(this);
      return 1;
    }

LABEL_21:
    RoseCommandCompleteEvent::validate(BytePtr);
    return 0;
  }

  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unknown HSI version\n", "RoseEvent", "validate");
    return 0;
  }

  if ((*BytePtr & 0x3C00) != 0 || (*BytePtr & 0x3FF) != 0x20D || Length < 0x46 || Length > 128 || Length != BytePtr[42] + 43)
  {
    goto LABEL_21;
  }

  v7 = *(BytePtr + 2);
  v6 = (BytePtr + 4);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  RoseInitDoneEvent::validate(v6);
  return 0;
}

uint64_t RoseInitDoneEvent::log(RoseInitDoneEvent *this)
{
  v2 = *(this + 4);
  if (v2 != 1)
  {
    if (v2)
    {
      LogInstance = ACFULogging::getLogInstance(this);
      return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unknown HSI version\n", "RoseEvent", "log");
    }

    BytePtr = CFDataGetBytePtr(*(this + 1));
    if (BytePtr)
    {
      v4 = BytePtr;
      BytePtr = CFDataGetLength(*(this + 1));
      if (BytePtr > 0x45)
      {
        v5 = ACFULogging::getLogInstance(BytePtr);
        v6 = ACFULogging::handleMessage(v5, 3, "%s::%s: Header: gid: 0x%02x, oid: 0x%03x, msgType: 0x%02x\n", "RoseEvent", "log", (*v4 >> 10) & 0xF, *v4 & 0x3FF, *v4 >> 14);
        v7 = ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage(v7, 3, "%s::%s: Contents: status: 0x%02x\n", "RoseEvent", "log", *(v4 + 2));

        return RoseCommand::parsePingInfo(v4 + 6);
      }
    }

    return RoseCommandCompleteEvent::log(BytePtr);
  }

  BytePtr = CFDataGetBytePtr(*(this + 1));
  if (!BytePtr)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v9 = BytePtr;
  BytePtr = CFDataGetLength(*(this + 1));
  if (BytePtr <= 0x6F)
  {
    return RoseCommandCompleteEvent::log(BytePtr);
  }

  v10 = ACFULogging::getLogInstance(BytePtr);
  ACFULogging::handleMessage(v10, 3, "%s::%s: Header: gid: 0x%02x, oid: 0x%03x, msgType: 0x%02x\n", "RoseEvent", "log", (*v9 >> 10) & 0xF, *v9 & 0x3FF, *v9 >> 14);

  return RoseCommand::parsePingInfo(v9 + 2);
}

void RoseCommandCompleteEvent::~RoseCommandCompleteEvent(RoseCommandCompleteEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

void RoseFDRTrustEvaluationCompleteEvent::~RoseFDRTrustEvaluationCompleteEvent(RoseFDRTrustEvaluationCompleteEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

void RoseInitDoneEvent::~RoseInitDoneEvent(RoseInitDoneEvent *this)
{
  RoseEvent::~RoseEvent(this);

  operator delete(v1);
}

uint64_t OUTLINED_FUNCTION_1(ACFULogging *a1)
{

  return ACFULogging::getLogInstance(a1);
}

CFStringRef RoseBootstrappedPreflight::copyUnsignedFirmwarePath(RoseBootstrappedPreflight *this)
{
  RoseTarget = RoseTargetMap::getRoseTarget(this);
  if (!RoseTarget)
  {
    v3 = "%s::%s: failed to get target\n";
LABEL_6:
    RoseBootstrappedPreflight::copyUnsignedFirmwarePath(v3);
    return 0;
  }

  result = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"/usr/standalone/firmware/Rose/%@/ftab.bin", RoseTarget);
  if (!result)
  {
    v3 = "%s::%s: failed to create path\n";
    goto LABEL_6;
  }

  return result;
}

std::__shared_weak_count *RoseBootstrappedPreflight::bootstrappedPreflight(RoseBootstrappedPreflight *this, const __CFString *a2, __CFString *a3, const __CFString *a4)
{
  v194 = 1;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v186 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  cf = 0;
  v182 = -1;
  if (a2)
  {
    v5 = 0;
    allocator = *MEMORY[0x29EDB8ED8];
    v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
    v158 = v6;
  }

  else
  {
    v7 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(this);
    v8 = v7;
    if (!v7)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v25 = 0;
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to copy unsigned firmware path\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
      __handle = 0;
      value = 0;
      v158 = 0;
      theDict = 0;
      v32 = 0;
      v33 = 0;
      v161 = 0;
      v155 = 0;
      v71 = 0;
      URLByAppendingStrings = 0;
      v73 = 0;
      goto LABEL_120;
    }

    allocator = *MEMORY[0x29EDB8ED8];
    v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], v7, 0);
    v158 = v6;
    v5 = v8;
  }

  v155 = v5;
  if (!v158)
  {
    v113 = ACFULogging::getLogInstance(v6);
    v25 = 0;
    ACFULogging::handleMessage(v113, 2, "%s::%s: could not create path to unsigned firmware\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
    __handle = 0;
    value = 0;
    v158 = 0;
    theDict = 0;
    v32 = 0;
    v33 = 0;
    v161 = 0;
    v71 = 0;
    URLByAppendingStrings = 0;
    v73 = 0;
    goto LABEL_120;
  }

  DataFromFileURL = AMSupportCreateDataFromFileURL();
  if (DataFromFileURL)
  {
    v10 = ACFULogging::getLogInstance(DataFromFileURL);
    v11 = ACFULogging::handleMessage(v10, 2, "%s::%s: failed to open unsigned rose firmware\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
    v12 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v12, 0, "%s::%s: Logging files under %s\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", "/usr/standalone/firmware/Rose");
    v203 = "/usr/standalone/firmware/Rose";
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v197, &v203);
    MEMORY[0x29C281200](&__ns, &v197, 0, 0);
    if (*(&v197.__rec_ + 7) < 0)
    {
      operator delete(v197.__imp_.__ptr_);
    }

    rep = __ns.__rep_;
    v14 = v200;
    if (v200)
    {
      atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v200;
      v197.__imp_.__ptr_ = rep;
      v197.__imp_.__cntrl_ = v14;
      v197.__rec_ = v201;
      if (v200)
      {
        atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v197.__imp_.__ptr_ = __ns.__rep_;
      v197.__imp_.__cntrl_ = 0;
      v197.__rec_ = v201;
    }

    while (v197.__imp_.__ptr_)
    {
      v29 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v197);
      v30 = ACFULogging::getLogInstance(v29);
      if (v29[23] >= 0)
      {
        v31 = v29;
      }

      else
      {
        v31 = *v29;
      }

      ACFULogging::handleMessage(v30, 0, "%s::%s: %s\n", "RoseBootstrappedPreflight", "logDirectoryContents", v31);
      std::__fs::filesystem::recursive_directory_iterator::__increment(&v197, 0);
    }

    if (v197.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v197.__imp_.__cntrl_);
    }

    if (v200)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v200);
    }

    v25 = 0;
    goto LABEL_51;
  }

  ACFUDiagnostics::create(&__ns.__rep_, a3, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(&v188, &__ns.__rep_);
  v16 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v16)
  {
    v17 = MEMORY[0x29C280FF0]();
    operator delete(v17);
  }

  if (!v188)
  {
    v117 = ACFULogging::getLogInstance(v16);
    v118 = "%s::%s: could not create ACFU diagnostics\n";
LABEL_256:
    v25 = 0;
    ACFULogging::handleMessage(v117, 2, v118, "RoseBootstrappedPreflight", "bootstrappedPreflight");
    __handle = 0;
    value = 0;
    theDict = 0;
    v32 = 0;
    v33 = 0;
    v161 = 0;
    v71 = 0;
    URLByAppendingStrings = 0;
    v73 = 0;
    goto LABEL_120;
  }

  v180 = v188;
  v181 = v189;
  if (v189)
  {
    atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RoseTransport::create(&v180, 0, 0, &__ns);
  std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(&v186, &__ns.__rep_);
  v18 = __ns.__rep_;
  __ns.__rep_ = 0;
  if (v18)
  {
    (*(*v18 + 64))(v18);
  }

  if (v181)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v181);
  }

  if (!v186)
  {
    v117 = ACFULogging::getLogInstance(0);
    v118 = "%s::%s: could not create rose transport\n";
    goto LABEL_256;
  }

  PowerState = RoseTransport::getPowerState(v186, &v194);
  if (PowerState)
  {
    v117 = ACFULogging::getLogInstance(PowerState);
    v118 = "%s::%s: failed to get power state\n";
    goto LABEL_256;
  }

  if (!v194)
  {
    PowerState = RoseTransport::setPowerState(v186, 1);
    if (PowerState)
    {
      v117 = ACFULogging::getLogInstance(PowerState);
      v118 = "%s::%s: failed to power on rose\n";
      goto LABEL_256;
    }
  }

  v20 = 0;
  v21 = 1;
  do
  {
    v22 = ACFULogging::getLogInstance(PowerState);
    ACFULogging::handleMessage(v22, 0, "%s::%s: chip query attempt %u of %u...\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", v21, 5);
    v23 = (*(*v186 + 4))(v186);
    if (v23)
    {
      v112 = ACFULogging::getLogInstance(v23);
      ACFULogging::handleMessage(v112, 2, "%s::%s: failed to reset rose\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
      __handle = 0;
      value = 0;
      theDict = 0;
      v32 = 0;
      v33 = 0;
      v161 = 0;
      v71 = 0;
      URLByAppendingStrings = 0;
      v73 = 0;
      v25 = v20;
      goto LABEL_120;
    }

    (**v186)(&__ns);
    v24 = __ns.__rep_;
    v25 = v200;
    if (v200)
    {
      atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v26 = v201;
    PowerState = v200;
    if (v200)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v200);
    }

    if (!v26)
    {
      break;
    }

    v20 = v25;
    v27 = v21++ >= 5;
  }

  while (!v27);
  if (v26)
  {
    v120 = ACFULogging::getLogInstance(PowerState);
    ACFULogging::handleMessage(v120, 2, "%s::%s: failed to get chip parameters pre boot\n");
    goto LABEL_51;
  }

  if (!v25)
  {
    if ((*(v24 + 176) & 1) == 0)
    {
      goto LABEL_235;
    }

LABEL_56:
    DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v24 + 168, &v182);
    v35 = DataAs;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if ((v35 & 1) == 0)
    {
      v122 = ACFULogging::getLogInstance(DataAs);
      ACFULogging::handleMessage(v122, 2, "%s::%s: failed to convert chip rev\n");
      goto LABEL_51;
    }

    ACFUFTABFile::create();
    std::shared_ptr<ACFUFTABFile>::operator=[abi:ne200100]<ACFUFTABFile,std::default_delete<ACFUFTABFile>,0>(&v192, &__ns.__rep_);
    v36 = __ns.__rep_;
    __ns.__rep_ = 0;
    if (v36)
    {
      (*(*v36 + 56))(v36);
    }

    v37 = v192;
    if (!v192)
    {
      v123 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v123, 2, "%s::%s: failed to create ftab file object\n");
      goto LABEL_51;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
      v37 = v192;
    }

    TypeID = (*(*v37 + 40))(v37);
    cf = TypeID;
    if (!TypeID || (v39 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v39 != TypeID))
    {
      v114 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v114, 2, "%s::%s: failed to copy firmware container\n");
      goto LABEL_51;
    }

    v40 = v193;
    v192 = 0;
    v193 = 0;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    GetRoseTatsuTagToFileNameMap(v178);
    RTKitFirmware::create();
    std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v190, &__ns.__rep_);
    v41 = __ns.__rep_;
    __ns.__rep_ = 0;
    if (v41)
    {
      (*(*v41 + 56))(v41);
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v178, v179);
    if (!v190)
    {
      v124 = ACFULogging::getLogInstance(v42);
      ACFULogging::handleMessage(v124, 2, "%s::%s: could not initialize firmware object\n");
      goto LABEL_51;
    }

    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v43 = (**v24)(v24);
    value = v43;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (!value)
    {
      v125 = ACFULogging::getLogInstance(v43);
      ACFULogging::handleMessage(v125, 2, "%s::%s: could not create device info dictionary\n");
      goto LABEL_51;
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v45 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v46 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v47 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v48 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v49 = v48;
    if (Mutable && v45 && v46 && v47 && v48)
    {
      v50 = *MEMORY[0x29EDB8F00];
      CFDictionaryAddValue(v46, @"Trusted", *MEMORY[0x29EDB8F00]);
      CFDictionaryAddValue(v47, @"Trusted", v50);
      CFDictionaryAddValue(v49, @"Trusted", v50);
      CFDictionaryAddValue(v45, @"Rap,RTKitOS", v46);
      CFDictionaryAddValue(v45, @"Rap,SoftwareBinaryDsp1", v47);
      CFDictionaryAddValue(v45, @"Rap,RTKitIOConfig", v49);
      CFDictionaryAddValue(Mutable, @"BuildIdentity", v45);
      CFDictionaryAddValue(Mutable, @"DeviceInfo", value);
    }

    else
    {
      v126 = ACFULogging::getLogInstance(v48);
      v51 = ACFULogging::handleMessage(v126, 2, "%s::%s: failed to init restore option dictionaries\n", "RoseBootstrappedPreflight", "createRestoreDictionary");
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = 0;
      theDict = 0;
      if (!v45)
      {
LABEL_83:
        if (v46)
        {
          CFRelease(v46);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        if (!theDict)
        {
          v127 = ACFULogging::getLogInstance(v51);
          ACFULogging::handleMessage(v127, 2, "%s::%s: could not create restore dictionary\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
          goto LABEL_52;
        }

        v184 = ACFUFirmware::copyFWContainer(v190);
        CFDictionarySetValue(theDict, @"FirmwareData", v184);
        v203 = 0;
        v204 = 0;
        LOWORD(v201) = 0;
        __ns.__rep_ = @"Rap,ProductionMode";
        v200 = @"Rap,SecurityMode";
        v52 = RoseRestoreHost::create(theDict, @"RoseBootstrappedPreflight", &v198);
        v53 = v198;
        if (!v198)
        {
          v128 = ACFULogging::getLogInstance(v52);
          v60 = ACFULogging::handleMessage(v128, 2, "%s::%s: failed to create host object\n", "RoseBootstrappedPreflight", "createRoseRequest");
          goto LABEL_246;
        }

        v54 = CFDictionaryGetValue(theDict, @"FirmwareData");
        v55 = v54;
        if (v54 && (v56 = CFDataGetTypeID(), v54 = CFGetTypeID(v55), v56 == v54))
        {
          GetRoseTatsuTagToFileNameMap(&v197);
          RTKitFirmware::create();
          std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v203, &v198);
          v57 = v198;
          v198 = 0;
          if (v57)
          {
            (*(*v57 + 56))(v57);
          }

          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v197, v197.__imp_.__cntrl_);
          if (v203)
          {
            v195 = v203;
            v196 = v204;
            if (v204)
            {
              atomic_fetch_add_explicit(&v204->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = (*(*v53 + 8))(v53, &v195, &__ns);
            v59 = v196;
            if (v196)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v196);
            }

            if (v33)
            {
LABEL_101:
              (*(*v53 + 24))(v53);
              v60 = v204;
              if (v204)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v204);
              }

              if (v33)
              {
                v61 = dlopen("/usr/lib/libauthinstall.dylib", 1);
                __handle = v61;
                if (!v61)
                {
                  v130 = ACFULogging::getLogInstance(0);
                  ACFULogging::handleMessage(v130, 2, "%s::%s: failed to open libauthinstall dylib\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                  v32 = 0;
                  goto LABEL_54;
                }

                v62 = dlsym(v61, "AMAuthInstallCreate");
                v63 = dlerror();
                if (v63 || !v62)
                {
                  v131 = ACFULogging::getLogInstance(v63);
                  ACFULogging::handleMessage(v131, 2, "%s::%s: failed to initialize LAI lib create function\n");
                }

                else
                {
                  v64 = dlsym(__handle, "AMAuthInstallRequestSendSync");
                  v65 = dlerror();
                  if (v65 || !v64)
                  {
                    v133 = ACFULogging::getLogInstance(v65);
                    ACFULogging::handleMessage(v133, 2, "%s::%s: failed to intialialize LAI lib server sync function\n");
                  }

                  else
                  {
                    v66 = v62(allocator);
                    v161 = v66;
                    if (v66)
                    {
                      v67 = 1;
                      while (1)
                      {
                        v68 = ACFULogging::getLogInstance(v66);
                        ACFULogging::handleMessage(v68, 0, "%s::%s: personalization attempt %u of %u...\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", v67, 5);
                        v69 = v64(v161, v33, &v185);
                        v66 = v185;
                        if (!v69)
                        {
                          break;
                        }

                        if (v185)
                        {
                          CFRelease(v185);
                          v185 = 0;
                        }

                        __ns.__rep_ = 4000000000;
                        std::this_thread::sleep_for (&__ns);
                        if (++v67 == 6)
                        {
                          goto LABEL_115;
                        }
                      }

                      if (v185)
                      {
                        v75 = CFDictionaryGetValue(v185, @"Rap,Ticket");
                        v76 = v75;
                        if (!v75 || (v77 = CFDataGetTypeID(), v75 = CFGetTypeID(v76), v77 != v75))
                        {
                          v119 = ACFULogging::getLogInstance(v75);
                          ACFULogging::handleMessage(v119, 2, "%s::%s: no rose ticket found in response\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                          goto LABEL_116;
                        }

                        (*(*v190 + 72))(v190, v76);
                        v78 = v186;
                        v176 = v190;
                        v177 = v191;
                        if (v191)
                        {
                          atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v79 = (*(*v78 + 2))(v78, &v176);
                        v80 = v177;
                        if (v177)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v177);
                        }

                        v153 = v33;
                        if (v79)
                        {
                          v136 = ACFULogging::getLogInstance(v80);
                          ACFULogging::handleMessage(v136, 2, "%s::%s: failed to push rose fw\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                          v32 = v187;
                          v175[0] = v186;
                          v175[1] = v187;
                          if (v187)
                          {
                            atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          v137 = v189;
                          v174[0] = v188;
                          v174[1] = v189;
                          if (v189)
                          {
                            atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          saveDebugInfo(v175, v174);
                        }

                        else
                        {
                          v81 = (*(*v186 + 3))(v186);
                          if (v81)
                          {
                            v138 = ACFULogging::getLogInstance(v81);
                            ACFULogging::handleMessage(v138, 2, "%s::%s: failed to ping after first boot\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                            v32 = v187;
                            v173[0] = v186;
                            v173[1] = v187;
                            if (v187)
                            {
                              atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v137 = v189;
                            v172[0] = v188;
                            v172[1] = v189;
                            if (v189)
                            {
                              atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            saveDebugInfo(v173, v172);
                          }

                          else
                          {
                            v82 = 1;
                            v83 = v25;
                            do
                            {
                              v84 = ACFULogging::getLogInstance(v81);
                              ACFULogging::handleMessage(v84, 0, "%s::%s: booted chip query attempt %u of %u...\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", v82, 5);
                              (**v186)(&__ns);
                              v85 = __ns.__rep_;
                              v25 = v200;
                              if (v200)
                              {
                                atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              if (v83)
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                              }

                              v86 = v201;
                              v81 = v200;
                              if (v200)
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](v200);
                              }

                              if (!v86)
                              {
                                break;
                              }

                              v83 = v25;
                              v27 = v82++ >= 5;
                            }

                            while (!v27);
                            if (!v86)
                            {
                              if (!this)
                              {
                                v92 = ACFULogging::getLogInstance(v81);
                                v33 = v153;
                                ACFULogging::handleMessage(v92, 0, "%s::%s: skipping firmware save action!\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                                v71 = 0;
                                URLByAppendingStrings = 0;
                                v73 = 0;
LABEL_220:
                                v111 = (*(*v186 + 4))(v186);
                                if (!v111)
                                {
                                  if (v25)
                                  {
                                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  v32 = (**v85)(v85);
                                  if (v25)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                                  }

                                  goto LABEL_120;
                                }

                                v140 = ACFULogging::getLogInstance(v111);
                                ACFULogging::handleMessage(v140, 2, "%s::%s: failed to reset rose\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
LABEL_289:
                                v32 = 0;
                                goto LABEL_120;
                              }

                              v33 = v153;
                              v87 = ACFULogging::getLogInstance(v81);
                              ACFUCommon::stringFromCFString(&__ns.__rep_, this, v88);
                              if ((v202 & 0x80u) == 0)
                              {
                                v90 = v202;
                              }

                              else
                              {
                                v90 = v200;
                              }

                              if (v90)
                              {
                                ACFUCommon::stringFromCFString(&v197, this, v89);
                                if (*(&v197.__rec_ + 7) >= 0)
                                {
                                  ptr = &v197;
                                }

                                else
                                {
                                  ptr = v197.__imp_.__ptr_;
                                }
                              }

                              else
                              {
                                ptr = "UNDEF";
                              }

                              ACFULogging::handleMessage(v87, 4, "%s::%s: savePath: %s\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", ptr);
                              if (v90 && *(&v197.__rec_ + 7) < 0)
                              {
                                operator delete(v197.__imp_.__ptr_);
                              }

                              if (v202 < 0)
                              {
                                operator delete(__ns.__rep_);
                              }

                              v93 = CFURLCreateWithString(allocator, this, 0);
                              v71 = v93;
                              if (v93)
                              {
                                if (v25)
                                {
                                  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                                  v94 = *(v85 + 80);
                                  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                                  if (v94)
                                  {
                                    v95 = v190;
                                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                                    goto LABEL_201;
                                  }
                                }

                                else if (*(v85 + 80) == 1)
                                {
                                  v95 = v190;
LABEL_201:
                                  (*(*v95 + 16))(v95, *(v85 + 72));
                                  if (v25)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                                  }

                                  v96 = RTKitFirmware::saveFirmwareToPath(v190, v71);
                                  if (v96)
                                  {
                                    v143 = ACFULogging::getLogInstance(v96);
                                    ACFULogging::handleMessage(v143, 2, "%s::%s: failed to save rose fw\n");
                                  }

                                  else
                                  {
                                    v97 = (*(*v186 + 4))(v186);
                                    if (v97)
                                    {
                                      v144 = ACFULogging::getLogInstance(v97);
                                      ACFULogging::handleMessage(v144, 2, "%s::%s: failed to reset rose\n");
                                    }

                                    else
                                    {
                                      if (v184)
                                      {
                                        CFRelease(v184);
                                        v184 = 0;
                                      }

                                      URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(this, @"ftab.bin", v98);
                                      if (URLByAppendingStrings)
                                      {
                                        v99 = AMSupportCreateDataFromFileURL();
                                        v100 = v99;
                                        if (v99)
                                        {
                                          v146 = ACFULogging::getLogInstance(v99);
                                          ACFULogging::handleMessage(v146, 2, "%s::%s: failed to open healed firmware file (status: %d)\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", v100);
                                        }

                                        else
                                        {
                                          GetRoseTatsuTagToFileNameMap(v168);
                                          RTKitFirmware::create();
                                          std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v190, &__ns.__rep_);
                                          v101 = __ns.__rep_;
                                          __ns.__rep_ = 0;
                                          if (v101)
                                          {
                                            (*(*v101 + 56))(v101);
                                          }

                                          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v168, v169);
                                          if (v190)
                                          {
                                            v102 = (*(*v190 + 32))(v190);
                                            v73 = v102;
                                            if (v102)
                                            {
                                              v103 = v186;
                                              BytePtr = CFDataGetBytePtr(v102);
                                              Length = CFDataGetLength(v73);
                                              v106 = (*(*v103 + 1))(v103, BytePtr, Length);
                                              if (v106)
                                              {
                                                v149 = ACFULogging::getLogInstance(v106);
                                                ACFULogging::handleMessage(v149, 2, "%s::%s: failed to set boot nonce\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                                                goto LABEL_289;
                                              }

                                              v107 = v186;
                                              v166 = v190;
                                              v167 = v191;
                                              if (v191)
                                              {
                                                atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
                                              }

                                              v108 = (*(*v107 + 2))(v107, &v166);
                                              v109 = v167;
                                              if (v167)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](v167);
                                              }

                                              if (v108)
                                              {
                                                v150 = ACFULogging::getLogInstance(v109);
                                                ACFULogging::handleMessage(v150, 2, "%s::%s: failed to push healed rose fw\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                                                v32 = v187;
                                                v165[0] = v186;
                                                v165[1] = v187;
                                                if (v187)
                                                {
                                                  atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                                                }

                                                v151 = v189;
                                                v164[0] = v188;
                                                v164[1] = v189;
                                                if (v189)
                                                {
                                                  atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                                                }

                                                saveDebugInfo(v165, v164);
                                              }

                                              else
                                              {
                                                v110 = (*(*v186 + 3))(v186);
                                                if (!v110)
                                                {
                                                  goto LABEL_220;
                                                }

                                                v152 = ACFULogging::getLogInstance(v110);
                                                ACFULogging::handleMessage(v152, 2, "%s::%s: failed to ping after second boot\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                                                v32 = v187;
                                                v163[0] = v186;
                                                v163[1] = v187;
                                                if (v187)
                                                {
                                                  atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                                                }

                                                v151 = v189;
                                                v162[0] = v188;
                                                v162[1] = v189;
                                                if (v189)
                                                {
                                                  atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                                                }

                                                saveDebugInfo(v163, v162);
                                              }

                                              if (v151)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](v151);
                                              }

                                              if (v32)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                                                v32 = 0;
                                              }

LABEL_304:
                                              v33 = v153;
                                              goto LABEL_120;
                                            }

                                            v148 = ACFULogging::getLogInstance(0);
                                            ACFULogging::handleMessage(v148, 2, "%s::%s: no firmware nonce present to boot with\n");
                                          }

                                          else
                                          {
                                            v147 = ACFULogging::getLogInstance(0);
                                            ACFULogging::handleMessage(v147, 2, "%s::%s: could not open healed rose firmware\n");
                                          }
                                        }

                                        v32 = 0;
                                        goto LABEL_119;
                                      }

                                      v145 = ACFULogging::getLogInstance(0);
                                      ACFULogging::handleMessage(v145, 2, "%s::%s: failed to create healed firwmare URL\n");
                                    }
                                  }

LABEL_283:
                                  v32 = 0;
                                  goto LABEL_118;
                                }

                                v142 = ACFULogging::getLogInstance(v93);
                                ACFULogging::handleMessage(v142, 2, "%s::%s: failed to get boot-nonce\n");
                                goto LABEL_283;
                              }

                              v141 = ACFULogging::getLogInstance(0);
                              ACFULogging::handleMessage(v141, 2, "%s::%s: could not create save path url\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
LABEL_116:
                              v32 = 0;
                              goto LABEL_117;
                            }

                            v139 = ACFULogging::getLogInstance(v81);
                            ACFULogging::handleMessage(v139, 2, "%s::%s: failed to get chip parameters post boot\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
                            v32 = v187;
                            v171[0] = v186;
                            v171[1] = v187;
                            if (v187)
                            {
                              atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v137 = v189;
                            v170[0] = v188;
                            v170[1] = v189;
                            if (v189)
                            {
                              atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            saveDebugInfo(v171, v170);
                          }
                        }

                        if (v137)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v137);
                        }

                        if (v32)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                          v32 = 0;
                        }

                        v71 = 0;
                        URLByAppendingStrings = 0;
                        v73 = 0;
                        goto LABEL_304;
                      }

LABEL_115:
                      v70 = ACFULogging::getLogInstance(v66);
                      ACFULogging::handleMessage(v70, 2, "%s::%s: failed to get ticket for rose (laiStatus: %d)\n", "RoseBootstrappedPreflight", "bootstrappedPreflight", v69);
                      goto LABEL_116;
                    }

                    v135 = ACFULogging::getLogInstance(0);
                    ACFULogging::handleMessage(v135, 2, "%s::%s: could not create libauthinstall object\n");
                  }
                }

                v32 = 0;
                v161 = 0;
                goto LABEL_117;
              }

LABEL_246:
              v129 = ACFULogging::getLogInstance(v60);
              ACFULogging::handleMessage(v129, 2, "%s::%s: failed to create rose tss request dictionary\n", "RoseBootstrappedPreflight", "bootstrappedPreflight");
              goto LABEL_53;
            }

            v134 = ACFULogging::getLogInstance(v59);
            ACFULogging::handleMessage(v134, 2, "%s::%s: failed to create request dict\n");
          }

          else
          {
            v132 = ACFULogging::getLogInstance(v58);
            ACFULogging::handleMessage(v132, 2, "%s::%s: failed to create firmware\n");
          }
        }

        else
        {
          v115 = ACFULogging::getLogInstance(v54);
          ACFULogging::handleMessage(v115, 0, "%s::%s: invalid or no firmware file present in restore options\n");
        }

        v33 = 0;
        goto LABEL_101;
      }
    }

    CFRelease(v45);
    theDict = Mutable;
    goto LABEL_83;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  v28 = *(v24 + 176);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (v28)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_56;
  }

LABEL_235:
  v121 = ACFULogging::getLogInstance(PowerState);
  ACFULogging::handleMessage(v121, 2, "%s::%s: failed to get chip rev\n");
LABEL_51:
  value = 0;
LABEL_52:
  theDict = 0;
LABEL_53:
  v32 = 0;
  v33 = 0;
LABEL_54:
  v161 = 0;
  __handle = 0;
LABEL_117:
  v71 = 0;
LABEL_118:
  URLByAppendingStrings = 0;
LABEL_119:
  v73 = 0;
LABEL_120:
  if (!v194 && v186)
  {
    RoseTransport::setPowerState(v186, 0);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v184)
  {
    CFRelease(v184);
    v184 = 0;
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (URLByAppendingStrings)
  {
    CFRelease(URLByAppendingStrings);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v185)
  {
    CFRelease(v185);
    v185 = 0;
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (__handle)
  {
    dlclose(__handle);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v187)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v187);
  }

  if (v189)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v189);
  }

  if (v191)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v191);
  }

  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  return v32;
}

void sub_2980C953C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v59 = *(v57 - 248);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  v60 = *(v57 - 232);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v61 = *(v57 - 216);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v62 = *(v57 - 200);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1EA0510;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1EA0570;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<ACFUFTABFile>::operator=[abi:ne200100]<ACFUFTABFile,std::default_delete<ACFUFTABFile>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1EA05D0;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1EA04B0;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void saveDebugInfo(uint64_t *a1, ACFUDiagnostics **a2)
{
  v2 = *a1;
  if (v2 && *a2)
  {
    v5 = 0;
    v6 = 0;
    v4 = (*(*v2 + 40))(v2, &v5, 1);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v4)
    {
      ACFUDiagnostics::perform(*a2);
    }
  }
}

void sub_2980C9AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_2980C9B3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2980C9CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

void std::__shared_ptr_pointer<RTKitFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C280FF0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<RoseTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RoseTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RoseTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ACFUFTABFile  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ACFUFTABFile  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ACFUFTABFile  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL RoseCommand::parsePingInfo(uint64_t a1)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = operator new(0x28uLL);
  v26 = v2;
  v27 = xmmword_2980DC340;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  v2[32] = 0;
  v4 = *(a1 + 32);
  LogInstance = ACFULogging::getLogInstance(v2);
  v6 = &v26;
  if (v27 < 0)
  {
    v6 = v26;
  }

  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Firmware Version '%s', host interface version 0x%x (%u.%u), hardware version 0x%x\n", "RoseCommand", "parsePingInfo", v6, *(a1 + 32), v4 >> 8, v4, *(a1 + 34));
  v8 = *(a1 + 36);
  if (v8 <= 0x1A)
  {
    v21 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v21, 2, "%s::%s: additional info size %u too small for HSI1\n", "RoseCommand", "parsePingInfo", *(a1 + 36));
  }

  else
  {
    v9 = *(a1 + 41);
    v10 = *(a1 + 49);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    v28 = v9;
    v29 = v10;
    LOBYTE(v30) = 0;
    HIBYTE(v30) = 16;
    v11 = ACFULogging::getLogInstance(v7);
    v12 = &v28;
    if (v30 < 0)
    {
      v12 = v28;
    }

    v13 = ACFULogging::handleMessage(v11, 0, "%s::%s: UWB_AP version 0x%x, UWB_DSP version 0x%x, target '%s', cal data version 0x%x, module ID 0x%x, modem init version 0x%x\n", "RoseCommand", "parsePingInfo", *(a1 + 37), *(a1 + 39), v12, *(a1 + 57), *(a1 + 59), *(a1 + 60));
    if (*(a1 + 36) >= 0x1Cu)
    {
      v14 = ACFULogging::getLogInstance(v13);
      v15 = ACFULogging::handleMessage(v14, 0, "%s::%s: Extra additional info we don't know how to parse (%lu bytes):\n", "RoseCommand", "parsePingInfo", *(a1 + 36) - 27);
      ACFULogging::getLogInstance(v15);
      std::string::basic_string[abi:ne200100]<0>(&v22, "RoseCommand");
      v16 = std::string::append(&v22, "::");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v23, "parsePingInfo");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v25 = v18->__r_.__value_.__r.__words[2];
      *__p = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageBinary();
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  return v8 > 0x1A;
}

void sub_2980CA26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseCommand::parsePingInfo(unsigned __int16 *a1)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v2 = operator new(0x28uLL);
  v24 = v2;
  v25 = xmmword_2980DC340;
  v3 = *(a1 + 9);
  *v2 = *(a1 + 1);
  *(v2 + 1) = v3;
  v2[32] = 0;
  v4 = a1[17];
  LogInstance = ACFULogging::getLogInstance(v2);
  v6 = &v24;
  if (v25 < 0)
  {
    v6 = v24;
  }

  v7 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Status 0x%x, Firmware Version '%s', host interface version 0x%x (%u.%u), hardware version 0x%x\n", "RoseCommand", "parsePingInfo", *a1, v6, a1[17], v4 >> 8, v4, a1[18]);
  v8 = *(a1 + 21);
  v9 = *(a1 + 25);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  v26 = v8;
  v27 = v9;
  LOBYTE(v28) = 0;
  HIBYTE(v28) = 16;
  v10 = ACFULogging::getLogInstance(v7);
  v11 = &v26;
  if (v28 < 0)
  {
    v11 = v26;
  }

  v12 = ACFULogging::handleMessage(v10, 0, "%s::%s: UWB_AP version 0x%x, UWB_DSP version 0x%x, target '%s', cal data version 0x%x, module ID 0x%x, modem init version 0x%x, board ID 0x%x\n", "RoseCommand", "parsePingInfo", a1[19], a1[20], v11, a1[29], *(a1 + 60), *(a1 + 61), *(a1 + 65));
  v13 = ACFULogging::getLogInstance(v12);
  v14 = ACFULogging::handleMessage(v13, 0, "%s::%s: Reserved (%lu bytes):\n", "RoseCommand", "parsePingInfo", 39);
  ACFULogging::getLogInstance(v14);
  std::string::basic_string[abi:ne200100]<0>(&v20, "RoseCommand");
  v15 = std::string::append(&v20, "::");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v21, "parsePingInfo");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v23 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  return 1;
}

void sub_2980CA528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (*(v36 - 49) < 0)
  {
    operator delete(*(v36 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *RoseCommand::create(int a1, int a2, unint64_t a3, char a4)
{
  v8 = operator new(0x30uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v8 + 6) = a2;
  *(v8 + 7) = a1;
  *(v8 + 32) = a4;
  v8[5] = 0;
  v9 = RoseCommand::init(v8, a3);
  if (!v9)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "RoseCommand", "create");
    if (*v8)
    {
      operator delete(*v8);
    }

    operator delete(v8);
    return 0;
  }

  return v8;
}

uint64_t RoseCommand::RoseCommand(uint64_t result, int a2, int a3, char a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a3;
  *(result + 28) = a2;
  *(result + 32) = a4;
  *(result + 40) = 0;
  return result;
}

BOOL RoseCommand::init(RoseCommand *this, unint64_t a2)
{
  if (a2 >= 0x2D)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid payload length %zu\n", "RoseCommand", "init", a2);
  }

  else
  {
    *(this + 5) = a2 + 4;
    v9 = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&v10, a2 + 4, &v9);
    v4 = *this;
    if (*this)
    {
      *(this + 1) = v4;
      operator delete(v4);
    }

    v5 = v10;
    *this = v10;
    *(this + 2) = v11;
    v6 = *v5 & 0xFFFFC3FF | ((*(this + 7) & 0xF) << 10);
    *v5 = v6;
    *v5 = v6 & 0xFFFF3C00 | *(this + 6) & 0x3FF | 0x4000;
  }

  return a2 < 0x2D;
}

void RoseCommand::~RoseCommand(RoseCommand *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

BOOL RoseCommand::setPayloadLength(RoseCommand *this, uint64_t a2)
{
  v2 = a2 + 4;
  if ((a2 + 4) <= 0x30)
  {
    v4 = *(this + 1) - *this;
    if (v2 > v4)
    {
      v6 = 0;
      std::vector<unsigned char>::__append(this, v2 - v4, &v6);
    }

    *(this + 5) = v2;
  }

  return v2 < 0x31;
}

uint64_t RoseCommand::validateResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 113) <= 0xFFFFFFFFFFFFFF94)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid response (size: %zu)\n");
    return 0;
  }

  if (((*a2 >> 10) & 0xF) != *(a1 + 28) || ((*a2 & 0xC000) == 0x8000 ? (v4 = (*a2 & 0x3FF) == *(a1 + 24)) : (v4 = 0), !v4))
  {
    v5 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v5, 2, "%s::%s: Invalid header: received gid 0x%02x oid 0x%03x msg type 0x%02x; expected gid 0x%02x oid 0x%03x msg type 0x%02x\n", "RoseCommand", "validateResponse");
    return 0;
  }

  if (*(a1 + 32) == 1 && *(a2 + 4))
  {
    v7 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v7, 2, "%s::%s: Error status (0x%04x) in response\n");
    return 0;
  }

  return 1;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v6 = a1[1];
    memset(v6, *a3, a2);
    a1[1] = &v6[a2];
  }

  return a1;
}

void sub_2980CA988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t __len, unsigned __int8 *a3)
{
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  if (v7 - v6 >= __len)
  {
    if (__len)
    {
      v15 = &v6[__len];
      memset(v6, *a3, __len);
      v6 = v15;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v9 = *a1;
    v10 = &v6[-*a1];
    v11 = v10 + __len;
    if ((v10 + __len) < 0)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    memset(&v14[v10], *a3, __len);
    memcpy(v14, v9, v10);
    *a1 = v14;
    *(a1 + 8) = &v14[v10 + __len];
    *(a1 + 16) = &v14[v13];
    if (v9)
    {

      operator delete(v9);
    }
  }
}

void RoseTransport::create(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v8 = operator new(0x78uLL);
  ACFUTransport::ACFUTransport(v8);
  *v8 = &unk_2A1EA0630;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  v8[72] = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  v8[96] = 0;
  *(v8 + 108) = 0;
  *(v8 + 100) = 0;
  *(v8 + 29) = 0;
  *a4 = v8;
  v9 = *a1;
  v10 = a1[1];
  v15[0] = v9;
  v15[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = RoseTransport::init(v8, v15, a2, v4);
  v12 = v11;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if ((v12 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "RoseTransport", "create");
    *a4 = 0;
    v14 = *(*v8 + 64);

    v14(v8);
  }
}

void sub_2980CAC58(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

void RoseTransport::RoseTransport(RoseTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_2A1EA0630;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 100) = 0;
  *(v1 + 116) = 0;
}

uint64_t RoseTransport::init(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v21 = 0;
  v20 = -8531;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = ACFUTransport::init();
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(a1 + 100) = a4;
  *(a1 + 32) = a3;
  if (a3 || (result = RoseTransport::createRoseController(a1), result))
  {
    PowerState = RoseTransport::getPowerState(a1, &v21);
    if (PowerState)
    {
      RoseTransport::init(PowerState);
    }

    else if (!v21 && (LogInstance = ACFULogging::getLogInstance(PowerState), ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Rose chip is powered off. Powering it back on.\n", "RoseTransport", "init"), v12 = RoseTransport::setPowerState(a1, 1), v12))
    {
      RoseTransport::init(v12);
    }

    else
    {
      v13 = (*(**(a1 + 32) + 128))(*(a1 + 32), &v20);
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v20 == 57005;
      }

      if (v14)
      {
        RoseTransport::init(v13);
      }

      else
      {
        RoseCapabilities::create(v20, &v17);
        v15 = v17;
        v17 = 0uLL;
        v16 = *(a1 + 112);
        *(a1 + 104) = v15;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          v16 = *(&v17 + 1);
          if (*(&v17 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
          }

          if (*(a1 + 104))
          {
            return 1;
          }
        }

        else if (v15)
        {
          return 1;
        }

        RoseTransport::init(v16);
      }
    }

    return 0;
  }

  return result;
}

void sub_2980CAE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseTransport::createRoseController(IOCFPlugInInterface ***this)
{
  *child = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", child);
    IOObjectRelease(v5);
    v7 = child[0];
    if (ChildEntry)
    {
      v8 = 1;
    }

    else
    {
      v8 = child[0] == 0;
    }

    if (v8)
    {
      RoseTransport::createRoseController(ChildEntry);
    }

    else
    {
      v9 = *MEMORY[0x29EDB8EF0];
      v10 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xAu, 0x3Au, 0xB3u, 0x17u, 0x88u, 0xE7u, 0x40u, 0xA0u, 0x89u, 0x68u, 0x33u, 0x55u, 0x58u, 0x14u, 0x66u, 0x63u);
      v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v12 = IOCreatePlugInInterfaceForService(v7, v10, v11, this + 3, &child[1]);
      IOObjectRelease(child[0]);
      if (v12 || (v13 = this[3]) == 0)
      {
        RoseTransport::createRoseController(v12);
      }

      else
      {
        QueryInterface = (*v13)->QueryInterface;
        v15 = CFUUIDGetConstantUUIDWithBytes(v9, 0x10u, 0x3Au, 0xBDu, 0x4Au, 0x60u, 0x94u, 0x4Bu, 0xC0u, 0xAEu, 0xEEu, 0x3Eu, 0x37u, 0xF5u, 0xA2u, 0xFu, 0x3Bu);
        v16 = CFUUIDGetUUIDBytes(v15);
        (QueryInterface)(v13, *&v16.byte0, *&v16.byte8, this + 4);
        v17 = this[4];
        if (v17)
        {
          v18 = ((*v17)[1]._reserved)(v17, RoseTransport::roseControllerLogSink, 0);
          if (v18)
          {
            RoseTransport::createRoseController(v18);
          }

          else
          {
            v19 = dispatch_queue_create("RoseQueue", 0);
            v20 = this[5];
            this[5] = v19;

            if (this[5])
            {
              v22 = operator new(0x78uLL);
              *(v22 + 14) = 0;
              *v22 = 1018212795;
              *(v22 + 8) = 0u;
              *(v22 + 24) = 0u;
              *(v22 + 5) = 0;
              *(v22 + 6) = 850045863;
              *(v22 + 56) = 0u;
              *(v22 + 72) = 0u;
              *(v22 + 88) = 0u;
              *(v22 + 100) = 0u;
              v31 = 0;
              std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 7, v22);
              std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](&v31, 0);
              if (this[7])
              {
                v24 = operator new(0x78uLL);
                *(v24 + 14) = 0;
                *v24 = 1018212795;
                *(v24 + 8) = 0u;
                *(v24 + 24) = 0u;
                *(v24 + 5) = 0;
                *(v24 + 6) = 850045863;
                *(v24 + 56) = 0u;
                *(v24 + 72) = 0u;
                *(v24 + 88) = 0u;
                *(v24 + 100) = 0u;
                v31 = 0;
                std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](this + 6, v24);
                std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](&v31, 0);
                if (this[6])
                {
                  v26 = ((*this[4])[1].QueryInterface)(this[4], this[5]);
                  if (v26)
                  {
                    RoseTransport::createRoseController(v26);
                  }

                  else
                  {
                    v27 = ((*this[4])[5].Release)(this[4], RoseTransport::eventCallback, this);
                    if (v27)
                    {
                      RoseTransport::createRoseController(v27);
                    }

                    else
                    {
                      v28 = ((*this[4])[6].QueryInterface)(this[4], RoseTransport::crashCallback, this);
                      if (v28)
                      {
                        RoseTransport::createRoseController(v28);
                      }

                      else
                      {
                        *(this + 96) = 1;
                      }
                    }
                  }
                }

                else
                {
                  RoseTransport::createRoseController(v25);
                }
              }

              else
              {
                RoseTransport::createRoseController(v23);
              }
            }

            else
            {
              RoseTransport::createRoseController(v21);
            }
          }
        }

        else
        {
          RoseTransport::createRoseController(0);
        }
      }
    }
  }

  else
  {
    RoseTransport::createRoseController(MatchingService);
  }

  if (this[12])
  {
    v29 = 1;
  }

  else
  {
    RoseTransport::destroyRoseController(this);
    v29 = *(this + 96);
  }

  return v29 & 1;
}

uint64_t RoseTransport::getPowerState(RoseTransport *this, BOOL *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    RoseTransport::getPowerState(0);
    return 3029;
  }

  v5 = Mutable;
  if (RoseTransport::getRoseDebugInfoDict(this, Mutable))
  {
    RoseTransport::getPowerState(v5);
    return 3029;
  }

  value = 0;
  valuePtr = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(v5, @"RosePowerState", &value);
  if (!ValueIfPresent)
  {
    LogInstance = ACFULogging::getLogInstance(ValueIfPresent);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: RosePowerState isn't present in the dictionary\n");
LABEL_8:
    v8 = 3029;
    goto LABEL_9;
  }

  v7 = CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    v10 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v10, 2, "%s::%s: failed to read RosePowerState value from the dictionary\n");
    goto LABEL_8;
  }

  v8 = 0;
  *a2 = valuePtr != 0;
LABEL_9:
  CFRelease(v5);
  return v8;
}

uint64_t RoseTransport::setPowerState(RoseCapabilities **this, uint64_t a2)
{
  if ((a2 & 1) == 0 && RoseCapabilities::supportsRTKitIOConfig(this[13]))
  {
    v4 = RoseTransport::applyResetGlitchWorkaround(this);
    if ((v4 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v4);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to apply reset glitch workaround, proceeding with power off anyway\n", "RoseTransport", "setPowerState");
    }
  }

  v6 = (*(*this[4] + 416))(this[4], a2);
  v7 = ACFULogging::getLogInstance(v6);
  if (v6)
  {
    ACFULogging::handleMessage(v7, 2, "%s::%s: setPowerState (%d) failed: 0x%08x\n", "RoseTransport", "setPowerState", a2, v6);
    return 3028;
  }

  else
  {
    ACFULogging::handleMessage(v7, 0, "%s::%s: setPowerState (%d) successful\n", "RoseTransport", "setPowerState", a2);
    return 0;
  }
}

ACFULogging *RoseTransport::roseControllerLogSink(ACFULogging *this, uint64_t a2, const char *a3, const char *a4)
{
  v5 = a2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return this;
      }

      v5 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v5 = 4;
        break;
      case 0x10:
        v5 = 2;
        break;
      case 0x11:
        v5 = 1;
        break;
      default:
        return this;
    }
  }

  LogInstance = ACFULogging::getLogInstance(this);
  return ACFULogging::handleMessage(LogInstance, v5, "%s::%s: %s\n", "RoseTransport", "roseControllerLogSink", a3);
}

uint64_t RoseTransport::eventCallback(RoseTransport *this, void *a2, uint64_t a3)
{
  if (this)
  {

    return RoseTransport::eventHandler(this, a2, a3);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(this);
    return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid refcon in rose event callback\n", "RoseTransport", "eventCallback");
  }
}

ACFULogging *RoseTransport::crashCallback(ACFULogging *a1, uint64_t a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: There is a crash log available!\n", "RoseTransport", "crashCallback");
  if (a1)
  {

    return RoseTransport::crashHandler(a1, a2);
  }

  else
  {
    v7 = ACFULogging::getLogInstance(v5);
    return ACFULogging::handleMessage(v7, 2, "%s::%s: Invalid refcon crash callback\n", "RoseTransport", "crashCallback");
  }
}

IOCFPlugInInterface **RoseTransport::destroyRoseController(RoseTransport *this)
{
  result = *(this + 3);
  if (result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      (*(*v3 + 24))(*(this + 4));
      *(this + 4) = 0;
      result = *(this + 3);
    }

    result = IODestroyPlugInInterface(result);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t RoseTransport::getBootNonceHash(RoseTransport *this, unsigned __int8 *a2, size_t a3, unint64_t *a4)
{
  v16[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  bzero(v9, v8);
  v10 = (*(**(this + 4) + 160))(*(this + 4), a2, a3, v16);
  if (v10)
  {
    RoseTransport::getBootNonceHash(v10);
    return 3007;
  }

  if (v16[0] - 1 >= a3)
  {
    RoseTransport::getBootNonceHash(v16);
    return 3009;
  }

  v11 = memcmp(v9, a2, v16[0]);
  if (!v11)
  {
    v12 = (*(**(this + 4) + 152))(*(this + 4));
    if (v12)
    {
      RoseTransport::getBootNonceHash(v12);
      return 3008;
    }

    v16[0] = 0;
    v13 = (*(**(this + 4) + 160))(*(this + 4), a2, a3, v16);
    if (!v13)
    {
      if (v16[0] - 1 >= a3)
      {
        RoseTransport::getBootNonceHash(v16);
      }

      else
      {
        v11 = memcmp(v9, a2, v16[0]);
        if (v11)
        {
          goto LABEL_8;
        }

        RoseTransport::getBootNonceHash(v16);
      }

      return 3009;
    }

    RoseTransport::getBootNonceHash(v13);
    return 3007;
  }

LABEL_8:
  LogInstance = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: boot nonce hash size: %zu\n", "RoseTransport", "getBootNonceHash", v16[0]);
  result = 0;
  *a4 = v16[0];
  return result;
}

void RoseTransport::getBoardParameters(RoseTransport *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = *MEMORY[0x29EDCA608];
  *v70 = -8531;
  *v69 = -8531;
  v67 = 0;
  *v68 = 0xDEADBEEFDEADBEEFLL;
  *bytes = 0u;
  v79 = 0u;
  *v77 = 0;
  v66 = 0;
  v65 = -34;
  v64 = -34;
  v63 = -34;
  v62 = -34;
  *v61 = -8531;
  v73 = xmmword_29EE8A148;
  v74 = *&off_29EE8A158;
  v75 = xmmword_29EE8A168;
  *v71 = xmmword_29EE8A128;
  v72 = *&off_29EE8A138;
  v59 = 0;
  v60 = 0;
  __p = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v71, &v76, 0xAuLL);
  std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> &,0>(&__p, v71);
  if (a3)
  {
    BootNonceHash = RoseTransport::getBootNonceHash(this, bytes, 0x20uLL, &v67);
    if (BootNonceHash)
    {
      goto LABEL_15;
    }

    v9 = v71[0];
    v10 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 32);
    *(v9 + 7) = v10;
    *(v9 + 64) = v10 != 0;
  }

  if (a2)
  {
    v11 = (*(**(this + 4) + 168))(*(this + 4), v77, 8, &v66);
    v12 = v11;
    if (v11)
    {
      LogInstance = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get boot nonce (ret: 0x%08x)\n", "RoseTransport", "getBoardParameters", v12);
      BootNonceHash = 3007;
      goto LABEL_15;
    }

    v13 = ACFULogging::getLogInstance(v11);
    v14 = ACFULogging::handleMessage(v13, 4, "%s::%s: BootNonce size: %zu\n", "RoseTransport", "getBoardParameters", v66);
    if (v66 - 9 <= 0xFFFFFFFFFFFFFFF7)
    {
      v50 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v50, 2, "%s::%s: bad BootNonce size %zu\n", "RoseTransport", "getBoardParameters", v66);
      BootNonceHash = 3009;
      goto LABEL_15;
    }

    v15 = v71[0];
    v16 = CFDataCreate(*MEMORY[0x29EDB8ED8], v77, 8);
    *(v15 + 9) = v16;
    *(v15 + 80) = v16 != 0;
  }

  v17 = (*(**(this + 4) + 128))(*(this + 4), v70);
  if (v17 || *v70 == 57005)
  {
    v47 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to get chipId (ret: 0x%08x)\n");
    goto LABEL_14;
  }

  v18 = (*(**(this + 4) + 136))(*(this + 4), v69);
  if (v18 || *v69 == 57005)
  {
    v48 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v48, 2, "%s::%s: failed to get boardId (ret: 0x%08x)\n");
    goto LABEL_14;
  }

  v19 = (*(**(this + 4) + 144))(*(this + 4), v68);
  if (v19 || !*v68 || *v68 == 0xDEADBEEFDEADBEEFLL)
  {
    v20 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v20, 2, "%s::%s: failed to get ecid (ret: 0x%08x)\n");
LABEL_14:
    BootNonceHash = 3011;
    goto LABEL_15;
  }

  v24 = (*(**(this + 4) + 232))(*(this + 4), &v64);
  if (v24 || v64 >= 2u)
  {
    v51 = ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage(v51, 2, "%s::%s: failed to get secure mode (ret: 0x%08x) secMode: 0x%x\n");
    goto LABEL_14;
  }

  v25 = (*(**(this + 4) + 224))(*(this + 4), &v65);
  if (v25 || v65 >= 2u)
  {
    v52 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v52, 2, "%s::%s: failed to get production mode (ret: 0x%08x) prodMode: 0x%x\n");
    goto LABEL_14;
  }

  v26 = (*(**(this + 4) + 240))(*(this + 4), &v63);
  if (v26 || v63 == 222)
  {
    v53 = ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to get security domain (ret: 0x%08x)\n");
    goto LABEL_14;
  }

  v27 = (*(**(this + 4) + 248))(*(this + 4), &v62);
  if (v27 || v62 == 222)
  {
    v54 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get minimum epoch (ret: 0x%08x)\n");
    goto LABEL_14;
  }

  v28 = (*(**(this + 4) + 360))(*(this + 4), v61);
  if (v28 || *v61 == 57005)
  {
    v55 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to get chip revision (ret: 0x%08x)\n");
    goto LABEL_14;
  }

  v29 = v71[0];
  v30 = *MEMORY[0x29EDB8ED8];
  v31 = CFDataCreate(*MEMORY[0x29EDB8ED8], v68, 8);
  *(v29 + 5) = v31;
  *(v29 + 48) = v31 != 0;
  v32 = v71[0];
  v33 = CFDataCreate(v30, v69, 2);
  *(v32 + 3) = v33;
  *(v32 + 32) = v33 != 0;
  v34 = v71[0];
  v35 = CFDataCreate(v30, v70, 2);
  *(v34 + 1) = v35;
  *(v34 + 16) = v35 != 0;
  v36 = v71[0];
  v37 = CFDataCreate(v30, &v65, 1);
  *(v36 + 11) = v37;
  *(v36 + 96) = v37 != 0;
  v38 = v71[0];
  v39 = CFDataCreate(v30, &v64, 1);
  *(v38 + 13) = v39;
  *(v38 + 112) = v39 != 0;
  v40 = v71[0];
  v41 = CFDataCreate(v30, &v63, 1);
  *(v40 + 17) = v41;
  *(v40 + 144) = v41 != 0;
  v42 = v71[0];
  v43 = CFDataCreate(v30, &v62, 1);
  *(v42 + 19) = v43;
  *(v42 + 160) = v43 != 0;
  v44 = v71[0];
  v45 = CFDataCreate(v30, v61, 2);
  *(v44 + 21) = v45;
  *(v44 + 176) = v45 != 0;
  v46 = ACFUCommon::PersonalizeParams::logParameters(v71[0]);
  if (*v69 && v63 - 4 <= 0xFFFFFFFC)
  {
    v56 = ACFULogging::getLogInstance(v46);
    ACFULogging::handleMessage(v56, 2, "%s::%s: hardware not supported\n", "RoseTransport", "getBoardParameters");
    v57 = v71[1];
    v71[0] = 0;
    v71[1] = 0;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    BootNonceHash = 3006;
  }

  else
  {
    BootNonceHash = 0;
  }

LABEL_15:
  v22 = v71[0];
  v21 = v71[1];
  if (v71[1])
  {
    atomic_fetch_add_explicit(v71[1] + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    v23 = v71[1];
    *a4 = v22;
    *(a4 + 8) = v21;
    *(a4 + 16) = BootNonceHash;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    *a4 = v71[0];
    *(a4 + 8) = 0;
    *(a4 + 16) = BootNonceHash;
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_2980CBE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseTransport::setNonce(RoseTransport *this, void *a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    RoseTransport::setNonce(this);
    return 3028;
  }

  result = (*(**(this + 4) + 176))(*(this + 4));
  if (result)
  {
    RoseTransport::setNonce(result);
    return 3028;
  }

  return result;
}

uint64_t RoseTransport::pushFirmware(uint64_t a1, ACFUFirmware **a2)
{
  v47[4] = *MEMORY[0x29EDCA608];
  Manifest = ACFUFirmware::getManifest(*a2);
  v5 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,RTKitOS");
  v6 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,SoftwareBinaryDsp1");
  v46 = -559038737;
  v44 = v6;
  theData = v5;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (!Manifest)
    {
      RoseTransport::pushFirmware(v6);
      v8 = 0;
      v13 = 1001;
      goto LABEL_28;
    }

    if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 104)))
    {
      v8 = ACFUFirmware::copyFWDataByTag(*a2, @"Rap,RTKitIOConfig");
      if (!v8)
      {
        LogInstance = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(LogInstance, 3, "%s::%s: icnf firmware is missing\n", "RoseTransport", "pushFirmware");
      }
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 96) == 1)
    {
      v10 = RoseTransport::flushDebugInfo(a1);
      if (!v10)
      {
        v13 = 0;
LABEL_14:
        v14 = (*(**(a1 + 32) + 192))(*(a1 + 32), 0);
        if (v14)
        {
          RoseTransport::pushFirmware(v14);
        }

        else
        {
          v15 = (*(**(a1 + 32) + 200))(*(a1 + 32), &v46);
          v16 = v15;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v46 >= 2;
          }

          if (v17)
          {
            v42 = ACFULogging::getLogInstance(v15);
            ACFULogging::handleMessage(v42, 2, "%s::%s: failed to get bootMode (ret: 0x%08x) (bootMode: 0x%x)\n", "RoseTransport", "pushFirmware", v16, v46);
          }

          else
          {
            if (!v46)
            {
              v18 = *(a1 + 32);
              v19 = *v18;
              if (v8)
              {
                v43 = *(v19 + 456);
                BytePtr = CFDataGetBytePtr(Manifest);
                Length = CFDataGetLength(Manifest);
                v22 = CFDataGetBytePtr(v5);
                v23 = CFDataGetLength(v5);
                v24 = CFDataGetBytePtr(v44);
                v25 = CFDataGetLength(v44);
                v26 = CFDataGetBytePtr(v8);
                v27 = CFDataGetLength(v8);
                v28 = v43(v18, BytePtr, Length, v22, v23, v24, v25, v26, v27);
                if (v28)
                {
                  RoseTransport::pushFirmware(v28);
LABEL_42:
                  v13 = 3001;
                  goto LABEL_28;
                }
              }

              else
              {
                v29 = *(v19 + 96);
                v30 = CFDataGetBytePtr(Manifest);
                v31 = CFDataGetLength(Manifest);
                v32 = CFDataGetBytePtr(v5);
                v33 = CFDataGetLength(v5);
                v34 = CFDataGetBytePtr(v44);
                v35 = CFDataGetLength(v44);
                v36 = v29(v18, v30, v31, v32, v33, v34, v35);
                if (v36)
                {
                  RoseTransport::pushFirmware(v36);
                  v8 = 0;
                  goto LABEL_42;
                }
              }

              if (*(a1 + 96) == 1 && (v47[0] = &unk_2A1EA0718, v47[1] = a1, v47[3] = v47, v37 = ACFUSynchronize::Syncher::wait(), v38 = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v47), (v37 & 1) == 0))
              {
                v39 = ACFULogging::getLogInstance(v38);
                ACFULogging::handleMessage(v39, 2, "%s::%s: failed while waiting for chip to initialize\n", "RoseTransport", "pushFirmware");
                v13 = 3002;
              }

              else
              {
                v13 = 0;
              }

              goto LABEL_28;
            }

            RoseTransport::pushFirmware(&v46);
            v13 = 3010;
          }
        }

LABEL_28:
        CFRelease(theData);
        goto LABEL_29;
      }

      v11 = v10;
      v12 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v12, 2, "%s::%s: Error flushing the debug logs: (%d)\n", "RoseTransport", "pushFirmware", v11);
    }

    v13 = 3000;
    goto LABEL_14;
  }

  v41 = ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage(v41, 2, "%s::%s: Firmware to push is missing!\n", "RoseTransport", "pushFirmware");
  v8 = 0;
  v13 = 1000;
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v13;
}

void sub_2980CC2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::flushDebugInfo(RoseTransport *this)
{
  v24[0] = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 0x2000uLL, v24);
  v25 = 0;
  if (RoseCapabilities::supportsFirmwareLogCollectionFromRoseController(*(this + 13)))
  {
    v2 = (*(**(this + 4) + 280))(*(this + 4));
    v3 = v2;
    if (v2)
    {
      LogInstance = ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to satisfy prerequisities to flush debug info (ret: 0x%08x)\n", "RoseTransport", "flushDebugInfo", v3);
      v5 = 3000;
      goto LABEL_15;
    }

    while (1)
    {
      v15 = (*(**(this + 4) + 288))(*(this + 4), __p[0], v27 - __p[0], &v25);
      v16 = v15;
      if (v15 || v25 == 0)
      {
        break;
      }

      v18 = ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(v18, 3, "%s::%s: drained %zu bytes of firmware logs\n", "RoseTransport", "flushDebugInfo", v25);
      v25 = 0;
    }

    if (v15)
    {
      v19 = ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(v19, 2, "%s::%s: error while trying to dequeue firmware logs (ret: 0x%08x)\n", "RoseTransport", "flushDebugInfo", v16);
      v5 = 3000;
    }

    else
    {
      v5 = 0;
    }

    v20 = (*(**(this + 4) + 296))(*(this + 4));
    v21 = v20;
    if (v20)
    {
      v22 = ACFULogging::getLogInstance(v20);
      ACFULogging::handleMessage(v22, 2, "%s::%s: failed to resume the firmware logs (ret: 0x%08x)\n", "RoseTransport", "flushDebugInfo", v21);
      v5 = 3000;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v23 = 0;
    while (RoseTransport::isCrashLogAvailable(this, v6, &v23))
    {
      v23 = 0;
      v9 = (*(**(this + 4) + 368))(*(this + 4), v6, v24, __p[0], v27 - __p[0], &v23);
      v10 = v9;
      if (v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v23 == 0;
      }

      if (v11)
      {
        v13 = ACFULogging::getLogInstance(v9);
        v5 = 3000;
        ACFULogging::handleMessage(v13, 2, "%s::%s: failed to dequeue crash logs (ret: 0x%08x) for core: %d\n", "RoseTransport", "flushDebugInfo", v10, v6);
      }

      else
      {
        v12 = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(v12, 3, "%s::%s: flushed a crash log of size: %zu for core: %d\n", "RoseTransport", "flushDebugInfo", v23, v6);
      }
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
LABEL_15:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2980CC574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL RoseTransport::isCrashLogAvailable(RoseTransport *this, uint64_t a2, ACFULogging *a3)
{
  if (a3)
  {
    v4 = (*(**(this + 4) + 368))(*(this + 4), a2, 0, 0, 0, a3);
    if (v4)
    {
      RoseTransport::isCrashLogAvailable(v4);
    }

    else
    {
      if (*a3 <= 0x200000uLL)
      {
        return *a3 != 0;
      }

      RoseTransport::isCrashLogAvailable(a3);
    }
  }

  else
  {
    RoseTransport::isCrashLogAvailable(this);
  }

  return 0;
}

void RoseTransport::collectFirmwareLogs(RoseCapabilities **this)
{
  v21 = 0;
  v2 = RoseCapabilities::supportsFirmwareLogCollectionFromRoseController(this[13]);
  v3 = v2;
  LogInstance = ACFULogging::getLogInstance(v2);
  if (v3)
  {
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Pulling firmware logs...\n", "RoseTransport", "collectFirmwareLogs");
    v5 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    if (Mutable)
    {
      v7 = (*(*this[4] + 280))(this[4]);
      if (v7)
      {
        RoseTransport::collectFirmwareLogs(v7);
      }

      else
      {
        LODWORD(v8) = 0;
        while (1)
        {
          CFDataIncreaseLength(Mutable, 1024);
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v10 = (*(*this[4] + 288))(this[4], &MutableBytePtr[v8], 1024, &v21);
          if (v10)
          {
            RoseTransport::collectFirmwareLogs(v10);
            goto LABEL_22;
          }

          if (v21 >= 0x401)
          {
            break;
          }

          v8 = (v8 + v21);
          if (!v21)
          {
            if (!v8)
            {
              v16 = ACFULogging::getLogInstance(v10);
              ACFULogging::handleMessage(v16, 0, "%s::%s: No firmware logs available to pull\n");
              goto LABEL_15;
            }

            v11 = v8;
            goto LABEL_10;
          }
        }

        RoseTransport::collectFirmwareLogs(&v21);
LABEL_22:
        if (!v8)
        {
          goto LABEL_15;
        }

        v11 = v8;
LABEL_10:
        CFDataSetLength(Mutable, v11);
        v12 = CFStringCreateWithFormat(v5, 0, @"%@.log", @"FirmwareLogs");
        if (v12)
        {
          v13 = v12;
          v14 = ACFUDiagnostics::addItem();
          v15 = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(v15, 0, "%s::%s: %u bytes of firmware logs pulled\n", "RoseTransport", "collectFirmwareLogs", v8);
          CFRelease(v13);
        }

        else
        {
          v17 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v17, 2, "%s::%s: failed to add firmware logs to diagnostics\n");
        }
      }
    }

    else
    {
      RoseTransport::collectFirmwareLogs(0);
    }

LABEL_15:
    v18 = (*(*this[4] + 296))(this[4]);
    if (v18)
    {
      v19 = v18;
      v20 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v20, 2, "%s::%s: failed to resume firmware logging (ret: 0x%08x)\n", "RoseTransport", "collectFirmwareLogs", v19);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: firmware log collection isn't supported for this chip\n", "RoseTransport", "collectFirmwareLogs");
  }
}

void RoseTransport::logCrashLogReason(RoseTransport *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 < 0x51)
  {
    RoseTransport::logCrashLogReason(this);
  }

  else
  {
    v4 = 32;
    while (1)
    {
      v5 = &a2[v4];
      v6 = *&a2[v4 + 12];
      if (v6 <= 0xF)
      {
        RoseTransport::logCrashLogReason(&a2[v4]);
        return;
      }

      if (*v5 == 1131639922)
      {
        break;
      }

      v4 += v6;
      if (v4 + 48 >= a3)
      {
        return;
      }
    }

    v7 = (v5 + 8);
    if (*(v5 + 2) == 257)
    {
      if (v6 < 0x15 || v4 + v6 + 32 > a3)
      {
        LogInstance = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Parsing error while extracting the crash string reason. crashlog size: %zu offset and section size: %lu\n", "RoseTransport", "logCrashLogReason", a3, v4 + *(v5 + 3));
      }

      else
      {
        v9 = v6 - 20;
        if (v9 < 0)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          v12 = v9 | 7;
          if ((v10 | 7) == 0x17)
          {
            v13 = 25;
          }

          else
          {
            v13 = v12 + 1;
          }

          v11 = operator new(v13);
          __dst[1] = v10;
          v19 = v13 | 0x8000000000000000;
          __dst[0] = v11;
        }

        else
        {
          HIBYTE(v19) = v9;
          v11 = __dst;
        }

        v14 = memcpy(v11, v5 + 20, v10);
        *(v11 + v10) = 0;
        v15 = ACFULogging::getLogInstance(v14);
        if (v19 >= 0)
        {
          v16 = __dst;
        }

        else
        {
          v16 = __dst[0];
        }

        ACFULogging::handleMessage(v15, 0, "%s::%s: Crashlog Reason: %s\n", "RoseTransport", "logCrashLogReason", v16);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    else
    {
      RoseTransport::logCrashLogReason(v7);
    }
  }
}

void sub_2980CC9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RoseTransport::collectCrashLogs(_BOOL8 this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  v4 = *MEMORY[0x29EDB8ED8];
  do
  {
    v34 = v3;
    v38 = 0;
    v37 = 0;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Checking for crash logs for core: %d\n", "RoseTransport", "collectCrashLogs", v2);
    this = RoseTransport::isCrashLogAvailable(v1, v2, &v38);
    if (!this)
    {
      goto LABEL_25;
    }

    v6 = 1;
    while (1)
    {
      v7 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v7, 3, "%s::%s: %zu bytes of crash logs to be pulled...\n", "RoseTransport", "collectCrashLogs", v38);
      Mutable = CFDataCreateMutable(v4, 0);
      if (Mutable)
      {
        break;
      }

      v22 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v22, 2, "%s::%s: failed to allocate buffer for crash log\n", "RoseTransport", "collectCrashLogs");
LABEL_22:
      v6 = (v6 + 1);
      this = RoseTransport::isCrashLogAvailable(v1, v2, &v38);
      if (!this)
      {
        goto LABEL_25;
      }
    }

    v9 = Mutable;
    CFDataIncreaseLength(Mutable, v38);
    memset(v36, 0, 15);
    v10 = *(v1 + 4);
    v11 = *(*v10 + 368);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    Length = CFDataGetLength(v9);
    v14 = v11(v10, v2, v36, MutableBytePtr, Length, &v37);
    if (!v14)
    {
      if (v37 != v38)
      {
        v15 = ACFULogging::getLogInstance(v14);
        v14 = ACFULogging::handleMessage(v15, 3, "%s::%s: crashLog size mismatch, expected: %zu, received: %zu\n", "RoseTransport", "collectCrashLogs", v38, v37);
      }

      v16 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v16, 0, "%s::%s: Dequeued crashLog: log_id (%llu), core_type (%u), log_type (%u), is_corrupted (%u)\n", "RoseTransport", "collectCrashLogs", v36[0], BYTE5(v36[1]), BYTE6(v36[1]), BYTE4(v36[1]));
      BytePtr = CFDataGetBytePtr(v9);
      if (!BytePtr)
      {
        goto LABEL_18;
      }

      v18 = BytePtr;
      if (CFDataGetLength(v9) < 0x20 || *(v18 + 3) > 0x3Fu)
      {
        goto LABEL_18;
      }

      if (v34)
      {
        v19 = CFDataGetBytePtr(v9);
        ACFUMachO32::create(&v35, v19, v37);
        v20 = v35;
        v35 = 0;
        v21 = *(v1 + 10);
        *(v1 + 10) = v20;
        if (!v21)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v23 = CFDataGetBytePtr(v9);
        ACFUMachO64::create(&v35, v23, v37);
        v24 = v35;
        v35 = 0;
        v21 = *(v1 + 11);
        *(v1 + 11) = v24;
        if (!v21)
        {
LABEL_18:
          v26 = CFDataGetBytePtr(v9);
          RoseTransport::logCrashLogReason(v26, v26, v37);
          v27 = CFStringCreateWithFormat(v4, 0, @"%@-%d.bin", kRoseCoreToCrashLogKey[v2], v6);
          if (v27)
          {
            v28 = v27;
            v29 = ACFUDiagnostics::addItem();
            v30 = ACFULogging::getLogInstance(v29);
            ACFULogging::handleMessage(v30, 0, "%s::%s: %d crash logs pulled for core: %d\n", "RoseTransport", "collectCrashLogs", v6, v2);
            CFRelease(v28);
          }

          else
          {
            v31 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v31, 2, "%s::%s: failed to create crash long name string\n", "RoseTransport", "collectCrashLogs");
          }

          CFRelease(v9);
          goto LABEL_22;
        }
      }

      (*(*v21 + 8))(v21);
      v25 = v35;
      v35 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      goto LABEL_18;
    }

    v32 = v14;
    v33 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v33, 2, "%s::%s: failed to dequeue crash logs (ret: 0x%08x)\n", "RoseTransport", "collectCrashLogs", v32);
    CFRelease(v9);
LABEL_25:
    v3 = 0;
    v2 = 1;
  }

  while ((v34 & 1) != 0);
}

uint64_t RoseTransport::isCoreDumpAvailable(RoseTransport *this, uint64_t a2, unsigned int *a3)
{
  if (a3)
  {
    memset(v12, 0, 15);
    v4 = (*(**(this + 4) + 376))(*(this + 4), a2, v12);
    if (v4 == -536870160)
    {
      LogInstance = ACFULogging::getLogInstance(v4);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: no coredump available for core: %u\n");
    }

    else
    {
      v5 = v4;
      if (v4)
      {
        v7 = ACFULogging::getLogInstance(v4);
        v11 = v5;
        v10 = "%s::%s: error retrieving descriptor: 0x%08x\n";
      }

      else
      {
        v6 = LODWORD(v12[1]) - 2097153;
        v7 = ACFULogging::getLogInstance(v4);
        if (v6 >> 21 == 2047)
        {
          ACFULogging::handleMessage(v7, 0, "%s::%s: Coredump Descriptor: log_id (%llu), size (%u), core_type (%u), log_type (%u), is_corrupted (%u)\n", "RoseTransport", "isCoreDumpAvailable", v12[0], LODWORD(v12[1]), BYTE5(v12[1]), BYTE6(v12[1]), BYTE4(v12[1]));
          *a3 = v12[1];
          return 1;
        }

        v11 = LODWORD(v12[1]);
        v10 = "%s::%s: invalid coredump size: %u\n";
      }

      ACFULogging::handleMessage(v7, 2, v10, "RoseTransport", "isCoreDumpAvailable", v11);
    }
  }

  else
  {
    RoseTransport::isCoreDumpAvailable(this);
  }

  return 0;
}

uint64_t RoseTransport::collectCoreDump(RoseTransport *this)
{
  v1 = this;
  v2 = 0;
  v3 = 1;
  v4 = *MEMORY[0x29EDB8ED8];
  do
  {
    v5 = v3;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Collecting coredump for core: %d\n", "RoseTransport", "collectCoreDump", v2);
    LODWORD(extraLength) = 0;
    this = RoseTransport::isCoreDumpAvailable(v1, v2, &extraLength);
    if (!this)
    {
      goto LABEL_19;
    }

    v25 = 0;
    Mutable = CFDataCreateMutable(v4, 0);
    if (!Mutable)
    {
      v10 = ACFULogging::getLogInstance(0);
      this = ACFULogging::handleMessage(v10, 2, "%s::%s: failed to allocate buffer for coredump\n", "RoseTransport", "collectCoreDump");
      goto LABEL_19;
    }

    v8 = Mutable;
    if (v5)
    {
      v9 = *(v1 + 10);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = *(v1 + 11);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    MachoHeaderData = ACFUMachO::getMachoHeaderData(v9);
    if (!MachoHeaderData)
    {
LABEL_11:
      v14 = 0;
      v15 = @"%@.bin";
      goto LABEL_12;
    }

    v12 = MachoHeaderData;
    LODWORD(v14) = CFDataGetLength(MachoHeaderData);
    BytePtr = CFDataGetBytePtr(v12);
    v14 = v14;
    CFDataAppendBytes(v8, BytePtr, v14);
    v15 = @"%@-raw.bin";
LABEL_12:
    CFDataIncreaseLength(v8, extraLength);
    MutableBytePtr = CFDataGetMutableBytePtr(v8);
    v17 = (*(**(v1 + 4) + 384))(*(v1 + 4), v2, 0, extraLength, &MutableBytePtr[v14], &v25);
    if (v17)
    {
      v18 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v18, 2, "%s::%s: error while trying to read the coredump 0x%x\n");
    }

    else
    {
      if (v25 != extraLength)
      {
        v19 = ACFULogging::getLogInstance(v17);
        ACFULogging::handleMessage(v19, 3, "%s::%s: coredump size mismatch, receivedSize %zu, expected size %u\n", "RoseTransport", "collectCoreDump", v25, extraLength);
      }

      v20 = CFStringCreateWithFormat(v4, 0, v15, kRoseCoreToCoreDumpKey[v2]);
      if (v20)
      {
        v21 = v20;
        ACFUDiagnostics::addItem();
        CFRelease(v8);
        v8 = v21;
      }

      else
      {
        v22 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v22, 2, "%s::%s: could create coredump filename string\n");
      }
    }

    CFRelease(v8);
LABEL_19:
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v23 = *(v1 + 10);
  *(v1 + 10) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  result = *(v1 + 11);
  *(v1 + 11) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void RoseTransport::collectIOReport(RoseTransport *this)
{
  v1 = IOReportCopyAllChannels();
  if (!v1)
  {
    RoseTransport::collectIOReport(0);
    return;
  }

  v2 = v1;
  v3 = IOReportSelectChannelsInGroup();
  if (v3)
  {
    RoseTransport::collectIOReport(v3);
  }

  else
  {
    ChannelCount = IOReportGetChannelCount();
    LogInstance = ACFULogging::getLogInstance(ChannelCount);
    if (ChannelCount <= 0)
    {
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No Channels found\n", "RoseTransport", "collectIOReport");
    }

    else
    {
      ACFULogging::handleMessage(LogInstance, 3, "%s::%s: %d IOReport Channels found\n", "RoseTransport", "collectIOReport", ChannelCount);
      Subscription = IOReportCreateSubscription();
      if (Subscription)
      {
        v7 = Subscription;
        v8 = IOReportGetChannelCount();
        v9 = v8;
        if (v8 < 1 || v8 > ChannelCount)
        {
          RoseTransport::collectIOReport(v8);
          Mutable = 0;
          Samples = 0;
        }

        else
        {
          if (v8 < ChannelCount)
          {
            v10 = ACFULogging::getLogInstance(v8);
            ACFULogging::handleMessage(v10, 3, "%s::%s: subscribed channel count: %d less than desired channel count: %d\n", "RoseTransport", "collectIOReport", v9, ChannelCount);
          }

          Samples = IOReportCreateSamples();
          if (Samples)
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
            if (Mutable)
            {
              v13 = IOReportIterate();
              if (v13)
              {
                v14 = v13;
                v15 = ACFULogging::getLogInstance(v13);
                ACFULogging::handleMessage(v15, 2, "%s::%s: IOReportIterate retVal: 0x%x\n", "RoseTransport", "collectIOReport", v14);
              }

              if (CFArrayGetCount(Mutable))
              {
                ACFUDiagnostics::addItem();
              }
            }

            else
            {
              RoseTransport::collectIOReport(0);
            }
          }

          else
          {
            RoseTransport::collectIOReport(0);
            Mutable = 0;
          }
        }

        CFRelease(v7);
        goto LABEL_16;
      }

      RoseTransport::collectIOReport(0);
    }
  }

  Samples = 0;
  Mutable = 0;
LABEL_16:
  CFRelease(v2);
  if (Samples)
  {
    CFRelease(Samples);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t ___ZN13RoseTransport15collectIOReportEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = IOReportSampleCopyDescription();
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 32), v3);
    CFRelease(v4);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: IOReportSampleCopyDescription() failed\n", "RoseTransport", "collectIOReport_block_invoke");
  }

  return 0;
}

uint64_t RoseTransport::getDebugInfo(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 1;
  if (!*(a1 + 8))
  {
    RoseTransport::getDebugInfo(a1);
    return 3000;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    RoseTransport::getDebugInfo(0);
    return 3000;
  }

  v6 = Mutable;
  v7 = (*(**(a1 + 32) + 256))(*(a1 + 32), Mutable);
  if (v7)
  {
    RoseTransport::getDebugInfo(v7);
    v8 = 3015;
  }

  else
  {
    ACFUDiagnostics::addItem();
    v8 = (*(**(a1 + 32) + 312))(*(a1 + 32), &v11);
    LogInstance = ACFULogging::getLogInstance(v8);
    if (v8)
    {
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get firmware state (ret: 0x%08x)\n", "RoseTransport", "getDebugInfo", v8);
      v8 = 3000;
    }

    else
    {
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: current firmware state: %d\n", "RoseTransport", "getDebugInfo", v11);
      if (a3)
      {
        RoseTransport::waitForFatalCrashCB(a1);
        *(a1 + 72) = 0;
        RoseTransport::collectCrashLogs(a1);
        RoseTransport::collectCoreDump(a1);
        RoseTransport::collectFirmwareLogs(a1);
        RoseTransport::collectIOReport(a1);
        v8 = 0;
      }
    }
  }

  CFRelease(v6);
  return v8;
}

uint64_t RoseTransport::waitForFatalCrashCB(RoseTransport *this)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1EA07A8;
  v5[3] = v5;
  v2 = ACFUSynchronize::Syncher::wait();
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  if ((v2 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(result);
    result = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: crash event timeout\n", "RoseTransport", "waitForFatalCrashCB");
    if ((*(this + 72) & 1) == 0)
    {
      result = RoseTransport::triggerCrashLog(this);
      if (result)
      {
        return RoseTransport::waitForFatalCrashCB(this);
      }
    }
  }

  return result;
}

void sub_2980CD710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RoseTransport::triggerCrashLog(RoseTransport *this)
{
  v2 = (*(**(this + 4) + 352))(*(this + 4));
  LogInstance = ACFULogging::getLogInstance(v2);
  if (v2)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error while trying to trigger a crashlog: 0x%x\n", "RoseTransport", "triggerCrashLog", v2);
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: successfully triggered fatal crashlog\n", "RoseTransport", "triggerCrashLog");
    *(this + 72) = 1;
  }

  return v2 == 0;
}

ACFULogging *RoseTransport::crashHandler(ACFULogging *result, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (*(a2 + 60))
    {
      LogInstance = ACFULogging::getLogInstance(result);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Crash log is fatal\n", "RoseTransport", "crashHandler");
      v4[0] = &unk_2A1EA0828;
      v4[3] = v4;
      ACFUSynchronize::Syncher::notify();
      return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
    }
  }

  else
  {
    v3 = ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage(v3, 2, "%s::%s: descriptor is null\n", "RoseTransport", "crashHandler");
  }

  return result;
}

void sub_2980CD8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::reset(RoseCapabilities **this)
{
  v2 = RoseCapabilities::supportsRTKitIOConfig(this[13]);
  if (v2)
  {
    v2 = RoseTransport::applyResetGlitchWorkaround(this);
    if ((v2 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v2);
      v2 = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to apply reset glitch workaround, proceeding with reset anyway\n", "RoseTransport", "reset");
    }
  }

  v4 = ACFULogging::getLogInstance(v2);
  ACFULogging::handleMessage(v4, 3, "%s::%s: resetting chip\n", "RoseTransport", "reset");
  v5 = (*(*this[4] + 112))(this[4]);
  v6 = ACFULogging::getLogInstance(v5);
  if (v5)
  {
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to reset chip: 0x%08x\n", "RoseTransport", "reset", v5);
    return 3014;
  }

  else
  {
    ACFULogging::handleMessage(v6, 3, "%s::%s: chip reset successful\n", "RoseTransport", "reset");
    return 0;
  }
}

ACFULogging *RoseTransport::applyResetGlitchWorkaround(RoseTransport *this)
{
  v13 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Attempting to apply reset glitch workaround\n", "RoseTransport", "applyResetGlitchWorkaround");
  v3 = RoseCommand::create(0, 112, 0, 1);
  v11 = 0;
  v4 = RoseTransport::sendRoseCommand(this, v3, &__ns, &v11, 0x100000096);
  v5 = v4;
  if (v4)
  {
    __ns.__rep_ = 70000000;
    std::this_thread::sleep_for (&__ns);
    v7 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v7, 0, "%s::%s: Applied reset glitch workaround successfully\n");
  }

  else
  {
    v10 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v10, 2, "%s::%s: Failed to apply reset glitch workaround\n");
  }

  RoseCommand::~RoseCommand(v3);
  operator delete(v8);
  return v5;
}

void sub_2980CDAD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    RoseCommand::~RoseCommand(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ACFULogging *RoseTransport::getRoseDebugInfoDict(RoseTransport *this, __CFDictionary *a2)
{
  if (a2)
  {
    v2 = (*(**(this + 4) + 256))(*(this + 4));
    v3 = v2;
    if (v2)
    {
      RoseTransport::getRoseDebugInfoDict(v2);
    }
  }

  else
  {
    RoseTransport::getRoseDebugInfoDict(this);
    return 3758097084;
  }

  return v3;
}

uint64_t RoseTransport::getCapabilities@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t RoseTransport::eventHandler(RoseTransport *this, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = operator new(0x20uLL);
  *v6 = &unk_2A1EA08B8;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = a3;
  v9 = v6;
  ACFUSynchronize::Syncher::notify();
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
}

void sub_2980CDC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoseTransport::sendRoseCommand(uint64_t **a1, RoseCommand *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 0;
  return RoseTransport::sendRoseCommand(a1, a2, v5, &v4, a3);
}