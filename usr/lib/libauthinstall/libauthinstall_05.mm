uint64_t *std::map<ImageType_t,unsigned short>::at(uint64_t a1, int *a2)
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
      v4 = *(v2 + 7);
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
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL SERestoreInfo::IcefallDeliveryObject::matchID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  return v2 == *(a2 + 8) - v3 && memcmp(*(a1 + 96), v3, v2) == 0;
}

double SERestoreInfo::IcefallFirmware::makeDeliveryObject@<D0>(DERItem *a1@<X1>, _OWORD *a2@<X8>)
{
  _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21IcefallDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v39);
  v4 = DERParseSequenceContent(a1, 0x16u, &IcefallFirmwareDERSpec::DeliveryObjectItemSpec, v16, 0x160uLL);
  if (v4)
  {
    v12 = v4;
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v15, "Fail to parse IcefallFW per DeliveryObjectItemSpec.");
    v14 = SERestoreInfo::SEException::SEException(exception, &v15, v12, @"libDERErrorDomain");
  }

  if (v16[1] != 2 || (v5 = v22) != 0 && v23 > 1 || *v16[0] || *(v16[0] + 1) < 7u || v18 != 32 || (v6 = v17) == 0 || v20 != 32 || (v7 = v19) == 0 || v25[1] != 16 || !v25[0] || v28[1] != 16 || !v28[0] || v35[1] != 16 || !v35[0] || v26[1] != 2 || !v26[0] || v29[1] != 2 || !v29[0] || v36[1] != 2 || !v36[0] || v33[1] && v33[0] && (v31[1] != 16 || !v31[0] || v32[1] != 2 || !v32[0]))
  {
    v10 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v15, "Fail to validate delivery object.");
    v11 = SERestoreInfo::SEException::SEException(v10, &v15, 15, @"SEUpdaterErrorDomain");
  }

  v8 = v39;
  *(v39 + 80) = *v21 == 0;
  *(v8 + 96) = v7;
  *(v8 + 104) = 32;
  *(v8 + 128) = v6;
  *(v8 + 136) = 32;
  if (v5 && v23)
  {
    *(v8 + 81) = *v5;
  }

  SERestoreInfo::IcefallDeliveryObject::addMac(v8, 0, v25);
  SERestoreInfo::IcefallDeliveryObject::addImageVersion(v39, 0, v26);
  SERestoreInfo::IcefallDeliveryObject::addMac(v39, 4, v28);
  SERestoreInfo::IcefallDeliveryObject::addImageVersion(v39, 4, v29);
  SERestoreInfo::IcefallDeliveryObject::addMac(v39, 2, v35);
  SERestoreInfo::IcefallDeliveryObject::addImageVersion(v39, 2, v36);
  if (v31[0])
  {
    SERestoreInfo::IcefallDeliveryObject::addMac(v39, 3, v31);
    SERestoreInfo::IcefallDeliveryObject::addImageVersion(v39, 3, v32);
  }

  SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 6, &v24);
  SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 8, &v38);
  if (v34)
  {
    SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 7, &v34);
  }

  SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 0, &v27);
  SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 4, &v30);
  SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 2, &v37);
  if (v33[0])
  {
    SERestoreInfo::IcefallDeliveryObject::addApdu(v39, 3, v33);
  }

  result = *&v39;
  *a2 = v39;
  return result;
}

void sub_298502368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **SERestoreInfo::IcefallDeliveryObject::addImageVersion(uint64_t a1, int a2, __int16 **a3)
{
  v11 = a2;
  if (a3[1] != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Assertion: ");
    v6 = std::string::append(&v8, "item.length == sizeof(uint16_t)");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v9);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v3 = **a3;
  *&v9 = &v11;
  result = std::__tree<std::__value_type<ImageType_t,unsigned short>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,unsigned short>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,unsigned short>>>::__emplace_unique_key_args<ImageType_t,std::piecewise_construct_t const&,std::tuple<ImageType_t const&>,std::tuple<>>(a1 + 56, &v11, &std::piecewise_construct, &v9);
  *(result + 16) = v3;
  return result;
}

void sub_298502498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void SERestoreInfo::IcefallDeliveryObject::~IcefallDeliveryObject(SERestoreInfo::IcefallDeliveryObject *this)
{
  *this = &unk_2A1EE9078;
  SERestoreInfo::BLOB::~BLOB((this + 120));
  SERestoreInfo::BLOB::~BLOB((this + 88));
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_2A1EE9078;
  SERestoreInfo::BLOB::~BLOB((this + 120));
  SERestoreInfo::BLOB::~BLOB((this + 88));
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::destroy(this + 8, *(this + 2));

  operator delete(this);
}

void SERestoreInfo::IcefallDeliveryObject::print(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t **std::__tree<std::__value_type<ImageType_t,unsigned short>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,unsigned short>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,unsigned short>>>::__emplace_unique_key_args<ImageType_t,std::piecewise_construct_t const&,std::tuple<ImageType_t const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 7);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x28uLL);
    v11[7] = **a4;
    *(v11 + 16) = 0;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::destroy(a1, a2[1]);
    SERestoreInfo::BLOB::~BLOB((a2 + 5));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::destroy(a1, a2[1]);
    v4 = (a2 + 5);
    std::vector<SERestoreInfo::ApduBLOB>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::vector<SERestoreInfo::ApduBLOB>::__destroy_vector::operator()[abi:ne200100](SERestoreInfo::BLOB ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SERestoreInfo::ApduBLOB>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SERestoreInfo::ApduBLOB>::__base_destruct_at_end[abi:ne200100](uint64_t a1, SERestoreInfo::BLOB *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = (v4 - 64);
      SERestoreInfo::BLOB::~BLOB((v4 - 32));
      SERestoreInfo::BLOB::~BLOB(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t **std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::__emplace_unique_key_args<SERestoreInfo::ApduType_t,std::piecewise_construct_t const&,std::tuple<SERestoreInfo::ApduType_t const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x40uLL);
    v11[8] = **a4;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    *(v11 + 5) = 0;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t std::vector<SERestoreInfo::ApduBLOB>::__emplace_back_slow_path<SERestoreInfo::ApduBLOB>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::ApduBLOB>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v18 = v8;
  v19 = v9;
  *(&v20 + 1) = &v8[64 * v7];
  *v9 = &unk_2A1EE8E30;
  v10 = *(a2 + 24);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 3) = v10;
  *(v9 + 4) = &unk_2A1EE8E30;
  v11 = *(a2 + 40);
  *(v9 + 7) = *(a2 + 56);
  *(v9 + 40) = v11;
  *&v20 = v9 + 64;
  v12 = a1[1];
  v13 = &v9[*a1 - v12];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<SERestoreInfo::ApduBLOB>::~__split_buffer(&v18);
  return v17;
}

void sub_298502A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<SERestoreInfo::ApduBLOB>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::ApduBLOB>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 58)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(a2 << 6);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a4;
    v7 = a2;
    do
    {
      *a4 = &unk_2A1EE8E30;
      v8 = *(v7 + 24);
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = v8;
      *(a4 + 32) = &unk_2A1EE8E30;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      v7 += 64;
      a4 += 64;
      v6 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      SERestoreInfo::BLOB::~BLOB((v5 + 32));
      SERestoreInfo::BLOB::~BLOB(v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::ApduBLOB>,SERestoreInfo::ApduBLOB*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = (v1 - 64);
      SERestoreInfo::BLOB::~BLOB((v1 - 32));
      SERestoreInfo::BLOB::~BLOB(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<SERestoreInfo::ApduBLOB>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SERestoreInfo::ApduBLOB>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SERestoreInfo::ApduBLOB>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 64);
    *(a1 + 16) = i - 64;
    SERestoreInfo::BLOB::~BLOB((i - 32));
    SERestoreInfo::BLOB::~BLOB(v5);
  }
}

uint64_t **std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::__emplace_unique_key_args<ImageType_t,std::piecewise_construct_t const&,std::tuple<ImageType_t const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x48uLL);
    v13[1] = a1;
    v13[2] = 1;
    v11[8] = **a4;
    *(v11 + 5) = &unk_2A1EE8E30;
    *(v11 + 8) = 0;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v9, v7, v11);
    v13[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,void *>>>>::~unique_ptr[abi:ne200100](v13);
    return v11;
  }

  return v9;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      SERestoreInfo::BLOB::~BLOB((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21IcefallDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xB0uLL);
  _ZNSt3__120__shared_ptr_emplaceIN13SERestoreInfo21IcefallDeliveryObjectENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
}

double _ZNSt3__120__shared_ptr_emplaceIN13SERestoreInfo21IcefallDeliveryObjectENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1EE90D0;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 24) = &unk_2A1EE9078;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0u;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 1;
  *(a1 + 112) = &unk_2A1EE8E30;
  *(a1 + 144) = &unk_2A1EE8E30;
  *(a1 + 168) = 0;
  return result;
}

void std::__shared_ptr_emplace<SERestoreInfo::IcefallDeliveryObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE90D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t SERestoreInfo::SEFirmwareBase::get(SERestoreInfo::SEFirmwareBase *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 2), a2 >= ((*(this + 3) - v2) >> 5)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Assertion: ");
    v5 = std::string::append(&v7, "index>=0 && index<fObjs.size()");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v8);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = *(v2 + 32 * a2 + 8);
  return (*(*this + 24))(this, &v8);
}

void sub_29850308C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t SERestoreInfo::SEFirmwareBase::getFormatVer(SERestoreInfo::SEFirmwareBase *this, const __CFData *a2)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Assertion: ");
    v7 = std::string::append(&v19, "source");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17 = v7->__r_.__value_.__r.__words[2];
    v16 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v16);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v18 = -1;
  v15[0] = CFDataGetBytePtr(this);
  v15[1] = CFDataGetLength(this);
  v3 = DERParseSequence(v15, 2u, &SEFirmwareDERSpec::SEFirmwareItemSpec, &v16, 0x20uLL);
  if (v3)
  {
    v9 = v3;
    v10 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, " Fail to parse fw per SEFirmwareItemSpec");
    v11 = SERestoreInfo::SEException::SEException(v10, &v19, v9, @"libDERErrorDomain");
  }

  v4 = DERParseInteger(&v16, &v18);
  if (v4)
  {
    v12 = v4;
    v13 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Cannot parse SEFirmware.version.");
    v14 = SERestoreInfo::SEException::SEException(v13, &v19, v12, @"libDERErrorDomain");
  }

  return v18;
}

void sub_2985032A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SERestoreInfo::SEFirmwareBase *SERestoreInfo::SEFirmwareBase::SEFirmwareBase(SERestoreInfo::SEFirmwareBase *this, CFDataRef theData)
{
  *this = &unk_2A1EE9120;
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  v39 = 0;
  v37[0] = CFDataGetBytePtr(theData);
  v37[1] = CFDataGetLength(theData);
  v5 = DERParseSequence(v37, 2u, &SEFirmwareDERSpec::SEFirmwareItemSpec, v40, 0x20uLL);
  if (v5)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Fail to parse SEFW.");
    v23 = SERestoreInfo::SEException::SEException(exception, &v42, v5, @"libDERErrorDomain");
  }

  __val = 0;
  v6 = DERParseInteger(v40, &__val);
  if (v6)
  {
    v24 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Failed to parse SEFirmware.version.");
    v25 = SERestoreInfo::SEException::SEException(v24, &v42, v6, @"libDERErrorDomain");
  }

  if (__val >= 2)
  {
    v26 = __cxa_allocate_exception(0x48uLL);
    std::to_string(&v32, __val);
    v27 = std::string::insert(&v32, 0, "Unsupported firmware version: ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v43 = v27->__r_.__value_.__r.__words[2];
    v42 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = SERestoreInfo::SEException::SEException(v26, &v42, 7, @"SEUpdaterErrorDomain");
  }

  v7 = DERDecodeSeqInit(&v41, &v39, v38);
  if (v7)
  {
    v30 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Fail to DERDecodeSeqInit firmwareArray.");
    v31 = SERestoreInfo::SEException::SEException(v30, &v42, v7, @"libDERErrorDomain");
  }

  while (!v7)
  {
    v7 = DERDecodeSeqNext(v38, &v34);
    if (!v7)
    {
      v32.__r_.__value_.__r.__words[0] = &unk_2A1EE8E30;
      *&v32.__r_.__value_.__r.__words[1] = v35;
      v33 = 0;
      v8 = *(this + 3);
      v9 = *(this + 4);
      if (v8 >= v9)
      {
        v12 = (v8 - *v4) >> 5;
        v13 = v12 + 1;
        if ((v12 + 1) >> 59)
        {
          std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - *v4;
        if (v14 >> 4 > v13)
        {
          v13 = v14 >> 4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v45 = v4;
        if (v15)
        {
          v16 = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(v4, v15);
        }

        else
        {
          v16 = 0;
        }

        v17 = &v16[32 * v12];
        *&v42 = v16;
        *(&v42 + 1) = v17;
        v44 = &v16[32 * v15];
        *v17 = &unk_2A1EE8E30;
        v18 = *&v32.__r_.__value_.__r.__words[1];
        *(v17 + 3) = v33;
        *(v17 + 8) = v18;
        v43 = v17 + 32;
        std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(v4, &v42);
        v11 = *(this + 3);
        std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(&v42);
      }

      else
      {
        *v8 = &unk_2A1EE8E30;
        v10 = *&v32.__r_.__value_.__r.__words[1];
        *(v8 + 24) = v33;
        *(v8 + 8) = v10;
        v11 = v8 + 32;
      }

      *(this + 3) = v11;
      SERestoreInfo::BLOB::~BLOB(&v32);
    }
  }

  if (v7 != 1)
  {
    v20 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v42, "Fail to DERDecodeSeqNext firmwareArray.");
    v21 = SERestoreInfo::SEException::SEException(v20, &v42, v7, @"libDERErrorDomain");
  }

  *(this + 1) = CFRetain(theData);
  return this;
}

void sub_29850375C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 - 105) < 0)
  {
    operator delete(*(v26 - 128));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void SERestoreInfo::SEFirmwareBase::updateMeasurementDict(SERestoreInfo::SEFirmwareBase *this, uint64_t a2, uint64_t a3)
{
  v3 = (*(this + 3) - *(this + 2)) >> 5;
  if (!v3)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    SERestoreInfo::SEFirmwareBase::get(this, v8);
    if (!*a3)
    {
      goto LABEL_7;
    }

    v9 = v16;
    (*(**a3 + 16))(__p);
    v10 = (*(*v9 + 32))(v9, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v10)
    {
LABEL_7:
      __p[0] = 0;
      (*(*v16 + 16))(v16, a2, __p);
      if (__p[0])
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v12 = SERestoreInfo::SEException::SEException(exception, __p[0]);
      }

      v7 = 1;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    ++v8;
  }

  while (v3 != v8);
  if ((v7 & 1) == 0)
  {
LABEL_15:
    v13 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Cannot found any matched delivery object");
    v14 = SERestoreInfo::SEException::SEException(v13, __p, 24, @"SEUpdaterErrorDomain");
  }
}

void sub_2985039EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFMutableDictionaryRef SEUpdaterGetTagsLogSink(SERestoreInfo::SERestoreInfoLog *a1, void (*a2)(void *, const char *), void *a3, __CFError **a4)
{
  v8 = SERestoreInfo::SERestoreInfoLog::get(a1);
  SERestoreInfo::SERestoreInfoLog::registerLogSink(v8, a2, a3);

  return SEUpdaterGetTags(a1, a4);
}

CFMutableDictionaryRef SEUpdaterGetTags(SERestoreInfo::SERestoreInfoLog *a1, __CFError **a2)
{
  v4 = SERestoreInfo::SERestoreInfoLog::get(a1);
  std::string::basic_string[abi:ne200100]<0>(&v53, "HelsinkiRestore-57.2.1");
  if (v54 >= 0)
  {
    v5 = &v53;
  }

  else
  {
    v5 = v53;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v4, 2, "SEUpdaterGetTags", "Project version%s: %s", "", v5);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  v7 = SERestoreInfo::SERestoreInfoLog::get(Value);
  getCFTypeDescription(&v53, Value);
  if (v54 >= 0)
  {
    v8 = &v53;
  }

  else
  {
    v8 = v53;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v7, 2, "SEUpdaterGetTags", "[in] %s %s", "kSEOptionDeviceInfo", v8);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
    if (!Value)
    {
      goto LABEL_26;
    }
  }

  else if (!Value)
  {
    goto LABEL_26;
  }

  v9 = CFGetTypeID(Value);
  if (v9 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    Mutable = CFStringCreateMutable(0, 2 * Length);
    if (Length >= 1)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        CFStringAppendFormat(Mutable, 0, @"%02x", BytePtr[v13]);
        v13 = v14;
      }

      while (Length > v14++);
    }

    CStringPtr = CFStringGetCStringPtr(Mutable, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
    }

    else
    {
      v17 = "null value";
    }

    v18 = std::string::basic_string[abi:ne200100]<0>(&v53, v17);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = SERestoreInfo::SERestoreInfoLog::get(v18);
    v20 = &v53;
    if (v54 < 0)
    {
      v20 = v53;
    }

    SERestoreInfo::SERestoreInfoLog::printLog(v19, 2, "SEUpdaterGetTags", "[in] %s 0x%s", "SEManifest", v20);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }
  }

LABEL_26:
  v52 = 0;
  v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v21)
  {
    v37 = std::string::basic_string[abi:ne200100]<0>(&v50, "Cannot allocate memory for outputDict");
    CFError = SERestoreInfo::CreateCFError(v37, 3, 0, @"SEUpdaterErrorDomain");
    v52 = CFError;
    if (v51 < 0)
    {
      v38 = v50;
LABEL_70:
      operator delete(v38);
    }

LABEL_71:
    v24 = 0;
LABEL_74:
    v27 = 0;
LABEL_41:
    v32 = v52;
    if (a2 && v52)
    {
      CFError = CFRetain(v52);
      *a2 = CFError;
      v32 = v52;
    }

    if (v21 && v32)
    {
      CFRelease(v21);
      v21 = 0;
      v32 = v52;
    }

    v33 = SERestoreInfo::SERestoreInfoLog::get(CFError);
    if (v32)
    {
      getCFTypeDescription(&v53, v52);
      if (v54 >= 0)
      {
        v34 = &v53;
      }

      else
      {
        v34 = v53;
      }

      SERestoreInfo::SERestoreInfoLog::printLog(v33, 0, "SEUpdaterGetTags", "%s", v34);
    }

    else
    {
      getCFTypeDescription(&v53, v21);
      if (v54 >= 0)
      {
        v35 = &v53;
      }

      else
      {
        v35 = v53;
      }

      SERestoreInfo::SERestoreInfoLog::printLog(v33, 2, "SEUpdaterGetTags", "[out] %s", v35);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if (v52)
    {
      CFRelease(v52);
      v52 = 0;
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    return v21;
  }

  v22 = *MEMORY[0x29EDB8ED8];
  v23 = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!v23)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Cannot allocate memory for tagsInBI");
    CFError = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
    v52 = CFError;
    if (v49 < 0)
    {
      v38 = __p[0];
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v24 = v23;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v46, "options is nullptr");
    CFError = SERestoreInfo::CreateCFError(v46, 2, 0, @"SEUpdaterErrorDomain");
    v52 = CFError;
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    goto LABEL_74;
  }

  SERestoreInfo::makeSERestoreInfo(&v45, a1);
  if (v52)
  {
    v27 = 0;
    v30 = 4;
  }

  else
  {
    if (!v45)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v44, "Assertion: ");
      v40 = std::string::append(&v44, "restoreInfo");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v54 = v40->__r_.__value_.__r.__words[2];
      v53 = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](exception, &v53);
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    (*(*v45 + 16))(&v53);
    v25 = v53;
    if (*(&v53 + 1) != v53)
    {
      v26 = 0;
      do
      {
        CFArrayAppendValue(v24, *(v25 + 8 * v26++));
        v25 = v53;
      }

      while (v26 < (*(&v53 + 1) - v53) >> 3);
    }

    CFDictionaryAddValue(v21, @"BuildIdentityTags", v24);
    v27 = CFArrayCreateMutable(v22, 0, MEMORY[0x29EDB9000]);
    if (v27)
    {
      ChipID = SERestoreInfo::SERestoreInfoBase::getChipID(v45);
      TSSResponseTicketTag = SERestoreInfo::SERestoreInfoBase::getTSSResponseTicketTag(ChipID);
      CFArrayAppendValue(v27, TSSResponseTicketTag);
      CFDictionaryAddValue(v21, @"ResponseTags", v27);
      v30 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "Cannot allocate memory for tagsInTssResponse");
      v52 = SERestoreInfo::CreateCFError(v42, 3, 0, @"SEUpdaterErrorDomain");
      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      v30 = 4;
    }

    if (v53)
    {
      *(&v53 + 1) = v53;
      operator delete(v53);
    }
  }

  CFError = v45;
  v45 = 0;
  if (CFError)
  {
    CFError = (*(*CFError + 8))(CFError);
  }

  if ((v30 | 4) == 4)
  {
    goto LABEL_41;
  }

  return v21;
}

void sub_2985040E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v42 = a2;
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v44 = *(v41 - 96);
  if (v44)
  {
    *(v41 - 88) = v44;
    operator delete(v44);
  }

  v45 = a29;
  a29 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v42 == 2)
  {
    v46 = __cxa_begin_catch(a1);
    *(v41 - 104) = SERestoreInfo::SEException::CreateCFError(v46);
  }

  else
  {
    if (v42 != 1)
    {
      _Unwind_Resume(a1);
    }

    v47 = __cxa_begin_catch(a1);
    v48 = (*(*v47 + 16))(v47);
    std::string::basic_string[abi:ne200100]<0>(&a11, v48);
    *(v41 - 104) = SERestoreInfo::CreateCFError(&a11, 31, 0, @"SEUpdaterErrorDomain");
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x298503E28);
}

void sub_2985042EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x298504188);
}

void getCFTypeDescription(void *__return_ptr a1@<X8>, void *a2@<X0>)
{
  if (a2)
  {
    v4 = CFGetTypeID(a2);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFErrorCopyDescription(a2);
    }

    else
    {
      v5 = CFCopyDescription(a2);
    }

    v6 = v5;
    CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
    if (CStringPtr)
    {
      v8 = CStringPtr;
    }

    else
    {
      v8 = "null description";
    }

    std::string::basic_string[abi:ne200100]<0>(a1, v8);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "null value");
  }
}

