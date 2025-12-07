void sub_2475851B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<double>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::vector<int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_247758360)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_247758350)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_247758360)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_247758350)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247585890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_247585AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_247585B84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_247585BFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v34.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v34))
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(&v34);
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        *a3 = 1;
        *(a3 + 8) = v6;
        goto LABEL_44;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v34);
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::TfToken>(&v34);
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v33, v12);
        if (v33.__r_.__value_.__l.__size_)
        {
          v14 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v13);
          if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v14 &= 0xFFFFFFFFFFFFFFF8;
          }

          *a3 = 1;
          *(a3 + 8) = v14;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v30, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v30;
          v25 = v32;
          *(a3 + 24) = v31;
          *(a3 + 32) = v25;
          *(a3 + 39) = *(&v32 + 7);
          LOBYTE(v25) = HIBYTE(v32);
          v32 = 0uLL;
          v31 = 0;
          *a3 = 0;
          *(a3 + 47) = v25;
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v33);
        goto LABEL_44;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v30, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v30;
      v23 = v32;
      *(a3 + 24) = v31;
      *(a3 + 32) = v23;
      *(a3 + 39) = *(&v32 + 7);
      LOBYTE(v23) = HIBYTE(v32);
      v32 = 0uLL;
      v31 = 0;
      *a3 = 0;
      *(a3 + 47) = v23;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
LABEL_44:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v34);
        return;
      }

      v22 = __p[0];
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      std::operator+<char>();
      v15 = std::string::append(&v27, ") at the given time: ");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v26, *a2);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v26;
      }

      else
      {
        v17 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v33, v17, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v29 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v30, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v30;
      v21 = v32;
      *(a3 + 24) = v31;
      *(a3 + 32) = v21;
      *(a3 + 39) = *(&v32 + 7);
      LOBYTE(v21) = HIBYTE(v32);
      v32 = 0uLL;
      v31 = 0;
      *a3 = 0;
      *(a3 + 47) = v21;
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v22 = v27.__r_.__value_.__r.__words[0];
    }

    operator delete(v22);
    goto LABEL_44;
  }

  v7 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v7 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v30, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v30;
  v9 = v32;
  *(a3 + 24) = v31;
  *(a3 + 32) = v9;
  *(a3 + 39) = *(&v32 + 7);
  LOBYTE(v9) = HIBYTE(v32);
  v32 = 0uLL;
  v31 = 0;
  *a3 = 0;
  *(a3 + 47) = v9;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247586014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::TfToken>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v41);
        v7 = *(v6 + 16);
        v38 = *v6;
        v39[0] = v7;
        v8 = *(v6 + 32);
        if (v8)
        {
          v9 = *(&v39[0] + 1);
          if (!*(&v39[0] + 1))
          {
            v9 = (v8 - 16);
          }

          atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
        }

        *a3 = 1;
        v10 = v39[0];
        *(a3 + 8) = v38;
        *(a3 + 24) = v10;
        v38 = 0u;
        v39[0] = 0u;
        *(a3 + 40) = v8;
        *&v39[1] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v41);
      {
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v17);
          v19 = *(v18 + 16);
          v38 = *v18;
          v39[0] = v19;
          v20 = *(v18 + 32);
          if (v20)
          {
            v21 = *(&v39[0] + 1);
            if (!*(&v39[0] + 1))
            {
              v21 = (v20 - 16);
            }

            atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
          }

          *a3 = 1;
          v22 = v39[0];
          *(a3 + 8) = v38;
          *(a3 + 24) = v22;
          v38 = 0u;
          v39[0] = 0u;
          *(a3 + 40) = v20;
          *&v39[1] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v38;
          v33 = *(&v39[0] + 1);
          *(a3 + 24) = *&v39[0];
          *(a3 + 32) = v33;
          *(a3 + 39) = *(v39 + 15);
          LOBYTE(v33) = BYTE7(v39[1]);
          memset(v39, 0, 24);
          *a3 = 0;
          *(a3 + 47) = v33;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v40);
        goto LABEL_46;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v31 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v31;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v31) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v31;
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_46:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v41);
        return;
      }

      v30 = __p[0];
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v12 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      std::operator+<char>();
      v23 = std::string::append(&v35, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v34, *a2);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v40, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v37 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v29 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v29;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v29) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v29;
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = v35.__r_.__value_.__r.__words[0];
    }

    operator delete(v30);
    goto LABEL_46;
  }

  v11 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v11 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v38;
  v13 = *(&v39[0] + 1);
  *(a3 + 24) = *&v39[0];
  *(a3 + 32) = v13;
  *(a3 + 39) = *(v39 + 15);
  LOBYTE(v13) = BYTE7(v39[1]);
  memset(v39, 0, 24);
  *a3 = 0;
  *(a3 + 47) = v13;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475865D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 52)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<int>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v41);
        v7 = *(v6 + 16);
        v38 = *v6;
        v39[0] = v7;
        v8 = *(v6 + 32);
        if (v8)
        {
          v9 = *(&v39[0] + 1);
          if (!*(&v39[0] + 1))
          {
            v9 = (v8 - 16);
          }

          atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
        }

        *a3 = 1;
        v10 = v39[0];
        *(a3 + 8) = v38;
        *(a3 + 24) = v10;
        v38 = 0u;
        v39[0] = 0u;
        *(a3 + 40) = v8;
        *&v39[1] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v41);
      {
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v17);
          v19 = *(v18 + 16);
          v38 = *v18;
          v39[0] = v19;
          v20 = *(v18 + 32);
          if (v20)
          {
            v21 = *(&v39[0] + 1);
            if (!*(&v39[0] + 1))
            {
              v21 = (v20 - 16);
            }

            atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
          }

          *a3 = 1;
          v22 = v39[0];
          *(a3 + 8) = v38;
          *(a3 + 24) = v22;
          v38 = 0u;
          v39[0] = 0u;
          *(a3 + 40) = v20;
          *&v39[1] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v38;
          v33 = *(&v39[0] + 1);
          *(a3 + 24) = *&v39[0];
          *(a3 + 32) = v33;
          *(a3 + 39) = *(v39 + 15);
          LOBYTE(v33) = BYTE7(v39[1]);
          memset(v39, 0, 24);
          *a3 = 0;
          *(a3 + 47) = v33;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v40);
        goto LABEL_46;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v31 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v31;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v31) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v31;
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_46:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v41);
        return;
      }

      v30 = __p[0];
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v12 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      std::operator+<char>();
      v23 = std::string::append(&v35, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v34, *a2);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v40, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v37 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v29 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v29;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v29) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v29;
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = v35.__r_.__value_.__r.__words[0];
    }

    operator delete(v30);
    goto LABEL_46;
  }

  v11 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v11 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v38;
  v13 = *(&v39[0] + 1);
  *(a3 + 24) = *&v39[0];
  *(a3 + 32) = v13;
  *(a3 + 39) = *(v39 + 15);
  LOBYTE(v13) = BYTE7(v39[1]);
  memset(v39, 0, 24);
  *a3 = 0;
  *(a3 + 47) = v13;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247586D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 57)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<float>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_247587078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v41);
        v7 = *(v6 + 16);
        v38 = *v6;
        v39[0] = v7;
        v8 = *(v6 + 32);
        if (v8)
        {
          v9 = *(&v39[0] + 1);
          if (!*(&v39[0] + 1))
          {
            v9 = (v8 - 16);
          }

          atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
        }

        *a3 = 1;
        v10 = v39[0];
        *(a3 + 8) = v38;
        *(a3 + 24) = v10;
        v38 = 0u;
        v39[0] = 0u;
        *(a3 + 40) = v8;
        *&v39[1] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v41);
      {
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(v17);
          v19 = *(v18 + 16);
          v38 = *v18;
          v39[0] = v19;
          v20 = *(v18 + 32);
          if (v20)
          {
            v21 = *(&v39[0] + 1);
            if (!*(&v39[0] + 1))
            {
              v21 = (v20 - 16);
            }

            atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
          }

          *a3 = 1;
          v22 = v39[0];
          *(a3 + 8) = v38;
          *(a3 + 24) = v22;
          v38 = 0u;
          v39[0] = 0u;
          *(a3 + 40) = v20;
          *&v39[1] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v38;
          v33 = *(&v39[0] + 1);
          *(a3 + 24) = *&v39[0];
          *(a3 + 32) = v33;
          *(a3 + 39) = *(v39 + 15);
          LOBYTE(v33) = BYTE7(v39[1]);
          memset(v39, 0, 24);
          *a3 = 0;
          *(a3 + 47) = v33;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v40);
        goto LABEL_46;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v31 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v31;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v31) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v31;
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_46:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v41);
        return;
      }

      v30 = __p[0];
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v12 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      std::operator+<char>();
      v23 = std::string::append(&v35, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v34, *a2);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v40, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v37 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v29 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v29;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v29) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v29;
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = v35.__r_.__value_.__r.__words[0];
    }

    operator delete(v30);
    goto LABEL_46;
  }

  v11 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v11 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v38;
  v13 = *(&v39[0] + 1);
  *(a3 + 24) = *&v39[0];
  *(a3 + 32) = v13;
  *(a3 + 39) = *(v39 + 15);
  LOBYTE(v13) = BYTE7(v39[1]);
  memset(v39, 0, 24);
  *a3 = 0;
  *(a3 + 47) = v13;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475874E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X0>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a3);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v14 = a1[3];
          v13 = a1 + 3;
          v12 = v14;
          if (*(v13 + 23) >= 0)
          {
            v12 = v13;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v15, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v15);
      *(a1 + 1) = *buf;
      v11 = v21;
      a1[3] = *&buf[16];
      a1[4] = v11;
      *(a1 + 39) = *(&v21 + 7);
      LOBYTE(v11) = HIBYTE(v21);
      v21 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 47) = v11;
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v18);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 1) = *buf;
    v10 = v21;
    a1[3] = *&buf[16];
    a1[4] = v10;
    *(a1 + 39) = *(&v21 + 7);
    LOBYTE(v10) = HIBYTE(v21);
    v21 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 47) = v10;
    if ((v18[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_247587A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::DetailedError>::~Result(v9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t *realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 16);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v3 - 24);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v3 - 32);
      result = *(v3 - 40);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t RIOPxrArAssetGetTypeID()
{
  if (qword_27EE52EB8 != -1)
  {
    dispatch_once(&qword_27EE52EB8, &__block_literal_global_9);
  }

  return _MergedGlobals_14;
}

void __RIOPxrArAssetGetTypeID_block_invoke()
{
  if (!_MergedGlobals_14)
  {
    _MergedGlobals_14 = _CFRuntimeRegisterClass();
  }
}

pxrInternal__aapl__pxrReserved__ *RIOPxrArAssetCreate(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = a1;
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
    std::string::basic_string[abi:ne200100]<0>(v11, v1);
    *__p = *v11;
    v16 = v12;
    v11[1] = 0;
    v12 = 0;
    v11[0] = 0;
    pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    if (v13)
    {
      (*(*v13 + 24))(__p);
      if (qword_27EE52EB8 != -1)
      {
        dispatch_once(&qword_27EE52EB8, &__block_literal_global_9);
      }

      Instance = _CFRuntimeCreateInstance();
      v1 = Instance;
      if (Instance)
      {
        *(Instance + 16) = 0u;
        *(Instance + 32) = 0u;
      }

      v4 = v13;
      v3 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = *(Instance + 24);
      *(v1 + 2) = v4;
      *(v1 + 3) = v3;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v7 = __p[0];
      v6 = __p[1];
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      }

      v8 = *(v1 + 5);
      *(v1 + 4) = v7;
      *(v1 + 5) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    else
    {
      v9 = *(realityio::logObjects(0) + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v1;
        _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, "RIOPxrUtilsCFDataWithArAssetPath failed to resolve path %s", __p, 0xCu);
      }

      v1 = 0;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return v1;
}

void sub_247588044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef RIOPxrArAssetCreateCFDataNoCopy(CFDataRef result)
{
  if (result)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = *(result + 4);
    v3 = (*(**(result + 2) + 16))(*(result + 2));
    v4 = *MEMORY[0x277CBED00];

    return CFDataCreateWithBytesNoCopy(v1, v2, v3, v4);
  }

  return result;
}

CFDataRef RIOPxrUtilsCopyCFDataWithArAssetPath(pxrInternal__aapl__pxrReserved__ *a1, _DWORD *a2)
{
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
    std::string::basic_string[abi:ne200100]<0>(v9, a1);
    *__p = *v9;
    v14 = v10;
    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (v11)
    {
      (*(*v11 + 24))(__p);
      *a2 = (*(*v11 + 16))(v11);
      v5 = __p[0];
      v6 = (*(*v11 + 16))(v11);
      v2 = CFDataCreate(*MEMORY[0x277CBECE8], v5, v6);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    else
    {
      v7 = *(realityio::logObjects(0) + 32);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = a1;
        _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_DEFAULT, "RIOPxrUtilsCopyCFDataWithArAssetPath failed to resolve path %s", __p, 0xCu);
      }

      v2 = 0;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return v2;
}