void sub_2985043CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *SEUpdaterCreateRequestLogSink(SERestoreInfo::SERestoreInfoLog *a1, void (*a2)(void *, const char *), void *a3, void *a4)
{
  v8 = SERestoreInfo::SERestoreInfoLog::get(a1);
  SERestoreInfo::SERestoreInfoLog::registerLogSink(v8, a2, a3);

  return SEUpdaterCreateRequest(a1, a4);
}

void *SEUpdaterCreateRequest(SERestoreInfo::SERestoreInfoLog *a1, void *a2)
{
  v4 = SERestoreInfo::SERestoreInfoLog::get(a1);
  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  getCFTypeDescription(&v38, Value);
  if (v39 >= 0)
  {
    v6 = &v38;
  }

  else
  {
    v6 = v38;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v4, 2, "SEUpdaterCreateRequest", "[in] %s %s", "kSEOptionDeviceInfo", v6);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v8 = SERestoreInfo::SERestoreInfoLog::get(v7);
  v9 = CFDictionaryGetValue(a1, @"FirmwareData");
  getCFTypeDescription(&v38, v9);
  if (v39 >= 0)
  {
    v10 = &v38;
  }

  else
  {
    v10 = v38;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v8, 2, "SEUpdaterCreateRequest", "[in] %s %s", "kSEOptionFirmwareData", v10);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v12 = SERestoreInfo::SERestoreInfoLog::get(v11);
  v13 = CFDictionaryGetValue(a1, @"BuildIdentity");
  getCFTypeDescription(&v38, v13);
  if (v39 >= 0)
  {
    v14 = &v38;
  }

  else
  {
    v14 = v38;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v12, 2, "SEUpdaterCreateRequest", "[in] %s %s", "kSEOptionBuildIdentity", v14);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v15 = CFDictionaryGetValue(a1, @"SharedInfo");
  if (v15)
  {
    v16 = CFDictionaryGetValue(v15, @"Rose");
    v17 = SERestoreInfo::SERestoreInfoLog::get(v16);
    getCFTypeDescription(&v38, v16);
    v18 = v39 >= 0 ? &v38 : v38;
    SERestoreInfo::SERestoreInfoLog::printLog(v17, 2, "SEUpdaterCreateRequest", "[in] %s %s", "kSEOptionRoseInfo", v18);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }
  }

  v37 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "options is nullptr");
    CFError = SERestoreInfo::CreateCFError(v35, 2, 0, @"SEUpdaterErrorDomain");
    v37 = CFError;
    if (v36 < 0)
    {
      v27 = *v35;
LABEL_54:
      operator delete(v27);
    }

LABEL_55:
    v20 = 0;
    goto LABEL_32;
  }

  if (!CFDictionaryContainsKey(a1, @"FirmwareData") && !CFDictionaryContainsKey(a1, @"BuildIdentity"))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "fwData and buildIdentity are nullptr");
    CFError = SERestoreInfo::CreateCFError(__p, 2, 0, @"SEUpdaterErrorDomain");
    v37 = CFError;
    if (v34 < 0)
    {
      v27 = __p[0];
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  SERestoreInfo::makeSERestoreInfo(&v32, a1);
  if (v37)
  {
    goto LABEL_29;
  }

  if (!v32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v31, "Assertion: ");
    v29 = std::string::append(&v31, "restoreInfo");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v39 = v29->__r_.__value_.__r.__words[2];
    v38 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v38);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  RequestDict = SERestoreInfo::SERestoreInfoBase::getRequestDict(v32);
  if (!RequestDict)
  {
LABEL_29:
    v20 = 0;
  }

  else
  {
    v20 = CFRetain(RequestDict);
  }

  CFError = v32;
  v32 = 0;
  if (CFError)
  {
    CFError = (*(*CFError + 8))(CFError);
  }

LABEL_32:
  v22 = v37;
  if (a2 && v37)
  {
    CFError = CFRetain(v37);
    *a2 = CFError;
    v22 = v37;
  }

  v23 = SERestoreInfo::SERestoreInfoLog::get(CFError);
  if (v22)
  {
    getCFTypeDescription(&v38, v37);
    if (v39 >= 0)
    {
      v24 = &v38;
    }

    else
    {
      v24 = v38;
    }

    SERestoreInfo::SERestoreInfoLog::printLog(v23, 0, "SEUpdaterCreateRequest", "%s", v24);
  }

  else
  {
    getCFTypeDescription(&v38, v20);
    if (v39 >= 0)
    {
      v25 = &v38;
    }

    else
    {
      v25 = v38;
    }

    SERestoreInfo::SERestoreInfoLog::printLog(v23, 2, "SEUpdaterCreateRequest", "[out] %s", v25);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v20;
}

void sub_298504A40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x298504900);
}

uint64_t SEUpdaterCopyFirmwareLogSink(SERestoreInfo::SERestoreInfoLog *a1, void (*a2)(void *, const char *), void *a3, CFTypeRef *a4)
{
  v8 = SERestoreInfo::SERestoreInfoLog::get(a1);
  SERestoreInfo::SERestoreInfoLog::registerLogSink(v8, a2, a3);

  return SEUpdaterCopyFirmware(a1, a4);
}

uint64_t SEUpdaterCopyFirmware(SERestoreInfo::SERestoreInfoLog *a1, CFTypeRef *a2)
{
  v60 = *MEMORY[0x29EDCA608];
  v4 = SERestoreInfo::SERestoreInfoLog::get(a1);
  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  getCFTypeDescription(&v58, Value);
  if (SHIBYTE(v59) >= 0)
  {
    v6 = &v58;
  }

  else
  {
    v6 = v58;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v4, 2, "SEUpdaterCopyFirmware", "[in] %s %s", "kSEOptionDeviceInfo", v6);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v8 = SERestoreInfo::SERestoreInfoLog::get(v7);
  v9 = CFDictionaryGetValue(a1, @"FirmwareData");
  getCFTypeDescription(&v58, v9);
  if (SHIBYTE(v59) >= 0)
  {
    v10 = &v58;
  }

  else
  {
    v10 = v58;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v8, 2, "SEUpdaterCopyFirmware", "[in] %s %s", "kSEOptionFirmwareData", v10);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v12 = SERestoreInfo::SERestoreInfoLog::get(v11);
  v13 = CFDictionaryGetValue(a1, @"BuildIdentity");
  getCFTypeDescription(&v58, v13);
  if (SHIBYTE(v59) >= 0)
  {
    v14 = &v58;
  }

  else
  {
    v14 = v58;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v12, 2, "SEUpdaterCopyFirmware", "[in] %s %s", "kSEOptionBuildIdentity", v14);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v16 = SERestoreInfo::SERestoreInfoLog::get(v15);
  v17 = CFDictionaryGetValue(a1, @"BundlePath");
  getCFTypeDescription(&v58, v17);
  if (SHIBYTE(v59) >= 0)
  {
    v18 = &v58;
  }

  else
  {
    v18 = v58;
  }

  SERestoreInfo::SERestoreInfoLog::printLog(v16, 2, "SEUpdaterCopyFirmware", "[in] %s %s", "kSEOptionSourceBundlePath", v18);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v56 = 0;
  v57 = 0;
  CFError = 0;
  if (!a1)
  {
    v32 = std::string::basic_string[abi:ne200100]<0>(&v53, "options is nullptr");
    CFError = SERestoreInfo::CreateCFError(v32, 2, 0, @"SEUpdaterErrorDomain");
    if (v54 < 0)
    {
      operator delete(v53);
    }

    goto LABEL_39;
  }

  v19 = CFDictionaryGetValue(a1, @"FirmwareData");
  if (v19)
  {
    v56 = CFRetain(v19);
    if (v56)
    {
LABEL_39:
      v27 = SEUpdaterCopyFirmware_cold_2(a2, &CFError, &v56, &v58);
      v28 = v58;
      if (v27)
      {
        getCFTypeDescription(&v58, v56);
        if (SHIBYTE(v59) >= 0)
        {
          v29 = &v58;
        }

        else
        {
          v29 = v58;
        }

        SERestoreInfo::SERestoreInfoLog::printLog(v28, 2, "SEUpdaterCopyFirmware", "[out] %s", v29);
      }

      else
      {
        getCFTypeDescription(&v58, CFError);
        if (SHIBYTE(v59) >= 0)
        {
          v30 = &v58;
        }

        else
        {
          v30 = v58;
        }

        SERestoreInfo::SERestoreInfoLog::printLog(v28, 0, "SEUpdaterCopyFirmware", "%s", v30);
      }

      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58);
      }

      if (v57)
      {
        CFRelease(v57);
        v57 = 0;
      }

      if (CFError)
      {
        CFRelease(CFError);
      }

      return v56;
    }
  }

  else
  {
    v56 = 0;
  }

  SERestoreInfo::makeSERestoreInfo(&v52, a1);
  if (CFError)
  {
    goto LABEL_59;
  }

  if (!v52)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v34 = std::string::basic_string[abi:ne200100]<0>(v51, "Assertion: ");
    v35 = std::string::append(v34, "restoreInfo");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v59 = v35->__r_.__value_.__r.__words[2];
    v58 = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v58);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  (*(*v52 + 24))(&v58);
  v20 = *v58;
  *(&v58 + 1) = v58;
  operator delete(v58);
  v21 = 0;
  *&v58 = @"BuildIdentity";
  *(&v58 + 1) = v20;
  v59 = @"Info";
  v22 = a1;
  do
  {
    v22 = CFDictionaryGetValue(v22, *(&v58 + v21));
    if (!v22)
    {
      std::string::basic_string[abi:ne200100]<0>(v49, "Missing dict along the path");
      CFError = SERestoreInfo::CreateCFError(v49, 16, 0, @"SEUpdaterErrorDomain");
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      v31 = v49;
      goto LABEL_58;
    }

    v21 += 8;
  }

  while (v21 != 24);
  if (!CFDictionaryGetValue(v22, @"Path"))
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "Missing string for path key");
    CFError = SERestoreInfo::CreateCFError(v47, 16, 0, @"SEUpdaterErrorDomain");
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v31 = v47;
LABEL_58:
    operator delete(*v31);
    goto LABEL_59;
  }

  if (!CFDictionaryGetValue(a1, @"BundlePath"))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "Missing kSEOptionSourceBundlePath");
    CFError = SERestoreInfo::CreateCFError(v45, 16, 0, @"SEUpdaterErrorDomain");
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v31 = v45;
    goto LABEL_58;
  }

  v23 = AMSupportPlatformCopyURLWithAppendedComponent();
  if (v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v43, "Fail to run AMSupportPlatformCopyURLWithAppendedComponent");
    CFError = SERestoreInfo::CreateCFError(v43, v23, 0, @"libAmSupportErrorDomain");
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v31 = v43;
    goto LABEL_58;
  }

  if (!v57)
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "Fail to do AMSupportPlatformCopyURLWithAppendedComponent");
    CFError = SERestoreInfo::CreateCFError(v41, 3, 0, @"SEUpdaterErrorDomain");
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v31 = v41;
    goto LABEL_58;
  }

  DataFromFileURL = AMSupportCreateDataFromFileURL();
  if (DataFromFileURL)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "Fail to run AMSupportCreateDataFromFileURL");
    CFError = SERestoreInfo::CreateCFError(v39, DataFromFileURL, 0, @"libAmSupportErrorDomain");
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v31 = v39;
    goto LABEL_58;
  }

  if (v56)
  {
    v25 = 0;
    goto LABEL_38;
  }

  std::string::basic_string[abi:ne200100]<0>(v37, "fileData is nullptr");
  CFError = SERestoreInfo::CreateCFError(v37, 3, 0, @"SEUpdaterErrorDomain");
  if (v38 < 0)
  {
    v31 = v37;
    goto LABEL_58;
  }

LABEL_59:
  v25 = 4;
LABEL_38:
  result = SEUpdaterCopyFirmware_cold_1(&v52, v25);
  if ((result & 1) == 0)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_298505174(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v59 = a2;
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v61 = *(v58 - 152);
  *(v58 - 152) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v59 == 2)
  {
    v62 = __cxa_begin_catch(exception_object);
    *(v58 - 120) = SERestoreInfo::SEException::CreateCFError(v62);
    __cxa_end_catch();
  }

  else
  {
    if (v59 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v63 = __cxa_begin_catch(exception_object);
    v64 = (*(*v63 + 16))(v63);
    std::string::basic_string[abi:ne200100]<0>(&a11, v64);
    *(v58 - 120) = SERestoreInfo::CreateCFError(&a11, 31, 0, @"SEUpdaterErrorDomain");
    if (a16 < 0)
    {
      operator delete(a11);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x298504DE8);
}

BOOL SEUpdaterCopyFirmware_cold_1(uint64_t *a1, int a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return (a2 & 0xFFFFFFFB) != 0;
}

BOOL SEUpdaterCopyFirmware_cold_2(CFTypeRef *a1, void **a2, CFTypeRef *a3, void *a4)
{
  v8 = *a2;
  if (a1 && v8)
  {
    *a1 = CFRetain(v8);
    v8 = *a2;
  }

  if (v8 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
    v8 = *a2;
  }

  v9 = v8 == 0;
  *a4 = SERestoreInfo::SERestoreInfoLog::get(v8);
  return v9;
}

void *SERestoreInfo::SERestoreInfoBase::SERestoreInfoBase(void *a1, CFTypeRef cf, void *a3)
{
  *a1 = &unk_2A1EE9160;
  v4 = a3[1];
  a1[2] = *a3;
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = CFRetain(cf);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  a1[4] = Mutable;
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, "Cannot allocate request dict");
    v8 = SERestoreInfo::SEException::SEException(exception, &v9, 3, @"SEUpdaterErrorDomain");
  }

  return a1;
}

void sub_2985055B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 24);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::SERestoreInfoBase::~SERestoreInfoBase(SERestoreInfo::SERestoreInfoBase *this)
{
  *this = &unk_2A1EE9160;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t SERestoreInfo::SERestoreInfoBase::getChipID(SERestoreInfo::SERestoreInfoBase *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Assertion: ");
    v5 = std::string::append(&v7, "fDeviceInfo");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v8);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v2 = *(*v1 + 32);

  return v2();
}

void sub_298505750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__CFString *SERestoreInfo::SERestoreInfoBase::getTSSResponseTicketTag(SERestoreInfo::SERestoreInfoBase *this)
{
  v1 = kSETagResponseTicket;
  if (this <= 199)
  {
    if (this != 100 && this != 115)
    {
      goto LABEL_8;
    }
  }

  else if (this != 200 && this != 210 && this != 131601)
  {
LABEL_8:
    v1 = kSETagResponseTicketEC384;
  }

  return *v1;
}

uint64_t SERestoreInfo::SERestoreInfoBase::getRequestDict(SERestoreInfo::SERestoreInfoBase *this)
{
  v2 = *(this + 4);
  v3 = (*(**(this + 2) + 32))(*(this + 2));
  v4 = kSETagRequestTicket;
  if (v3 <= 199)
  {
    if (v3 != 100 && v3 != 115)
    {
LABEL_10:
      v4 = kSETagRequestTicketEC384;
    }
  }

  else if (v3 != 200 && v3 != 210 && v3 != 131601)
  {
    goto LABEL_10;
  }

  CFDictionaryAddValue(v2, *v4, *MEMORY[0x29EDB8F00]);
  (*(**(this + 2) + 24))(*(this + 2), *(this + 4), 1);
  v6 = CFDictionaryContainsKey(*(this + 1), @"FirmwareData");
  v7 = *(this + 1);
  if (v6)
  {
    Value = CFDictionaryGetValue(v7, @"FirmwareData");
    SERestoreInfo::makeSEFirmware(&context, Value, v9);
    v10 = context;
    v12 = *(this + 3);
    v11 = *(this + 4);
    v35 = *(this + 2);
    v36 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v10 + 16))(v10, v11, &v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v13 = context;
    *&context = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  else
  {
    if (!CFDictionaryContainsKey(v7, @"BuildIdentity"))
    {
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&context, "missing build identity");
      v31 = SERestoreInfo::SEException::SEException(exception, &context, 2, @"SEUpdaterErrorDomain");
    }

    v14 = CFDictionaryGetValue(*(this + 1), @"BuildIdentity");
    *&context = *(this + 4);
    (*(*this + 24))(&context + 1, this);
    v34 = (*(*this + 32))(this);
    CFDictionaryApplyFunction(v14, SERestoreInfo::_WalkThroughDict, &context);
    if (*(&context + 1))
    {
      v33 = *(&context + 1);
      operator delete(*(&context + 1));
    }
  }

  v15 = CFDictionaryGetValue(*(this + 1), @"SEAC");
  if (v15)
  {
    CFDictionaryAddValue(*(this + 4), @"SEAC", v15);
  }

  v16 = CFDictionaryGetValue(*(this + 1), @"SERS");
  if (v16)
  {
    CFDictionaryAddValue(*(this + 4), @"SERS", v16);
  }

  v17 = CFDictionaryGetValue(*(this + 1), @"SESA");
  if (v17)
  {
    CFDictionaryAddValue(*(this + 4), @"SESA", v17);
  }

  v18 = CFDictionaryGetValue(*(this + 1), @"SharedInfo");
  if (v18)
  {
    v19 = v18;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v19))
    {
      v21 = CFDictionaryGetValue(v19, @"Rose");
      if (v21)
      {
        v22 = v21;
        v23 = CFDictionaryGetValue(v21, @"SE,RapRTKitOS");
        if (v23)
        {
          v24 = v23;
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          CFDictionaryAddValue(Mutable, @"Digest", v24);
          CFDictionaryAddValue(*(this + 4), @"SE,RapRTKitOS", Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        v26 = CFDictionaryGetValue(v22, @"SE,RapSwBinDsp");
        if (v26)
        {
          v27 = v26;
          v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          CFDictionaryAddValue(v28, @"Digest", v27);
          CFDictionaryAddValue(*(this + 4), @"SE,RapSwBinDsp", v28);
          if (v28)
          {
            CFRelease(v28);
          }
        }
      }
    }
  }

  return *(this + 4);
}

void sub_298505C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::_WalkThroughDict(const __CFString *a1, const void *a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "Assertion: ");
    v16 = std::string::append(&v18, "p");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v20 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, __p);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(__p, *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 3);
      v8 = __p[0];
      if (__p[1] == __p[0])
      {
        Mutable = 0;
        v13 = 0;
        if (!__p[0])
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v9 = 0;
      do
      {
        v10 = CFStringCompare(v8[v9++], a1, 0);
        v8 = __p[0];
      }

      while (v9 < (__p[1] - __p[0]) >> 3 && v10 != kCFCompareEqualTo);
      if (v10)
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (Mutable)
        {
          Value = CFDictionaryGetValue(a2, *(a3 + 32));
          if (Value)
          {
            v13 = CFRetain(Value);
            if (v13)
            {
              CFDictionaryAddValue(Mutable, *(a3 + 32), v13);
              CFDictionarySetValue(*a3, a1, Mutable);
            }

LABEL_20:
            v8 = __p[0];
            if (!__p[0])
            {
LABEL_22:
              if (v13)
              {
                CFRelease(v13);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return;
            }

LABEL_21:
            __p[1] = v8;
            operator delete(v8);
            goto LABEL_22;
          }
        }
      }

      v13 = 0;
      goto LABEL_20;
    }
  }
}