void sub_24758830C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrArUtilsCopyExtension(pxrInternal__aapl__pxrReserved__ *a1)
{
  pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  std::string::basic_string[abi:ne200100]<0>(&v5, a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v3 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  return v3;
}

void sub_247588404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrUtilsResetDefaultArResolver()
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ArDefaultResolver");
  pxrInternal__aapl__pxrReserved__::ArSetPreferredResolver();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_247588484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _RIOPxrArAssetCFFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t realityio::PhysicsColliderComponentBuilder::kOutputName(realityio::PhysicsColliderComponentBuilder *this)
{
  {
    operator new();
  }

  return realityio::PhysicsColliderComponentBuilder::kOutputName(void)::kOutputName;
}

void sub_2475885EC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::PhysicsColliderComponentBuilder::PhysicsColliderComponentBuilder(realityio::PhysicsColliderComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  __src[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__src, "PhysicsColliderComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kPhysicsColliderComponentBuilderIdentifier);
  realityio::generatePhysicsColliderDirtyStageSubscription(&v4);
  v7[0] = &unk_28594F8F8;
  v7[3] = v7;
  v6[0] = &unk_28594F978;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, __src, __p, &v4, v7, v6);
}

void sub_247588790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a18);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::PhysicsColliderComponentBuilder::run(realityio::PhysicsColliderComponentBuilder *this, realityio::Inputs *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v15, v4, v3);
  v6 = *(realityio::logObjects(PrimAtPath) + 24);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_INFO, "Updating entity's rigid body collider", buf, 2u);
  }

  v8 = realityio::EntityBuilder::kInputName(v7);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v8, buf);
  if (buf[0])
  {
    v9 = v14;
    v12 = v14;
    if (v14)
    {
      RERetain();
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  v10 = *(realityio::logObjects(v9) + 24);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "Stopping operation to set the rigid body's collider component because entity no longer exists", v19, 2u);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v12);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(buf);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  result = v16;
  if (v16)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  return result;
}

void sub_247588A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 - 80);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va2);
  _Unwind_Resume(a1);
}

void realityio::PhysicsColliderComponentBuilder::clear(realityio::PhysicsColliderComponentBuilder *this, realityio::Inputs *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v4 = *(a2 + 6);
  v17 = &unk_28594FBF8;
  *&v18 = &v14;
  *(&v18 + 1) = this;
  __p.__r_.__value_.__r.__words[0] = &v17;
  (*(*v4 + 16))(v4, &v17);
  v5 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v17);
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = realityio::PhysicsColliderComponentBuilder::kOutputName(v5);
  realityio::Outputs::getRawValue<RECollisionShape *>(v7, v8, &v17);
  v10 = v17;
  if ((v17 & 1) == 0)
  {
    v15 = v18;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v7 = v16.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      if ((v17 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = __p;
      v7 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v10)
  {
    v12 = *(this + 2);
    v11 = *(this + 3);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = realityio::PhysicsColliderComponentBuilder::kOutputName(v9);
    std::mutex::lock((v12 + 64));
    if (v12 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v12 + 40, v13))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v12 + 40), v13);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v12, v13);
    std::mutex::unlock((v12 + 64));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else if (v2 < 0)
  {
    operator delete(v7);
  }
}

void sub_247588C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a16 & 1) == 0 && a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void realityio::PhysicsColliderComponentBuilder::~PhysicsColliderComponentBuilder(realityio::PhysicsColliderComponentBuilder *this)
{
  realityio::PhysicsColliderComponentBuilder::~PhysicsColliderComponentBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28594F880;
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v3 = *(this + 26);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 23);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_247588FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsColliderComponentBuilder::PhysicsColliderComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::PhysicsColliderComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24758921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsColliderComponentBuilder::PhysicsColliderComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::PhysicsColliderComponentBuilder::PhysicsColliderComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28594F9F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::PhysicsColliderAssetBuilder *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = realityio::PhysicsColliderAssetBuilder::kOutputName(a1);
  realityio::Inputs::_getValue<REAsset *>(v1, v3, v11);
  if (v11[0])
  {
    v10 = v12;
    if (v12)
    {
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      realityio::PhysicsColliderComponentBuilder::kOutputName(v4);
      RECollisionShapeAssetGetCollisionShape();
      std::mutex::lock(v6 + 1);
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  v7 = *(realityio::logObjects(v4) + 24);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "No physics collider asset exists for the rigid body", buf, 2u);
  }

  REColliderComponentGetComponentType();
  *buf = &unk_28594FAE8;
  v17 = v2;
  v18 = &v10;
  v19 = buf;
  v8 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(buf, v8);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](buf);
  RERigidBodyComponentGetComponentType();
  v15[0] = &unk_28594FB68;
  v15[1] = v2;
  v15[3] = v15;
  v9 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v15, v9);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v15);
  if ((v11[0] & 1) == 0 && v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_2475895F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::mutex::unlock(v25 + 1);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<RECollisionShape *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594FA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28594FAE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);

  return REColliderComponentSetShape();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594FB68;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);

  return RERigidBodyComponentSetMotionType();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio31PhysicsColliderComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28594FBF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v8);
  if (v8[0])
  {
    v7 = v9;
    if (v9)
    {
      RERetain();
      v4 = *(v1 + 280);
      v5 = *(v1 + 288);
      while (v4 != v5)
      {
        REEntityRemoveComponentByClass();
        v4 += 8;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v7);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v8);
}

void sub_247589AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsColliderComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Outputs::getRawValue<RECollisionShape *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_247589C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::tokens::LightBuilderTokens_StaticTokenType::~LightBuilderTokens_StaticTokenType(realityio::tokens::LightBuilderTokens_StaticTokenType *this)
{
  v20 = (this + 152);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v20);
  v2 = *(this + 18);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 17);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 15);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 14);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 13);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 12);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 7);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 6);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 5);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 3);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 2);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 1);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::LightBuilderTokens_StaticTokenType *realityio::tokens::LightBuilderTokens_StaticTokenType::LightBuilderTokens_StaticTokenType(realityio::tokens::LightBuilderTokens_StaticTokenType *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "RectLight", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "SphereLight", 0);
  MEMORY[0x24C1A5DF0](this + 16, "CylinderLight", 0);
  MEMORY[0x24C1A5DF0](this + 24, "GeometryLight", 0);
  MEMORY[0x24C1A5DF0](this + 32, "DiskLight", 0);
  MEMORY[0x24C1A5DF0](this + 40, "DistantLight", 0);
  MEMORY[0x24C1A5DF0](this + 48, "DomeLight", 0);
  MEMORY[0x24C1A5DF0](this + 56, "intensity", 0);
  MEMORY[0x24C1A5DF0](this + 64, "exposure", 0);
  MEMORY[0x24C1A5DF0](this + 72, "color", 0);
  MEMORY[0x24C1A5DF0](this + 80, "treatAsAmbient", 0);
  MEMORY[0x24C1A5DF0](this + 88, "treatAsPoint", 0);
  MEMORY[0x24C1A5DF0](this + 96, "radius", 0);
  MEMORY[0x24C1A5DF0](this + 104, "width", 0);
  MEMORY[0x24C1A5DF0](this + 112, "height", 0);
  MEMORY[0x24C1A5DF0](this + 120, "shaping:cone:angle", 0);
  MEMORY[0x24C1A5DF0](this + 128, "shaping:cone:softness", 0);
  MEMORY[0x24C1A5DF0](this + 136, "realitykit:innerDegrees", 0);
  MEMORY[0x24C1A5DF0](this + 144, "inputs:texture:file", 0);
  v3 = (this + 152);
  v4 = *this;
  v26 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v27 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v28 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v29 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v30 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v32 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v33 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v34 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v35 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v36 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v37 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v38 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v39 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v40 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v41 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v42 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v43 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v44 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v26, &v45, 0x13uLL);
  for (i = 144; i != -8; i -= 8)
  {
    v24 = *(&v26 + i);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_24758A400(_Unwind_Exception *a1)
{
  v3 = 144;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[18];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[17];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[16];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[15];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[14];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[13];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[12];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[11];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[10];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[9];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[8];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[7];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[6];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[5];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[4];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[3];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[2];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::tokens::ShadowBuilderTokens_StaticTokenType::~ShadowBuilderTokens_StaticTokenType(realityio::tokens::ShadowBuilderTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::ShadowBuilderTokens_StaticTokenType *realityio::tokens::ShadowBuilderTokens_StaticTokenType::ShadowBuilderTokens_StaticTokenType(realityio::tokens::ShadowBuilderTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "shadow:enable", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "shadow:bias", 0);
  MEMORY[0x24C1A5DF0](this + 16, "shadow:distance", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_24758A804(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

float realityio::scaleLightIntensityByStageUnits(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, float a3)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v11, this);
  v4 = v12;
  if (v12)
  {
    if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v12) + 14))
    {
      v4 = v11;
    }

    else
    {
      v4 = 0;
    }
  }

  v13 = v4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v13);
  v5 = v12;
  if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v11, &v13);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v7 = v6;
  v8 = v12;
  if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v7 * v7 * a3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v13);
  return v9;
}

void sub_24758A9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, atomic_uint *a4, uint64_t a5, uint64_t a6, atomic_uint *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    if (atomic_fetch_add_explicit(a7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a7 + 8))(a7, a2, a3, a4);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

realityio::mtlx::UsdMtlxTokens_StaticTokenType *realityio::mtlx::UsdMtlxTokens_StaticTokenType::UsdMtlxTokens_StaticTokenType(realityio::mtlx::UsdMtlxTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "out", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t *realityio::mtlx::UsdMtlxStandardLibraryPaths(realityio::mtlx *this)
{
  {
    if (v2)
    {
      realityio::mtlx::_ComputeStdlibSearchPaths(v2);
    }
  }

  return &realityio::mtlx::UsdMtlxStandardLibraryPaths(void)::materialxLibraryPaths;
}

void realityio::mtlx::_ComputeStdlibSearchPaths(realityio::mtlx *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRealityIO"];
  v2 = v1;
  realityio::mtlx::UsdMtlxStandardLibraryPaths(void)::materialxLibraryPaths = 0;
  *algn_27EE51DA8 = 0;
  qword_27EE51DB0 = 0;
  if (v1)
  {
    v3 = [v1 resourceURL];
    v4 = v3;
    if (!v3)
    {
LABEL_10:

      goto LABEL_11;
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, [v3 fileSystemRepresentation]);
    v5 = std::string::append(&v10, "/");
    v6 = v5->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
    v11[0] = v5->__r_.__value_.__r.__words[2];
    *(v11 + 3) = *(&v5->__r_.__value_.__r.__words[2] + 3);
    v8 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
LABEL_5:
      v13.__r_.__value_.__r.__words[0] = v6;
      v13.__r_.__value_.__l.__size_ = size;
      LODWORD(v13.__r_.__value_.__r.__words[2]) = v11[0];
      *(&v13.__r_.__value_.__r.__words[2] + 3) = *(v11 + 3);
      *(&v13.__r_.__value_.__s + 23) = v8;
      goto LABEL_8;
    }

    std::string::__init_copy_ctor_external(&v13, v6, size);
LABEL_8:
    memset(v9, 0, sizeof(v9));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v9, &v13, &v14, 1uLL);
    realityio::mtlx::_MergeSearchPaths(&realityio::mtlx::UsdMtlxStandardLibraryPaths(void)::materialxLibraryPaths, v9, &v10);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&realityio::mtlx::UsdMtlxStandardLibraryPaths(void)::materialxLibraryPaths, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v10.__r_.__value_.__l.__size_ - v10.__r_.__value_.__r.__words[0]) >> 3));
    v12 = &v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    v12 = v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    goto LABEL_10;
  }

LABEL_11:
}

void sub_24758AD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v27);

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t *realityio::mtlx::UsdMtlxCustomSearchPaths(realityio::mtlx *this)
{
  {
    if (v2)
    {
      realityio::mtlx::_GetSearchPathsFromEnvVar(v2, v3);
    }
  }

  return &realityio::mtlx::UsdMtlxCustomSearchPaths(void)::materialxCustomSearchPaths;
}

void realityio::mtlx::_GetSearchPathsFromEnvVar(realityio::mtlx *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "PXR_MTLX_PLUGIN_SEARCH_PATHS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v2 = v8;
  }

  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, ":");
    pxrInternal__aapl__pxrReserved__::TfStringSplit();
    if (v6 < 0)
    {
      operator delete(v5[0]);
    }

    if ((v9 & 0x80) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    realityio::mtlx::UsdMtlxCustomSearchPaths(void)::materialxCustomSearchPaths = 0;
    *algn_27EE51DC8 = 0;
    qword_27EE51DD0 = 0;
    if ((v9 & 0x80) != 0)
    {
LABEL_11:
      operator delete(v7);
    }
  }
}

void sub_24758AF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *realityio::mtlx::UsdMtlxSearchPaths(realityio::mtlx *this)
{
  {
    if (v2)
    {
      v3 = realityio::mtlx::UsdMtlxCustomSearchPaths(v2);
      realityio::mtlx::UsdMtlxStandardLibraryPaths(v3);
      realityio::mtlx::_MergeSearchPaths(&realityio::mtlx::UsdMtlxCustomSearchPaths(void)::materialxCustomSearchPaths, &realityio::mtlx::UsdMtlxStandardLibraryPaths(void)::materialxLibraryPaths, realityio::mtlx::UsdMtlxSearchPaths(void)::materialxSearchPaths);
    }
  }

  return realityio::mtlx::UsdMtlxSearchPaths(void)::materialxSearchPaths;
}

std::string *realityio::mtlx::_MergeSearchPaths@<X0>(__int128 **a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  return std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(a3, *(a3 + 8), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
}

void sub_24758B0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *realityio::mtlx::UsdMtlxStandardFileExtensions@<X0>(std::string *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "mtlx");
    realityio::mtlx::UsdMtlxStandardFileExtensions(void)::extensions = 0;
    *algn_27EE51E08 = 0;
    qword_27EE51E10 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&realityio::mtlx::UsdMtlxStandardFileExtensions(void)::extensions, __p, &v5, 1uLL);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, realityio::mtlx::UsdMtlxStandardFileExtensions(void)::extensions, *algn_27EE51E08, 0xAAAAAAAAAAAAAAABLL * ((*algn_27EE51E08 - realityio::mtlx::UsdMtlxStandardFileExtensions(void)::extensions) >> 3));
}