void sub_298505EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::SERestoreInfoBase::getRequestDict(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

SERestoreInfo::SEFirmwareBase *SERestoreInfo::makeSEFirmware@<X0>(SERestoreInfo::SEFirmwareBase **__return_ptr a1@<X8>, SERestoreInfo *this@<X0>, const __CFData *a3@<X1>)
{
  FormatVer = SERestoreInfo::SEFirmwareBase::getFormatVer(this, a3);
  if (FormatVer == 1)
  {
    v7 = operator new(0x28uLL);
    result = SERestoreInfo::SEFirmwareBase::SEFirmwareBase(v7, this);
    v9 = &unk_2A1EE8D80;
  }

  else
  {
    v6 = FormatVer;
    if (FormatVer)
    {
      exception = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v14, v6);
      v11 = std::string::insert(&v14, 0, "Unsupported firmware version: ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v16 = v11->__r_.__value_.__r.__words[2];
      v15 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = SERestoreInfo::SEException::SEException(exception, &v15, 15, @"SEUpdaterErrorDomain");
    }

    v7 = operator new(0x28uLL);
    result = SERestoreInfo::SEFirmwareBase::SEFirmwareBase(v7, this);
    v9 = &unk_2A1EE9030;
  }

  *v7 = v9;
  *a1 = v7;
  return result;
}

void sub_2985060B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::makeSERestoreInfo(uint64_t *__return_ptr a1@<X8>, SERestoreInfo *this@<X0>)
{
  value = 0;
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Assertion: ");
    v20 = std::string::append(&v35, "options");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v34 = v20->__r_.__value_.__r.__words[2];
    v33 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v33);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *a1 = 0;
  if (CFDictionaryGetValueIfPresent(this, @"DeviceInfo", &value))
  {
    v4 = value == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v25 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v33, "Cannot find key kSEOptionDeviceInfo in options");
    v26 = SERestoreInfo::SEException::SEException(v25, &v33, 2, @"SEUpdaterErrorDomain");
  }

  v5 = CFGetTypeID(value);
  if (v5 == CFDataGetTypeID())
  {
    SERestoreInfo::BLOB::BLOB(&v33, value);
    SERestoreInfo::makeDeviceInfo<SERestoreInfo::BLOB>(&v33, &v35);
    v29 = *&v35.__r_.__value_.__l.__data_;
    *&v35.__r_.__value_.__l.__data_ = 0uLL;
    SERestoreInfo::BLOB::~BLOB(&v33);
    v6 = v29;
  }

  else
  {
    v7 = CFGetTypeID(value);
    if (v7 != CFDictionaryGetTypeID())
    {
      v27 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v33, "kSEOptionDeviceInfo is neither CFData or CFDictionary");
      v28 = SERestoreInfo::SEException::SEException(v27, &v33, 16, @"SEUpdaterErrorDomain");
    }

    v35.__r_.__value_.__r.__words[0] = value;
    SERestoreInfo::makeDeviceInfo<__CFDictionary const*>(&v35, &v33);
    v6 = v33;
  }

  v30 = v6;
  v8 = v6.n128_u64[1];
  if (!v6.n128_u64[0])
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Assertion: ");
    v23 = std::string::append(&v35, "deviceInfo");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34 = v23->__r_.__value_.__r.__words[2];
    v33 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v22, &v33);
    __cxa_throw(v22, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = (*(*v6.n128_u64[0] + 32))(v6.n128_u64[0], v6);
  if (v9 > 199)
  {
    if (v9 != 200)
    {
      if (v9 == 131601)
      {
        v17 = operator new(0x28uLL);
        v18 = v17;
        v31 = v30;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SERestoreInfo::IcefallRestoreInfo::IcefallRestoreInfo(v17, this, &v31);
        *a1 = v18;
        v13 = v31.n128_u64[1];
        if (v31.n128_u64[1])
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v9 != 210)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v10 = (v9 - 54) > 0x3D || ((1 << (v9 - 54)) & 0x2000400000000007) == 0;
    if (v10 && v9 != 44)
    {
LABEL_28:
      v14 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v35, "Assertion: ");
      v15 = std::string::append(&v35, "false");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v34 = v15->__r_.__value_.__r.__words[2];
      v33 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v14, &v33);
      __cxa_throw(v14, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  v11 = operator new(0x28uLL);
  v12 = v11;
  v32 = v30;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SERestoreInfo::P73BaseRestoreInfo::P73BaseRestoreInfo(v11, this, &v32);
  *a1 = v12;
  v13 = v32.n128_u64[1];
  if (v32.n128_u64[1])
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_20:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_298506548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      *v27 = 0;
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

double SERestoreInfo::makeDeviceInfo<SERestoreInfo::BLOB>@<D0>(const SERestoreInfo::BLOB *a1@<X0>, _OWORD *a2@<X8>)
{
  std::allocate_shared[abi:ne200100]<SERestoreInfo::IcefallDeviceInfo,std::allocator<SERestoreInfo::IcefallDeviceInfo>,SERestoreInfo::BLOB const&,0>(a1, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void sub_2985066F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    std::allocate_shared[abi:ne200100]<SERestoreInfo::P73DeviceInfo,std::allocator<SERestoreInfo::P73DeviceInfo>,SERestoreInfo::BLOB const&,0>(v17, &__p);
    JUMPOUT(0x2985066D8);
  }

  _Unwind_Resume(exception_object);
}

double SERestoreInfo::makeDeviceInfo<__CFDictionary const*>@<D0>(SERestoreInfo **a1@<X0>, _OWORD *a2@<X8>)
{
  std::allocate_shared[abi:ne200100]<SERestoreInfo::IcefallDeviceInfo,std::allocator<SERestoreInfo::IcefallDeviceInfo>,__CFDictionary const* const&,0>(a1, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void sub_298506940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    std::allocate_shared[abi:ne200100]<SERestoreInfo::P73DeviceInfo,std::allocator<SERestoreInfo::P73DeviceInfo>,__CFDictionary const* const&,0>(v17, &__p);
    JUMPOUT(0x298506924);
  }

  _Unwind_Resume(exception_object);
}

SERestoreInfo::BLOB *SERestoreInfo::BLOB::BLOB(SERestoreInfo::BLOB *this, CFTypeRef cf)
{
  *this = &unk_2A1EE8E30;
  v3 = CFRetain(cf);
  *(this + 3) = v3;
  *(this + 1) = CFDataGetBytePtr(v3);
  *(this + 2) = CFDataGetLength(*(this + 3));
  return this;
}

void *SERestoreInfo::P73BaseRestoreInfo::P73BaseRestoreInfo(void *a1, const void *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SERestoreInfo::SERestoreInfoBase::SERestoreInfoBase(a1, a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_2A1EE8EB0;
  return a1;
}

void sub_298506C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::IcefallRestoreInfo::IcefallRestoreInfo(void *a1, const void *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SERestoreInfo::SERestoreInfoBase::SERestoreInfoBase(a1, a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a1 = &unk_2A1EE8F00;
  return a1;
}

void sub_298506CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::IcefallDeviceInfo,std::allocator<SERestoreInfo::IcefallDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::IcefallDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::IcefallDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE91A8;
  SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE91A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::P73DeviceInfo,std::allocator<SERestoreInfo::P73DeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::P73DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::P73DeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE91F8;
  SERestoreInfo::P73DeviceInfo::P73DeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE91F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN100VDeviceInfo,std::allocator<SERestoreInfo::SN100VDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN100VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN100VDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9248;
  SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE9248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN200VDeviceInfo,std::allocator<SERestoreInfo::SN200VDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN200VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN200VDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9298;
  SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE9298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN210VDeviceInfo,std::allocator<SERestoreInfo::SN210VDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN210VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN210VDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE92E8;
  SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE92E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300VDeviceInfo,std::allocator<SERestoreInfo::SN300VDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300VDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9338;
  SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE9338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SE310SDeviceInfo,std::allocator<SERestoreInfo::SE310SDeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SE310SDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SE310SDeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9388;
  SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE9388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300V2DeviceInfo,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE93D8;
  SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE93D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300V3DeviceInfo,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,SERestoreInfo::BLOB const&,0>@<X0>(const SERestoreInfo::BLOB *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<SERestoreInfo::BLOB const&,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,0>(void *a1, const SERestoreInfo::BLOB *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9428;
  SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE9428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::IcefallDeviceInfo,std::allocator<SERestoreInfo::IcefallDeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::IcefallDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::IcefallDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::IcefallDeviceInfo>,0>(void *a1, SERestoreInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE91A8;
  SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo((a1 + 3), a2);
  return a1;
}

uint64_t std::allocate_shared[abi:ne200100]<SERestoreInfo::P73DeviceInfo,std::allocator<SERestoreInfo::P73DeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::P73DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t std::__shared_ptr_emplace<SERestoreInfo::P73DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::P73DeviceInfo>,0>(uint64_t a1, SERestoreInfo **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1EE91F8;
  SERestoreInfo::P73DeviceInfo::P73DeviceInfo((a1 + 24), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN100VDeviceInfo,std::allocator<SERestoreInfo::SN100VDeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN100VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN100VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN100VDeviceInfo>,0>(void *a1, SERestoreInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9248;
  SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN200VDeviceInfo,std::allocator<SERestoreInfo::SN200VDeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN200VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN200VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN200VDeviceInfo>,0>(void *a1, SERestoreInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9298;
  SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN210VDeviceInfo,std::allocator<SERestoreInfo::SN210VDeviceInfo>,__CFDictionary const* const&,0>@<X0>(const __CFDictionary *const *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN210VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN210VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN210VDeviceInfo>,0>(void *a1, const __CFDictionary *const *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE92E8;
  SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300VDeviceInfo,std::allocator<SERestoreInfo::SN300VDeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300VDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300VDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300VDeviceInfo>,0>(void *a1, SERestoreInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9338;
  SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SE310SDeviceInfo,std::allocator<SERestoreInfo::SE310SDeviceInfo>,__CFDictionary const* const&,0>@<X0>(const __CFDictionary *const *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SE310SDeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SE310SDeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SE310SDeviceInfo>,0>(void *a1, const __CFDictionary *const *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9388;
  SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300V2DeviceInfo,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,__CFDictionary const* const&,0>@<X0>(const __CFDictionary *const *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300V2DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300V2DeviceInfo>,0>(void *a1, const __CFDictionary *const *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE93D8;
  SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo((a1 + 3), a2);
  return a1;
}

void *std::allocate_shared[abi:ne200100]<SERestoreInfo::SN300V3DeviceInfo,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,__CFDictionary const* const&,0>@<X0>(SERestoreInfo **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<SERestoreInfo::SN300V3DeviceInfo>::__shared_ptr_emplace[abi:ne200100]<__CFDictionary const* const&,std::allocator<SERestoreInfo::SN300V3DeviceInfo>,0>(void *a1, SERestoreInfo **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EE9428;
  SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo((a1 + 3), a2);
  return a1;
}

CFErrorRef SERestoreInfo::CreateCFError(const UInt8 *a1, int a2, const void *a3, const __CFString *a4)
{
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v18 = std::string::append(&v23, "userInfo");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25 = v18->__r_.__value_.__r.__words[2];
    v24 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v24);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = Mutable;
  v11 = *(a1 + 23);
  if (v11 < 0)
  {
    v12 = a1;
    a1 = *a1;
    v11 = *(v12 + 1);
  }

  v13 = CFStringCreateWithBytes(v8, a1, v11, 0x8000100u, 0);
  if (!v13)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v21 = std::string::append(&v23, "description");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v25 = v21->__r_.__value_.__r.__words[2];
    v24 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v20, &v24);
    __cxa_throw(v20, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v14 = v13;
  CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F58], v13);
  CFRelease(v14);
  if (a3)
  {
    CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F68], a3);
  }

  v15 = CFErrorCreate(v8, a4, a2, v10);
  CFRelease(v10);
  return v15;
}

void sub_298508094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string::size_type SERestoreInfo::getValueFromCFDict(SERestoreInfo *this, const __CFDictionary *a2, const __CFString *a3, BOOL *a4, void *a5)
{
  if (!this || !a2 || !a4 || (v6 = a5) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&value, "Assertion: ");
    v13 = std::string::append(&value, "dict && key && out && outLen");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    v18 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v18);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  value.__r_.__value_.__r.__words[0] = 0;
  result = CFDictionaryGetValueIfPresent(this, a2, &value.__r_.__value_.__l.__data_);
  if (result)
  {
    result = value.__r_.__value_.__r.__words[0];
    if (value.__r_.__value_.__r.__words[0])
    {
      result = CFGetTypeID(value.__r_.__value_.__l.__data_);
      if (result == a3)
      {
        TypeID = CFNumberGetTypeID();
        if (v6 >= 4 && TypeID == a3)
        {
          result = CFNumberGetValue(value.__r_.__value_.__l.__data_, kCFNumberSInt32Type, a4);
          if (!result)
          {
            v10 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&v18, "Cannot read CFNumber ");
            v11 = SERestoreInfo::SEException::SEException(v10, &v18, 2, @"SEUpdaterErrorDomain");
          }
        }

        else if (CFBooleanGetTypeID() == a3)
        {
          result = CFBooleanGetValue(value.__r_.__value_.__l.__data_);
          *a4 = result != 0;
        }

        else
        {
          if (CFDataGetTypeID() != a3)
          {
            v15 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(&v18, "missing key ");
            v16 = SERestoreInfo::SEException::SEException(v15, &v18, 2, @"SEUpdaterErrorDomain");
          }

          return SERestoreInfo::getValueFromCFDict(&value, v6, a4);
        }
      }
    }
  }

  return result;
}

void sub_2985082F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **SERestoreInfo::getValueFromCFDict(CFDataRef *a1, uint64_t a2, void **a3)
{
  BytePtr = CFDataGetBytePtr(*a1);
  result = CFDataGetLength(*a1);
  if (result <= a2)
  {
    return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, BytePtr, result + BytePtr, result);
  }

  return result;
}

uint64_t SERestoreInfo::SERestoreInfoLog::get(SERestoreInfo::SERestoreInfoLog *this)
{
  if (SERestoreInfo::SERestoreInfoLog::get(void)::onceToken != -1)
  {
    SERestoreInfo::SERestoreInfoLog::get();
  }

  return SERestoreInfo::SERestoreInfoLog::instance;
}

double ___ZN13SERestoreInfo16SERestoreInfoLog3getEv_block_invoke()
{
  v0 = operator new(0x58uLL);
  *v0 = SERestoreInfo::SERestoreInfoLog::printToOsLog;
  v0[1] = 0;
  *(v0 + 4) = 2;
  v0[3] = 850045863;
  result = 0.0;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  v0[10] = 0;
  SERestoreInfo::SERestoreInfoLog::instance = v0;
  return result;
}

void SERestoreInfo::SERestoreInfoLog::registerLogSink(SERestoreInfo::SERestoreInfoLog *this, void (*a2)(void *, const char *), void *a3)
{
  std::mutex::lock((this + 24));
  *this = a2;
  *(this + 1) = a3;

  std::mutex::unlock((this + 24));
}

void SERestoreInfo::SERestoreInfoLog::printToOsLog(SERestoreInfo::SERestoreInfoLog *this, char *a2, const char *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  v3 = 0;
  v4 = MEMORY[0x29EDCA988];
  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v3 >= SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      return;
    }

LABEL_6:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      std::string::basic_string(&v6, &__str, v3, 0x3E8uLL, &v8);
      if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v6;
      }

      else
      {
        v5 = v6.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&dword_29849C000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v6.__r_.__value_.__l.__data_);
      }
    }

    v3 += 1000;
  }

  if (v3 < __str.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
}

char *SERestoreInfo::SERestoreInfoLog::FormatMsg(SERestoreInfo::SERestoreInfoLog *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = 0;
  if (vasprintf(&v3, a2, va) <= 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

char *SERestoreInfo::SERestoreInfoLog::createVerboseLogString(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "level >= 0 && level < _LOG_LEVEL_MAX && level is not good");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v13);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  v7 = gettimeofday(&v13, 0);
  return SERestoreInfo::SERestoreInfoLog::FormatMsg(v7, "[%3.3ld.%1.1d] [%s] %s: %s", v13.tv_sec, v13.tv_usec / 1000, (&SERestoreInfo::logLevelNames)[a2], a3, a4);
}

void sub_298508758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void SERestoreInfo::SERestoreInfoLog::printLogv(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4, va_list a5)
{
  v12 = 0;
  v8 = vasprintf(&v12, a4, a5);
  v9 = v12;
  if (v8 >= 1 && v12 != 0)
  {
    VerboseLogString = SERestoreInfo::SERestoreInfoLog::createVerboseLogString(v8, a2, a3, v12);
    free(v9);
    if (VerboseLogString)
    {
      std::mutex::lock((this + 24));
      (*this)(*(this + 1), VerboseLogString);
      std::mutex::unlock((this + 24));
      free(VerboseLogString);
    }
  }
}

void SERestoreInfo::SERestoreInfoLog::printLog(SERestoreInfo::SERestoreInfoLog *this, signed int a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  if (*(this + 4) >= a2)
  {
    SERestoreInfo::SERestoreInfoLog::printLogv(this, a2, a3, a4, va);
  }
}

SERestoreInfo::SN100VDeviceInfo *SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE9498;
  if (*(v3 + 14) != 100)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN100VDeviceInfo *SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE9498;
  if (*(v3 + 14) != 100)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN300V3DeviceInfo *SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE94E8;
  if (*(v3 + 14) != 56)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN300V3DeviceInfo *SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE94E8;
  if (*(v3 + 14) != 56)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN200VDeviceInfo *SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE9538;
  if (*(v3 + 14) != 200)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN200VDeviceInfo *SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE9538;
  if (*(v3 + 14) != 200)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void VinylRestoreHost::create(VinylRestoreHost *this@<X0>, const __CFDictionary *a2@<X1>, VinylRestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreHost: %s\n", "VinylRestoreHost", "create", "create");
  v8 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v8, 0, "%s::%s: VinylUpdater Version: %s\n", "VinylRestoreHost", "create", "VinylRestore-144~7392");
  v9 = operator new(0xE8uLL);
  VinylRestoreHost::VinylRestoreHost(v9);
  *a3 = v9;
  if (((*(*v9 + 32))(v9, this, a2) & 1) == 0)
  {
    *a3 = 0;
    v10 = (*(*v9 + 24))(v9);
    v11 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v11, 4, "%s::%s: leaving: VinylRestoreHost: %s\n", "VinylRestoreHost", "create", "create");
  }
}

ACFULogging *VinylRestoreHost::createRequest(ACFULogging *a1, const __CFData *a2)
{
  v36 = 0;
  v37 = 0;
  error = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: entering: %s\n", "VinylRestoreHost", "createRequest", "createRequest");
  v5 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], a2, 0, 0, &error);
  v6 = v5;
  v36 = v5;
  if (!v5)
  {
    v19 = ACFULogging::getLogInstance(0);
    std::string::basic_string[abi:ne200100]<0>(&v31, "VinylRestoreHost");
    v20 = std::string::append(&v31, "::");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v32, "createRequest");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v19, __p, 2, "Failed to create propertylist from data, error: ", error);
LABEL_18:
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    goto LABEL_26;
  }

  v7 = CFGetTypeID(v5);
  TypeID = CFDictionaryGetTypeID();
  if (v7 != TypeID)
  {
    v24 = ACFULogging::getLogInstance(TypeID);
    std::string::basic_string[abi:ne200100]<0>(&v31, "VinylRestoreHost");
    v25 = std::string::append(&v31, "::");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v32, "createRequest");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v34 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v24, __p, 2, "Deserialized plist data is not a dictionary firmwarePlist: ", v6);
    goto LABEL_18;
  }

  __p[0] = v6;
  v9 = ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v37, __p);
  if (!v37)
  {
    v29 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v29, 2, "%s::%s: Failed fo retain firmwareDict\n");
LABEL_26:
    v16 = 0;
    goto LABEL_11;
  }

  v10 = ACFULogging::getLogInstance(v9);
  std::string::basic_string[abi:ne200100]<0>(&v31, "VinylRestoreHost");
  v11 = std::string::append(&v31, "::");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v32, "createRequest");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v10, __p, 0, "firmwareDict: ", v37);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  RequestDict = VinylRestoreHost::createRequestDict(a1, v37);
  v16 = RequestDict;
  if (!RequestDict)
  {
    v30 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to create output request dictionary\n");
    goto LABEL_26;
  }

LABEL_11:
  v17 = ACFULogging::getLogInstance(RequestDict);
  ACFULogging::handleMessage(v17, 4, "%s::%s: leaving: %s\n", "VinylRestoreHost", "createRequest", "createRequest");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v16;
}

void sub_298509190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 64));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 56));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

__CFDictionary *VinylRestoreHost::createRequestDict(CFDictionaryRef *this, const __CFDictionary *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreHost: %s\n", "VinylRestoreHost", "createRequestDict", "createRequestDict");
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v96 = 0;
  v6 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v6, 4, "%s::%s: VinylRestoreHost::createRequestDict\n", "VinylRestoreHost", "createRequestDict");
  v8 = ACFULogging::getLogInstance(v7);
  std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
  v9 = std::string::append(&v92, "::");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v93, "createRequestDict");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v95 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v8, __p, 4, "firmwareInfoDict: ", a2);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  Value = CFDictionaryGetValue(a2, @"eUICC,Im4pGold");
  v14 = CFDictionaryGetValue(a2, @"eUICC,Im4pMain");
  if (!Value || (v15 = v14) == 0)
  {
    v88 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v88, 2, "%s::%s: failed to get im4p values\n");
    goto LABEL_79;
  }

  VinylFirmware::generateMeasurement(&v93.__r_.__value_.__l.__data_, Value);
  __p[0] = v99;
  v99 = v93.__r_.__value_.__r.__words[0];
  v93.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(__p);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v93.__r_.__value_.__l.__data_);
  VinylFirmware::generateMeasurement(&v93.__r_.__value_.__l.__data_, v15);
  __p[0] = v98;
  v98 = v93.__r_.__value_.__r.__words[0];
  v93.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(__p);
  v16 = ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v93.__r_.__value_.__l.__data_);
  if (!v99 || !v98)
  {
    v87 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v87, 2, "%s::%s: failed to get measurements\n");
LABEL_79:
    Mutable = 0;
    goto LABEL_67;
  }

  v17 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v97 = v19;
  v20 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = v20;
  v96 = v20;
  if (Mutable && v19 && v20)
  {
    v22 = CFDictionaryGetValue(this[2], @"DeviceInfo");
    if (v22)
    {
      v23 = this[8];
      v24 = this[9];
      while (v23 != v24)
      {
        v25 = *v23;
        if (!CFDictionaryGetValue(v22, *v23))
        {
          v76 = ACFULogging::getLogInstance(0);
          std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
          v77 = std::string::append(&v92, "::");
          v78 = *&v77->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = std::string::append(&v93, "createRequestDict");
          v80 = *&v79->__r_.__value_.__l.__data_;
          v95 = v79->__r_.__value_.__r.__words[2];
          *__p = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v76, __p, 2, "Failed to find deviceTag: ", v25);
LABEL_70:
          if (SHIBYTE(v95) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          goto LABEL_83;
        }

        v26 = CFDictionaryGetValue(v22, v25);
        CFDictionarySetValue(Mutable, v25, v26);
        ++v23;
      }

      v27 = this[11];
      v28 = this[12];
      while (v27 != v28)
      {
        v29 = *v27;
        if (!CFDictionaryGetValue(v22, *v27))
        {
          v81 = ACFULogging::getLogInstance(0);
          std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
          v82 = std::string::append(&v92, "::");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          v84 = std::string::append(&v93, "createRequestDict");
          v85 = *&v84->__r_.__value_.__l.__data_;
          v95 = v84->__r_.__value_.__r.__words[2];
          *__p = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v81, __p, 2, "Failed to find requestTag: ", v29);
          goto LABEL_70;
        }

        v30 = CFDictionaryGetValue(v22, v29);
        CFDictionarySetValue(Mutable, v29, v30);
        ++v27;
      }

      if (CFDictionaryContainsKey(v22, @"eUICC,BypassSEPPairing"))
      {
        v31 = CFDictionaryGetValue(v22, @"eUICC,BypassSEPPairing");
        CFDictionarySetValue(Mutable, @"eUICC,BypassSEPPairing", v31);
        v33 = ACFULogging::getLogInstance(v32);
        std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
        v34 = std::string::append(&v92, "::");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        v36 = std::string::append(&v93, "createRequestDict");
        v37 = *&v36->__r_.__value_.__l.__data_;
        v95 = v36->__r_.__value_.__r.__words[2];
        *__p = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = CFDictionaryGetValue(v22, @"eUICC,BypassSEPPairing");
        ACFULogging::handleMessageCFType(v33, __p, 4, "kVinylBypassSEPPairing value: ", v38);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }
      }

      v39 = CFDictionaryGetValue(Mutable, @"eUICC,Gold");
      v40 = CFDictionaryGetValue(v39, @"Nonce");
      v41 = v40;
      if (!v40)
      {
        v90 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v90, 2, "%s::%s: failed to get goldNonce\n");
        goto LABEL_83;
      }

      v42 = ACFULogging::getLogInstance(v40);
      std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
      v43 = std::string::append(&v92, "::");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v93, "createRequestDict");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v95 = v45->__r_.__value_.__r.__words[2];
      *__p = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v42, __p, 4, "goldNonce: ", v41);
      if (SHIBYTE(v95) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      v47 = CFDictionaryGetValue(Mutable, @"eUICC,Main");
      v48 = CFDictionaryGetValue(v47, @"Nonce");
      v49 = v48;
      if (!v48)
      {
        v91 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v91, 2, "%s::%s: failed to get mainNonce\n");
        goto LABEL_83;
      }

      v50 = ACFULogging::getLogInstance(v48);
      std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
      v51 = std::string::append(&v92, "::");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v93, "createRequestDict");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v95 = v53->__r_.__value_.__r.__words[2];
      *__p = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v50, __p, 4, "mainNonce: ", v49);
      if (SHIBYTE(v95) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(v19, @"Digest", v99);
      CFDictionarySetValue(v19, @"Nonce", v41);
      v56 = ACFULogging::getLogInstance(v55);
      std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
      v57 = std::string::append(&v92, "::");
      v58 = *&v57->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      v59 = std::string::append(&v93, "createRequestDict");
      v60 = *&v59->__r_.__value_.__l.__data_;
      v95 = v59->__r_.__value_.__r.__words[2];
      *__p = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v56, __p, 4, "goldDict: ", v19);
      if (SHIBYTE(v95) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      CFDictionaryReplaceValue(Mutable, @"eUICC,Gold", v19);
      CFDictionarySetValue(v21, @"Digest", v98);
      CFDictionarySetValue(v21, @"Nonce", v49);
      v62 = ACFULogging::getLogInstance(v61);
      std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
      v63 = std::string::append(&v92, "::");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = std::string::append(&v93, "createRequestDict");
      v66 = *&v65->__r_.__value_.__l.__data_;
      v95 = v65->__r_.__value_.__r.__words[2];
      *__p = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v62, __p, 4, "mainDict: ", v21);
      if (SHIBYTE(v95) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      CFDictionaryReplaceValue(Mutable, @"eUICC,Main", v21);
      v68 = ACFULogging::getLogInstance(v67);
      std::string::basic_string[abi:ne200100]<0>(&v92, "VinylRestoreHost");
      v69 = std::string::append(&v92, "::");
      v70 = *&v69->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      v71 = std::string::append(&v93, "createRequestDict");
      v72 = *&v71->__r_.__value_.__l.__data_;
      v95 = v71->__r_.__value_.__r.__words[2];
      *__p = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v68, __p, 4, "requestDict after digest: ", Mutable);
      if (SHIBYTE(v95) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      v74 = ACFULogging::getLogInstance(v73);
      ACFULogging::handleMessage(v74, 4, "%s::%s: leaving: VinylRestoreHost: %s\n", "VinylRestoreHost", "createRequestDict", "createRequestDict");
      goto LABEL_63;
    }

    v89 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v89, 2, "%s::%s: failed to get deviceInfoDict\n", "VinylRestoreHost", "createRequestDict");
  }

  else
  {
    v86 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v86, 2, "%s::%s: failed to get create request Dictionary\n");
LABEL_83:
    if (!Mutable)
    {
      goto LABEL_63;
    }
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_63:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_67:
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v98);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v99);
  return Mutable;
}

void sub_298509CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v32 - 104));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v32 - 96));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v32 - 88));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void VinylRestoreHost::~VinylRestoreHost(VinylRestoreHost *this)
{
  *this = &unk_2A1EE9588;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylRestoreHost: destructor\n", "VinylRestoreHost", "~VinylRestoreHost");

  ACFURestoreHost::~ACFURestoreHost(this);
}

{
  VinylRestoreHost::~VinylRestoreHost(this);

  operator delete(v1);
}

void VinylRestoreHost::VinylRestoreHost(VinylRestoreHost *this)
{
  ACFURestoreHost::ACFURestoreHost(this);
  *v1 = &unk_2A1EE9588;
  LogInstance = ACFULogging::getLogInstance(v1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylRestoreHost: constructor\n", "VinylRestoreHost", "VinylRestoreHost");
}

ACFULogging *VinylRestoreHost::init(void **this, const __CFDictionary *a2, const __CFString *a3)
{
  v19[1] = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreHost: %s\n", "VinylRestoreHost", "init", "init");
  __src = xmmword_29EE9C338;
  *&v16 = @"eUICC,Main";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 5, &__src, &v16 + 8, 3uLL);
  __src = xmmword_29EE9C350;
  v16 = *&off_29EE9C360;
  v17 = xmmword_29EE9C370;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 8, &__src, v18, 6uLL);
  *&__src = @"@eUICC,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 11, &__src, &__src + 8, 1uLL);
  *&__src = @"eUICC,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 14, &__src, &__src + 8, 1uLL);
  TypeID = CFNumberGetTypeID();
  *&__src = @"eUICC,ChipID";
  *(&__src + 1) = TypeID;
  v8 = CFDataGetTypeID();
  *&v16 = @"eUICC,EID";
  *(&v16 + 1) = v8;
  v9 = CFDataGetTypeID();
  *&v17 = @"eUICC,GoldNonce";
  *(&v17 + 1) = v9;
  v10 = CFDataGetTypeID();
  v18[0] = @"eUICC,MainNonce";
  v18[1] = v10;
  v11 = CFDataGetTypeID();
  v18[2] = @"eUICC,RootKeyIdentifier";
  v18[3] = v11;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(this + 20, &__src, v19);
  *&__src = @"eUICC,Gold";
  WORD4(__src) = 0;
  *&v16 = @"eUICC,Main";
  WORD4(v16) = 0;
  std::__tree<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,ACFURestoreHost::DemoteConfig>>>::__assign_unique<std::pair<__CFString const* const,ACFURestoreHost::DemoteConfig> const*>(this + 25, &__src, &v17);
  __src = xmmword_29EE9C380;
  v16 = *&off_29EE9C390;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(this + 17, &__src, &v17, 2uLL);
  this[28] = @"Vinyl";
  v12 = ACFURestoreHost::init(this, a2, a3);
  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 4, "%s::%s: leaving: VinylRestoreHost: %s\n", "VinylRestoreHost", "init", "init");
  return v12;
}

ACFULogging *VinylRestoreHost::copyFirmwareUpdater(ACFULogging **a1, const __CFDictionary *a2, int a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreHost: %s\n", "VinylRestoreHost", "copyFirmwareUpdater", "copyFirmwareUpdater");
  v104 = 0;
  v105 = 0;
  error = 0;
  if (!a2)
  {
    VinylRestoreHost::copyFirmwareUpdater(v7);
    return 0;
  }

  Value = CFDictionaryGetValue(a1[2], @"DeviceInfo");
  if (!Value || (v9 = Value, v10 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v10 != Value))
  {
    VinylRestoreHost::copyFirmwareUpdater(Value);
    return 0;
  }

  v11 = ACFULogging::getLogInstance(Value);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v12 = std::string::append(&v99, "::");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v100, "copyFirmwareUpdater");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v102 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v11, __p, 0, "VinylRestore::copyFirmwareUpdater kUpdaterDeviceInfo value : ", v9);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  TypeID = CFDictionaryGetValue(v9, @"eUICC,RootKeyIdentifier");
  if (!TypeID || (v17 = TypeID, v18 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v18 != TypeID))
  {
    VinylRestoreHost::copyFirmwareUpdater(TypeID);
    return 0;
  }

  v19 = ACFULogging::getLogInstance(TypeID);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v20 = std::string::append(&v99, "::");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v100, "copyFirmwareUpdater");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v102 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v19, __p, 4, "VinylTransport::getTicket  certIdentifier: ", v17);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v24 = CFDictionaryGetValue(v9, @"eUICC,FirmwareLoaderVersion");
  if (!v24 || (v25 = v24, v26 = CFGetTypeID(v24), v24 = CFDataGetTypeID(), v26 != v24))
  {
    VinylRestoreHost::copyFirmwareUpdater(v24);
    return 0;
  }

  v27 = ACFULogging::getLogInstance(v24);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v28 = std::string::append(&v99, "::");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v100, "copyFirmwareUpdater");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v102 = v30->__r_.__value_.__r.__words[2];
  *__p = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v27, __p, 0, "VinylTransport::getTicket  firmwareLoaderVersion: ", v25);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v32 = CFDictionaryGetValue(v9, @"eUICC,MainFwMac");
  if (!v32 || (v33 = v32, v34 = CFGetTypeID(v32), v32 = CFDataGetTypeID(), v34 != v32))
  {
    VinylRestoreHost::copyFirmwareUpdater(v32);
    return 0;
  }

  v35 = ACFULogging::getLogInstance(v32);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v36 = std::string::append(&v99, "::");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v100, "copyFirmwareUpdater");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v102 = v38->__r_.__value_.__r.__words[2];
  *__p = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v35, __p, 4, "VinylTransport::getTicket  mainFwMac: ", v33);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v40 = CFDictionaryGetValue(v9, @"eUICC,GoldFwMac");
  if (!v40 || (v41 = v40, v42 = CFGetTypeID(v40), v40 = CFDataGetTypeID(), v42 != v40))
  {
    VinylRestoreHost::copyFirmwareUpdater(v40);
    return 0;
  }

  v43 = ACFULogging::getLogInstance(v40);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v44 = std::string::append(&v99, "::");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v100, "copyFirmwareUpdater");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v102 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v43, __p, 0, "VinylTransport::getTicket  goldFwMac: ", v41);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v49 = ACFULogging::getLogInstance(v48);
  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v50 = std::string::append(&v99, "::");
  v51 = *&v50->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v100, "copyFirmwareUpdater");
  v53 = *&v52->__r_.__value_.__l.__data_;
  v102 = v52->__r_.__value_.__r.__words[2];
  *__p = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v49, __p, 0, "Firmware File Dictionary: ", a2);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (CFDictionaryContainsKey(a2, a1[1]))
  {
    v54 = a1[1];
  }

  else
  {
    v54 = @"eUICC,Gold";
  }

  v55 = ACFURestoreHost::copyDataFromFileDictionary(v54, a2, a3);
  v56 = ACFULogging::getLogInstance(v55);
  v57 = v56;
  if (!v55)
  {
    ACFULogging::handleMessage(v56, 2, "%s::%s: failed to get fwData\n", "VinylRestoreHost", "copyFirmwareUpdater");
    return v55;
  }

  std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
  v58 = std::string::append(&v99, "::");
  v59 = *&v58->__r_.__value_.__l.__data_;
  v100.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v100.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&v100, "copyFirmwareUpdater");
  v61 = *&v60->__r_.__value_.__l.__data_;
  v102 = v60->__r_.__value_.__r.__words[2];
  *__p = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v57, __p, 4, "fwData: ", v55);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v62 = eUICCFwReaderOpen(v55);
  v63 = ACFULogging::getLogInstance(v62);
  if (v62)
  {
    ACFULogging::handleMessage(v63, 0, "%s::%s: Extracting the Zip payload\n", "VinylRestoreHost", "copyFirmwareUpdater");
    v64 = VinylGoldFirmwareCreate(v55, v17, v25, v41);
    v105 = v64;
    v65 = VinylMainFirmwareCreate(v55, v17, v25, v33);
    v66 = v65;
    v104 = v65;
    if (!v64)
    {
      goto LABEL_90;
    }
  }

  else
  {
    ACFULogging::handleMessage(v63, 0, "%s::%s: Possibly OTA flow, fwData is already unziped and extracted, copy directly\n", "VinylRestoreHost", "copyFirmwareUpdater");
    v68 = VinylRestoreHost::createGoldFw(v67, v55, &v105);
    v65 = VinylRestoreHost::createMainFw(v68, v55, &v104);
    v66 = v104;
    v64 = v105;
    if (!v105)
    {
      goto LABEL_90;
    }
  }

  if (v66)
  {
    v69 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v71 = Mutable;
      Im4p = VinylFirmware::getIm4p(v64);
      CFDictionarySetValue(v71, @"eUICC,Im4pGold", Im4p);
      FwData = VinylFirmware::getFwData(v64);
      CFDictionarySetValue(v71, @"eUICC,Gold", FwData);
      if (VinylFirmware::getRecoveryFwData(v64))
      {
        RecoveryFwData = VinylFirmware::getRecoveryFwData(v64);
        CFDictionarySetValue(v71, @"eUICC,GoldRecoveryFw", RecoveryFwData);
      }

      InfoPlistData = VinylFirmware::getInfoPlistData(v64);
      CFDictionarySetValue(v71, @"eUICC,InfoPlistDataGold", InfoPlistData);
      ProfileData = VinylFirmware::getProfileData(v64);
      CFDictionarySetValue(v71, @"eUICC,ProfileDataGold", ProfileData);
      v77 = VinylFirmware::getIm4p(v66);
      CFDictionarySetValue(v71, @"eUICC,Im4pMain", v77);
      v78 = VinylFirmware::getFwData(v66);
      CFDictionarySetValue(v71, @"eUICC,Main", v78);
      if (VinylFirmware::getRecoveryFwData(v66))
      {
        v79 = VinylFirmware::getRecoveryFwData(v66);
        CFDictionarySetValue(v71, @"eUICC,MainRecoveryFw", v79);
      }

      v80 = VinylFirmware::getInfoPlistData(v66);
      CFDictionarySetValue(v71, @"eUICC,InfoPlistDataMain", v80);
      v81 = VinylFirmware::getProfileData(v66);
      CFDictionarySetValue(v71, @"eUICC,ProfileDataMain", v81);
      v82 = CFPropertyListCreateData(v69, v71, kCFPropertyListXMLFormat_v1_0, 0, &error);
      v83 = ACFULogging::getLogInstance(v82);
      std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
      v84 = std::string::append(&v99, "::");
      v85 = *&v84->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = v85;
      v84->__r_.__value_.__l.__size_ = 0;
      v84->__r_.__value_.__r.__words[2] = 0;
      v84->__r_.__value_.__r.__words[0] = 0;
      v86 = std::string::append(&v100, "copyFirmwareUpdater");
      v87 = *&v86->__r_.__value_.__l.__data_;
      v102 = v86->__r_.__value_.__r.__words[2];
      *__p = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v83, __p, 0, "firmwareInfoDict: ", v71);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      v89 = ACFULogging::getLogInstance(v88);
      v90 = v89;
      if (v82)
      {
        ACFULogging::handleMessage(v89, 0, "%s::%s: leaving: VinylRestoreHost: %s\n", "VinylRestoreHost", "copyFirmwareUpdater", "copyFirmwareUpdater");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v99, "VinylRestoreHost");
        v95 = std::string::append(&v99, "::");
        v96 = *&v95->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v96;
        v95->__r_.__value_.__l.__size_ = 0;
        v95->__r_.__value_.__r.__words[2] = 0;
        v95->__r_.__value_.__r.__words[0] = 0;
        v97 = std::string::append(&v100, "copyFirmwareUpdater");
        v98 = *&v97->__r_.__value_.__l.__data_;
        v102 = v97->__r_.__value_.__r.__words[2];
        *__p = v98;
        v97->__r_.__value_.__l.__size_ = 0;
        v97->__r_.__value_.__r.__words[2] = 0;
        v97->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v90, __p, 2, "Failed to serialize dictionary, error: ", error);
        if (SHIBYTE(v102) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }
      }

      CFRelease(v71);
    }

    else
    {
      VinylRestoreHost::copyFirmwareUpdater(0);
      v82 = 0;
    }

    CFRelease(v55);
    goto LABEL_78;
  }

LABEL_90:
  v94 = ACFULogging::getLogInstance(v65);
  ACFULogging::handleMessage(v94, 2, "%s::%s: failed to get firmware object\n", "VinylRestoreHost", "copyFirmwareUpdater");
  CFRelease(v55);
  v82 = 0;
  v55 = 0;
  if (v64)
  {
LABEL_78:
    VinylFirmware::~VinylFirmware(v64);
    operator delete(v91);
    v105 = 0;
    v66 = v104;
    v55 = v82;
  }

  if (v66)
  {
    VinylFirmware::~VinylFirmware(v66);
    operator delete(v92);
  }

  return v55;
}

void sub_29850ACB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylRestoreHost::createGoldFw(VinylRestoreHost *this, const __CFData *a2, VinylFirmware **a3)
{
  v49 = 0;
  v50 = 0;
  error = 0;
  if (a2)
  {
    v4 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], a2, 0, 0, &error);
    v5 = v4;
    v49 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      TypeID = CFDictionaryGetTypeID();
      if (v6 == TypeID)
      {
        __p[0] = v5;
        v8 = ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v50, __p);
        if (v50)
        {
          LogInstance = ACFULogging::getLogInstance(v8);
          std::string::basic_string[abi:ne200100]<0>(&v44, "VinylRestoreHost");
          v10 = std::string::append(&v44, "::");
          v11 = *&v10->__r_.__value_.__l.__data_;
          v45.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
          *&v45.__r_.__value_.__l.__data_ = v11;
          v10->__r_.__value_.__l.__size_ = 0;
          v10->__r_.__value_.__r.__words[2] = 0;
          v10->__r_.__value_.__r.__words[0] = 0;
          v12 = std::string::append(&v45, "createGoldFw");
          v13 = *&v12->__r_.__value_.__l.__data_;
          v47 = v12->__r_.__value_.__r.__words[2];
          *__p = v13;
          v12->__r_.__value_.__l.__size_ = 0;
          v12->__r_.__value_.__r.__words[2] = 0;
          v12->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(LogInstance, __p, 0, "vinylFirmwareInfoDict: ", v50);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          Value = CFDictionaryGetValue(v50, @"eUICC,Im4pGold");
          v15 = Value;
          if (Value && (v16 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v16 == Value))
          {
            v17 = CFDictionaryGetValue(v50, @"eUICC,InfoPlistDataGold");
            v18 = v17;
            if (v17 && (v19 = CFGetTypeID(v17), v17 = CFDataGetTypeID(), v19 == v17) && (v17 = CFDictionaryGetValue(v50, @"eUICC,ProfileDataGold"), (v20 = v17) != 0) && (v21 = CFGetTypeID(v17), v17 = CFDataGetTypeID(), v21 == v17))
            {
              v22 = CFDictionaryGetValue(v50, @"eUICC,Gold");
              v23 = v22;
              if (v22)
              {
                v24 = CFGetTypeID(v22);
                v22 = CFDataGetTypeID();
                if (v24 == v22)
                {
                  v25 = CFDictionaryGetValue(v50, @"eUICC,GoldRecoveryFw");
                  v26 = VinylFirmwareCreate(v23, v25, v15, v18, v20, 0);
                  v27 = 0;
                  *a3 = v26;
LABEL_20:
                  CFRelease(v5);
                  goto LABEL_21;
                }
              }

              v31 = ACFULogging::getLogInstance(v22);
              ACFULogging::handleMessage(v31, 2, "%s::%s: goldFwData not present in the input\n");
            }

            else
            {
              v29 = ACFULogging::getLogInstance(v17);
              ACFULogging::handleMessage(v29, 2, "%s::%s: goldInfoPlistData not present in the input\n");
            }
          }

          else
          {
            v30 = ACFULogging::getLogInstance(Value);
            ACFULogging::handleMessage(v30, 2, "%s::%s: goldIm4p not present in the input\n");
          }
        }

        else
        {
          v43 = ACFULogging::getLogInstance(v8);
          ACFULogging::handleMessage(v43, 2, "%s::%s: Fw data dictionary not present in the input\n");
        }
      }

      else
      {
        v38 = ACFULogging::getLogInstance(TypeID);
        std::string::basic_string[abi:ne200100]<0>(&v44, "VinylRestoreHost");
        v39 = std::string::append(&v44, "::");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v45, "createGoldFw");
        v42 = *&v41->__r_.__value_.__l.__data_;
        v47 = v41->__r_.__value_.__r.__words[2];
        *__p = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v38, __p, 2, "Deserialized plist data is not a dictionary firmwarePlist: ", v5);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
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

      v27 = 1;
      goto LABEL_20;
    }

    v33 = ACFULogging::getLogInstance(0);
    std::string::basic_string[abi:ne200100]<0>(&v44, "VinylRestoreHost");
    v34 = std::string::append(&v44, "::");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v45, "createGoldFw");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v47 = v36->__r_.__value_.__r.__words[2];
    *__p = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v33, __p, 2, "Failed to create propertylist from data, error: ", error);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
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

  else
  {
    v32 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v32, 2, "%s::%s: Failed to get Vinyl Firmware Data\n", "VinylRestoreHost", "createGoldFw");
  }

  v27 = 1;
LABEL_21:
  if (v50)
  {
    CFRelease(v50);
  }

  return v27;
}

void sub_29850B1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 80));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 72));
  _Unwind_Resume(a1);
}

uint64_t VinylRestoreHost::createMainFw(VinylRestoreHost *this, const __CFData *a2, VinylFirmware **a3)
{
  v45 = 0;
  v46 = 0;
  error = 0;
  if (a2)
  {
    v4 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], a2, 0, 0, &error);
    v5 = v4;
    v45 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      TypeID = CFDictionaryGetTypeID();
      if (v6 == TypeID)
      {
        __p[0] = v5;
        ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v46, __p);
        if (v46)
        {
          Value = CFDictionaryGetValue(v46, @"eUICC,Im4pMain");
          v9 = Value;
          if (Value && (v10 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v10 == Value))
          {
            v11 = CFDictionaryGetValue(v46, @"eUICC,InfoPlistDataMain");
            v12 = v11;
            if (v11 && (v13 = CFGetTypeID(v11), v11 = CFDataGetTypeID(), v13 == v11))
            {
              v14 = CFDictionaryGetValue(v46, @"eUICC,ProfileDataMain");
              v15 = v14;
              if (v14 && (v16 = CFGetTypeID(v14), v14 = CFDataGetTypeID(), v16 == v14))
              {
                v17 = CFDictionaryGetValue(v46, @"eUICC,Main");
                v18 = v17;
                if (v17)
                {
                  v19 = CFGetTypeID(v17);
                  v17 = CFDataGetTypeID();
                  if (v19 == v17)
                  {
                    v20 = CFDictionaryGetValue(v46, @"eUICC,MainRecoveryFw");
                    v21 = VinylFirmwareCreate(v18, v20, v9, v12, v15, 0);
                    v22 = 0;
                    *a3 = v21;
LABEL_14:
                    CFRelease(v5);
                    goto LABEL_15;
                  }
                }

                LogInstance = ACFULogging::getLogInstance(v17);
                ACFULogging::handleMessage(LogInstance, 2, "%s::%s: mainFwData not present in the input\n");
              }

              else
              {
                v26 = ACFULogging::getLogInstance(v14);
                ACFULogging::handleMessage(v26, 2, "%s::%s: mainProfileData not present in the input\n");
              }
            }

            else
            {
              v25 = ACFULogging::getLogInstance(v11);
              ACFULogging::handleMessage(v25, 2, "%s::%s: mainInfoPlistData not present in the input\n");
            }
          }

          else
          {
            v24 = ACFULogging::getLogInstance(Value);
            ACFULogging::handleMessage(v24, 2, "%s::%s: mainIm4p not present in the input\n");
          }
        }

        else
        {
          v39 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v39, 2, "%s::%s: Fw data dictionary not present in the input\n");
        }
      }

      else
      {
        v34 = ACFULogging::getLogInstance(TypeID);
        std::string::basic_string[abi:ne200100]<0>(&v40, "VinylRestoreHost");
        v35 = std::string::append(&v40, "::");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v41, "createMainFw");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v43 = v37->__r_.__value_.__r.__words[2];
        *__p = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v34, __p, 2, "Deserialized plist data is not a dictionary firmwarePlist: ", v5);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      v22 = 1;
      goto LABEL_14;
    }

    v29 = ACFULogging::getLogInstance(0);
    std::string::basic_string[abi:ne200100]<0>(&v40, "VinylRestoreHost");
    v30 = std::string::append(&v40, "::");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v41, "createMainFw");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v43 = v32->__r_.__value_.__r.__words[2];
    *__p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v29, __p, 2, "Failed to create propertylist from data, error: ", error);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v28 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v28, 2, "%s::%s: Failed to get Vinyl Firmware Data\n", "VinylRestoreHost", "createMainFw");
  }

  v22 = 1;