void sub_24758B1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24758B75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, char *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  a32 = &a10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  MEMORY[0x24C1A4CD0](&a20);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::UsdMtlxGetDocumentFromString(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&v8, a1);
  v4 = std::to_string(&v7, v3);
  v5 = *std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>>>::__find_equal<std::string>(&v9, &v7.__r_.__value_.__l.__data_);
  if (!v5)
  {
    operator new();
  }

  *a2 = *(v5 + 56);
  v6 = *(v5 + 64);
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_24758BA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,void *>>>>::~unique_ptr[abi:ne200100](&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_GetCache(realityio::mtlx::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_27EE52EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52EE8))
  {
    qword_27EE52F80 = 0;
    qword_27EE52F78 = 0;
    qword_27EE52F70 = &qword_27EE52F78;

    __cxa_guard_release(&qword_27EE52EE8);
  }
}

uint64_t *realityio::mtlx::UsdMtlxGetDocument@<X0>(realityio::mtlx::_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>>>::__find_equal<std::string>(&v8, a1);
  v5 = *result;
  if (!*result)
  {
    operator new();
  }

  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  *a2 = v7;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24758BE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x24C1A4CD0](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void realityio::mtlx::_ImportLibraries(uint64_t *a1, uint64_t a2)
{
  realityio::mtlx::UsdMtlxStandardFileExtensions(&v3);
  pxrInternal__aapl__pxrReserved__::NdrFsHelpersDiscoverFiles();
  v2 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v4[0] != v4[1])
  {
    realityio::mtlx::UsdMtlxReadDocument(&v3, v4[0] + 24);
  }

  v3.__r_.__value_.__r.__words[0] = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t realityio::mtlx::UsdMtlxGetVersion(RIO_MTLX::InterfaceElement **a1, _BYTE *a2)
{
  MEMORY[0x24C1A4CC0](v16);
  VersionString = RIO_MTLX::InterfaceElement::getVersionString(*a1);
  if (*(VersionString + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *VersionString, *(VersionString + 8));
  }

  else
  {
    v6 = *VersionString;
    v15.__r_.__value_.__r.__words[2] = *(VersionString + 16);
    *&v15.__r_.__value_.__l.__data_ = v6;
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  VersionString = pxrInternal__aapl__pxrReserved__::NdrVersion::NdrVersion();
  if (v14)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
LABEL_13:
    v9 = *a1;
    v10 = RIO_MTLX::InterfaceElement::DEFAULT_VERSION_ATTRIBUTE(VersionString);
    *a2 = RIO_MTLX::Element::getTypedAttribute<BOOL>(v9, v10) ^ 1;
  }

LABEL_14:
  v11 = atomic_load(off_278EA82B8);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  Begin = pxrInternal__aapl__pxrReserved__::TfErrorMark::GetBegin(v16, v5);
  LOBYTE(v14) = 0;
  if (tbb::interface6::internal::ets_base<(tbb::ets_key_usage_type)1>::table_lookup((v11 + 152), &v14) != Begin)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange();
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  MEMORY[0x24C1A4CD0](v16);
  return v8;
}

void sub_24758C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x24C1A4CD0](&a17, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *realityio::mtlx::UsdMtlxGetSourceURI(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 95);
      if (v5 < 0)
      {
        v5 = *(v4 + 80);
      }

      if (v5)
      {
        v7 = 0;
        v1 = (v4 + 72);
        if (!v3)
        {
          goto LABEL_22;
        }

LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_22;
      }

      v6 = *(v4 + 232);
      if (!v6)
      {
        break;
      }

      v1 = std::__shared_weak_count::lock(v6);
      if (!v1)
      {
        v4 = 0;
        if (!v3)
        {
          goto LABEL_11;
        }

LABEL_10:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_11;
      }

      v4 = *(v4 + 224);
      if (v3)
      {
        goto LABEL_10;
      }

LABEL_11:
      v3 = v1;
      if (!v4)
      {
        v7 = 1;
        v3 = v1;
        goto LABEL_20;
      }
    }

    v4 = 0;
    v1 = 0;
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_20:
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v7)
  {
    return (*a1 + 72);
  }

  else
  {
    return v1;
  }
}