LABEL_15:
  if (v46)
  {
    CFRelease(v46);
  }

  return v22;
}

void sub_29850B614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 80));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 72));
  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void VinylRestoreHost::copyFirmwareUpdater(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get create firmwareInfoDict\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: goldFwMac is not a CFData type\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: mainFwMac is not a CFData type\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: firmwareLoaderVersion is not a CFData type\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: certIdentifier is not a CFData type\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Deviceinfo is not a dictionary\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: firmwareFileDictionary is null\n", "VinylRestoreHost", "copyFirmwareUpdater");
}

void *vinyl_unzOpen2(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v5 = a2[1];
    __src[0] = *a2;
    __src[1] = v5;
    v6 = a2[3];
    __src[2] = a2[2];
    __src[3] = v6;
    v7 = (*&__src[0])(*(&v6 + 1), a1, 5, a3);
  }

  else
  {
    vinyl_fill_fopen_filefunc(__src);
    v7 = (*&__src[0])(*(&__src[3] + 1), a1, 5, a3);
  }

  v8 = v7;
  *&__src[4] = v7;
  if (v7)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v7, 0, 2) || ((v10 = (*(&__src[1] + 1))(*(&__src[3] + 1), v8), v11 = v10, v10 >= 0xFFFF) ? (v12 = 0xFFFFLL) : (v12 = v10), (v13 = malloc(0x404uLL)) == 0))
    {
      v9 = 0;
      v36 = 0;
    }

    else
    {
      v14 = v13;
      if (v11 >= 5)
      {
        v15 = 4;
        while (2)
        {
          v16 = v15 + 1024;
          if (v15 + 1024 >= v12)
          {
            v15 = v12;
          }

          else
          {
            v15 += 1024;
          }

          v17 = v15 >= 0x404 ? 1028 : v15;
          if (!(*&__src[2])(*(&__src[3] + 1), v8, v11 - v15, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v8, v14, v17) == v17)
          {
            v18 = (v17 - 4);
            v19 = v15 - v11 - v18;
            v20 = v17 - 3;
            v21 = &v14[v18 + 1];
            while (*(v21 - 1) != 80 || *v21 != 75 || v21[1] != 5 || v21[2] != 6)
            {
              ++v19;
              --v21;
              v22 = __OFSUB__(v20--, 1);
              if ((v20 < 0) ^ v22 | (v20 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v19)
            {
              v9 = -v19;
              v36 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v16 < v12)
            {
              continue;
            }
          }

          break;
        }
      }

      v9 = 0;
      v36 = 0;
LABEL_33:
      free(v14);
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
    v33 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v9, 0);
    HIDWORD(v34) = unzlocal_getLong(__src, *&__src[4], &v40);
    LODWORD(v34) = unzlocal_getShort(__src, *&__src[4], &v39);
    Short = unzlocal_getShort(__src, *&__src[4], &v38);
    v23 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v24 = unzlocal_getShort(__src, *&__src[4], &v37);
    v26 = v37;
    v25 = v38;
    v27 = v39;
    v28 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v30 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v31 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v9 < *&__src[8] + *(&__src[8] + 1) || v30 | Long | v31 || v26 != v28 || v25 || v27 || !v36 || v24 || v23 || Short || v34 || v33)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v9 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v9;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v8 = malloc(0x150uLL);
      memcpy(v8, __src, 0x150uLL);
      amai_unzGoToFirstFile(v8);
    }
  }

  return v8;
}

void *eUICCFwReaderOpen(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "eUICCFwReader", "eUICCFwReaderOpen", "eUICCFwReaderOpen");
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v5 = vinyl_unzOpen(BytePtr, Length);
  if (!v5)
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to open bbfw archive for reading eUICCFwReaderOpen\n", "eUICCFwReader", "eUICCFwReaderOpen");
  }

  return v5;
}

uint64_t eUICCFwReaderFindAndCopyFileData(ACFULogging *a1, const __CFString *a2, CFTypeRef *a3)
{
  v16 = 0;
  if (a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    *(&v12.__r_.__value_.__s + 23) = 13;
    strcpy(&v12, "eUICCFwReader");
    v7 = std::string::append(&v12, "::");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v13, "eUICCFwReaderFindAndCopyFileData");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v15 = v9->__r_.__value_.__r.__words[2];
    v14 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v14, 4, "filename ", a2);
    eUICCFwReaderFindAndCopyFileData_cold_1(&v14, &v12.__r_.__value_.__l.__data_, &v13, &v12.__r_.__value_.__r.__words[2] + 7);
  }

  eUICCFwReaderFindAndCopyFileData_cold_2(a1, a2, &v16, a3, &v17);
  return v17;
}

void sub_29850BE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void eUICCFwReaderFindAndCopyFileData_cold_1(uint64_t a1, void **a2, uint64_t a3, char *a4)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  if (*a4 < 0)
  {
    operator delete(*a2);
  }
}

void eUICCFwReaderFindAndCopyFileData_cold_2(uint64_t a1, const __CFString *a2, const void **a3, CFTypeRef *a4, int *a5)
{
  File = BbfwReaderFindFile(a1, a2);
  if (File)
  {
    v10 = File;
    LogInstance = ACFULogging::getLogInstance(File);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find bbfw item status %d\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData", v10);
  }

  else
  {
    v12 = eUICCFwReaderCopyFileData(a1, a3);
    v10 = v12;
    if (v12)
    {
      v13 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v13, 2, "%s::%s: failed to extract bbfw item status %d\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData", v10);
      v14 = *a3;
      if (!v14)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v14 = *a3;
      if (!v14)
      {
        v15 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v15, 2, "%s::%s: failed to extract bbfw item fileData is NULL\n", "eUICCFwReader", "eUICCFwReaderFindAndCopyFileData");
        v10 = 0;
        goto LABEL_3;
      }

      *a4 = CFRetain(v14);
    }

    CFRelease(v14);
  }

LABEL_3:
  *a5 = v10;
}

ACFULogging *VinylUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, ACFULogging **a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (!a4)
  {
    VinylUpdaterGetTags_cold_3(inited);
LABEL_11:
    v12 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_6;
  }

  v10 = inited;
  v11 = ACFULogging::getLogInstance(inited);
  if (v10)
  {
    Tags_cold_1 = VinylUpdaterGetTags_cold_1(v11, v10, a4);
    goto LABEL_11;
  }

  ACFULogging::handleMessage(v11, 4, "%s::%s: entering: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterGetTags", "VinylUpdaterGetTags");
  VinylRestoreHost::create(a1, @"VinylRestoreInfo", &v18);
  v12 = v18;
  if (!v18)
  {
    Tags_cold_1 = VinylUpdaterGetTags_cold_2(a4);
    goto LABEL_13;
  }

  Tags_cold_1 = (**v18)(v18);
  v14 = Tags_cold_1;
  if (!Tags_cold_1)
  {
    v17 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v17, 2, "%s::%s: failed to get tags\n", "VinylRestoreHost", "VinylUpdaterGetTags");
    Tags_cold_1 = ACFURestoreHost::getError(v12);
    v14 = 0;
    *a4 = Tags_cold_1;
  }

LABEL_6:
  v15 = ACFULogging::getLogInstance(Tags_cold_1);
  ACFULogging::handleMessage(v15, 4, "%s::%s: leaving: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterGetTags", "VinylUpdaterGetTags");
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  return v14;
}

ACFURestoreHost *VinylUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterCopyFirmware", "VinylUpdaterCopyFirmware");
  v10 = ACFULogging::getLogInstance(v9);
  inited = ACFULogging::initLog(v10, a1, a2, a3);
  if (inited)
  {
    VinylUpdaterCopyFirmware_cold_1(a4, inited, &v18);
    return v18;
  }

  VinylRestoreHost::create(a1, @"VinylRestoreInfo", &v18);
  v12 = v18;
  if (!v18)
  {
    VinylUpdaterCopyFirmware_cold_2(a4, &v18);
    return v18;
  }

  v13 = ACFURestoreHost::copyFirmware(v18);
  v14 = v13;
  if (v13)
  {
    v15 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v15, 4, "%s::%s: leaving: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterCopyFirmware", "VinylUpdaterCopyFirmware");
  }

  else
  {
    v17 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v17, 2, "%s::%s: failed to copy firmware\n", "VinylRestoreHost", "VinylUpdaterCopyFirmware");
    if (a4)
    {
      *a4 = ACFURestoreHost::getError(v12);
    }
  }

  (*(*v12 + 24))(v12);
  return v14;
}

ACFULogging *VinylUpdaterCreateRequest(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterCreateRequest", "VinylUpdaterCreateRequest");
  ACFUError::ACFUError(v29, @"VinylRestoreInfo");
  v28 = 0;
  v27[1] = @"eUICC,ApProductionMode";
  v27[2] = @"eUICC,ApSecMode";
  v10 = ACFULogging::getLogInstance(v9);
  inited = ACFULogging::initLog(v10, a1, a2, a3);
  v12 = ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage(v12, 4, "%s::%s: VinylUpdaterCreateRequest  ACFUInitLog returning %d\n", "VinylRestoreHost", "VinylUpdaterCreateRequest", inited);
  if (inited)
  {
    v21 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v21, 2, "%s::%s: failed to init logging\n", "VinylRestoreHost", "VinylUpdaterCreateRequest");
    v22 = inited;
    goto LABEL_11;
  }

  VinylRestoreHost::create(a1, @"VinylRestoreInfo", v27);
  v15 = v27[0];
  if (!v27[0])
  {
    v23 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v23, 2, "%s::%s: failed to create host object\n", "VinylRestoreHost", "VinylUpdaterCreateRequest");
    if (!a4)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_7;
    }

    v22 = 4000;
LABEL_11:
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"VinylRestoreInfo", v22, 0);
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(a1, @"FirmwareData");
  if (!Value)
  {
    v24 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v24, 0, "%s::%s: Invalid or no firmware file present in restore options\n", "VinylRestoreHost", "VinylUpdaterCreateRequest");
    goto LABEL_18;
  }

  Request = VinylRestoreHost::createRequest(v15, Value);
  v18 = Request;
  if (!Request)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to create request dict\n", "VinylRestoreHost", "VinylUpdaterCreateRequest");
    std::string::__init(&v26, "VinylUpdaterCreateRequest: failed to create request dict", 0x38uLL);
    ACFUError::addError(v29, &v26, 0xFA1uLL, 0);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (a4)
    {
      v18 = 0;
      *a4 = ACFURestoreHost::getError(v15);
      goto LABEL_6;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_6;
  }

  v19 = ACFULogging::getLogInstance(Request);
  ACFULogging::handleMessage(v19, 4, "%s::%s: leaving: VinylRestoreInfo: %s\n", "VinylRestoreHost", "VinylUpdaterCreateRequest", "VinylUpdaterCreateRequest");
LABEL_6:
  (*(*v15 + 24))(v15);
LABEL_7:
  ACFUError::~ACFUError(v29);
  return v18;
}

void sub_29850C578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  (*(*v17 + 24))(v17, a2, a3, a4, a5, a6, a7, a8);
  ACFUError::~ACFUError((v18 - 64));
  _Unwind_Resume(a1);
}

CFErrorRef VinylUpdaterGetTags_cold_1(uint64_t a1, int a2, CFErrorRef *a3)
{
  ACFULogging::handleMessage(a1, 2, "%s::%s: failed to init logging\n", "VinylRestoreHost", "VinylUpdaterGetTags");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"VinylRestoreInfo", a2, 0);
  *a3 = result;
  return result;
}

CFErrorRef VinylUpdaterGetTags_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create host object\n", "VinylRestoreHost", "VinylUpdaterGetTags");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"VinylRestoreInfo", 4000, 0);
  *a1 = result;
  return result;
}

void VinylUpdaterCopyFirmware_cold_1(ACFULogging *a1, int a2, void *a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init logging\n", "VinylRestoreHost", "VinylUpdaterCopyFirmware");
  if (a1)
  {
    *a1 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"VinylRestoreInfo", a2, 0);
  }

  *a3 = 0;
}

void VinylUpdaterCopyFirmware_cold_2(ACFULogging *a1, void *a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create host object\n", "VinylRestoreHost", "VinylUpdaterCopyFirmware");
  if (a1)
  {
    *a1 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"VinylRestoreInfo", 4000, 0);
  }

  *a2 = 0;
}

FILE *vinyl_fopen_file_func(int a1, void *__buf, int a3, size_t __size)
{
  if (__buf)
  {
    return fmemopen(__buf, __size, "rb");
  }

  else
  {
    return 0;
  }
}

uint64_t vinyl_fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

FILE *(**vinyl_fill_fopen_filefunc(FILE *(**result)(int a1, void *__buf, int a3, size_t __size)))(int a1, void *__buf, int a3, size_t __size)
{
  *result = vinyl_fopen_file_func;
  result[1] = vinyl_fread_file_func;
  result[2] = vinyl_fwrite_file_func;
  result[3] = vinyl_ftell_file_func;
  result[4] = vinyl_fseek_file_func;
  result[5] = vinyl_fclose_file_func;
  result[6] = vinyl_ferror_file_func;
  result[7] = 0;
  return result;
}

const __CFString **VinylGoldFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylGoldFirmwareCreate", "VinylGoldFirmwareCreate");
  v10 = ACFULogging::getLogInstance(v9);
  std::string::basic_string[abi:ne200100]<0>(&v22, "VinylFirmware");
  v11 = std::string::append(&v22, "::");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "VinylGoldFirmwareCreate");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v10, __p, 0, "fwZipData: ", a1);
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

  v15 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v15, @"/update/gold/firmware.der", @"/update/gold/info.plist", @"/update/gold/profile.bin", off_29EE9C400);
  v16 = VinylFirmware::setFwInfo(v15, a1, a2, a3);
  if (v16)
  {
    v17 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v17, 2, "%s::%s: setFwInfo failed delete vinylFirmware object\n", "VinylFirmware", "VinylGoldFirmwareCreate");
    VinylFirmware::~VinylFirmware(v15);
    operator delete(v18);
    v15 = 0;
  }

  else
  {
    v19 = VinylFirmware::setRecoveryFwInfo(v15, a1, a2, a3, 0, a4);
  }

  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylGoldFirmwareCreate", "VinylGoldFirmwareCreate");
  return v15;
}

uint64_t VinylFirmware::setFwInfo(const __CFString **this, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  v34 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "setFwInfo", "setFwInfo");
  v32 = 0;
  v33 = 0;
  this[15] = 0;
  if (!a2 || !a3 || !a4)
  {
    v23 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v23, 2, "%s::%s: invalid params passed\n");
LABEL_17:
    v19 = 99;
    goto LABEL_14;
  }

  FWSrcPath = VinylFirmware::getFWSrcPath(v9, a3, a4);
  v11 = FWSrcPath;
  v33 = FWSrcPath;
  if (!FWSrcPath)
  {
    v24 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v24, 2, "%s::%s: Get FW source path failed\n");
    goto LABEL_17;
  }

  FileDataFromZip = VinylFirmware::getFileDataFromZip(FWSrcPath, a2, FWSrcPath, this[12]);
  v13 = FileDataFromZip;
  v32 = FileDataFromZip;
  if (!FileDataFromZip)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: Get FW Data from Zip failed\n", "VinylFirmware", "setFwInfo");
    v19 = 99;
    goto LABEL_13;
  }

  v14 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v11, this[13]);
  this[18] = v14;
  if (!v14)
  {
    v26 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v26, 2, "%s::%s: Get InfoPlist Data from Zip failed\n");
LABEL_24:
    v19 = 99;
    goto LABEL_12;
  }

  v15 = VinylFirmware::getFileDataFromZip(v14, a2, v11, this[14]);
  this[19] = v15;
  if (!v15)
  {
    v27 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v27, 2, "%s::%s: Get Profile Data from Zip failed\n");
    goto LABEL_24;
  }

  v16 = *MEMORY[0x29EDB8ED8];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v13);
  this[15] = MutableCopy;
  if (!MutableCopy)
  {
    v28 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v28, 2, "%s::%s: Create FwData copy failed\n");
    goto LABEL_24;
  }

  Im4p = VinylFirmware::createIm4p(this, a2, this + 2, this + 17);
  v19 = Im4p;
  if (Im4p)
  {
    v29 = ACFULogging::getLogInstance(Im4p);
    ACFULogging::handleMessage(v29, 2, "%s::%s: error getting properlylist\n", "VinylFirmware", "setFwInfo");
    goto LABEL_12;
  }

  v20 = this[18];
  error[0] = 0;
  error[1] = &v34;
  this[21] = CFPropertyListCreateWithData(v16, v20, 0, 0, error);
  v21 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!this[21])
  {
    v30 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v30, 2, "%s::%s: error getting properlylist\n");
    goto LABEL_24;
  }

  v19 = 0;
LABEL_12:
  CFRelease(v13);
LABEL_13:
  CFRelease(v11);
LABEL_14:
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v34);
  return v19;
}

void sub_29850CDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va3);
  _Unwind_Resume(a1);
}

const void **VinylFirmware::setRecoveryFwInfo(VinylFirmware *this, const __CFData *a2, const __CFData *a3, const __CFData *a4, int a5, const __CFData *a6)
{
  v114 = *MEMORY[0x29EDCA608];
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  cf = 0;
  *(this + 16) = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: entering: %s\n", "VinylFirmware", "setRecoveryFwInfo", "setRecoveryFwInfo");
  if (!a2 || !a3 || !a4 || !a6)
  {
    v89 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v89, 2, "%s::%s: invalid params passed\n");
    goto LABEL_79;
  }

  FwMac = VinylFirmware::getFwMac(v10, *(this + 21));
  v12 = FwMac;
  if (!FwMac)
  {
    v90 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v90, 2, "%s::%s: Failed getting FW MAC\n");
    goto LABEL_79;
  }

  v13 = ACFULogging::getLogInstance(FwMac);
  std::string::basic_string[abi:ne200100]<0>(&v102, "VinylFirmware");
  v14 = std::string::append(&v102, "::");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v103, "setRecoveryFwInfo");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v105 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v13, __p, 0, "fwMac : ", v12);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v19 = ACFULogging::getLogInstance(v18);
  std::string::basic_string[abi:ne200100]<0>(&v102, "VinylFirmware");
  v20 = std::string::append(&v102, "::");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v103, "setRecoveryFwInfo");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v105 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v19, __p, 0, "mac : ", a6);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(v12);
  v25 = CFDataGetBytePtr(a6);
  Length = CFDataGetLength(v12);
  if (Length >= CFDataGetLength(a6))
  {
    v27 = a6;
  }

  else
  {
    v27 = v12;
  }

  v28 = CFDataGetLength(v27);
  v29 = memcmp(BytePtr, v25, v28);
  v30 = v29;
  v31 = ACFULogging::getLogInstance(v29);
  ACFULogging::handleMessage(v31, 0, "%s::%s: SM::Recovery -- normal? %d macMatchRequired %d\n", "VinylFirmware", "setRecoveryFwInfo", v30 == 0, a5);
  if (v30)
  {
    if ((a5 & 1) == 0)
    {
      strcpy(v113, "/recovery/gold-");
      strcpy(v112, "/firmware.der");
      strcpy(v111, "/info.plist");
      FWSrcPath = VinylFirmware::getFWSrcPath(v32, a3, a4);
      v101 = FWSrcPath;
      if (FWSrcPath)
      {
        v34 = malloc(0x22uLL);
        v35 = malloc(0x20uLL);
        v94 = v35;
        __str = v34;
        if (v34 && v35)
        {
          v96 = FWSrcPath;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          alloc = *MEMORY[0x29EDB8ED8];
          v40 = "%s%03d%s";
          v41 = "::";
          while (1)
          {
            v42 = snprintf(__str, 0x22uLL, v40, v113, v39, v112);
            __str[33] = 0;
            v43 = ACFULogging::getLogInstance(v42);
            ACFULogging::handleMessage(v43, 0, "%s::%s: fwFileName %s\n", "VinylFirmware", "setRecoveryFwInfo", __str);
            v44 = CFStringCreateWithCString(alloc, __str, 0x8000100u);
            v45 = v44;
            v109 = v44;
            if (v38)
            {
              CFRelease(v38);
            }

            if (!v45)
            {
              v87 = ACFULogging::getLogInstance(v44);
              ACFULogging::handleMessage(v87, 2, "%s::%s: Failed to alloc create fwFilePath CFString\n");
              goto LABEL_90;
            }

            v46 = ACFULogging::getLogInstance(v44);
            std::string::basic_string[abi:ne200100]<0>(&v102, "VinylFirmware");
            v47 = std::string::append(&v102, v41);
            v48 = *&v47->__r_.__value_.__l.__data_;
            v103.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
            *&v103.__r_.__value_.__l.__data_ = v48;
            v47->__r_.__value_.__l.__size_ = 0;
            v47->__r_.__value_.__r.__words[2] = 0;
            v47->__r_.__value_.__r.__words[0] = 0;
            v49 = std::string::append(&v103, "setRecoveryFwInfo");
            v50 = *&v49->__r_.__value_.__l.__data_;
            v105 = v49->__r_.__value_.__r.__words[2];
            *__p = v50;
            v49->__r_.__value_.__l.__size_ = 0;
            v49->__r_.__value_.__r.__words[2] = 0;
            v49->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType(v46, __p, 0, "fwFilePath : ", v45);
            if (SHIBYTE(v105) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v102.__r_.__value_.__l.__data_);
            }

            v51 = snprintf(v94, 0x20uLL, v40, v113, v39, v111);
            v94[31] = 0;
            v52 = ACFULogging::getLogInstance(v51);
            ACFULogging::handleMessage(v52, 0, "%s::%s: plistFileName %s\n", "VinylFirmware", "setRecoveryFwInfo", v94);
            v53 = CFStringCreateWithCString(alloc, v94, 0x8000100u);
            v54 = v53;
            v108 = v53;
            if (v37)
            {
              CFRelease(v37);
            }

            if (!v54)
            {
              break;
            }

            v55 = ACFULogging::getLogInstance(v53);
            std::string::basic_string[abi:ne200100]<0>(&v102, "VinylFirmware");
            v56 = std::string::append(&v102, v41);
            v57 = *&v56->__r_.__value_.__l.__data_;
            v103.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
            *&v103.__r_.__value_.__l.__data_ = v57;
            v56->__r_.__value_.__l.__size_ = 0;
            v56->__r_.__value_.__r.__words[2] = 0;
            v56->__r_.__value_.__r.__words[0] = 0;
            v58 = std::string::append(&v103, "setRecoveryFwInfo");
            v59 = *&v58->__r_.__value_.__l.__data_;
            v105 = v58->__r_.__value_.__r.__words[2];
            *__p = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType(v55, __p, 0, "plistFilePath : ", v54);
            v61 = v96;
            if (SHIBYTE(v105) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v102.__r_.__value_.__l.__data_);
            }

            FileDataFromZip = VinylFirmware::getFileDataFromZip(v60, a2, v96, v45);
            v107 = FileDataFromZip;
            if (v36)
            {
              CFRelease(v36);
              v61 = v101;
            }

            v63 = v108;
            v64 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v61, v108);
            v65 = cf;
            cf = v64;
            if (v65)
            {
              CFRelease(v65);
            }

            v36 = v107;
            v66 = 1;
            if (v107 && v64)
            {
              v95 = v63;
              v96 = v61;
              v67 = v39;
              v68 = v41;
              v69 = v40;
              __p[0] = 0;
              __p[1] = &v110;
              v70 = CFPropertyListCreateWithData(alloc, v64, 0, 0, __p);
              v103.__r_.__value_.__r.__words[0] = v70;
              v71 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(__p);
              v72 = VinylFirmware::getFwMac(v71, v70);
              v73 = CFDataGetBytePtr(v72);
              v74 = CFDataGetBytePtr(a6);
              v75 = CFDataGetLength(v72);
              if (v75 >= CFDataGetLength(a6))
              {
                v76 = a6;
              }

              else
              {
                v76 = v72;
              }

              v77 = CFDataGetLength(v76);
              v78 = memcmp(v73, v74, v77);
              if (!v78)
              {
                *(this + 16) = CFDataCreateMutableCopy(alloc, 0, v36);
              }

              v40 = v69;
              if (v70)
              {
                CFRelease(v70);
              }

              v66 = 1;
              if (v78)
              {
                v41 = v68;
                v38 = v45;
                v79 = v67 == 999;
                v39 = (v67 + 1);
                v37 = v95;
                if (!v79)
                {
                  continue;
                }
              }
            }

            goto LABEL_61;
          }

          v88 = ACFULogging::getLogInstance(v53);
          ACFULogging::handleMessage(v88, 2, "%s::%s: Failed to alloc create plistFilePath CFString\n");
        }

        else
        {
          v92 = ACFULogging::getLogInstance(v35);
          ACFULogging::handleMessage(v92, 2, "%s::%s: Failed to alloc memory for filename\n", "VinylFirmware", "setRecoveryFwInfo");
        }