unint64_t realityio::mtlx::UsdMtlxGetUsdType@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_15))
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(v122);
    qword_27EE52F10 = v122[0];
    qword_27EE52F18 = 0;
    dword_27EE52F20 = 0;
    byte_27EE52F24 = 0;
    __cxa_guard_release(&_MergedGlobals_15);
  }

  if ((atomic_load_explicit(&qword_27EE52EC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52EC8))
  {
    v111 = a2;
    v112 = a1;
    v17 = MEMORY[0x277D86578];
    Data = atomic_load(MEMORY[0x277D86578]);
    if (!Data)
    {
      Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v19 = *Data;
    std::string::basic_string[abi:ne200100]<0>(v122, "BOOLean");
    v122[3] = v19;
    v122[4] = 0;
    v123 = 0;
    v124 = 1;
    v20 = atomic_load(v17);
    if (!v20)
    {
      v20 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v21 = *(v20 + 76);
    std::string::basic_string[abi:ne200100]<0>(v125, "color2array");
    v125[3] = v21;
    v125[4] = 0;
    v126 = 0;
    v127 = 0;
    v22 = atomic_load(v17);
    if (!v22)
    {
      v22 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v23 = *(v22 + 19);
    v24 = MEMORY[0x277D86570];
    v25 = atomic_load(MEMORY[0x277D86570]);
    if (!v25)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v121 = *(v25 + 16);
    if ((v121 & 7) != 0)
    {
      v26 = *(v25 + 16);
      if ((atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v26 = v121 & 0xFFFFFFFFFFFFFFF8;
      }

      v121 = v26;
    }

    v27 = v121;
    if ((v121 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v27 = v121;
      }

      else
      {
        v27 = v121 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v128, "color2");
    v128[3] = v23;
    v128[4] = v27;
    v129 = 2;
    v130 = 0;
    v28 = atomic_load(v17);
    if (!v28)
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v29 = *(v28 + 92);
    v30 = atomic_load(v24);
    if (!v30)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v120 = *(v30 + 32);
    if ((v120 & 7) != 0)
    {
      v31 = *(v30 + 32);
      if ((atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v31 = v120 & 0xFFFFFFFFFFFFFFF8;
      }

      v120 = v31;
    }

    v32 = v120;
    if ((v120 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v32 = v120;
      }

      else
      {
        v32 = v120 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v131, "color3array");
    v131[3] = v29;
    v131[4] = v32;
    v132 = 0;
    v133 = 1;
    v33 = atomic_load(v17);
    if (!v33)
    {
      v33 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v34 = *(v33 + 35);
    v35 = atomic_load(v24);
    if (!v35)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v119 = *(v35 + 32);
    if ((v119 & 7) != 0)
    {
      v36 = *(v35 + 32);
      if ((atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v36 = v119 & 0xFFFFFFFFFFFFFFF8;
      }

      v119 = v36;
    }

    v37 = v119;
    if ((v119 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v37 = v119;
      }

      else
      {
        v37 = v119 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v134, "color3");
    v134[3] = v34;
    v134[4] = v37;
    v135 = 0;
    v136 = 1;
    v38 = atomic_load(v17);
    if (!v38)
    {
      v38 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v39 = *(v38 + 12);
    v40 = atomic_load(v24);
    if (!v40)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v118 = *(v40 + 8);
    if ((v118 & 7) != 0)
    {
      v41 = *(v40 + 8);
      if ((atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v41 = v118 & 0xFFFFFFFFFFFFFFF8;
      }

      v118 = v41;
    }

    v42 = v118;
    if ((v118 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v42 = v118;
      }

      else
      {
        v42 = v118 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v137, "filename");
    v137[3] = v39;
    v137[4] = v42;
    v138 = 0;
    v139 = 1;
    v43 = atomic_load(v17);
    if (!v43)
    {
      v43 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v44 = *(v43 + 64);
    v45 = atomic_load(v24);
    if (!v45)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v117 = *(v45 + 16);
    if ((v117 & 7) != 0)
    {
      v46 = *(v45 + 16);
      if ((atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v46 = v117 & 0xFFFFFFFFFFFFFFF8;
      }

      v117 = v46;
    }

    v47 = v117;
    if ((v117 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v47 = v117;
      }

      else
      {
        v47 = v117 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v140, "floatarray");
    v140[3] = v44;
    v140[4] = v47;
    v141 = 0;
    v142 = 1;
    v48 = atomic_load(v17);
    if (!v48)
    {
      v48 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v49 = *(v48 + 7);
    v50 = atomic_load(v24);
    if (!v50)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v116 = *(v50 + 16);
    if ((v116 & 7) != 0)
    {
      v51 = *(v50 + 16);
      if ((atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v51 = v116 & 0xFFFFFFFFFFFFFFF8;
      }

      v116 = v51;
    }

    v52 = v116;
    if ((v116 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v52 = v116;
      }

      else
      {
        v52 = v116 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v143, "float");
    v143[3] = v49;
    v143[4] = v52;
    v144 = 0;
    v145 = 1;
    v53 = atomic_load(v17);
    if (!v53)
    {
      v53 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v54 = *(v53 + 67);
    std::string::basic_string[abi:ne200100]<0>(v146, "geomnamearray");
    v146[3] = v54;
    v146[4] = 0;
    v147 = 0;
    v148 = 0;
    v55 = atomic_load(v17);
    if (!v55)
    {
      v55 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v56 = *(v55 + 10);
    std::string::basic_string[abi:ne200100]<0>(v149, "geomname");
    v149[3] = v56;
    v149[4] = 0;
    v150 = 0;
    v151 = 0;
    v57 = atomic_load(v17);
    if (!v57)
    {
      v57 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v58 = *(v57 + 58);
    v59 = atomic_load(v24);
    if (!v59)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v115 = *v59;
    if ((*v59 & 7) != 0)
    {
      v60 = *v59;
      if ((atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v60 = v115 & 0xFFFFFFFFFFFFFFF8;
      }

      v115 = v60;
    }

    v61 = v115;
    if ((v115 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v61 = v115;
      }

      else
      {
        v61 = v115 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v152, "integerarray");
    v152[3] = v58;
    v152[4] = v61;
    v153 = 0;
    v154 = 1;
    v62 = atomic_load(v17);
    if (!v62)
    {
      v62 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v63 = *(v62 + 2);
    v64 = atomic_load(v24);
    if (!v64)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v114 = *v64;
    if ((*v64 & 7) != 0)
    {
      v65 = *v64;
      if ((atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v65 = v114 & 0xFFFFFFFFFFFFFFF8;
      }

      v114 = v65;
    }

    v66 = v114;
    if ((v114 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v66 = v114;
      }

      else
      {
        v66 = v114 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v155, "integer");
    v155[3] = v63;
    v155[4] = v66;
    v156 = 0;
    v157 = 1;
    v67 = atomic_load(v17);
    if (!v67)
    {
      v67 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v68 = *(v67 + 44);
    std::string::basic_string[abi:ne200100]<0>(v158, "matrix33");
    v158[3] = v68;
    v158[4] = 0;
    v159 = 0;
    v160 = 1;
    v69 = atomic_load(v17);
    if (!v69)
    {
      v69 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v70 = *(v69 + 45);
    v71 = atomic_load(v24);
    if (!v71)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v113 = *(v71 + 72);
    if ((v113 & 7) != 0)
    {
      v72 = *(v71 + 72);
      if ((atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v72 = v113 & 0xFFFFFFFFFFFFFFF8;
      }

      v113 = v72;
    }

    v73 = v113;
    if ((v113 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v73 = v113;
      }

      else
      {
        v73 = v113 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v161, "matrix44");
    v161[3] = v70;
    v161[4] = v73;
    v162 = 0;
    v163 = 1;
    v74 = atomic_load(v17);
    if (!v74)
    {
      v74 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v75 = *(v74 + 67);
    v76 = atomic_load(v24);
    if (!v76)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v77 = *(v76 + 8);
    if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v77 &= 0xFFFFFFFFFFFFFFF8;
    }

    v78 = v77;
    if ((v77 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v164, "stringarray");
    v164[3] = v75;
    v164[4] = v78;
    v165 = 0;
    v166 = 1;
    v79 = atomic_load(v17);
    if (!v79)
    {
      v79 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v80 = *(v79 + 10);
    v81 = atomic_load(v24);
    if (!v81)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v82 = *(v81 + 8);
    if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v82 &= 0xFFFFFFFFFFFFFFF8;
    }

    v83 = v82;
    if ((v82 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v83 = v82;
      }

      else
      {
        v83 = v82 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v167, "string");
    v167[3] = v80;
    v167[4] = v83;
    v168 = 0;
    v169 = 1;
    v84 = atomic_load(v17);
    if (!v84)
    {
      v84 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v85 = *(v84 + 11);
    v86 = atomic_load(v24);
    if (!v86)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v87 = *(v86 + 88);
    if ((v87 & 7) != 0 && (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v87 &= 0xFFFFFFFFFFFFFFF8;
    }

    v88 = v87;
    if ((v87 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v88 = v87;
      }

      else
      {
        v88 = v87 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v170, "surfaceshader");
    v170[3] = v85;
    v170[4] = v88;
    v171 = 0;
    v172 = 1;
    v89 = atomic_load(v17);
    if (!v89)
    {
      v89 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v90 = *(v89 + 76);
    std::string::basic_string[abi:ne200100]<0>(v173, "vector2array");
    v173[3] = v90;
    v173[4] = 0;
    v174 = 0;
    v175 = 1;
    v91 = atomic_load(v17);
    if (!v91)
    {
      v91 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v92 = *(v91 + 19);
    v93 = atomic_load(v24);
    if (!v93)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v94 = *(v93 + 16);
    if ((v94 & 7) != 0 && (atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v94 &= 0xFFFFFFFFFFFFFFF8;
    }

    v95 = v94;
    if ((v94 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v95 = v94;
      }

      else
      {
        v95 = v94 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v176, "vector2");
    v176[3] = v92;
    v176[4] = v95;
    v177 = 2;
    v178 = 1;
    v96 = atomic_load(v17);
    if (!v96)
    {
      v96 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v97 = *(v96 + 77);
    std::string::basic_string[abi:ne200100]<0>(v179, "vector3array");
    v179[3] = v97;
    v179[4] = 0;
    v180 = 0;
    v181 = 1;
    v98 = atomic_load(v17);
    if (!v98)
    {
      v98 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v99 = *(v98 + 20);
    v100 = atomic_load(v24);
    if (!v100)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v101 = *(v100 + 16);
    if ((v101 & 7) != 0 && (atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v101 &= 0xFFFFFFFFFFFFFFF8;
    }

    v102 = v101;
    if ((v101 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v102 = v101;
      }

      else
      {
        v102 = v101 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v182, "vector3");
    v182[3] = v99;
    v182[4] = v102;
    v183 = 3;
    v184 = 1;
    v103 = atomic_load(v17);
    if (!v103)
    {
      v103 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v104 = *(v103 + 78);
    std::string::basic_string[abi:ne200100]<0>(v185, "vector4array");
    v185[3] = v104;
    v185[4] = 0;
    v186 = 0;
    v187 = 1;
    v105 = atomic_load(v17);
    if (!v105)
    {
      v105 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v106 = *(v105 + 21);
    v107 = atomic_load(v24);
    if (!v107)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdrPropertyTypes_StaticTokenType>>::_TryToCreateData();
    }

    v108 = *(v107 + 16);
    if ((v108 & 7) != 0 && (atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v108 &= 0xFFFFFFFFFFFFFFF8;
    }

    v109 = v108;
    if ((v108 & 7) != 0)
    {
      if (atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v109 = v108;
      }

      else
      {
        v109 = v108 & 0xFFFFFFFFFFFFFFF8;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v188, "vector4");
    v188[3] = v106;
    v188[4] = v109;
    v189 = 4;
    v190 = 1;
    std::unordered_map<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>::unordered_map(v122, 23);
    for (i = 132; i != -6; i -= 6)
    {
      std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>::~pair(&v122[i]);
    }

    if ((v108 & 7) != 0)
    {
      atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v101 & 7) != 0)
    {
      atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v94 & 7) != 0)
    {
      atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v87 & 7) != 0)
    {
      atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v77 & 7) != 0)
    {
      atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v113 & 7) != 0)
    {
      atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v114 & 7) != 0)
    {
      atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v115 & 7) != 0)
    {
      atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v116 & 7) != 0)
    {
      atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v117 & 7) != 0)
    {
      atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v118 & 7) != 0)
    {
      atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v119 & 7) != 0)
    {
      atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v120 & 7) != 0)
    {
      atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v121 & 7) != 0)
    {
      atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_guard_release(&qword_27EE52EC8);
    a2 = v111;
    a1 = v112;
  }

  result = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_27EE52FB8, a1);
  v5 = *(&xmmword_27EE52FB8 + 1);
  if (!*(&xmmword_27EE52FB8 + 1))
  {
    goto LABEL_21;
  }

  v6 = result;
  v7 = vcnt_s8(*(&xmmword_27EE52FB8 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = result;
    if (result >= *(&xmmword_27EE52FB8 + 1))
    {
      v9 = result % *(&xmmword_27EE52FB8 + 1);
    }
  }

  else
  {
    v9 = (*(&xmmword_27EE52FB8 + 1) - 1) & result;
  }

  v10 = *(xmmword_27EE52FB8 + 8 * v9);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = *v10;
  if (!*v10)
  {
    goto LABEL_21;
  }

  do
  {
    v12 = v11[1];
    if (v6 == v12)
    {
      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_27EE52FB8, v11 + 2, a1);
      if (result)
      {
        break;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= v5)
        {
          v12 %= v5;
        }
      }

      else
      {
        v12 &= v5 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_21;
      }
    }

    v11 = *v11;
  }

  while (v11);
  if (v11)
  {
    v13 = v11 + 5;
  }

  else
  {
LABEL_21:
    v13 = &qword_27EE52F10;
  }

  *a2 = *v13;
  v14 = v13[1];
  *(a2 + 8) = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a2 + 8) = v15;
    }
  }

  v16 = *(v13 + 4);
  *(a2 + 20) = *(v13 + 20);
  *(a2 + 16) = v16;
  return result;
}

void sub_24758D164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _Unwind_Exception *exception_object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a10)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a11)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a13)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a15)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a18)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a19)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a20)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a21)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a22)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23)
  {
    atomic_fetch_add_explicit((a32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a24)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a25)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  while (v35 != &a35)
  {
    v35 -= 48;
    std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>::~pair(v35);
  }

  __cxa_guard_abort(&qword_27EE52EC8);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void realityio::mtlx::UsdMtlxGetUsdValue(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((atomic_load_explicit(&qword_27EE52ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52ED0))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE52F28, "default");
    __cxa_guard_release(&qword_27EE52ED0);
  }

  if ((atomic_load_explicit(&qword_27EE52ED8, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_27EE52ED8);
    if (v11)
    {
      v12 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v11);
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&xmmword_27EE52F40, *v12, v12[1]);
      }

      else
      {
        v13 = *v12;
        qword_27EE52F50 = v12[2];
        xmmword_27EE52F40 = v13;
      }

      __cxa_guard_release(&qword_27EE52ED8);
    }
  }

  if ((atomic_load_explicit(&qword_27EE52EE0, memory_order_acquire) & 1) == 0)
  {
    v14 = __cxa_guard_acquire(&qword_27EE52EE0);
    if (v14)
    {
      v15 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v14);
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&xmmword_27EE52F58, *v15, v15[1]);
      }

      else
      {
        v16 = *v15;
        qword_27EE52F68 = v15[2];
        xmmword_27EE52F58 = v16;
      }

      __cxa_guard_release(&qword_27EE52EE0);
    }
  }

  if (*a1)
  {
    if (a2)
    {
      v6 = qword_27EE52F28;
    }

    else
    {
      v6 = &xmmword_27EE52F58;
    }

    v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*a1 + 160), v6);
    if (v7)
    {
      v8 = (v7 + 5);
    }

    else
    {
      v8 = RIO_MTLX::EMPTY_STRING(0);
    }

    v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*a1 + 160), &xmmword_27EE52F40);
    if (v9)
    {
      v10 = (v9 + 5);
    }

    else
    {
      v10 = RIO_MTLX::EMPTY_STRING(0);
    }
  }

  else
  {
    *(a3 + 8) = 0;
  }
}

void realityio::mtlx::anonymous namespace::_GetUsdValue(std::string **a1, uint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE52EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52EF0))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_27EE52F88, "filename");
    __cxa_guard_release(&qword_27EE52EF0);
  }

  if ((atomic_load_explicit(&qword_27EE52EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52EF8))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE52FA0, "geomname");
    __cxa_guard_release(&qword_27EE52EF8);
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    goto LABEL_134;
  }

  RIO_MTLX::Value::createValueFromStrings(a2, a3);
  if (lpsrc)
  {
    {
      v7 = 0;
      a1[1] = &unk_285946C7B;
      *a1 = v8;
      goto LABEL_131;
    }

    if (RIO_MTLX::Value::isA<int>(lpsrc))
    {
      v7 = 0;
      a1[1] = &unk_28594ADA3;
      *a1 = v9;
      goto LABEL_131;
    }

    if (RIO_MTLX::Value::isA<float>(lpsrc))
    {
      v7 = 0;
LABEL_13:
      a1[1] = &unk_2859471F3;
      *a1 = v10;
      goto LABEL_131;
    }

    if (RIO_MTLX::Value::isA<std::string>(lpsrc))
    {
      v11 = *(a3 + 23);
      if (v11 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v13 = qword_27EE52F90;
      if (byte_27EE52F9F >= 0)
      {
        v13 = byte_27EE52F9F;
      }

      if (v12 != v13 || (v11 >= 0 ? (v14 = a3) : (v14 = *a3), byte_27EE52F9F >= 0 ? (v15 = &qword_27EE52F88) : (v15 = qword_27EE52F88), memcmp(v14, v15, v12)))
      {
        std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, qword_27EE52FA0);
        a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy(a1, v16 + 8);
      }

      MEMORY[0x24C1A4E40](&v82, v43 + 8);
      a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_PlaceCopy(a1, &v82);
    }

    if (RIO_MTLX::Value::isA<std::vector<BOOL>>(lpsrc))
    {
      v79 = 0;
      v77 = 0u;
      v78 = 0u;
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::reserve(&v77, v17[2]);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v18 & 0x3F;
      if (v18 <= 0x3F && (v18 & 0x3F) == 0)
      {
LABEL_32:
        a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(a1, &v77);
      }

      v27 = 0;
      v28 = &v19[v18 >> 6];
      while (1)
      {
        if (DWORD2(v77))
        {
          *&v82 = "vt/array.h";
          *(&v82 + 1) = "emplace_back";
          *&v83 = 416;
          *(&v83 + 1) = "void pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::emplace_back(Args &&...) [T = BOOL, Args = <BOOL>]";
          LOBYTE(v84) = 0;
          if (v78)
          {
            v41 = 4;
          }

          else
          {
            v41 = 3;
          }

          if (HIDWORD(v77))
          {
            v42 = v41;
          }

          else
          {
            v42 = 2;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v82, 1, "Array rank %u != 1", v42);
          goto LABEL_51;
        }

        v29 = (*v19 >> v27) & 1;
        v30 = v77;
        v31 = v79;
        if (*(&v78 + 1))
        {
          break;
        }

        if (v79)
        {
          v32 = atomic_load(&v79[-1].__r_.__value_.__l.__size_);
          v31 = v79;
          if (v32 != 1)
          {
            break;
          }

          v33 = v79[-1].__r_.__value_.__r.__words[2];
        }

        else
        {
          v33 = 0;
        }

        if (v77 == v33)
        {
          break;
        }

        v31->__r_.__value_.__s.__data_[v77] = v29;
LABEL_50:
        *&v77 = v77 + 1;
LABEL_51:
        v19 += v27 == 63;
        if (v27 == 63)
        {
          v27 = 0;
        }

        else
        {
          ++v27;
        }

        if (v19 == v28 && v27 == v20)
        {
          goto LABEL_32;
        }
      }

      v34 = 1;
      do
      {
        v35 = v34;
        v34 *= 2;
      }

      while (v35 < v77 + 1);
      New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(&v77, v35);
      v37 = New;
      if (v30)
      {
        v38 = v30;
        v39 = New;
        do
        {
          v40 = v31->__r_.__value_.__s.__data_[0];
          v31 = (v31 + 1);
          v39->__r_.__value_.__s.__data_[0] = v40;
          v39 = (v39 + 1);
          --v38;
        }

        while (v38);
      }

      New->__r_.__value_.__s.__data_[v30] = v29;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v77);
      v79 = v37;
      goto LABEL_50;
    }

    if (RIO_MTLX::Value::isA<std::vector<int>>(lpsrc))
    {
      *&v84 = 0;
      v82 = 0u;
      v83 = 0u;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::reserve(&v82, (v21[2] - v21[1]) >> 2);
      v23 = v21[1];
      v22 = v21[2];
      while (v23 != v22)
      {
        LODWORD(v77) = *v23;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back<int>(&v82, &v77);
        ++v23;
      }

      a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(a1, &v82);
    }

    if (RIO_MTLX::Value::isA<std::vector<float>>(lpsrc))
    {
      *&v84 = 0;
      v82 = 0u;
      v83 = 0u;
      pxrInternal__aapl__pxrReserved__::VtArray<float>::reserve(&v82, (v24[2] - v24[1]) >> 2);
      v26 = v24[1];
      v25 = v24[2];
      while (v26 != v25)
      {
        LODWORD(v77) = *v26;
        pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back<float>(&v82, &v77);
        ++v26;
      }

      a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy(a1, &v82);
    }

    if (RIO_MTLX::Value::isA<std::vector<std::string>>(lpsrc))
    {
      v79 = 0;
      v77 = 0u;
      v78 = 0u;
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::reserve(&v77, 0xAAAAAAAAAAAAAAABLL * ((v44[2] - v44[1]) >> 3));
      v45 = v44[1];
      v46 = v44[2];
      if (v45 == v46)
      {
LABEL_103:
        a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a1, &v77);
      }

      while (1)
      {
        if (*(v45 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v76, *v45, *(v45 + 1));
        }

        else
        {
          v47 = *v45;
          v76.__r_.__value_.__r.__words[2] = *(v45 + 2);
          *&v76.__r_.__value_.__l.__data_ = v47;
        }

        if (DWORD2(v77))
        {
          *&v82 = "vt/array.h";
          *(&v82 + 1) = "emplace_back";
          *&v83 = 416;
          *(&v83 + 1) = "void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back(Args &&...) [T = std::string, Args = <std::string>]";
          LOBYTE(v84) = 0;
          if (v78)
          {
            v61 = 4;
          }

          else
          {
            v61 = 3;
          }

          if (HIDWORD(v77))
          {
            v62 = v61;
          }

          else
          {
            v62 = 2;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v82, 1, "Array rank %u != 1", v62);
          goto LABEL_86;
        }

        v48 = v79;
        if (*(&v78 + 1))
        {
          break;
        }

        if (v79)
        {
          v49 = atomic_load(&v79[-1].__r_.__value_.__l.__size_);
          v48 = v79;
          if (v49 != 1)
          {
            break;
          }

          v50 = v79[-1].__r_.__value_.__r.__words[2];
        }

        else
        {
          v50 = 0;
        }

        if (v77 == v50)
        {
          break;
        }

        v51 = *&v76.__r_.__value_.__l.__data_;
        v52 = v48 + 24 * v77;
        *(v52 + 2) = *(&v76.__r_.__value_.__l + 2);
        *v52 = v51;
        memset(&v76, 0, sizeof(v76));
LABEL_85:
        *&v77 = v77 + 1;
LABEL_86:
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        v45 = (v45 + 24);
        if (v45 == v46)
        {
          goto LABEL_103;
        }
      }

      v53 = v46;
      v54 = v45;
      v55 = v77;
      v56 = 1;
      do
      {
        v57 = v56;
        v56 *= 2;
      }

      while (v57 < v77 + 1);
      Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(&v77, v48, v57, v77);
      v59 = *&v76.__r_.__value_.__l.__data_;
      v60 = &Copy[v55];
      v60->__r_.__value_.__r.__words[2] = v76.__r_.__value_.__r.__words[2];
      *&v60->__r_.__value_.__l.__data_ = v59;
      memset(&v76, 0, sizeof(v76));
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v77);
      v79 = Copy;
      v45 = v54;
      v46 = v53;
      goto LABEL_85;
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Color3>(lpsrc))
    {
      *&v82 = v63[1];
      DWORD2(v82) = *(v63 + 4);
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Color4>(lpsrc))
    {
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Vector2>(lpsrc))
    {
      v7 = 0;
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3);
      goto LABEL_131;
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Vector3>(lpsrc))
    {
      *&v82 = v64[1];
      DWORD2(v82) = *(v64 + 4);
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Vector4>(lpsrc))
    {
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Matrix33>(lpsrc))
    {
      v66 = 0;
      v67 = v65 + 8;
      v68 = &v82;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          *(v68 + i) = *&v67[4 * i];
        }

        ++v66;
        v68 = (v68 + 24);
        v67 += 12;
      }

      while (v66 != 3);
      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<RIO_MTLX::Matrix44>(lpsrc))
    {
      for (j = 0; j != 4; ++j)
      {
        v72 = (&v82 + 2 * j);
        v73 = *&v70[16 * j + 8];
        *v72 = vcvtq_f64_f32(*v73.f32);
        v72[1] = vcvt_hight_f64_f32(v73);
      }

      a1[1] = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(void)::ti + 2);
      operator new();
    }

    if (RIO_MTLX::Value::isA<long>(lpsrc))
    {
      v7 = 0;
      a1[1] = &unk_28594ADA3;
      *a1 = v74;
      goto LABEL_131;
    }

    if (RIO_MTLX::Value::isA<double>(lpsrc))
    {
      v7 = 0;
      goto LABEL_13;
    }

    *&v82 = "CoreRealityIO/mtlxToUsdShadeUtils.mm";
    *(&v82 + 1) = "_GetUsdValue";
    *&v83 = 160;
    *(&v83 + 1) = "VtValue realityio::mtlx::(anonymous namespace)::_GetUsdValue(const std::string &, const std::string &)";
    LOBYTE(v84) = 0;
    if (*(a3 + 23) >= 0)
    {
      v75 = a3;
    }

    else
    {
      v75 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v82, "MaterialX unsupported type %s", v75);
  }

  v7 = 1;