LABEL_90:
        v66 = 0;
      }

      else
      {
        v91 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v91, 2, "%s::%s: Get FW source path failed\n", "VinylFirmware", "setRecoveryFwInfo");
        v66 = 0;
        v94 = 0;
        __str = 0;
      }

LABEL_61:
      v32 = v101;
      if (v101)
      {
        CFRelease(v101);
      }

      if ((v66 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }
  }

  else
  {
    *(this + 16) = *(this + 15);
    v32 = AMSupportSafeRetain();
  }

  v94 = 0;
  __str = 0;
LABEL_67:
  if (*(this + 16))
  {
    v80 = ACFULogging::getLogInstance(v32);
    std::string::basic_string[abi:ne200100]<0>(&v102, "VinylFirmware");
    v81 = std::string::append(&v102, "::");
    v82 = *&v81->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v83 = std::string::append(&v103, "setRecoveryFwInfo");
    v84 = *&v83->__r_.__value_.__l.__data_;
    v105 = v83->__r_.__value_.__r.__words[2];
    *__p = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v80, __p, 0, "recoveryFwData : ", *(this + 16));
    if (SHIBYTE(v105) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v85 = ACFULogging::getLogInstance(v32);
    ACFULogging::handleMessage(v85, 0, "%s::%s: Recovery Fw is not available\n", "VinylFirmware", "setRecoveryFwInfo");
  }

LABEL_75:
  if (__str)
  {
    free(__str);
  }

  if (v94)
  {
    free(v94);
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  return ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v110);
}

void sub_29850D754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41)
{
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a21);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a41);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v41 - 176));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v41 - 168));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v41 - 160));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v41 - 152));
  _Unwind_Resume(a1);
}

const __CFString **VinylMainFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylMainFirmwareCreate", "VinylMainFirmwareCreate");
  v10 = ACFULogging::getLogInstance(v9);
  std::string::basic_string[abi:ne200100]<0>(&v22, "VinylFirmware");
  v11 = std::string::append(&v22, "::");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "VinylMainFirmwareCreate");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v10, __p, 0, "fwZipData: ", a1);
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

  v15 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v15, @"/update/main/firmware.der", @"/update/main/info.plist", @"/update/main/profile.bin", off_29EE9C3A0);
  v16 = VinylFirmware::setFwInfo(v15, a1, a2, a3);
  if (v16)
  {
    v17 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v17, 2, "%s::%s: setFwInfo failed delete vinylFirmware object\n", "VinylFirmware", "VinylMainFirmwareCreate");
    VinylFirmware::~VinylFirmware(v15);
    operator delete(v18);
    v15 = 0;
  }

  else
  {
    v19 = VinylFirmware::setRecoveryFwInfo(v15, a1, a2, a3, 1, a4);
  }

  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylMainFirmwareCreate", "VinylMainFirmwareCreate");
  return v15;
}

VinylFirmware *VinylFirmwareCreate(__CFData *a1, __CFData *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "VinylFirmwareCreate", "VinylFirmwareCreate");
  v13 = operator new(0xC0uLL);
  v14 = VinylFirmware::VinylFirmware(v13, a1, a2, a3, a4, a5, off_29EE9C400);
  if (a6)
  {
    v14 = VinylFirmware::setAuthPayload(v13, a6);
    if (v14)
    {
      v17 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v17, 2, "%s::%s: setAuthPayload failed delete vinylFirmware object\n", "VinylFirmware", "VinylFirmwareCreate");
      VinylFirmware::~VinylFirmware(v13);
      operator delete(v18);
      v13 = 0;
    }
  }

  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "VinylFirmwareCreate", "VinylFirmwareCreate");
  return v13;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *a1 = *a5;
  *(a1 + 16) = v6;
  v7 = a5[2];
  v8 = a5[3];
  v9 = a5[5];
  *(a1 + 64) = a5[4];
  *(a1 + 80) = v9;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  return a1;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFData *a5, uint64_t a6, _OWORD *a7)
{
  v9 = a7[1];
  *a1 = *a7;
  *(a1 + 16) = v9;
  v10 = a7[2];
  v11 = a7[3];
  v12 = a7[5];
  *(a1 + 64) = a7[4];
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 136) = a4;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  v16 = 0;
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  AMSupportSafeRetain();
  v13 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v16;
  *(a1 + 168) = CFPropertyListCreateWithData(v13, a5, 0, 0, error);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v16);
  return a1;
}

void sub_29850DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void VinylFirmware::~VinylFirmware(VinylFirmware *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: VinylFirmware destructor called\n", "VinylFirmware", "~VinylFirmware");
  v3 = *(this + 12);
  if (v3)
  {
    CFRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {
    CFRelease(v4);
    *(this + 13) = 0;
  }

  v5 = *(this + 14);
  if (v5)
  {
    CFRelease(v5);
    *(this + 14) = 0;
  }

  v6 = *(this + 15);
  if (v6)
  {
    CFRelease(v6);
    *(this + 15) = 0;
  }

  v7 = *(this + 16);
  if (v7)
  {
    CFRelease(v7);
    *(this + 16) = 0;
  }

  v8 = *(this + 17);
  if (v8)
  {
    CFRelease(v8);
    *(this + 17) = 0;
  }

  v9 = *(this + 18);
  if (v9)
  {
    CFRelease(v9);
    *(this + 18) = 0;
  }

  v10 = *(this + 19);
  if (v10)
  {
    CFRelease(v10);
    *(this + 19) = 0;
  }

  v11 = *(this + 21);
  if (v11)
  {
    CFRelease(v11);
    *(this + 21) = 0;
  }

  v12 = *(this + 20);
  if (v12)
  {
    CFRelease(v12);
    *(this + 20) = 0;
  }

  v13 = *(this + 23);
  if (v13)
  {
    dlclose(v13);
    *(this + 23) = 0;
  }
}

ACFULogging *VinylFirmware::getFWSrcPath(VinylFirmware *this, const __CFData *a2, const __CFData *a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = malloc(0x41uLL);
  if (!v5)
  {
    VinylFirmware::getFWSrcPath(0);
    return 0;
  }

  v6 = v5;
  if (!a2 || !a3)
  {
    VinylFirmware::getFWSrcPath(v5);
LABEL_41:
    v36 = 0;
    goto LABEL_36;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, a2);
  LogInstance = ACFULogging::getLogInstance(MutableCopy);
  v9 = LogInstance;
  if (!MutableCopy)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: certPlusLdrVer memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
    goto LABEL_41;
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "VinylFirmware");
  v10 = std::string::append(&v44, "::");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v45, "getFWSrcPath");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v47 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v9, __p, 4, "vinylgetFwData certPlusLdrVer just certIdentifier: ", MutableCopy);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  v17 = ACFULogging::getLogInstance(v16);
  std::string::basic_string[abi:ne200100]<0>(&v44, "VinylFirmware");
  v18 = std::string::append(&v44, "::");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v45, "getFWSrcPath");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v47 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v17, __p, 0, "vinylgetFwData certPlusLdrVer: ", MutableCopy);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v22 = AMSupportDigestSha256();
  if (v22)
  {
    VinylFirmware::getFWSrcPath(v22);
  }

  else
  {
    v23 = CFDataCreate(0, bytes, 32);
    v24 = ACFULogging::getLogInstance(v23);
    v25 = v24;
    if (v23)
    {
      std::string::basic_string[abi:ne200100]<0>(&v44, "VinylFirmware");
      v26 = std::string::append(&v44, "::");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v45, "getFWSrcPath");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v47 = v28->__r_.__value_.__r.__words[2];
      *__p = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v25, __p, 0, "digestRef: ", v23);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v30 = bytes;
      v31 = 65;
      v32 = v6;
      do
      {
        v33 = *v30++;
        v34 = snprintf(v32, v31, "%02x", v33);
        v32 += 2;
        v31 -= 2;
      }

      while (v31 != 1);
      v6[64] = 0;
      v35 = ACFULogging::getLogInstance(v34);
      ACFULogging::handleMessage(v35, 4, "%s::%s: vinylgetFwData srcPath %s:\n", "VinylFirmware", "getFWSrcPath", v6);
      v36 = CFStringCreateWithCString(0, v6, 0x8000100u);
      v37 = ACFULogging::getLogInstance(v36);
      v38 = v37;
      if (v36)
      {
        std::string::basic_string[abi:ne200100]<0>(&v44, "VinylFirmware");
        v39 = std::string::append(&v44, "::");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v45, "getFWSrcPath");
        v42 = *&v41->__r_.__value_.__l.__data_;
        v47 = v41->__r_.__value_.__r.__words[2];
        *__p = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v38, __p, 0, "vinylgetFwData fwSrcpath: ", v36);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
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

      else
      {
        ACFULogging::handleMessage(v37, 2, "%s::%s: fwSrcPath memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
      }

      CFRelease(v23);
      goto LABEL_35;
    }

    ACFULogging::handleMessage(v24, 2, "%s::%s: digestRef memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
  }

  v36 = 0;
LABEL_35:
  CFRelease(MutableCopy);
LABEL_36:
  free(v6);
  return v36;
}

void sub_29850E3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef VinylFirmware::getFileDataFromZip(VinylFirmware *this, const __CFData *a2, const __CFString *a3, const __CFString *a4)
{
  v35 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v31, "VinylFirmware");
  v8 = std::string::append(&v31, "::");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v32, "getFileDataFromZip");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v34 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(LogInstance, __p, 4, "getFileDataFromZip fwSrcPath: ", a3);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v13 = ACFULogging::getLogInstance(v12);
  std::string::basic_string[abi:ne200100]<0>(&v31, "VinylFirmware");
  v14 = std::string::append(&v31, "::");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v32, "getFileDataFromZip");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v34 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v13, __p, 4, "getFileDataFromZip filePath: ", a4);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v18 = "%s::%s: invalid params passed\n";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_28;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v18 = "%s::%s: Unable to allocate memory for fullPath:\n";
LABEL_28:
    VinylFirmware::getFileDataFromZip(v18);
    return 0;
  }

  v20 = Mutable;
  CFStringAppend(Mutable, a3);
  CFStringAppend(v20, a4);
  v22 = ACFULogging::getLogInstance(v21);
  std::string::basic_string[abi:ne200100]<0>(&v31, "VinylFirmware");
  v23 = std::string::append(&v31, "::");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v32, "getFileDataFromZip");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v34 = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v22, __p, 4, "getFileDataFromZip fullPath: ", v20);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v27 = eUICCFwReaderOpen(a2);
  v28 = v27;
  if (!v27)
  {
    v30 = "%s::%s: Unable to unzip the fwdata:\n";
LABEL_31:
    VinylFirmware::getFileDataFromZip(v30);
    goto LABEL_25;
  }

  if (eUICCFwReaderFindAndCopyFileData(v27, v20, &v35))
  {
    v30 = "%s::%s: Unable to copy the firmware:\n";
    goto LABEL_31;
  }

LABEL_25:
  eUICCFwReaderClose(v28);
  CFRelease(v20);
  return v35;
}

void sub_29850E73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylFirmware::createIm4p(ACFULogging *a1, ACFULogging *a2, uint64_t *a3, uint64_t *a4)
{
  v98 = *MEMORY[0x29EDCA608];
  v95 = 0;
  v94 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "createIm4p", "createIm4p");
  v7 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  values = Mutable;
  v97 = CFArrayCreateMutable(0, 0, v7);
  theArray = v97;
  v9 = 1;
  v10 = Mutable;
  if (!a2 || !a3)
  {
    goto LABEL_100;
  }

  v11 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_82;
  }

  v9 = 2;
  if (!Mutable)
  {
LABEL_100:
    v11 = 0;
    v12 = 0;
    goto LABEL_82;
  }

  v11 = 0;
  v12 = 0;
  if (!v97)
  {
    goto LABEL_82;
  }

  v13 = CFArrayCreate(0, &values, 2, MEMORY[0x29EDB9000]);
  a3[6] = v13;
  if (!v13)
  {
    goto LABEL_107;
  }

  v91[0] = a1;
  v91[1] = a3;
  v14 = eUICCFwReaderStart(a2, VinylFirmwareReaderInfoPlistCallback, v91);
  v9 = v14;
  if (v14)
  {
    VinylFirmware::createIm4p(v14);
LABEL_107:
    v12 = 0;
    v11 = 0;
    goto LABEL_83;
  }

  if (!a3[7])
  {
    VinylFirmware::createIm4p(v14);
LABEL_106:
    v9 = 0;
    goto LABEL_107;
  }

  v9 = eUICCFwReaderStart(a2, VinylFirmwareReaderCallback, v91);
  v15 = ACFULogging::getLogInstance(v9);
  v16 = v15;
  if (v9)
  {
    ACFULogging::handleMessage(v15, 2, "%s::%s: failed to read zip file\n", "VinylFirmware", "createIm4p");
    goto LABEL_107;
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
  v17 = std::string::append(&v87, "::");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v88, "createIm4p");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v90 = v19->__r_.__value_.__r.__words[2];
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v16, __p, 0, "tag4cc : ", *a3);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v22 = ACFULogging::getLogInstance(v21);
  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
  v23 = std::string::append(&v87, "::");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v88, "createIm4p");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v90 = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v22, __p, 0, "filename : ", a3[1]);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v28 = ACFULogging::getLogInstance(v27);
  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
  v29 = std::string::append(&v87, "::");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v88, "createIm4p");
  v32 = v10;
  v33 = *&v31->__r_.__value_.__l.__data_;
  v90 = v31->__r_.__value_.__r.__words[2];
  *__p = v33;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v28, __p, 0, "plist_filename : ", a3[2]);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (a3[3])
  {
    v35 = ACFULogging::getLogInstance(v34);
    std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
    v36 = std::string::append(&v87, "::");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v88, "createIm4p");
    v32 = v10;
    v39 = *&v38->__r_.__value_.__l.__data_;
    v90 = v38->__r_.__value_.__r.__words[2];
    *__p = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v35, __p, 0, "data : ", a3[3]);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }
  }

  if (a3[4])
  {
    v40 = ACFULogging::getLogInstance(v34);
    std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
    v41 = std::string::append(&v87, "::");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v88, "createIm4p");
    v32 = v10;
    v44 = *&v43->__r_.__value_.__l.__data_;
    v90 = v43->__r_.__value_.__r.__words[2];
    *__p = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v40, __p, 0, "certIdToFind : ", a3[4]);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }
  }

  if (a3[5])
  {
    v45 = ACFULogging::getLogInstance(v34);
    std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
    v46 = std::string::append(&v87, "::");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v88, "createIm4p");
    v32 = v10;
    v49 = *&v48->__r_.__value_.__l.__data_;
    v90 = v48->__r_.__value_.__r.__words[2];
    *__p = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v45, __p, 0, "tafwLdrVerToFindg4cc : ", a3[5]);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }
  }

  if (a3[6])
  {
    v50 = ACFULogging::getLogInstance(v34);
    std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
    v51 = std::string::append(&v87, "::");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v88, "createIm4p");
    v32 = v10;
    v54 = *&v53->__r_.__value_.__l.__data_;
    v90 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v50, __p, 0, "array : ", a3[6]);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }
  }

  Count = CFArrayGetCount(v32);
  v56 = Count;
  if (Count <= 0)
  {
    VinylFirmware::createIm4p(Count);
    goto LABEL_106;
  }

  v57 = CFArrayGetCount(theArray);
  if (v56 != v57)
  {
    VinylFirmware::createIm4p(v57);
    goto LABEL_106;
  }

  v12 = malloc(8 * v56);
  v58 = malloc(8 * v56);
  v11 = v58;
  if (v12 && v58)
  {
    v99.location = 0;
    v99.length = v56;
    CFArrayGetValues(v10, v99, v12);
    v100.location = 0;
    v100.length = v56;
    CFArrayGetValues(theArray, v100, v11);
    DEREncoderCreate();
    DEREncoderCreate();
    v59 = 0;
    do
    {
      DEREncoderCreate();
      CFDataGetBytePtr(v12[v59]);
      CFDataGetLength(v12[v59]);
      v60 = DEREncoderAddData();
      if (v60)
      {
        VinylFirmware::createIm4p(v60);
        goto LABEL_81;
      }

      CFDataGetBytePtr(v11[v59]);
      CFDataGetLength(v11[v59]);
      v61 = DEREncoderAddData();
      if (v61)
      {
        VinylFirmware::createIm4p(v61);
        goto LABEL_81;
      }

      v62 = DEREncoderAddSequenceFromEncoder();
      if (v62)
      {
        VinylFirmware::createIm4p(v62);
        goto LABEL_81;
      }

      DEREncoderDestroy();
      ++v59;
    }

    while (v56 != v59);
    v63 = DEREncoderAddSequenceFromEncoder();
    if (v63)
    {
      VinylFirmware::createIm4p(v63);
    }

    else
    {
      DEREncoderDestroy();
      EncodedBuffer = DEREncoderCreateEncodedBuffer();
      if (EncodedBuffer)
      {
        VinylFirmware::createIm4p(EncodedBuffer);
      }

      else
      {
        v65 = CFDataCreateWithBytesNoCopy(0, v95, v94, *MEMORY[0x29EDB8EE0]);
        if (!v65)
        {
          v9 = 2;
          goto LABEL_82;
        }

        if (CFStringGetCString(*a3, buffer, 5, 0x8000100u))
        {
          CString = CFStringGetCString(@"1.0", v92, 5, 0x8000100u);
          if (CString)
          {
            v67 = ACFULogging::getLogInstance(CString);
            std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
            v68 = std::string::append(&v87, "::");
            v69 = *&v68->__r_.__value_.__l.__data_;
            v88.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
            *&v88.__r_.__value_.__l.__data_ = v69;
            v68->__r_.__value_.__l.__size_ = 0;
            v68->__r_.__value_.__r.__words[2] = 0;
            v68->__r_.__value_.__r.__words[0] = 0;
            v70 = std::string::append(&v88, "createIm4p");
            v71 = *&v70->__r_.__value_.__l.__data_;
            v90 = v70->__r_.__value_.__r.__words[2];
            *__p = v71;
            v70->__r_.__value_.__l.__size_ = 0;
            v70->__r_.__value_.__r.__words[2] = 0;
            v70->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType(v67, __p, 0, "measurementSeq : ", v65);
            if (SHIBYTE(v90) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }

            v72 = *(a1 + 23);
            if (v72)
            {
              v73 = dlsym(v72, "AMAuthInstallApImg4CreatePayload");
              v74 = dlerror();
              if (!v74 && v73)
              {
                v9 = (v73)(buffer, v92, v65, 0, 0, a4);
                v75 = ACFULogging::getLogInstance(v9);
                v76 = v75;
                if (!v9)
                {
                  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
                  v77 = std::string::append(&v87, "::");
                  v78 = *&v77->__r_.__value_.__l.__data_;
                  v88.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                  *&v88.__r_.__value_.__l.__data_ = v78;
                  v77->__r_.__value_.__l.__size_ = 0;
                  v77->__r_.__value_.__r.__words[2] = 0;
                  v77->__r_.__value_.__r.__words[0] = 0;
                  v79 = std::string::append(&v88, "createIm4p");
                  v80 = *&v79->__r_.__value_.__l.__data_;
                  v90 = v79->__r_.__value_.__r.__words[2];
                  *__p = v80;
                  v79->__r_.__value_.__l.__size_ = 0;
                  v79->__r_.__value_.__r.__words[2] = 0;
                  v79->__r_.__value_.__r.__words[0] = 0;
                  ACFULogging::handleMessageCFType(v76, __p, 0, "outPayload : ", *a4);
                  VinylFirmware::createIm4p(__p, &v87, &v88);
LABEL_81:
                  v9 = 0;
                  goto LABEL_82;
                }

                ACFULogging::handleMessage(v75, 0, "%s::%s: failed to create im4p\n", "VinylFirmware", "createIm4p");
LABEL_82:
                if (!v10)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

              VinylFirmware::createIm4p(v74);
            }

            else
            {
              VinylFirmware::createIm4p(0);
            }

            v9 = 99;
            goto LABEL_82;
          }
        }
      }
    }

    v9 = 3;
    goto LABEL_82;
  }

  VinylFirmware::createIm4p(v58);
  v9 = 0;
LABEL_83:
  CFRelease(v10);
LABEL_84:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    free(v12);
  }

  if (v11)
  {
    free(v11);
  }

  DEREncoderDestroy();
  DEREncoderDestroy();
  v81 = a3[6];
  if (v81)
  {
    CFRelease(v81);
    a3[6] = 0;
  }

  v82 = a3[7];
  if (v82)
  {
    CFRelease(v82);
    a3[7] = 0;
  }

  if (v95)
  {
    free(v95);
  }

  return v9;
}