LABEL_131:
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  if (v7)
  {
LABEL_134:
    a1[1] = 0;
  }
}

void realityio::mtlx::UsdMtlxGetPackedUsdValues(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5 < 5 || (v6 >= 0 ? (v7 = a2) : (v7 = *a2), strcmp((v7 + v5 - 5), "array")))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, ",");
    pxrInternal__aapl__pxrReserved__::TfStringSplit();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = v17;
    for (i = v18; v8 != i; v8 = (v8 + 24))
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      pxrInternal__aapl__pxrReserved__::TfStringTrim();
      if (v15 < 0)
      {
        operator delete(v14);
      }

      v11 = v20;
      v12 = a3[1];
      if (v20)
      {
        if (v12 >= a3[2])
        {
          v13 = std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::VtValue const&>(a3, &v19);
        }

        else
        {
          std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue const&,0>(a3[1], &v19);
          v13 = v12 + 16;
        }
      }

      else
      {
        v13 = *a3;
        while (v12 != v13)
        {
          v12 = (v12 - 16);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
        }
      }

      a3[1] = v13;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v11)
      {
        break;
      }
    }

    __p.__r_.__value_.__r.__words[0] = &v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_24758EA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = (v7 + 8 * v19);
        v21 = v5;
        do
        {
          std::string::operator=(v21, v7);
          v7 = (v7 + 24);
          ++v21;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18, v7);
            v7 = (v7 + 24);
            ++v18;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<char const*>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
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

      v34.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v34.__first_ = 0;
      v34.__begin_ = v22;
      v34.__end_ = v22;
      v34.__end_cap_.__value_ = 0;
      v23 = &v22[a5];
      v24 = 24 * a5;
      do
      {
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v22, *v7, *(v7 + 1));
        }

        else
        {
          v25 = *v7;
          v22->__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&v22->__r_.__value_.__l.__data_ = v25;
        }

        ++v22;
        v7 = (v7 + 24);
        v24 -= 24;
      }

      while (v24);
      v26 = v34.__begin_;
      memcpy(v23, v5, a1->__end_ - v5);
      v27 = a1->__begin_;
      v28 = (v23 + a1->__end_ - v5);
      a1->__end_ = v5;
      v29 = v5 - v27;
      v30 = (v26 - (v5 - v27));
      memcpy(v30, v27, v29);
      v31 = a1->__begin_;
      a1->__begin_ = v30;
      a1->__end_ = v28;
      v32 = a1->__end_cap_.__value_;
      a1->__end_cap_.__value_ = v34.__end_cap_.__value_;
      v34.__end_ = v31;
      v34.__end_cap_.__value_ = v32;
      v34.__first_ = v31;
      v34.__begin_ = v31;
      std::__split_buffer<std::string>::~__split_buffer(&v34);
      return v26;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v5 = __from_s + end - __to;
  if (v5 >= __from_e)
  {
    v7 = this->__end_;
  }

  else
  {
    v6 = __from_s + end - __to;
    v7 = this->__end_;
    do
    {
      v8 = *v6;
      v7->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v7->__r_.__value_.__l.__data_ = v8;
      ++v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 += 24;
    }

    while (v6 < __from_e);
  }

  this->__end_ = v7;
  if (end != __to)
  {
    v9 = 0;
    v10 = (__to - end);
    do
    {
      v11 = &v9[end - 24];
      if (v9[end - 1] < 0)
      {
        operator delete(*v11);
      }

      v12 = &v5[(v9 - 24)];
      v13 = *v12;
      *&v9[end - 8] = *(v12 + 2);
      *v11 = v13;
      v9[v5 - 1] = 0;
      *v12 = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }
}

uint64_t std::__function::__func<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0,std::allocator<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594FC78;
  a2[1] = v2;
  return result;
}

void std::__function::__func<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0,std::allocator<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::operator()(uint64_t a1, void *a2, char **a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v19 = 0uLL;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::ArIsPackageRelativePath())
  {
    pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathInner();
    v17 = *v11;
    v18 = v12;
    HIBYTE(v12) = 0;
    LOBYTE(v11[0]) = 0;
    *__p = v13;
    v16 = v14;
    pxrInternal__aapl__pxrReserved__::TfGetPathName();
    if (v12 >= 0)
    {
      v6 = HIBYTE(v12);
    }

    else
    {
      v6 = v11[1];
    }

    if (v6)
    {
      RIO_MTLX::FilePath::asString(a3, 1, &v7);
      pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
    }

    else
    {
      RIO_MTLX::FilePath::asString(a3, 1, &v8);
    }

    pxrInternal__aapl__pxrReserved__::ArchNormPath();
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    *v11 = v9;
    v12 = v10;
    HIBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v6 && SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::ArJoinPackageRelativePath();
    v19 = v9;
    v20 = v10;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17);
    }

    v5 = &v19;
    if (v20 < 0)
    {
      v5 = v19;
    }
  }

  else
  {
    v5 = &v19;
  }

  v11[0] = "CoreRealityIO/mtlxToUsdShadeUtils.mm";
  v11[1] = "operator()";
  v12 = 316;
  *&v13 = "auto realityio::mtlx::_ReadFromAsset(mx::DocumentPtr, const ArResolvedPath &, const mx::FileSearchPath &, const mx::XmlReadOptions *)::(anonymous class)::operator()(mx::DocumentPtr, const mx::FilePath &, const mx::FileSearchPath &, const mx::XmlReadOptions *) const";
  BYTE8(v13) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 3, "Unable to open MaterialX document '%s'", v5);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_24758F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0,std::allocator<realityio::mtlx::_ReadFromAsset(std::shared_ptr<RIO_MTLX::Document>,pxrInternal__aapl__pxrReserved__::ArResolvedPath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)::$_0>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfErrorMark::GetBegin(pxrInternal__aapl__pxrReserved__::TfErrorMark *this, unint64_t *a2)
{
  v3 = atomic_load(off_278EA82B8);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = *this;

  return MEMORY[0x2822062E0](v3, v4, 0);
}

uint64_t tbb::interface6::internal::ets_base<(tbb::ets_key_usage_type)1>::table_lookup(atomic_ullong *a1, _BYTE *a2)
{
  v4 = MEMORY[0x24C1A6B30]();
  v5 = v4;
  v6 = v4 ^ (v4 >> 3);
  v7 = a1[1];
  __dmb(0xBu);
  if (!v7)
  {
LABEL_7:
    *a2 = 0;
    v13 = (**a1)(a1);
    v14 = atomic_fetch_add(a1 + 2, 1uLL) + 1;
    v15 = a1[1];
    __dmb(0xBu);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v14 <= (1 << v16) >> 1)
      {
LABEL_24:
        v23 = a1[1];
        __dmb(0xBu);
        v24 = *(v23 + 8);
        v25 = ~(-1 << v24);
        v26 = v6 >> -v24;
        v27 = v23 + 16;
        while (1)
        {
          v28 = (v27 + 16 * v26);
          if (!*v28)
          {
            break;
          }

LABEL_28:
          v26 = (v26 + 1) & v25;
        }

        while (1)
        {
          v29 = 0;
          atomic_compare_exchange_strong(v28, &v29, v5);
          if (!v29)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v28, 0, memory_order_relaxed))
          {
            goto LABEL_28;
          }
        }

        v28[1] = v13;
        return v13;
      }
    }

    else
    {
      v16 = 2;
    }

    v18 = v16 - 1;
    do
    {
      v19 = 1 << v18++;
    }

    while (v14 > v19);
    v20 = (*(*a1 + 8))(a1, (16 << v18) + 16);
    v20[1] = v18;
    bzero(v20 + 2, 16 << v18);
    while (1)
    {
      *v20 = v15;
      while (1)
      {
        v21 = v15;
        atomic_compare_exchange_strong(a1 + 1, &v21, v20);
        if (v21 == v15)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(a1 + 1, 0, memory_order_relaxed);
        if (add_explicit != v15)
        {
          goto LABEL_21;
        }
      }

      add_explicit = v15;
LABEL_21:
      if (v15 == add_explicit)
      {
        goto LABEL_24;
      }

      v15 = add_explicit;
      if (*(add_explicit + 8) >= v18)
      {
        (*(*a1 + 16))(a1, v20, (16 << v20[1]) + 16);
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    v9 = v6 >> -v8;
    v10 = v7 + 2;
    v11 = v7[2 * v9 + 2];
    if (v11)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v12 = ~(-1 << v8);
  while (v4 != v11)
  {
    v9 = (v9 + 1) & v12;
    v11 = v10[2 * v9];
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v17 = a1[1];
  __dmb(0xBu);
  *a2 = 1;
  v13 = v10[2 * v9 + 1];
  if (v7 != v17)
  {
    goto LABEL_24;
  }

  return v13;
}

void pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::reserve(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(a1, a2);
    goto LABEL_12;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(a1, a2);
    New = v6;
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(v6 + i) = *(v3 + i);
      }
    }

LABEL_12:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    a1[4] = New;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::reserve(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, a2);
    goto LABEL_12;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, a2);
    New = v6;
    if (v5)
    {
      v8 = 0;
      do
      {
        *(v6 + v8) = *(v3 + v8);
        v8 += 4;
      }

      while (4 * v5 != v8);
    }

LABEL_12:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    a1[4] = New;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<float>::reserve(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, a2);
    goto LABEL_12;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, a2);
    New = v6;
    if (v5)
    {
      v8 = 0;
      do
      {
        *(v6 + v8) = *(v3 + v8);
        v8 += 4;
      }

      while (4 * v5 != v8);
    }

LABEL_12:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    a1[4] = New;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::reserve(uint64_t *a1, unint64_t a2)
{
  v4 = a1[4];
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(a1, a2);
    goto LABEL_9;
  }

  if (a1[3])
  {
    v5 = a1;
  }

  else
  {
    v5 = v4 - 1;
  }

  if (*v5 < a2)
  {
    New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(a1, v4, a2, *a1);
LABEL_9:
    v7 = New;
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(a1);
    a1[4] = v7;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>>>::__find_equal<std::string>(uint64_t **a1, const void **a2)
{
  v3 = &qword_27EE52F78;
  v4 = qword_27EE52F78;
  if (qword_27EE52F78)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = &qword_27EE52F78;
    do
    {
      while (1)
      {
        v3 = v4;
        v11 = *(v4 + 32);
        v9 = v4 + 32;
        v10 = v11;
        v12 = *(v9 + 23);
        if (v12 >= 0)
        {
          v13 = *(v9 + 23);
        }

        else
        {
          v13 = *(v9 + 8);
        }

        if (v12 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = v10;
        }

        if (v13 >= v6)
        {
          v15 = v6;
        }

        else
        {
          v15 = v13;
        }

        v16 = memcmp(v7, v14, v15);
        v17 = v6 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v3;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_29;
        }
      }

      v18 = memcmp(v14, v7, v15);
      v19 = v13 < v6;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        break;
      }

      v8 = v3 + 1;
      v4 = v3[1];
    }

    while (v4);
  }

  else
  {
    v8 = &qword_27EE52F78;
  }

LABEL_29:
  *a1 = v3;
  return v8;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_27EE52F70)
  {
    qword_27EE52F70 = *qword_27EE52F70;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_27EE52F78, a3);
  ++qword_27EE52F80;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::Document>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::NDR_DISCOVERY__DebugCodes>::nodes()
{
  if ((atomic_load_explicit(&qword_27EE52F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52F08))
  {
    operator new();
  }

  return qword_27EE52F00;
}

BOOL std::unordered_map<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>::unordered_map(_BOOL8 result, uint64_t a2)
{
  xmmword_27EE52FB8 = 0u;
  *&qword_27EE52FC8 = 0u;
  dword_27EE52FD8 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 48 * a2);
    do
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_27EE52FB8, v2);
      v4 = v3;
      v5 = *(&xmmword_27EE52FB8 + 1);
      if (!*(&xmmword_27EE52FB8 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_27EE52FB8 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_27EE52FB8 + 1))
        {
          v8 = v3 % *(&xmmword_27EE52FB8 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_27EE52FB8 + 1) - 1) & v3;
      }

      v9 = *(xmmword_27EE52FB8 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = v10[1];
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_27EE52FB8, v10 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 6;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_24758FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>>>::~__hash_table();
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>,0>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::mtlx::UsdMtlxUsdTypeInfo>>>::~__hash_table()
{
  v0 = qword_27EE52FC8;
  if (qword_27EE52FC8)
  {
    do
    {
      v1 = *v0;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::mtlx::UsdMtlxUsdTypeInfo>,0>((v0 + 2));
      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_27EE52FB8;
  *&xmmword_27EE52FB8 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void *std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue const&,0>(void *result, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result[1] = 0;
  if (a2[1])
  {
    v3 = result;
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v6, result);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    v3[1] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, v3);
    }

    else
    {
      *v3 = *a2;
    }

    if (v7)
    {
      return (*(v7 + 32))(v6);
    }
  }

  return result;
}

void sub_24759012C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::PrimitiveDirtyPropertyDescriptor::PrimitiveDirtyPropertyDescriptor(uint64_t a1, void **a2)
{
  *a1 = &unk_28594FCF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 32) = (*(*a1 + 40))(a1);
  return a1;
}

void sub_2475901FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::PrimitiveDirtyPropertyDescriptor::_isEmpty(realityio::PrimitiveDirtyPropertyDescriptor *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *v1;
    v3 = v1[1];
    if (!v3)
    {
      break;
    }

    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(v4 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5 != 1)
    {
      return 0;
    }

LABEL_6:
    v1 += 2;
    if (v1 == v2)
    {
      return 1;
    }
  }

  if (*(v4 + 8))
  {
    goto LABEL_6;
  }

  return 0;
}

const void **realityio::PrimitiveDirtyPropertyDescriptor::description@<X0>(uint64_t **this@<X0>, CFStringRef *a2@<X8>)
{
  v8 = 0;
  v4 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v5 = this[1];
  v6 = this[2];
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<PrimitiveDirtyPropertyDescriptor: %p { dirtyPropertyMetadataContainAnyOf: (%lu) [ %@ ] } >", this, (v6 - v5) >> 4, v4, v4);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v8);
}

void sub_247590324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

CFStringRef realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(uint64_t **a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, const __CFArray *a4)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = a3 >> 1;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a3)
      {
        (*(*(v13 + v12) + a2))(&value, v13 + v12);
      }

      else
      {
        a2(&value, v13 + v12);
      }

      CFArrayAppendValue(Mutable, value);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  v15 = realityio::joinAsCFStringRef(Mutable, a4, v8);
  CFRelease(Mutable);
  return v15;
}

void sub_24759044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::AnyValueDirtyPropertyDescriptor::AnyValueDirtyPropertyDescriptor(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = realityio::PrimitiveDirtyPropertyDescriptor::PrimitiveDirtyPropertyDescriptor(a1, a3);
  *v5 = &unk_28594FD38;
  v6 = *a2;
  v5[5] = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 48) = (*(*a1 + 40))(a1);
  return a1;
}

void sub_247590520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 40);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v10 = &unk_28594FCF8;
  a10 = (v10 + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void realityio::AnyValueDirtyPropertyDescriptor::~AnyValueDirtyPropertyDescriptor(realityio::AnyValueDirtyPropertyDescriptor *this)
{
  *this = &unk_28594FD38;
  v1 = *(this + 5);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *this = &unk_28594FCF8;
  v2 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  realityio::AnyValueDirtyPropertyDescriptor::~AnyValueDirtyPropertyDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

realityio::AnyValueDirtyPropertyDescriptor *realityio::AnyValueDirtyPropertyDescriptor::AnyValueDirtyPropertyDescriptor(realityio::AnyValueDirtyPropertyDescriptor *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  memset(v4, 0, sizeof(v4));
  realityio::AnyValueDirtyPropertyDescriptor::AnyValueDirtyPropertyDescriptor(this, a2, v4);
  v5 = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *(this + 48) = (*(*this + 40))(this);
  return this;
}

uint64_t realityio::AnyValueDirtyPropertyDescriptor::validate(void *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, uint64_t a5, uint64_t a6)
{
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v70, this, a2);
  if (!*(a5 + 24) || !*(a6 + 24))
  {
    goto LABEL_67;
  }

  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v70);
  v12 = a3 ? IsValid : 1;
  if ((v12 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v55, a3, a2);
    v13 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v55);
    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
    if (v56)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v14 = a1 + 5;
  if (a1[5])
  {
    v15 = *(a5 + 24);
    if (!v15)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v16 = (*(*v15 + 48))(v15, a2, a1 + 5);
  }

  else
  {
    v16 = 1;
  }

  IsPseudoRoot = pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v70);
  if ((IsPseudoRoot & 1) == 0 && *v14)
  {
    v18 = *v14 & 0xFFFFFFFFFFFFFFF8;
    if (v18)
    {
      EmptyString = v18 + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsPseudoRoot);
    }

    v20 = *(EmptyString + 23);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = EmptyString;
      EmptyString = *EmptyString;
      v20 = *(v21 + 8);
    }

    v22 = 9;
    if (v20 < 9)
    {
      v22 = v20;
    }

    if (v20)
    {
      v23 = (EmptyString + v22);
      v24 = EmptyString;
      v25 = (EmptyString + v22);
      do
      {
        if (*v24 == 112)
        {
          v26 = 1u;
          while (v26 != 9)
          {
            if (&v24[v26] == v23)
            {
              goto LABEL_36;
            }

            v27 = v24[v26];
            v28 = aPrimvars[v26++];
            if (v27 != v28)
            {
              goto LABEL_28;
            }
          }

          v25 = v24;
        }

LABEL_28:
        ++v24;
      }

      while (v24 != v23);
LABEL_36:
      if (v25 != v23 && v25 == EmptyString)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v69 = 0;
        v66 = MEMORY[0x277D86790] + 16;
        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(&v55, &v66, (a1 + 5));
        LODWORD(v61) = v55;
        v62 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit((v56 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v63, &v57);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v64, &v58);
        v65 = v59;
        if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v65 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v60 & 7) != 0)
        {
          atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v59 & 7) != 0)
        {
          atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
        if (v56)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
        }

        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v61))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v55, &v62, &v63);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v52, &v55);
          v29 = *(a5 + 24);
          if (!v29)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v16 = (*(*v29 + 48))(v29, &v52, a1 + 5);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
          if ((v59 & 7) != 0)
          {
            atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
          if (v56)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
          }
        }

        if ((v65 & 7) != 0)
        {
          atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v63);
        if (v62)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v62);
        }

        MEMORY[0x24C1A56A0](&v66);
      }
    }
  }

  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v66, a3, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v66))
    {
      v30 = pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v66);
      if ((v30 & 1) == 0)
      {
        if (*v14)
        {
          v31 = *v14 & 0xFFFFFFFFFFFFFFF8;
          if (v31)
          {
            v32 = v31 + 16;
          }

          else
          {
            v32 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
          }

          v35 = *(v32 + 23);
          if ((v35 & 0x8000000000000000) != 0)
          {
            v36 = v32;
            v32 = *v32;
            v35 = *(v36 + 8);
          }

          v37 = 9;
          if (v35 < 9)
          {
            v37 = v35;
          }

          if (v35)
          {
            v38 = (v32 + v37);
            v39 = v32;
            v40 = (v32 + v37);
            do
            {
              if (*v39 == 112)
              {
                v41 = 1u;
                while (v41 != 9)
                {
                  if (&v39[v41] == v38)
                  {
                    goto LABEL_89;
                  }

                  v42 = v39[v41];
                  v43 = aPrimvars[v41++];
                  if (v42 != v43)
                  {
                    goto LABEL_81;
                  }
                }

                v40 = v39;
              }

LABEL_81:
              ++v39;
            }

            while (v39 != v38);
LABEL_89:
            if (v40 != v38 && v40 == v32)
            {
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              v65 = 0;
              v61 = MEMORY[0x277D86790] + 16;
              pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(&v55, &v61, (a1 + 5));
              pxrInternal__aapl__pxrReserved__::UsdAttribute::UsdAttribute(&v52, &v55);
              pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&v55);
              if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v52))
              {
                pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v55, &v53, v54);
                pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v51, &v55);
                v44 = *(a5 + 24);
                if (!v44)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                LOBYTE(v16) = (*(*v44 + 48))(v44, &v51, a1 + 5);
                pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v51);
                pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v55);
              }

              pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v52);
              MEMORY[0x24C1A56A0](&v61);
            }
          }
        }
      }
    }

    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v68);
    if (v67)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v67);
    }

    if (v16)
    {
      goto LABEL_100;
    }

LABEL_67:
    v33 = 0;
    goto LABEL_68;
  }

  if (!v16)
  {
    goto LABEL_67;
  }

LABEL_100:
  v45 = a1[1];
  v46 = a1[2];
  if (v45 == v46)
  {
    v33 = 1;
  }

  else
  {
    do
    {
      v47 = *v45;
      v48 = v45[1];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = *(a6 + 24);
      if (!v49)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v33 = (*(*v49 + 48))(v49, a2, v14, v47);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      v45 += 2;
      if (v45 == v46)
      {
        v50 = 1;
      }

      else
      {
        v50 = v33;
      }
    }

    while (v50 != 1);
  }

LABEL_68:
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
  if (v71)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v71);
  }

  return v33;
}

void sub_247590D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(va3, va2);
  v19 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v22 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  MEMORY[0x24C1A56A0](va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v5 - 112));
  _Unwind_Resume(a1);
}

uint64_t realityio::AnyValueDirtyPropertyDescriptor::_isEmpty(realityio::AnyValueDirtyPropertyDescriptor *this)
{
  if (*(this + 5))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 32);
  }

  return v1 & 1;
}

const void **realityio::AnyValueDirtyPropertyDescriptor::description@<X0>(uint64_t **this@<X0>, CFStringRef *a2@<X8>)
{
  v9 = 0;
  v4 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v5 = this[5];
  v9 = v4;
  *a2 = 0;
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  if ((v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  *a2 = CFStringCreateWithFormat(0, 0, @"<AnyValueDirtyPropertyDescriptor: %p { propertyName: %s, dirtyPropertyMetadataContainAnyOf: (%lu) [ %@ ] } >", this, v7, (this[2] - this[1]) >> 4, v4);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v9);
}

void sub_247590F58(_Unwind_Exception *a1)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t realityio::AnyValueNamedspacedDirtyPropertyDescriptor::AnyValueNamedspacedDirtyPropertyDescriptor(uint64_t a1, __int128 *a2, void **a3)
{
  v5 = realityio::PrimitiveDirtyPropertyDescriptor::PrimitiveDirtyPropertyDescriptor(a1, a3);
  v6 = &unk_28594FD78;
  *v5 = &unk_28594FD78;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v5 + 40), *a2, *(a2 + 1));
    v6 = *a1;
  }

  else
  {
    v7 = *a2;
    *(v5 + 56) = *(a2 + 2);
    *(v5 + 40) = v7;
  }

  *(a1 + 64) = v6[5](a1);
  return a1;
}