void sub_29850F360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void *VinylFirmware::getFwMac(VinylFirmware *this, const __CFDictionary *a2)
{
  if (a2 && (v3 = CFDictionaryGetTypeID(), this = CFGetTypeID(a2), v3 == this))
  {
    Value = CFDictionaryGetValue(a2, @"com.apple.EmbeddedSoftwareRestore.eUICC.firmwareMac");
    if (Value)
    {
      TypeID = CFDataGetTypeID();
      Length = CFGetTypeID(Value);
      if (TypeID == Length && (Length = CFDataGetLength(Value), Length == 8))
      {
        LogInstance = ACFULogging::getLogInstance(8);
        std::string::basic_string[abi:ne200100]<0>(&v13, "VinylFirmware");
        v8 = std::string::append(&v13, "::");
        v9 = *&v8->__r_.__value_.__l.__data_;
        v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v14.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v14, "getFwMac");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v16 = v10->__r_.__value_.__r.__words[2];
        v15 = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(LogInstance, &v15, 0, "fwMacData: ", Value);
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
      }

      else
      {
        VinylFirmware::getFwMac(Length);
      }
    }

    else
    {
      VinylFirmware::getFwMac(0);
    }
  }

  else
  {
    VinylFirmware::getFwMac(this);
    return 0;
  }

  return Value;
}

void sub_29850F56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylFirmware::getRecoveryFwData(VinylFirmware *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v14, "VinylFirmware");
  v3 = std::string::append(&v14, "::");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v15, "getRecoveryFwData");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v17 = v5->__r_.__value_.__r.__words[2];
  v16 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(LogInstance, &v16, 0, "recoveryFwData : ", *(this + 16));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v8 = ACFULogging::getLogInstance(v7);
  std::string::basic_string[abi:ne200100]<0>(&v14, "VinylFirmware");
  v9 = std::string::append(&v14, "::");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "getRecoveryFwData");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  v16 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v8, &v16, 0, "fwData : ", *(this + 15));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return *(this + 16);
}

void sub_29850F75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylFirmwareReaderInfoPlistCallback(VinylFirmware *a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = *(a1 + 1);

    return VinylFirmware::fwReaderInfoPlistCallback(a1, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderInfoPlistCallback(a1);
    return 0;
  }
}

uint64_t VinylFirmwareReaderCallback(VinylFirmware **a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = a1[1];
    v7 = *a1;

    return VinylFirmware::fwReaderCallback(v7, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderCallback(a1);
    return 0;
  }
}

CFStringRef VinylFirmware::getPathComponent(VinylFirmware *this, const __CFString *a2)
{
  if (!a2)
  {
    VinylFirmware::getPathComponent(this);
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], a2, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    VinylFirmware::getPathComponent(0);
    return 0;
  }

  v4 = v3;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v2, v3);
  if (!PathComponent)
  {
    VinylFirmware::getPathComponent(v4);
    return 0;
  }

  v6 = PathComponent;
  v7 = CFURLGetString(PathComponent);
  Copy = CFStringCreateCopy(v2, v7);
  if (!Copy)
  {
    VinylFirmware::getPathComponent(0);
  }

  CFRelease(v4);
  CFRelease(v6);
  return Copy;
}

uint64_t VinylFirmware::checkVinylFwLdrVerLegacy(VinylFirmware *this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count <= 0)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(Count);
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
  if (!ArrayBySeparatingStrings)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  v6 = ArrayBySeparatingStrings;
  v7 = CFArrayGetCount(ArrayBySeparatingStrings);
  if (v7 == 2)
  {
    v8 = CFArrayGetValueAtIndex(v6, 0);
    IntValue = CFStringGetIntValue(v8);
    v10 = CFArrayGetValueAtIndex(v6, 1);
    v11 = ((CFStringGetIntValue(v10) | (IntValue << 8)) & 0x7FFFu) < 0x301;
  }

  else
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(v7);
    v11 = 1;
  }

  CFRelease(v6);
  return v11;
}

const UInt8 *VinylFirmware::fwLdrVerEqual(VinylFirmware *this, CFArrayRef theArray, const UInt8 *a3)
{
  if (!theArray || (this = CFArrayGetCount(theArray), this <= 0))
  {
    VinylFirmware::fwLdrVerEqual(this);
    return 0;
  }

  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
      if (ArrayBySeparatingStrings)
      {
        v7 = ArrayBySeparatingStrings;
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count == 2)
        {
          BytePtr = CFDataGetBytePtr(a3);
          a3 = BytePtr;
          if (!BytePtr)
          {
            VinylFirmware::fwLdrVerEqual(0);
            goto LABEL_17;
          }

          v10 = *BytePtr;
          v11 = CFArrayGetValueAtIndex(v7, 0);
          if (CFStringGetIntValue(v11) == v10)
          {
            v12 = a3[1];
            v13 = CFArrayGetValueAtIndex(v7, 1);
            a3 = (CFStringGetIntValue(v13) == v12);
LABEL_17:
            CFRelease(v7);
            return a3;
          }
        }

        else
        {
          VinylFirmware::fwLdrVerEqual(Count);
        }

        a3 = 0;
        goto LABEL_17;
      }

      VinylFirmware::fwLdrVerEqual(0);
    }

    else
    {
      VinylFirmware::fwLdrVerEqual(0);
    }

    return 0;
  }

  VinylFirmware::fwLdrVerEqual(this);
  return a3;
}

void VinylFirmware::generateMeasurement(const void **__return_ptr a1@<X8>, VinylFirmware *this@<X0>)
{
  v20 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  *a1 = 0;
  CFDataGetBytePtr(this);
  CFDataGetLength(this);
  v5 = AMSupportDigestSha256();
  if (v5)
  {
    v14 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v14, 2, "%s::%s: failed to compute digest\n", "VinylFirmware", "generateMeasurement");
  }

  else
  {
    __p[0] = CFDataCreate(0, bytes, 32);
    v6 = ctu::cf::CFSharedRef<__CFData const>::operator=(a1, __p);
    v7 = ACFULogging::getLogInstance(v6);
    std::string::basic_string[abi:ne200100]<0>(&v15, "VinylFirmware");
    v8 = std::string::append(&v15, "::");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v16, "generateMeasurement");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v18 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v7, __p, 0, "digestRef: ", *a1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v13 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v13, 4, "%s::%s: leaving: %s\n", "VinylFirmware", "generateMeasurement", "generateMeasurement");
  }
}

void sub_29850FCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(v30);
  _Unwind_Resume(a1);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v6);
  return a1;
}

void VinylFirmware::getFWSrcPath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: AMSupportDigestSha256 failed:\n", "VinylFirmware", "getFWSrcPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid params passed\n", "VinylFirmware", "getFWSrcPath");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: srcPath memory alloc failed\n", "VinylFirmware", "getFWSrcPath");
}

uint64_t VinylFirmware::getFileDataFromZip(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, a1, "VinylFirmware", "getFileDataFromZip");
  return eUICCFwReaderClose(0);
}

void VinylFirmware::createIm4p(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read zip file\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Count of certID != hashVad \n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add certId\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add VAD\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add certId-VAD sequence\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to add top-level sequence\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to encode DER buffer\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize LAI lib create function\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open libauthinstall dylib\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Memory alloc failed certIds/VadDigest\n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: No sources found \n", "VinylFirmware", "createIm4p");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to build vinyl info.plist dictionary\n", "VinylFirmware", "createIm4p");
}

void VinylFirmware::createIm4p(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void VinylFirmware::getFwMac(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fwMacData is wrong type\n", "VinylFirmware", "getFwMac");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Missing firmwareMac in info.plist -- firmware too old\n", "VinylFirmware", "getFwMac");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid plistDict\n", "VinylFirmware", "getFwMac");
}

void VinylFirmware::getPathComponent(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dirPath\n", "VinylFirmware", "getPathComponent");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dirURL\n", "VinylFirmware", "getPathComponent");

  CFRelease(a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create fullURL\n", "VinylFirmware", "getPathComponent");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fullPath is null\n", "VinylFirmware", "getPathComponent");
}

void VinylFirmware::checkVinylFwLdrVerLegacy(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVerComponents count is not expected\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get ldrVer\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVers count is zero\n", "VinylFirmware", "checkVinylFwLdrVerLegacy");
}

void VinylFirmware::fwLdrVerEqual(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVerComponents count is not expected\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get byte ptr of fwldrver\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get ldrVer\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: fwldrver is null\n", "VinylFirmware", "fwLdrVerEqual");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: ldrVersStrArray count is zero\n", "VinylFirmware", "fwLdrVerEqual");
}

CFDataRef AMAuthInstallUpdaterCryptex1MobileAssetCopyImg4WithRestoreInfo(__CFDictionary *a1, const __CFURL *a2, const void *a3, const void *a4, void *a5)
{
  v24 = 0;
  if (a1)
  {
    if (a3 && a4)
    {
      v9 = AMAuthInstallUpdaterCryptex1CopyTicket(a1, a2, a5);
      if (v9)
      {
        v10 = CFGetAllocator(a1);
        v11 = CFDataCreate(v10, kAMAuthInstallCryptex1MobileAssetDummyPayload, 22);
        if (v11 && (v12 = CFGetAllocator(a1), StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v12, v11, v9), v14 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v14, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (v16 = Mutable) != 0))
        {
          CFDictionarySetValue(Mutable, @"cncn", a3);
          CFDictionarySetValue(v16, @"cncx", a4);
          AMAuthInstallApImg4EncodeRestoreInfo(StitchTicket, v16, &v24);
        }

        else
        {
          v22 = OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_2_0(v22, v23);
        }
      }
    }

    else
    {
      v20 = OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4(v20, v21);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4(v18, v19);
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (a5 && *a5)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterCryptex1MobileAssetCopyImg4WithRestoreInfo", "failed: %@", *a5);
  }

  return v24;
}

__CFArray *_AMAuthInstallCryptex1CopyManifestProperties()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 15, MEMORY[0x29EDB9000]);
  v1 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"ApSecurityDomain");
    CFArrayAppendValue(v1, @"Cryptex1,ChipID");
    CFArrayAppendValue(v1, @"Cryptex1,Type");
    CFArrayAppendValue(v1, @"Cryptex1,SubType");
    CFArrayAppendValue(v1, @"Cryptex1,ProductClass");
    CFArrayAppendValue(v1, @"Cryptex1,UseProductClass");
    CFArrayAppendValue(v1, @"Cryptex1,NonceDomain");
    CFArrayAppendValue(v1, @"Cryptex1,LiveNonceDomain");
    CFArrayAppendValue(v1, @"Cryptex1,ExclaveNonceDomain");
    CFArrayAppendValue(v1, @"Cryptex1,ExclaveLiveNonceDomain");
    CFArrayAppendValue(v1, @"Cryptex1,Version");
    CFArrayAppendValue(v1, @"Cryptex1,PreauthorizationVersion");
    CFArrayAppendValue(v1, @"Cryptex1,FakeRoot");
    CFArrayAppendValue(v1, @"UniqueBuildID");
    CFArrayAppendValue(v1, @"Cryptex1,DataOnly");
  }

  return v1;
}

__CFArray *_AMAuthInstallCryptex1CopyObjectTags()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 14, MEMORY[0x29EDB9000]);
  v1 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"Cryptex1,SystemOS");
    CFArrayAppendValue(v1, @"Cryptex1,SystemVolume");
    CFArrayAppendValue(v1, @"Cryptex1,SystemTrustCache");
    CFArrayAppendValue(v1, @"Cryptex1,AppOS");
    CFArrayAppendValue(v1, @"Cryptex1,AppVolume");
    CFArrayAppendValue(v1, @"Cryptex1,AppTrustCache");
    CFArrayAppendValue(v1, @"Cryptex1,MobileAssetBrainOS");
    CFArrayAppendValue(v1, @"Cryptex1,MobileAssetBrainVolume");
    CFArrayAppendValue(v1, @"Cryptex1,MobileAssetBrainTrustCache");
    CFArrayAppendValue(v1, @"Cryptex1,CryptexInfoPlist");
    CFArrayAppendValue(v1, @"Cryptex1,GenericDmg");
    CFArrayAppendValue(v1, @"Cryptex1,GenericTrustCache");
    CFArrayAppendValue(v1, @"Cryptex1,GenericVolume");
    CFArrayAppendValue(v1, @"Cryptex1,GenericIntegrityCatalog");
  }

  return v1;
}

uint64_t _AMAuthInstallCryptex1Log(void (*a1)(uint64_t, const char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "%s failed: %@", 0x8000100u);
  if (v11)
  {
    v12 = CFStringCreateWithFormatAndArguments(v10, 0, v11, va);
    if (v12)
    {
      CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
      a1(a2, CStringPtr);
    }
  }

  AMSupportSafeRelease();
  return AMSupportSafeRelease();
}

__CFDictionary *AMAuthInstallUpdaterCryptex1CreateRequest(const __CFDictionary *a1, void (*a2)(uint64_t, const char *), uint64_t a3, void *a4)
{
  valuePtr = -1;
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v61 = a2;
  v62 = a3;
  if (!Mutable || (Value = CFDictionaryGetValue(a1, @"BuildIdentity")) == 0 || (v11 = Value, !CFDictionaryGetValue(a1, @"DeviceInfo")))
  {
    OUTLINED_FUNCTION_5();
    AMSupportCreateErrorInternal();
    goto LABEL_39;
  }

  v12 = _AMAuthInstallCryptex1CopyManifestProperties();
  v13 = v12;
  if (!v12)
  {
    v59 = OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_2_0(v59, v60);
    goto LABEL_39;
  }

  if (CFArrayGetCount(v12) >= 1)
  {
    v14 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
      v16 = CFDictionaryGetValue(v11, ValueAtIndex);
      if (v16)
      {
        CFDictionarySetValue(Mutable, ValueAtIndex, v16);
      }

      ++v14;
    }

    while (v14 < CFArrayGetCount(v13));
  }

  v17 = _AMAuthInstallCryptex1CopyObjectTags();
  v18 = v17;
  if (!v17)
  {
LABEL_46:
    OUTLINED_FUNCTION_2_0(a4, @"AuthInstallErrorDomain");
    goto LABEL_39;
  }

  v63 = a4;
  if (CFArrayGetCount(v17) >= 1)
  {
    for (i = 0; i < CFArrayGetCount(v18); ++i)
    {
      v20 = CFArrayGetValueAtIndex(v18, i);
      v21 = CFDictionaryGetValue(v11, v20);
      if (v21)
      {
        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFDictionaryGetTypeID())
        {
          v24 = CFDictionaryGetValue(v22, @"Digest");
          if (v24)
          {
            v25 = v24;
            v26 = CFGetTypeID(v24);
            if (v26 == CFDataGetTypeID())
            {
              v27 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
              if (!v27)
              {
                a4 = v63;
                goto LABEL_46;
              }

              v28 = v27;
              CFDictionarySetValue(v27, @"Digest", v25);
              CFDictionarySetValue(Mutable, v20, v28);
              AMSupportSafeRelease();
            }
          }
        }
      }
    }
  }

  AMSupportCFDictionarySetBoolean();
  v29 = CFDictionaryGetValue(v11, @"Cryptex1,Type");
  if (v29)
  {
    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
    }
  }

  Boolean = AMSupportCFDictionaryGetBoolean();
  a4 = v63;
  if (Boolean)
  {
    AMSupportCFDictionarySetInteger32();
    CFDictionaryRemoveValue(Mutable, @"Cryptex1,NonceDomain");
    CFDictionaryRemoveValue(Mutable, @"Cryptex1,LiveNonceDomain");
    CFDictionaryRemoveValue(Mutable, @"Cryptex1,ExclaveNonceDomain");
    CFDictionaryRemoveValue(Mutable, @"Cryptex1,ExclaveLiveNonceDomain");
    if (valuePtr == 1)
    {
      AMSupportCFDictionaryGetBoolean();
      AMSupportCFDictionarySetInteger32();
    }
  }

  else
  {
    TypeID = CFNumberGetTypeID();
    v34 = OUTLINED_FUNCTION_7(TypeID, @"ApChipId", TypeID);
    if (!v34)
    {
      goto LABEL_39;
    }

    v35 = v34;
    v36 = CFNumberGetTypeID();
    v37 = OUTLINED_FUNCTION_7(v36, @"ApECID", v36);
    if (!v37)
    {
      goto LABEL_39;
    }

    v38 = v37;
    *bytes = 0;
    v66 = 0;
    CFNumberGetValue(v35, kCFNumberSInt32Type, &bytes[4]);
    CFNumberGetValue(v38, kCFNumberSInt64Type, &v66);
    *&bytes[4] = bswap32(*&bytes[4]);
    v66 = bswap64(v66);
    v39 = CFDataCreate(v8, bytes, 16);
    if (!v39)
    {
      OUTLINED_FUNCTION_5();
      AMSupportCreateErrorInternal();
      goto LABEL_39;
    }

    CFDictionarySetValue(Mutable, @"Cryptex1,UDID", v39);
  }

  v40 = CFBooleanGetTypeID();
  v41 = OUTLINED_FUNCTION_7(v40, @"ApProductionMode", v40);
  if (v41)
  {
    CFDictionarySetValue(Mutable, @"Cryptex1,ProductionMode", v41);
    if (!Boolean)
    {
      v44 = OUTLINED_FUNCTION_3(v42, @"Cryptex1,Nonce", v43, @"Nonce");
      if (v44)
      {
        if (valuePtr == 4)
        {
          v46 = OUTLINED_FUNCTION_3(v44, @"Cryptex1,LiveNonce", v45, @"LiveNonce");
          if (v46)
          {
            v48 = OUTLINED_FUNCTION_3(v46, @"Cryptex1,ExclaveNonce", v47, @"ExclaveNonce");
            if (v48)
            {
              if (OUTLINED_FUNCTION_3(v48, @"Cryptex1,ExclaveLiveNonce", v49, @"ExclaveLiveNonce"))
              {
                v50 = CFDataGetTypeID();
                v51 = OUTLINED_FUNCTION_7(v50, @"BootUUID", v50);
                if (v51)
                {
                  CFDictionarySetValue(Mutable, @"Cryptex1,BootUUID", v51);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_39:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (a4 && *a4)
  {
    _AMAuthInstallCryptex1Log(v61, v62, v52, v53, v54, v55, v56, v57, "AMAuthInstallUpdaterCryptex1CreateRequest", *a4);
    return 0;
  }

  return Mutable;
}

uint64_t AMAuthInstallBasebandPersonalizationEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 58);
  }

  return result;
}

uint64_t AMAuthInstallBasebandEnablePersonalization(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 58) = a2;
  return result;
}

uint64_t AMAuthInstallApPersonalizationEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 57);
  }

  return result;
}

uint64_t AMAuthInstallApEnablePersonalization(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 57) = a2;
  return result;
}

uint64_t AMAuthInstallSetSigningServer(CFTypeRef *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1)
  {
    v6 = 0;
    if (a2)
    {
      v9 = CFGetAllocator(a1);
      v3 = CFStringCreateWithFormat(v9, 0, @"http://%@:%u", a2, a3);
      if (v3)
      {
        v10 = CFGetAllocator(a1);
        v6 = CFURLCreateWithString(v10, v3, 0);
        if (v6)
        {
          SafeRelease(a1[9]);
          v4 = 0;
          a1[9] = CFRetain(v6);
        }

        else
        {
          v4 = 99;
        }
      }

      else
      {
        v6 = 0;
        v4 = 2;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  SafeRelease(v3);
  SafeRelease(v6);
  return v4;
}

uint64_t AMAuthInstallSetSigningServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 72);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 72) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetSigningServerRetry(uint64_t a1, int a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 80) = a2;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetFusingServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 160);
    if (v5 != a2)
    {
      SafeRelease(v5);
      *(a1 + 160) = CFRetain(a2);
    }

    AMAuthInstallLog(6, "AMAuthInstallSetFusingServerURL", "fusing server: %@", a2);
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallSetLocale(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if (v4 == a2)
  {
    return 0;
  }

  SafeRelease(v4);
  v5 = SafeRetain(a2);
  result = 0;
  *(a1 + 64) = v5;
  return result;
}