void sub_247591030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_28594FCF8;
  a10 = (v10 + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void realityio::AnyValueNamedspacedDirtyPropertyDescriptor::~AnyValueNamedspacedDirtyPropertyDescriptor(void **this)
{
  *this = &unk_28594FD78;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_28594FCF8;
  v2 = this + 1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  realityio::AnyValueNamedspacedDirtyPropertyDescriptor::~AnyValueNamedspacedDirtyPropertyDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

_BYTE *realityio::AnyValueNamedspacedDirtyPropertyDescriptor::AnyValueNamedspacedDirtyPropertyDescriptor(_BYTE *a1, __int128 *a2)
{
  memset(v4, 0, sizeof(v4));
  realityio::AnyValueNamedspacedDirtyPropertyDescriptor::AnyValueNamedspacedDirtyPropertyDescriptor(a1, a2, v4);
  v5 = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  a1[64] = (*(*a1 + 40))(a1);
  return a1;
}

uint64_t realityio::AnyValueNamedspacedDirtyPropertyDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, uint64_t a5, uint64_t a6)
{
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v38, this, a2);
  if (!*(a5 + 24) || !*(a6 + 24))
  {
    goto LABEL_18;
  }

  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v38);
  v12 = a3 ? IsValid : 1;
  if ((v12 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v35, a3, a2);
    v13 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v35);
    if ((BYTE8(v36) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v36 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
    if (*(&v35 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v35 + 1));
    }

    if ((v13 & 1) == 0)
    {
LABEL_18:
      v17 = 0;
      goto LABEL_49;
    }
  }

  v35 = 0u;
  v36 = 0u;
  v37 = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertiesInNamespace();
  for (i = v34[0]; i != v34[1]; i = (i + 32))
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(i);
    v16 = *(a5 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v16 + 48))(v16, a2, Name))
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v35, Name);
    }
  }

  if (a3)
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v30, a3, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v30))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertiesInNamespace();
      for (j = v29[0]; j != v29[1]; j = (j + 32))
      {
        v19 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(j);
        v20 = *(a5 + 24);
        if (!v20)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v20 + 48))(v20, a2, v19))
        {
          std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v35, v19);
        }
      }

      v42 = v29;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    if (v31)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
    }
  }

  if (*(&v36 + 1))
  {
    if (*(a1 + 8) == *(a1 + 16))
    {
LABEL_47:
      v17 = 1;
      goto LABEL_48;
    }

    v21 = v36;
    if (v36)
    {
      do
      {
        v22 = *(a1 + 8);
        v23 = *(a1 + 16);
        while (v22 != v23)
        {
          v24 = *v22;
          v25 = v22[1];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(a6 + 24);
          if (!v26)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v27 = (*(*v26 + 48))(v26, a2, v21 + 2, v24);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v27)
          {
            goto LABEL_47;
          }

          v22 += 2;
        }

        v17 = 0;
        v21 = *v21;
      }

      while (v21);
      goto LABEL_48;
    }
  }

  v17 = 0;
LABEL_48:
  v30 = v34;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100](&v30);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&v35);
LABEL_49:
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  if (v39)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
  }

  return v17;
}

void sub_247591544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void *);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  v22 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  *(v7 - 88) = va1;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100]((v7 - 88));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va3);
  _Unwind_Resume(a1);
}

uint64_t realityio::AnyValueNamedspacedDirtyPropertyDescriptor::_isEmpty(realityio::AnyValueNamedspacedDirtyPropertyDescriptor *this)
{
  if ((*(this + 63) & 0x8000000000000000) != 0)
  {
    if (*(this + 6))
    {
      goto LABEL_3;
    }

LABEL_5:
    v1 = *(this + 32);
    return v1 & 1;
  }

  if (!*(this + 63))
  {
    goto LABEL_5;
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

const void **realityio::AnyValueNamedspacedDirtyPropertyDescriptor::description@<X0>(uint64_t **this@<X0>, CFStringRef *a2@<X8>)
{
  v8 = 0;
  v4 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v5 = *(this + 63);
  v8 = v4;
  v6 = this + 5;
  *a2 = 0;
  if (v5 < 0)
  {
    v6 = *v6;
  }

  *a2 = CFStringCreateWithFormat(0, 0, @"<AnyValueNamedspacedDirtyPropertyDescriptor: %p { namespacePrefix: %s, dirtyPropertyMetadataContainAnyOf: (%lu) [ %@ ] } >", this, v6, (this[2] - this[1]) >> 4, v4);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v8);
}

void sub_2475916BC(_Unwind_Exception *a1)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 24));
  _Unwind_Resume(a1);
}

void realityio::PrimitiveDirtyPropertyDescriptor::~PrimitiveDirtyPropertyDescriptor(realityio::PrimitiveDirtyPropertyDescriptor *this)
{
  *this = &unk_28594FCF8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_28594FCF8;
  v2 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x24C1A91B0](this, 0x10A1C407F0BD61ELL);
}

pxrInternal__aapl__pxrReserved__::UsdAttribute *pxrInternal__aapl__pxrReserved__::UsdAttribute::UsdAttribute(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 4, a2 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 5, a2 + 5);
  v5 = *(a2 + 3);
  *(this + 3) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a6@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  memset(&v67, 0, sizeof(v67));
  if (a4[1] != *a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v71, (*a5 + v7));
      LOBYTE(v10) = BYTE8(v71);
      if (*(&v71 + 1))
      {
        v11 = *a4;
        v12 = *(&v71 + 1) & 0xFFFFFFFFFFFFFFF8;
        if (!strcmp((*(*(*(&v71 + 1) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          goto LABEL_7;
        }

        if ((v10 & 4) == 0)
        {
          goto LABEL_15;
        }

        {
LABEL_7:
          NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v8));
          v14 = atomic_load(&realityio::tokens::EcsTokens);
          if (!v14)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
          }

          v15 = *(v14 + 176) ^ *NameToken;
          v10 = *(&v71 + 1);
          if (v15 <= 7)
          {
            if ((BYTE8(v71) & 4) != 0)
            {
              v16 = (*((*(&v71 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v71);
            }

            else
            {
              v16 = &v71;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v68, v16);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v69, v16 + 1);
            goto LABEL_23;
          }
        }

        else
        {
          v10 = *(&v71 + 1);
        }

        if (v10)
        {
          v12 = v10 & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
          {
            v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v8));
            v18 = atomic_load(&realityio::tokens::EcsTokens);
            if (!v18)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
            }

            if ((*(v18 + 168) ^ *v17) <= 7)
            {
              if ((BYTE8(v71) & 4) != 0)
              {
                v19 = (*((*(&v71 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v71);
              }

              else
              {
                v19 = v71;
              }

              std::string::operator=(&v67, v19);
            }
          }
        }
      }

LABEL_23:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v71);
      ++v9;
      v8 += 8;
      v7 += 16;
    }

    while (v9 < (a4[1] - *a4) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, a3);
  v66 = 0;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(a6))
  {
    v20 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REEntity *>>(a6);
    realityio::WrappedRERef<REAsset *>::operator=(&v66, v20);
    v21 = v66;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    ChildCount = REEntityGetChildCount();
    if (ChildCount)
    {
      std::vector<REEntity *>::vector[abi:ne200100](&v74, ChildCount);
      REEntityGetChildren();
      v32 = v74;
      v33 = v75;
      if (v74 != v75)
      {
        do
        {
          std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(&v71, v32, v32);
          ++v32;
        }

        while (v32 != v33);
        v32 = v74;
      }

      if (v32)
      {
        v75 = v32;
        operator delete(v32);
      }
    }

    if (a4[1] == *a4)
    {
      v57 = 0;
LABEL_122:
      v61[1] = 0;
      v62 = 0;
      v61[0] = 0;
      std::vector<REComponent *>::__init_with_size[abi:ne200100]<REComponent **,REComponent **>(v61, 0, v57, v57 >> 3);
      __p[0] = v21;
      __p[1] = 0;
      v64 = 0uLL;
      std::vector<std::pair<REEntity *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<REEntity *,unsigned long>*,std::pair<REEntity *,unsigned long>*>(&__p[1], 0, 0, 0);
      std::unordered_set<REEntity *>::unordered_set(&v65, &v71);
      v70[3] = 0;
      operator new();
    }

    v34 = 0;
    v57 = 0;
    while (1)
    {
      v35 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v74, (*a5 + 16 * v34));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v35))
      {
        v70[0] = *pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(&v74);
        if (v70[0])
        {
          RERetain();
          v36 = v70[0];
        }

        else
        {
          v36 = 0;
        }

        if (!REComponentGetEntity())
        {
          v54 = v57;
          v55 = v57 >> 3;
          if (((v57 >> 3) + 1) >> 61)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          if (v57 >> 3 != -1)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>((v57 >> 3) + 1);
          }

          *(8 * v55) = v36;
          v57 = 8 * v55 + 8;
          memcpy(0, 0, v54);
        }

        realityio::WrappedRERef<REComponent *>::~WrappedRERef(v70);
      }

      else
      {
        v37 = v75;
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetName((*a4 + 8 * v34));
          MEMORY[0x24C1A5DE0](v70, "__childEntities");
          v38 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
          if ((v70[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v70[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v38)
          {
            v39 = (v75 & 4) != 0 ? (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(&v74) : v74;
            if (*v39)
            {
              v40 = v39[4];
              v41 = (v40 + 16 * *v39);
              while (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(v40))
              {
                v40 = (v40 + 16);
                if (v40 == v41)
                {
                  goto LABEL_118;
                }
              }

              v42 = *(v40 + 1);
              if ((v42 & 4) != 0)
              {
                v43 = (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(v40);
              }

              else
              {
                v43 = *v40;
              }

              v70[0] = *v43;
              v44 = std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(&v71, v70);
              if (v44)
              {
                v45 = *(&v71 + 1);
                v46 = v44[1];
                v47 = vcnt_s8(*(&v71 + 8));
                v47.i16[0] = vaddlv_u8(v47);
                if (v47.u32[0] > 1uLL)
                {
                  if (v46 >= *(&v71 + 1))
                  {
                    v46 %= *(&v71 + 1);
                  }
                }

                else
                {
                  v46 &= *(&v71 + 1) - 1;
                }

                v48 = *v44;
                v49 = *(v71 + 8 * v46);
                do
                {
                  v50 = v49;
                  v49 = *v49;
                }

                while (v49 != v44);
                if (v50 == &v72)
                {
                  goto LABEL_96;
                }

                v51 = *(v50 + 1);
                if (v47.u32[0] > 1uLL)
                {
                  if (v51 >= *(&v71 + 1))
                  {
                    v51 %= *(&v71 + 1);
                  }
                }

                else
                {
                  v51 &= *(&v71 + 1) - 1;
                }

                if (v51 == v46)
                {
LABEL_98:
                  if (v48)
                  {
                    v52 = *(v48 + 8);
                    goto LABEL_100;
                  }
                }

                else
                {
LABEL_96:
                  if (!v48)
                  {
                    goto LABEL_97;
                  }

                  v52 = *(v48 + 8);
                  if (v47.u32[0] > 1uLL)
                  {
                    v53 = *(v48 + 8);
                    if (v52 >= *(&v71 + 1))
                    {
                      v53 = v52 % *(&v71 + 1);
                    }
                  }

                  else
                  {
                    v53 = v52 & (*(&v71 + 1) - 1);
                  }

                  if (v53 != v46)
                  {
LABEL_97:
                    *(v71 + 8 * v46) = 0;
                    v48 = *v44;
                    goto LABEL_98;
                  }

LABEL_100:
                  if (v47.u32[0] > 1uLL)
                  {
                    if (v52 >= v45)
                    {
                      v52 %= v45;
                    }
                  }

                  else
                  {
                    v52 &= v45 - 1;
                  }

                  if (v52 != v46)
                  {
                    *(v71 + 8 * v52) = v50;
                    v48 = *v44;
                  }
                }

                *v50 = v48;
                *v44 = 0;
                --*(&v72 + 1);
                operator delete(v44);
              }

              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<REEntity *,unsigned long>>>(1uLL);
            }
          }
        }
      }

LABEL_118:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v74);
      if (++v34 >= ((a4[1] - *a4) >> 3))
      {
        goto LABEL_122;
      }
    }
  }

  v22 = REEntityCreate();
  RENetworkComponentGetComponentType();
  *&v71 = &unk_28594FEA8;
  *(&v72 + 1) = &v71;
  v23 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(&v71, v23);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v71);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v74, a2);
  BYTE7(v72) = 7;
  strcpy(&v71, "/__root");
  MEMORY[0x24C1A5D70](v70, &v71);
  v24 = v74;
  v25 = v70[0];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v70);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
  if (v24 == v25)
  {
LABEL_47:
    *&v71 = v22;
    if (v22)
    {
      RERetain();
      v28 = v71;
    }

    else
    {
      v28 = 0;
    }

    v29 = v66;
    if (v66 != v28)
    {
      v66 = v28;
      *&v71 = v29;
    }

    v30 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v71);
    *(&v71 + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REEntity *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>::_PlaceCopy(v30, &v66);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v67.__r_.__value_.__l.__size_)
    {
LABEL_38:
      REEntitySetName();
LABEL_40:
      if (REComponentClassFromName())
      {
        if (REEntityGetOrAddComponentByClass())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v71, v68);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v71, a2);
            }

            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v71);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
          }
        }
      }

      goto LABEL_47;
    }
  }

  else if (*(&v67.__r_.__value_.__s + 23))
  {
    goto LABEL_38;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v71, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v71);
  REEntitySetName();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
  goto LABEL_40;
}

void sub_247592520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pxrInternal__aapl__pxrReserved__::VtValue *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v39 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v39 - 176);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a32);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a12);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a39);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP8REEntityEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REEntity *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

char *anonymous namespace::RIOPrimPathComponent::setPath(char **this, const char *__s)
{
  result = *this;
  if (result)
  {
    result = RECIntrospectionFree();
    *this = 0;
  }

  if (__s)
  {
    strlen(__s);
    v5 = RECIntrospectionAlloc();
    *this = v5;

    return strcpy(v5, __s);
  }

  return result;
}

uint64_t realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::$_0::~$_0(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(a1 + 56);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void realityio::EntitySyncAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v11, a1);
  if (a2[1] == *a2)
  {
LABEL_5:
    *(a4 + 1) = 0;
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v13, a4);
      v9 = v12;
      v10 = ~v12;
      *(a4 + 1) = v12;
      if ((v10 & 3) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 40))(&v11, a4);
      }

      else
      {
        *a4 = v11;
      }

      v12 = 0;
      if (v14)
      {
        (*(v14 + 32))(v13);
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, (*a3 + v7));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(a4))
      {
        break;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a4);
      ++v8;
      v7 += 16;
      if (v8 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_5;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v11);
}

void sub_247592A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *realityio::RenderOptionsComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v21 = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    RERenderOptionsComponentGetComponentType();
    v22 = REComponentCreateByClass();
    if (v22)
    {
      RERetain();
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    v10 = v21;
    if (v21 != v9)
    {
      v21 = v9;
      v22 = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v22);
    v23 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy(&v22, &v21);
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(&v21, v8);
  v20 = 0;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v22, (*a3 + v11));
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((*a2 + v12));
      MEMORY[0x24C1A5DE0](&v19, "visibility");
      v15 = v19;
      if ((v19 ^ *NameToken) > 7)
      {
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_26;
      }

      if (!v23)
      {
        goto LABEL_18;
      }

      if (*((v23 & 0xFFFFFFFFFFFFFFF8) + 16) != 13)
      {
        break;
      }

      IsImpl = 1;
LABEL_20:
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((v23 & 4) != 0)
        {
          v17 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(&v22);
        }

        else
        {
          v17 = &v22;
        }

        pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v20, v17);
      }

LABEL_26:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v22);
      ++v13;
      v12 += 8;
      v11 += 16;
      if (v13 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_29;
      }
    }

    if ((v23 & 4) != 0)
    {
      v15 = v19;
      goto LABEL_20;
    }

LABEL_18:
    IsImpl = 0;
    goto LABEL_20;
  }

LABEL_29:
  MEMORY[0x24C1A5DE0](&v22, "invisible");
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  RERenderOptionsComponentSetVisibilityMode();
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v21);
}

void sub_247592D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(va);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN9realityio12createEntityEvEUlT_E_NS_9allocatorIS4_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN9realityio12createEntityEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::WrappedRERef<REEntity *>>(uint64_t *result)
{
  if (result)
  {
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REEntity *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REEntity *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>>::_DecrementIfValid(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REEntity *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>>::_GetProxiedAsVtValue(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REEntity *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>::_PlaceCopy(a2, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>>::_DecrementIfValid(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v3 = v1;
    __dmb(9u);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 8));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REEntity *>>,realityio::WrappedRERef<REEntity *> const&>();
  }

  return *a1;
}

uint64_t *std::vector<REEntity *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<REComponentClass *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2475932BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<REEntity *,unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<REComponent *>::__init_with_size[abi:ne200100]<REComponent **,REComponent **>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24759339C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<REEntity *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<REEntity *,unsigned long>*,std::pair<REEntity *,unsigned long>*>(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<REEntity *,unsigned long>>>(a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_247593434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<REEntity *>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28594FFF0;
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28594FFF0;
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C1A91B0);
}

void sub_247593668(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594FFF0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::vector<REComponent *>::__init_with_size[abi:ne200100]<REComponent **,REComponent **>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  v4 = *(a1 + 32);
  a2[5] = 0;
  a2[4] = v4;
  a2[6] = 0;
  a2[7] = 0;
  std::vector<std::pair<REEntity *,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<REEntity *,unsigned long>*,std::pair<REEntity *,unsigned long>*>((a2 + 5), *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 4);
  return std::unordered_set<REEntity *>::unordered_set((a2 + 8), a1 + 64);
}

void sub_247593748(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void *std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::operator()(void *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  while (v2 != v3)
  {
    v2 += 8;
    result = REEntityAddExistingComponent();
  }

  v4 = v1[5];
  v5 = v1[6];
  while (v4 != v5)
  {
    v4 += 16;
    result = REEntityInsertChild();
  }

  for (i = v1[10]; i; i = *i)
  {
    result = REEntitySetParent();
  }

  return result;
}

uint64_t std::__function::__func<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::EntityAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *RIO_MTLX::DEFAULT_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::DEFAULT_TYPE_STRING(void)::v, "color3");
  }

  return RIO_MTLX::DEFAULT_TYPE_STRING(void)::v;
}

void *RIO_MTLX::FILENAME_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::FILENAME_TYPE_STRING(void)::v, "filename");
  }

  return RIO_MTLX::FILENAME_TYPE_STRING(void)::v;
}

void *RIO_MTLX::GEOMNAME_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::GEOMNAME_TYPE_STRING(void)::v, "geomname");
  }

  return RIO_MTLX::GEOMNAME_TYPE_STRING(void)::v;
}

void *RIO_MTLX::STRING_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::STRING_TYPE_STRING(void)::v, "string");
  }

  return RIO_MTLX::STRING_TYPE_STRING(void)::v;
}

void *RIO_MTLX::SURFACE_SHADER_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::SURFACE_SHADER_TYPE_STRING(void)::v, "surfaceshader");
  }

  return RIO_MTLX::SURFACE_SHADER_TYPE_STRING(void)::v;
}

void *RIO_MTLX::DISPLACEMENT_SHADER_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::DISPLACEMENT_SHADER_TYPE_STRING(void)::v, "displacementshader");
  }

  return RIO_MTLX::DISPLACEMENT_SHADER_TYPE_STRING(void)::v;
}

void *RIO_MTLX::VOLUME_SHADER_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::VOLUME_SHADER_TYPE_STRING(void)::v, "volumeshader");
  }

  return RIO_MTLX::VOLUME_SHADER_TYPE_STRING(void)::v;
}

void *RIO_MTLX::LIGHT_SHADER_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::LIGHT_SHADER_TYPE_STRING(void)::v, "lightshader");
  }

  return RIO_MTLX::LIGHT_SHADER_TYPE_STRING(void)::v;
}

void *RIO_MTLX::MATERIAL_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::MATERIAL_TYPE_STRING(void)::v, "material");
  }

  return RIO_MTLX::MATERIAL_TYPE_STRING(void)::v;
}

void *RIO_MTLX::SURFACE_MATERIAL_NODE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::SURFACE_MATERIAL_NODE_STRING(void)::v, "surfacematerial");
  }

  return RIO_MTLX::SURFACE_MATERIAL_NODE_STRING(void)::v;
}

void *RIO_MTLX::VOLUME_MATERIAL_NODE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::VOLUME_MATERIAL_NODE_STRING(void)::v, "volumematerial");
  }

  return RIO_MTLX::VOLUME_MATERIAL_NODE_STRING(void)::v;
}

void *RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(void)::v, "multioutput");
  }

  return RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(void)::v;
}

void *RIO_MTLX::VALUE_STRING_TRUE(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::VALUE_STRING_TRUE(void)::v, "true");
  }

  return RIO_MTLX::VALUE_STRING_TRUE(void)::v;
}

void *RIO_MTLX::VALUE_STRING_FALSE(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::VALUE_STRING_FALSE(void)::v, "false");
  }

  return RIO_MTLX::VALUE_STRING_FALSE(void)::v;
}

void *RIO_MTLX::NAME_PREFIX_SEPARATOR(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::NAME_PREFIX_SEPARATOR(void)::v, ":");
  }

  return RIO_MTLX::NAME_PREFIX_SEPARATOR(void)::v;
}

void *RIO_MTLX::NAME_PATH_SEPARATOR(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::NAME_PATH_SEPARATOR(void)::v, "/");
  }

  return RIO_MTLX::NAME_PATH_SEPARATOR(void)::v;
}

void *RIO_MTLX::ARRAY_VALID_SEPARATORS(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::ARRAY_VALID_SEPARATORS(void)::v, ", ");
  }

  return RIO_MTLX::ARRAY_VALID_SEPARATORS(void)::v;
}

void *RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(void)::v, ", ");
  }

  return RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(void)::v;
}

uint64_t RIOBuilderStageDeltaGetTypeID()
{
  if (RIOBuilderStageDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderStageDeltaGetTypeID::onceToken, &__block_literal_global_10);
  }

  return RIOBuilderStageDeltaGetTypeID::typeID;
}

void __RIOBuilderStageDeltaGetTypeID_block_invoke()
{
  if (!RIOBuilderStageDeltaGetTypeID::typeID)
  {
    RIOBuilderStageDeltaGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t *RIOBuilderStageDeltaCopyPrimDelta(uint64_t a1)
{
  if (RIOBuilderPrimDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderPrimDeltaGetTypeID::onceToken, &__block_literal_global);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(Instance + 16, a1 + 56);
    v3[7] = 0;
    v3[8] = 0;
    v3[9] = 0;
    std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(v3 + 7, *(a1 + 96), *(a1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 4));
  }

  return v3;
}

__CFArray *RIOBuilderStageDeltaCopyDirtyMetadata(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 32); i; i = *i)
  {
    v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i + 2);
    CFArrayAppendValue(Mutable, v5);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v5);
  }

  return Mutable;
}

void sub_2475943B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void **_RIOBuilderStageDeltaCFFinalize(void **a1)
{
  v3 = a1 + 12;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(a1 + 7);
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(a1 + 2);
}

uint64_t *std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<realityio::PropertyDelta>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475944F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<realityio::PropertyDelta>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::PropertyDelta>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::PropertyDelta>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*,realityio::PropertyDelta*,realityio::PropertyDelta*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v4 &= 0xFFFFFFFFFFFFFFF8;
      }

      std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((v4 + 1), (v6 + 1));
      v6 += 6;
      v4 = v12 + 6;
      v12 += 6;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_247594674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::_AllocatorDestroyRangeReverse<std::allocator<realityio::PropertyDelta>,realityio::PropertyDelta*>::operator()[abi:ne200100](void **result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    result = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table((v3 - 40));
    v6 = *(v3 - 48);
    v3 -= 48;
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void realityio::SceneAssetBuilder::SceneAssetBuilder(realityio::SceneAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "SceneAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kSceneAssetBuilderIdentifier);
  realityio::generateSceneLibraryDirtyStageSubscription(&v4);
  v8[0] = &unk_285950168;
  v8[3] = v8;
  v7[0] = &unk_2859501E8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2475948A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::SceneAssetBuilder::run(realityio::SceneAssetBuilder *this, realityio::Inputs *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v22, v4, v3);
  isSceneLibrary = realityio::isSceneLibrary(&v22, v5);
  if (isSceneLibrary)
  {
    v7 = *(realityio::logObjects(isSceneLibrary) + 24);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "Scene Library builder", buf, 2u);
    }

    v9 = realityio::EntityBuilder::kInputName(v8);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, buf);
    if (buf[0])
    {
      v10 = v21;
      v19 = v21;
      if (v21)
      {
        RERetain();
        ServiceLocator = REEngineGetServiceLocator();
        MEMORY[0x24C1A4230](ServiceLocator);
        memset(v18, 0, sizeof(v18));
        RERetain();
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, &v24);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v25);
        v16 = v26;
        if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v16 &= 0xFFFFFFFFFFFFFFF8;
        }

        v17 = v18;
        v28 = 0;
        operator new();
      }
    }

    else
    {
      v19 = 0;
    }

    v12 = *(realityio::logObjects(v10) + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "Stopping operation to create the scene because entity no longer exists", v27, 2u);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v19);
    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(buf);
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
  result = v23;
  if (v23)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23);
  }

  return result;
}

void sub_247594E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  *(v30 + 160) = &a11;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100]((v31 - 112));
  *(v30 + 160) = v30;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100]((v31 - 112));
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a30);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v31 - 192));
  _Unwind_Resume(a1);
}

uint64_t *realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0::~$_0(uint64_t *a1)
{
  v2 = a1[6];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 2);
  return a1;
}

uint64_t *std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::vector[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 4);
    if (v3 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>(v3);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

uint64_t realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1::~$_1(uint64_t a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));
  v3 = a1;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void realityio::SceneAssetBuilder::clear(realityio::SceneAssetBuilder *this, realityio::Inputs *a2)
{
  std::mutex::lock((this + 304));
  std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](this + 35, *(this + 35));
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scenes_assets");
  std::mutex::lock((v4 + 64));
  if (v4 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v4 + 40, __p))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v4 + 40), __p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v4, __p);
  std::mutex::unlock((v4 + 64));
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::mutex::unlock((this + 304));
}

void sub_2475951BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v17 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::mutex::unlock((v15 + 304));
  _Unwind_Resume(a1);
}

void realityio::SceneAssetBuilder::~SceneAssetBuilder(realityio::SceneAssetBuilder *this)
{
  realityio::SceneAssetBuilder::~SceneAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_2859500F0;
  std::mutex::~mutex((this + 304));
  v5 = (this + 280);
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_2475955DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::SceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SceneAssetBuilder::SceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247595890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::SceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SceneAssetBuilder::SceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *std::__shared_ptr_emplace<realityio::OutputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality,std::allocator<realityio::OutputDescriptor>,0>(std::string *a1, uint64_t a2, std::string::size_type *a3, int *a4)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_285943508;
  std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(&v6, a1 + 1, a2, a3, a4);
  return a1;
}

void std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, int *a5)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  realityio::OutputDescriptor::OutputDescriptor(this, __p, a4, *a5);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247595A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<REEntity *>::push_back(unint64_t *result, void *a2)
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
    std::deque<REEntity *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<REEntity *>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(a1, &v9);
}

void sub_247595CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(a1, v11);
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

void std::__split_buffer<REEntity **>::emplace_front<REEntity **>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(a1, v9);
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