uint64_t AMAuthInstallSetUUID(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 96);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 96) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetEntitlements(void *context, CFDictionaryRef theDict)
{
  result = 1;
  if (context)
  {
    if (theDict)
    {
      CFDictionaryApplyFunction(theDict, AMAuthInstallApplyRequestEntries, context);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetRequestEntry(CFTypeRef cf, void *key, const void *a3, const void *a4)
{
  Mutable = 0;
  v5 = 1;
  if (cf && key && a3 && a4)
  {
    v10 = *(cf + 53);
    if (v10 || (v11 = CFGetAllocator(cf), v10 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (*(cf + 53) = v10) != 0))
    {
      Value = CFDictionaryGetValue(v10, key);
      if (Value)
      {
        Mutable = Value;
        CFRetain(Value);
LABEL_11:
        CFDictionarySetValue(Mutable, a3, a4);
        v5 = 0;
        goto LABEL_12;
      }

      v13 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        CFDictionarySetValue(*(cf + 53), key, Mutable);
        goto LABEL_11;
      }
    }

    else
    {
      Mutable = 0;
    }

    v5 = 2;
  }

LABEL_12:
  SafeRelease(Mutable);
  return v5;
}

uint64_t AMAuthInstallSetRecoveryOSVariant(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 496));
  v4 = SafeRetain(a2);
  result = 0;
  *(a1 + 496) = v4;
  return result;
}

uint64_t AMAuthInstallSetMacOSVariantIsPresent(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 504) = a2;
  return result;
}

uint64_t AMAuthInstallAddTrustedSSLCACert(uint64_t a1, CFTypeRef cf)
{
  result = 1;
  if (a1 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      Mutable = *(a1 + 512);
      if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]), (*(a1 + 512) = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, cf);
        return 0;
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

CFIndex AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (!a1 || !a2)
  {
    return v4;
  }

  v6 = a4;
  v7 = a3;
  v9 = a1[2];
  if (v9)
  {
    if (*(v9 + 112))
    {
      if (a4)
      {
        v10 = AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(a1, a2, a3, 1);
      }

      else
      {
        v10 = AMAuthInstallApImg4ServerRequestAddRequiredTags(a1, a2, a3);
      }

      v4 = v10;
      if (v10)
      {
        AMAuthInstallLog(3, "AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS", "failed to add Ap Img4 tags");
      }

      return v4;
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
  }

  v4 = AMAuthInstallApImg3ServerRequestAddRequiredTags(a1, a2, v7, v6);
  if (v4)
  {
    AMAuthInstallLog(3, "AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS", "failed to add Ap Img3 tags");
  }

  return v4;
}

uint64_t AMAuthInstallApSupportsLocalSigning(uint64_t a1, _BYTE *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*(v5 + 112))
      {
        v6 = AMAuthInstallApImg4SupportsLocalSigning(a1);
LABEL_8:
        v7 = v6;
        result = 0;
        *a2 = v7;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
    }

    v6 = AMAuthInstallApImg3SupportsLocalSigning();
    goto LABEL_8;
  }

  return result;
}

uint64_t AMAuthInstallApSupportsGlobalSigning(uint64_t a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*(v5 + 112))
      {
        v6 = AMAuthInstallApImg4SupportsGlobalSigning(a1);
        result = 0;
        *a2 = v6;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
    }

    return 13;
  }

  return result;
}

uint64_t AMAuthInstallApSetParameters(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = 1;
  if (a1 && theDict)
  {
    if (!*(a1 + 16))
    {
      v5 = calloc(1uLL, 0xD8uLL);
      *(a1 + 16) = v5;
      if (!v5)
      {
        return 2;
      }

      v5[4] = 1;
    }

    Value = CFDictionaryGetValue(theDict, @"ECID");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID() && !CFNumberGetValue(v7, kCFNumberSInt64Type, *(a1 + 16)))
      {
        v117 = v7;
        v116 = "failed to convert ECID %@";
        goto LABEL_128;
      }
    }

    v9 = CFDictionaryGetValue(theDict, @"ApChipID");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFNumberGetTypeID() && !CFNumberGetValue(v10, kCFNumberSInt32Type, (*(a1 + 16) + 8)))
      {
        v117 = v10;
        v116 = "failed to convert chip ID %@";
        goto LABEL_128;
      }
    }

    v12 = CFDictionaryGetValue(theDict, @"ApBoardID");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFNumberGetTypeID() && !CFNumberGetValue(v13, kCFNumberSInt32Type, (*(a1 + 16) + 12)))
      {
        v117 = v13;
        v116 = "failed to convert board ID %@";
        goto LABEL_128;
      }
    }

    v15 = CFDictionaryGetValue(theDict, @"ApSikaFuse");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        AMSupportSafeRelease();
        *(*(a1 + 16) + 176) = CFRetain(v16);
      }
    }

    v18 = CFDictionaryGetValue(theDict, @"UIDMode");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFBooleanGetTypeID())
      {
        AMSupportSafeRelease();
        *(*(a1 + 16) + 184) = CFRetain(v19);
      }
    }

    v21 = CFDictionaryGetValue(theDict, @"RequiresUIDMode");
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFBooleanGetTypeID())
      {
        AMSupportSafeRelease();
        *(*(a1 + 16) + 192) = CFRetain(v22);
      }
    }

    v24 = CFDictionaryGetValue(theDict, @"Ap,EphemeralDataMode");
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFBooleanGetTypeID())
      {
        AMSupportSafeRelease();
        *(*(a1 + 16) + 200) = CFRetain(v25);
      }
    }

    v27 = CFDictionaryGetValue(theDict, @"Ap,DisablePlatformOnlyCode");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID())
      {
        AMSupportSafeRelease();
        *(*(a1 + 16) + 208) = CFRetain(v28);
      }
    }

    v30 = CFDictionaryGetValue(theDict, @"ApSecurityDomain");
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID() && !CFNumberGetValue(v31, kCFNumberSInt32Type, (*(a1 + 16) + 16)))
      {
        v117 = v31;
        v116 = "failed to convert security domain %@";
        goto LABEL_128;
      }
    }

    v33 = CFDictionaryGetValue(theDict, @"CertificateEpoch");
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFNumberGetTypeID())
      {
        CFRetain(v34);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 64) = v34;
      }
    }

    v36 = CFDictionaryGetValue(theDict, @"SerialString");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFStringGetTypeID() && !*(*(a1 + 16) + 72))
      {
        CFRetain(v37);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 72) = v37;
      }
    }

    v39 = CFDictionaryGetValue(theDict, @"ApProductionMode");
    if (v39)
    {
      v40 = v39;
      v41 = CFGetTypeID(v39);
      if (v41 == CFBooleanGetTypeID())
      {
        *(*(a1 + 16) + 20) = CFBooleanGetValue(v40);
      }
    }

    v42 = CFDictionaryGetValue(theDict, @"ApSupportsImg4");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 == CFBooleanGetTypeID())
      {
        *(*(a1 + 16) + 112) = CFBooleanGetValue(v43);
      }
    }

    v45 = CFDictionaryGetValue(theDict, @"ApImg4DigestType");
    if (v45 && (v46 = v45, v47 = CFGetTypeID(v45), v47 == CFStringGetTypeID()))
    {
      if (CFStringCompare(v46, @"sha1", 1uLL) == kCFCompareEqualTo)
      {
        *(*(a1 + 16) + 128) = 1;
LABEL_54:
        v50 = CFDictionaryGetValue(theDict, @"ApNonce");
        if (v50)
        {
          v51 = v50;
          v52 = CFGetTypeID(v50);
          if (v52 == CFDataGetTypeID())
          {
            *(*(a1 + 16) + 24) = CFRetain(v51);
          }
        }

        v53 = CFDictionaryGetValue(theDict, @"SepNonce");
        if (v53)
        {
          v54 = CFGetTypeID(v53);
          if (v54 == CFDataGetTypeID())
          {
            v55 = OUTLINED_FUNCTION_3_0();
            v57 = AMAuthInstallApImg4SetSepNonce(v55, v56);
            if (v57)
            {
              return v57;
            }
          }
        }

        v58 = CFDictionaryGetValue(theDict, @"ApNonceSlotID");
        if (v58)
        {
          v59 = CFGetTypeID(v58);
          if (v59 == CFNumberGetTypeID())
          {
            v114 = OUTLINED_FUNCTION_3_0();
            AMAuthInstallApImg4SetApNonceSlotID(v114, v115);
          }
        }

        v60 = CFDictionaryGetValue(theDict, @"SepNonceSlotID");
        if (v60)
        {
          v61 = CFGetTypeID(v60);
          if (v61 == CFNumberGetTypeID())
          {
            v62 = OUTLINED_FUNCTION_3_0();
            AMAuthInstallApImg4SetSepNonceSlotID(v62, v63);
          }
        }

        v64 = CFDictionaryGetValue(theDict, @"Ap,SoftwareNonceForUpdateFreshness");
        if (v64)
        {
          v65 = v64;
          v66 = CFGetTypeID(v64);
          if (v66 == CFDataGetTypeID())
          {
            *(*(a1 + 16) + 40) = CFRetain(v65);
          }
        }

        v67 = CFDictionaryGetValue(theDict, @"ApSecurityMode");
        if (v67)
        {
          v68 = v67;
          v69 = CFGetTypeID(v67);
          if (v69 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 88) = CFBooleanGetValue(v68);
          }
        }

        v70 = CFDictionaryGetValue(theDict, @"ApInRomDFU");
        if (v70)
        {
          v71 = v70;
          v72 = CFGetTypeID(v70);
          if (v72 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 96) = CFBooleanGetValue(v71);
          }
        }

        v73 = CFDictionaryGetValue(theDict, @"ApEffectiveSecurityMode");
        if (v73)
        {
          v74 = v73;
          v75 = CFGetTypeID(v73);
          if (v75 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 98) = CFBooleanGetValue(v74);
          }
        }

        v76 = CFDictionaryGetValue(theDict, @"ApEffectiveProductionMode");
        if (v76)
        {
          v77 = v76;
          v78 = CFGetTypeID(v76);
          if (v78 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 97) = CFBooleanGetValue(v77);
          }
        }

        v79 = CFDictionaryGetValue(theDict, @"DemotionPolicy");
        if (v79 && (v80 = v79, v81 = CFGetTypeID(v79), v81 == CFStringGetTypeID()))
        {
          v82 = CFRetain(v80);
        }

        else
        {
          v82 = &stru_2A1EE9D10;
        }

        *(*(a1 + 16) + 104) = v82;
        v83 = CFDictionaryGetValue(theDict, @"HardwareModel");
        if (v83)
        {
          v84 = v83;
          v85 = CFGetTypeID(v83);
          if (v85 == CFStringGetTypeID())
          {
            *(*(a1 + 16) + 120) = CFRetain(v84);
          }
        }

        v86 = CFDictionaryGetValue(theDict, @"ApX86");
        if (v86)
        {
          v87 = v86;
          v88 = CFGetTypeID(v86);
          if (v88 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 132) = CFBooleanGetValue(v87);
          }
        }

        v89 = CFDictionaryGetValue(theDict, @"UseGlobalSigning");
        if (v89)
        {
          v90 = v89;
          v91 = CFGetTypeID(v89);
          if (v91 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 95) = CFBooleanGetValue(v90);
          }
        }

        v92 = CFDictionaryGetValue(theDict, @"Ap,InternalUseOnlySW");
        if (v92)
        {
          v93 = v92;
          v94 = CFGetTypeID(v92);
          if (v94 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 91) = CFBooleanGetValue(v93);
          }
        }

        v95 = CFDictionaryGetValue(theDict, @"NoDefaultRequestRules");
        if (v95)
        {
          v96 = v95;
          v97 = CFGetTypeID(v95);
          if (v97 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 168) = CFBooleanGetValue(v96);
          }
        }

        v98 = CFDictionaryGetValue(theDict, @"TagPrefix");
        if (!v98 || (v99 = v98, v100 = CFGetTypeID(v98), v100 != CFStringGetTypeID()))
        {
LABEL_106:
          v105 = CFDictionaryGetValue(theDict, @"APTagOverrides");
          if (v105)
          {
            v106 = v105;
            v107 = CFGetTypeID(v105);
            if (v107 == CFDictionaryGetTypeID())
            {
              SafeRelease(*(*(a1 + 16) + 152));
              v108 = CFRetain(v106);
              *(*(a1 + 16) + 152) = v108;
              v109 = CFDictionaryGetValue(v108, @"@ApImg4Ticket");
              if (v109)
              {
                v110 = v109;
                if (CFStringGetLength(v109) >= 3 && CFStringGetCharacterAtIndex(v110, 0) == 64)
                {
                  SafeRelease(*(a1 + 88));
                  v111 = CFGetAllocator(a1);
                  v118.length = CFStringGetLength(v110) - 1;
                  v118.location = 1;
                  *(a1 + 88) = CFStringCreateWithSubstring(v111, v110, v118);
                }
              }
            }
          }

          v112 = *(a1 + 16);
          if (!v112)
          {
            AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
            return 0;
          }

          if (!*(v112 + 112))
          {
            return 0;
          }

          v57 = AMAuthInstallApImg4SetParameters(a1, theDict);
          if (!v57)
          {
            return 0;
          }

          return v57;
        }

        SafeRelease(*(*(a1 + 16) + 160));
        CFStringGetLength(v99);
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v99);
        *(*(a1 + 16) + 160) = MutableCopy;
        if (MutableCopy)
        {
          if (CFStringHasSuffix(v99, @","))
          {
            v102 = *(*(a1 + 16) + 160);
            Length = CFStringGetLength(v102);
            CFStringPad(v102, 0, Length - 1, 0);
          }

          SafeRelease(*(a1 + 88));
          v104 = CFGetAllocator(a1);
          *(a1 + 88) = CFStringCreateWithFormat(v104, 0, @"%@,Ticket", *(*(a1 + 16) + 160));
          goto LABEL_106;
        }

        v117 = v99;
        v116 = "failed to convert TagPrefix %@";
LABEL_128:
        v2 = 3;
        AMAuthInstallLog(3, "AMAuthInstallApSetParameters", v116, v117);
        return v2;
      }

      if (CFStringCompare(v46, @"sha2-256", 1uLL))
      {
        if (CFStringCompare(v46, @"sha2-384", 1uLL))
        {
          AMAuthInstallLog(3, "AMAuthInstallApSetParameters", "unsupported digest type %@", v46);
          goto LABEL_54;
        }

        v48 = *(a1 + 16);
        v49 = 384;
      }

      else
      {
        v48 = *(a1 + 16);
        v49 = 256;
      }
    }

    else
    {
      v48 = *(a1 + 16);
      v49 = 1;
    }

    *(v48 + 128) = v49;
    goto LABEL_54;
  }

  return v2;
}

uint64_t AMAuthInstallApImg4SetApNonceSlotID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  CFRetain(cf);
  SafeRelease(*(*(a1 + 16) + 32));
  result = 0;
  *(*(a1 + 16) + 32) = cf;
  return result;
}

uint64_t AMAuthInstallApCopyParameters(const void **cf, CFTypeRef *a2)
{
  if (!cf)
  {
    Mutable = 0;
    v4 = 1;
    goto LABEL_30;
  }

  Mutable = 0;
  v4 = 1;
  if (a2 && cf[2])
  {
    v6 = CFGetAllocator(cf);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      AMAuthInstallLog(3, "AMAuthInstallApCopyParameters", "failed to allocate parameters dict");
      v4 = 2;
      goto LABEL_30;
    }

    v7 = CFGetAllocator(cf);
    v8 = CFNumberCreate(v7, kCFNumberSInt64Type, cf[2]);
    if (v8)
    {
      v9 = v8;
      OUTLINED_FUNCTION_5_0(v8, @"ECID");
      CFRelease(v9);
      v10 = CFGetAllocator(cf);
      v11 = CFNumberCreate(v10, kCFNumberSInt32Type, cf[2] + 8);
      if (v11)
      {
        v12 = v11;
        OUTLINED_FUNCTION_5_0(v11, @"ApChipID");
        CFRelease(v12);
        v13 = CFGetAllocator(cf);
        v14 = CFNumberCreate(v13, kCFNumberSInt32Type, cf[2] + 12);
        if (v14)
        {
          v15 = v14;
          OUTLINED_FUNCTION_5_0(v14, @"ApBoardID");
          CFRelease(v15);
          v16 = CFGetAllocator(cf);
          v17 = CFNumberCreate(v16, kCFNumberSInt32Type, cf[2] + 16);
          if (v17)
          {
            v18 = v17;
            OUTLINED_FUNCTION_5_0(v17, @"ApSecurityDomain");
            CFRelease(v18);
            v19 = cf[2];
            v20 = v19[8];
            if (v20)
            {
              CFDictionarySetValue(Mutable, @"CertificateEpoch", v20);
              v19 = cf[2];
            }

            v21 = v19[9];
            if (v21)
            {
              CFDictionarySetValue(Mutable, @"SerialString", v21);
            }

            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApProductionMode", v22);
            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApSupportsImg4", v23);
            v24 = cf[2];
            v25 = v24[3];
            if (v25)
            {
              CFDictionarySetValue(Mutable, @"ApNonce", v25);
              v24 = cf[2];
            }

            v26 = v24[6];
            if (v26)
            {
              CFDictionarySetValue(Mutable, @"SepNonce", v26);
              v24 = cf[2];
            }

            v27 = v24[5];
            if (v27)
            {
              CFDictionarySetValue(Mutable, @"Ap,SoftwareNonceForUpdateFreshness", v27);
            }

            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApSecurityMode", v28);
            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApInRomDFU", v29);
            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApEffectiveSecurityMode", v30);
            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"ApEffectiveProductionMode", v31);
            OUTLINED_FUNCTION_2_1();
            CFDictionarySetValue(Mutable, @"Ap,InternalUseOnlySW", v32);
            v34 = cf[2];
            v35 = v34[25];
            if (v35)
            {
              CFDictionarySetValue(Mutable, @"Ap,EphemeralDataMode", v35);
              v34 = cf[2];
            }

            v36 = v34[26];
            if (v36)
            {
              CFDictionarySetValue(Mutable, @"Ap,DisablePlatformOnlyCode", v36);
              v34 = cf[2];
            }

            if (*(v34 + 132))
            {
              OUTLINED_FUNCTION_5_0(v33, @"ApX86");
              v34 = cf[2];
            }

            v37 = v34[13];
            if (v37)
            {
              CFDictionarySetValue(Mutable, @"DemotionPolicy", v37);
              v34 = cf[2];
            }

            v38 = v34[15];
            if (v38)
            {
              CFDictionarySetValue(Mutable, @"HardwareModel", v38);
            }

            v4 = 0;
            *a2 = CFRetain(Mutable);
            goto LABEL_30;
          }

          v40 = "failed to convert securityDomain";
        }

        else
        {
          v40 = "failed to convert boardID";
        }
      }

      else
      {
        v40 = "failed to convert chipID";
      }
    }

    else
    {
      v40 = "failed to convert ecid";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApCopyParameters", v40);
  }

LABEL_30:
  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallApSetNonce(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (cf && *(a1 + 16))
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) == 20 || CFDataGetLength(cf) == 32)
      {
        Length = CFDataGetLength(cf);
        v7 = *(a1 + 16);
        if (Length == 32)
        {
          *(v7 + 128) = 384;
        }

        SafeRelease(*(v7 + 24));
        v8 = CFRetain(cf);
        result = 0;
        *(*(a1 + 16) + 24) = v8;
        return result;
      }

      v9 = CFDataGetLength(cf);
      AMAuthInstallLog(3, "AMAuthInstallApSetNonce", "AMAuthInstallApSetNonce bad Nonce length: %d", v9);
    }

    return 1;
  }

  return result;
}

uint64_t AMAuthInstallApEnableRelaxedImageVerification(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  *(v2 + 80) = a2;
  return result;
}

uint64_t AMAuthInstallApWriteSignatureStripped(uint64_t a1, const void *a2, const __CFURL *a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (*(v7 + 112))
      {
        return 0;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", "AMAuthInstallApIsImg4");
    }

    result = AMAuthInstallApImg3WriteSignatureStrippedImage3(a2, a3);
    if (result)
    {
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApRemoveInfoDict(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = 0;
  v6 = 1;
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v9);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        v3 = malloc(8 * Count);
        v13 = malloc(8 * Count);
        v4 = v13;
        v6 = 2;
        if (v3 && v13)
        {
          CFDictionaryGetKeysAndValues(v5, v3, v13);
          if (Count < 1)
          {
LABEL_14:
            v6 = 0;
            *a3 = CFRetain(v5);
          }

          else
          {
            v14 = 0;
            while (v3[v14])
            {
              v15 = v4[v14];
              if (!v15)
              {
                break;
              }

              v16 = CFGetTypeID(v15);
              if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v4[v14], @"Info"))
              {
                CFDictionaryRemoveValue(v4[v14], @"Info");
              }

              if (Count == ++v14)
              {
                goto LABEL_14;
              }
            }

            v6 = 1;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_0();
        v6 = 2;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
  }

  SafeRelease(v5);
  SafeFree(v3);
  SafeFree(v4);
  return v6;
}

CFIndex AMAuthInstallApCreateMeasurementsWithTag(void *cf, const __CFURL *a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6, CFTypeRef *a7)
{
  v23 = 0;
  if (!cf)
  {
    Code = 1;
    goto LABEL_16;
  }

  Code = 1;
  if (a7)
  {
    if (a2)
    {
      v10 = cf[2];
      if (v10)
      {
        v11 = a4;
        if (a6 == 2)
        {
          v16 = CFGetAllocator(cf);
          MeasurementsWithTag = AMAuthInstallApFtabCreateMeasurementsWithTag(v16, a2, a3, v11, a7);
        }

        else
        {
          if (a6 == 1)
          {
            err = 0;
            v13 = CFGetAllocator(cf);
            v14 = AMAuthInstallSupportCopyTagAndFileURL(v13, a2, 0, &v23);
            if (v14)
            {
              Code = v14;
            }

            else
            {
              v15 = AMAuthInstallApMeasureBinary(v23, 0x100000, v11, &err);
              *a7 = v15;
              if (v15)
              {
                Code = 0;
              }

              else
              {
                Code = CFErrorGetCode(err);
              }
            }

            goto LABEL_16;
          }

          v18 = a5;
          v19 = *(v10 + 112);
          v20 = CFGetAllocator(cf);
          if (v19)
          {
            MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v20, a2, a3, v11, a7);
          }

          else
          {
            MeasurementsWithTag = AMAuthInstallApImg3CreateMeasurementsFromURL(v20, a2, a7, v18);
          }
        }

        Code = MeasurementsWithTag;
      }
    }
  }

LABEL_16:
  AMSupportSafeRelease();
  return Code;
}