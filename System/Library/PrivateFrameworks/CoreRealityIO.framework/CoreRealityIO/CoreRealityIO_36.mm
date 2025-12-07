void sub_2476E94AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(uint64_t a1)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v61 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v50, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v49 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v19 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v20 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v21 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v58.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v58))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v58);
        v10 = *(v9 + 16);
        v59 = *v9;
        *v60 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v60[8];
          if (!*&v60[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v60;
        *(a1 + 8) = v59;
        *(a1 + 24) = v13;
        v59 = 0u;
        *v60 = 0u;
        *(a1 + 40) = v11;
        *&v60[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v59);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v58);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v58))
        {
          v25 = &v58;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v58, &v59);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v56, v25);
        if (v56.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v56);
          v40 = *(v39 + 16);
          v59 = *v39;
          *v60 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v60[8];
            if (!*&v60[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v60;
          *(a1 + 8) = v59;
          *(a1 + 24) = v43;
          v59 = 0u;
          *v60 = 0u;
          *(a1 + 40) = v41;
          *&v60[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v59);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v59;
          v55.__r_.__value_.__r.__words[0] = *&v60[8];
          v45 = *v60;
          *(v55.__r_.__value_.__r.__words + 7) = *&v60[15];
          v46 = v60[23];
          memset(v60, 0, sizeof(v60));
          *a1 = 0;
          *(a1 + 39) = *(v55.__r_.__value_.__r.__words + 7);
          v47 = v55.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v56);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v36 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v37 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v38 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v58);
LABEL_59:
        v48 = v51;
        if (v51)
        {
          if (atomic_fetch_add_explicit((v51 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v48 + 8))(v48);
          }
        }

        return;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v55, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v52, v49);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v52;
      }

      else
      {
        v28 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v56, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v54 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v57[0] = *&v60[8];
      v32 = *v60;
      *(v57 + 7) = *&v60[15];
      v33 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v57 + 7);
      v34 = v57[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v59;
  v56.__r_.__value_.__r.__words[0] = *&v60[8];
  v15 = *v60;
  *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
  v16 = v60[23];
  memset(v60, 0, sizeof(v60));
  *a1 = 0;
  *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
  v17 = v56.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476E9DB8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(a1 + 24))
      {
        v7 = a1;
      }

      else
      {
        v7 = (v5 - 8);
      }

      v8 = *v7;
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    if (v4 != v8)
    {
      v9 = (v5 + 24 * v4);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 1));
      }

      else
      {
        v10 = *a2;
        v9->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

LABEL_15:
      ++*a1;
      return;
    }

LABEL_17:
    v11 = 1;
    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v4 + 1);
    Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(a1, *(a1 + 32), v12, *a1);
    v14 = &Copy[v4];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v14, *a2, *(a2 + 1));
    }

    else
    {
      v15 = *a2;
      v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(a1);
    *(a1 + 32) = Copy;
    goto LABEL_15;
  }

  v17[0] = "vt/array.h";
  v17[1] = "emplace_back";
  v17[2] = 416;
  v17[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back(Args &&...) [T = std::string, Args = <const std::string &>]";
  v18 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v17, 1, "Array rank %u != 1", v16);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v61 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v50, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v49 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v19 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v20 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v21 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v58.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v58))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v58);
        v10 = *(v9 + 16);
        v59 = *v9;
        *v60 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v60[8];
          if (!*&v60[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v60;
        *(a1 + 8) = v59;
        *(a1 + 24) = v13;
        v59 = 0u;
        *v60 = 0u;
        *(a1 + 40) = v11;
        *&v60[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v59);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v58);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v58))
        {
          v25 = &v58;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v58, &v59);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v56, v25);
        if (v56.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v56);
          v40 = *(v39 + 16);
          v59 = *v39;
          *v60 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v60[8];
            if (!*&v60[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v60;
          *(a1 + 8) = v59;
          *(a1 + 24) = v43;
          v59 = 0u;
          *v60 = 0u;
          *(a1 + 40) = v41;
          *&v60[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v59);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v59;
          v55.__r_.__value_.__r.__words[0] = *&v60[8];
          v45 = *v60;
          *(v55.__r_.__value_.__r.__words + 7) = *&v60[15];
          v46 = v60[23];
          memset(v60, 0, sizeof(v60));
          *a1 = 0;
          *(a1 + 39) = *(v55.__r_.__value_.__r.__words + 7);
          v47 = v55.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v56);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v36 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v37 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v38 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v58);
LABEL_59:
        v48 = v51;
        if (v51)
        {
          if (atomic_fetch_add_explicit((v51 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v48 + 8))(v48);
          }
        }

        return;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v55, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v52, v49);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v52;
      }

      else
      {
        v28 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v56, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v54 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v57[0] = *&v60[8];
      v32 = *v60;
      *(v57 + 7) = *&v60[15];
      v33 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v57 + 7);
      v34 = v57[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v59;
  v56.__r_.__value_.__r.__words[0] = *&v60[8];
  v15 = *v60;
  *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
  v16 = v60[23];
  memset(v60, 0, sizeof(v60));
  *a1 = 0;
  *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
  v17 = v56.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476EA6CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(a1))
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

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::map[abi:ne200100](_BOOL8 result, uint64_t a2)
{
  qword_27EE53698 = 0;
  qword_27EE53690 = 0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE53690;
    while (v5 != &qword_27EE53690)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v7 = &qword_27EE53690;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27EE53690;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE53690)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE53690;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          {
            break;
          }

          v3 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        if (!result)
        {
          break;
        }

        v9 = v10 + 1;
        v3 = v10[1];
        if (!v3)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v3 = qword_27EE53690;
    }

    v6 = &qword_27EE53690;
LABEL_11:
    if (!v3)
    {
      goto LABEL_22;
    }

    v9 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2476EABC8(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(*(v2 + 1680));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a1[6]);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1, &__p);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476EAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v61 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v50, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v50);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v49 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v19 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v20 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v21 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v58.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v58))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v58);
        v10 = *(v9 + 16);
        v59 = *v9;
        *v60 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v60[8];
          if (!*&v60[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v60;
        *(a1 + 8) = v59;
        *(a1 + 24) = v13;
        v59 = 0u;
        *v60 = 0u;
        *(a1 + 40) = v11;
        *&v60[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v59);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v58);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v58))
        {
          v25 = &v58;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v58, &v59);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v56, v25);
        if (v56.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v56);
          v40 = *(v39 + 16);
          v59 = *v39;
          *v60 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v60[8];
            if (!*&v60[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v60;
          *(a1 + 8) = v59;
          *(a1 + 24) = v43;
          v59 = 0u;
          *v60 = 0u;
          *(a1 + 40) = v41;
          *&v60[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v59);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v59;
          v55.__r_.__value_.__r.__words[0] = *&v60[8];
          v45 = *v60;
          *(v55.__r_.__value_.__r.__words + 7) = *&v60[15];
          v46 = v60[23];
          memset(v60, 0, sizeof(v60));
          *a1 = 0;
          *(a1 + 39) = *(v55.__r_.__value_.__r.__words + 7);
          v47 = v55.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v56);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v56.__r_.__value_.__r.__words[0] = *&v60[8];
      v36 = *v60;
      *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
      v37 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
      v38 = v56.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v58);
LABEL_59:
        v48 = v51;
        if (v51)
        {
          if (atomic_fetch_add_explicit((v51 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v48 + 8))(v48);
          }
        }

        return;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v55, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v52, v49);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v52;
      }

      else
      {
        v28 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v56, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v54 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v59;
      v57[0] = *&v60[8];
      v32 = *v60;
      *(v57 + 7) = *&v60[15];
      v33 = v60[23];
      memset(v60, 0, sizeof(v60));
      *a1 = 0;
      *(a1 + 39) = *(v57 + 7);
      v34 = v57[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v55.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v59, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v59;
  v56.__r_.__value_.__r.__words[0] = *&v60[8];
  v15 = *v60;
  *(v56.__r_.__value_.__r.__words + 7) = *&v60[15];
  v16 = v60[23];
  memset(v60, 0, sizeof(v60));
  *a1 = 0;
  *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
  v17 = v56.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476EB66C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 54)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(uint64_t a1)
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

void std::__shared_ptr_pointer<unsigned char *,anonymous namespace::makeSharedNoDelete(void *)::{lambda(unsigned char *)#1},std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,anonymous namespace::makeSharedNoDelete(void *)::{lambda(unsigned char *)#1},std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN12_GLOBAL__N_118makeSharedNoDeleteEPvEUlT_E_))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::vector<std::shared_ptr<unsigned char>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<unsigned char>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void anonymous namespace::getHashTableFuncTable(_anonymous_namespace_ *this)
{
  v193[4] = *MEMORY[0x277D85DE8];
  {
    MEMORY[0x24C1A5DE0](&v105, "uchar[]");
    MEMORY[0x24C1A5DE0](&v103, "uint8_t");
    v175 = v103;
    v103 = 0;
    v176[0] = &unk_28595D1A8;
    v176[3] = v176;
    MEMORY[0x24C1A5DE0](&v102, "uint8_t[]");
    v177 = v102;
    v102 = 0;
    v178[0] = &unk_28595D1A8;
    v178[3] = v178;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v104, &v175, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v179, v105, v104);
    MEMORY[0x24C1A5DE0](&v101, "uint[]");
    MEMORY[0x24C1A5DE0](&v99, "uint16_t");
    v169 = v99;
    v99 = 0;
    v170[0] = &unk_28595D1A8;
    v170[3] = v170;
    MEMORY[0x24C1A5DE0](&v98, "uint32_t");
    v170[4] = v98;
    v98 = 0;
    v171[0] = &unk_28595D1A8;
    v171[3] = v171;
    MEMORY[0x24C1A5DE0](&v97, "uint16_t[]");
    v171[4] = v97;
    v97 = 0;
    v172[0] = &unk_28595D1A8;
    v172[3] = v172;
    MEMORY[0x24C1A5DE0](&v96, "uint32_t[]");
    v173 = v96;
    v96 = 0;
    v174[0] = &unk_28595D1A8;
    v174[3] = v174;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v100, &v169, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v180, v101, v100);
    MEMORY[0x24C1A5DE0](&v95, "uint64[]");
    MEMORY[0x24C1A5DE0](&v93, "uint64_t");
    v163 = v93;
    v93 = 0;
    v164[0] = &unk_28595D1A8;
    v164[3] = v164;
    MEMORY[0x24C1A5DE0](&v92, "size_t");
    v164[4] = v92;
    v92 = 0;
    v165[0] = &unk_28595D1A8;
    v165[3] = v165;
    MEMORY[0x24C1A5DE0](&v91, "uint64_t[]");
    v165[4] = v91;
    v91 = 0;
    v166[0] = &unk_28595D1A8;
    v166[3] = v166;
    MEMORY[0x24C1A5DE0](&v90, "size_t[]");
    v167 = v90;
    v90 = 0;
    v168[0] = &unk_28595D1A8;
    v168[3] = v168;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v94, &v163, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v181, v95, v94);
    MEMORY[0x24C1A5DE0](&v89, "int[]");
    MEMORY[0x24C1A5DE0](&v87, "char");
    v154 = v87;
    v87 = 0;
    v155[0] = &unk_28595D1A8;
    v155[3] = v155;
    MEMORY[0x24C1A5DE0](&v86, "int8_t");
    v155[4] = v86;
    v86 = 0;
    v156[0] = &unk_28595D1A8;
    v156[3] = v156;
    MEMORY[0x24C1A5DE0](&v85, "int16_t");
    v156[4] = v85;
    v85 = 0;
    v157[0] = &unk_28595D1A8;
    v157[3] = v157;
    MEMORY[0x24C1A5DE0](&v84, "int32_t");
    v157[4] = v84;
    v84 = 0;
    v158[0] = &unk_28595D1A8;
    v158[3] = v158;
    MEMORY[0x24C1A5DE0](&v83, "char[]");
    v158[4] = v83;
    v83 = 0;
    v159[0] = &unk_28595D1A8;
    v159[3] = v159;
    MEMORY[0x24C1A5DE0](&v82, "int8_t[]");
    v159[4] = v82;
    v82 = 0;
    v160[0] = &unk_28595D1A8;
    v160[3] = v160;
    MEMORY[0x24C1A5DE0](&v81, "int16_t[]");
    v160[4] = v81;
    v81 = 0;
    v161[0] = &unk_28595D1A8;
    v161[3] = v161;
    MEMORY[0x24C1A5DE0](&v80, "int32_t[]");
    v161[4] = v80;
    v80 = 0;
    v162[0] = &unk_28595D1A8;
    v162[3] = v162;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v88, &v154, 8);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v182, v89, v88);
    MEMORY[0x24C1A5DE0](&v79, "int64[]");
    MEMORY[0x24C1A5DE0](&v77, "int");
    v148 = v77;
    v77 = 0;
    v149[0] = &unk_28595D1A8;
    v149[3] = v149;
    MEMORY[0x24C1A5DE0](&v76, "int64_t");
    v149[4] = v76;
    v76 = 0;
    v150[0] = &unk_28595D1A8;
    v150[3] = v150;
    MEMORY[0x24C1A5DE0](&v75, "int[]");
    v150[4] = v75;
    v75 = 0;
    v151[0] = &unk_28595D1A8;
    v151[3] = v151;
    MEMORY[0x24C1A5DE0](&v74, "int64_t[]");
    v152 = v74;
    v74 = 0;
    v153[0] = &unk_28595D1A8;
    v153[3] = v153;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v78, &v148, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v183, v79, v78);
    MEMORY[0x24C1A5DE0](&v73, "float[]");
    MEMORY[0x24C1A5DE0](&v71, "float");
    v144 = v71;
    v71 = 0;
    v145[0] = &unk_28595D1A8;
    v145[3] = v145;
    MEMORY[0x24C1A5DE0](&v70, "float[]");
    v146 = v70;
    v70 = 0;
    v147[0] = &unk_28595D1A8;
    v147[3] = v147;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v72, &v144, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v184, v73, v72);
    MEMORY[0x24C1A5DE0](&v69, "float2[]");
    MEMORY[0x24C1A5DE0](&v67, "Vector2F");
    v140 = v67;
    v67 = 0;
    v141[0] = &unk_28595D1A8;
    v141[3] = v141;
    MEMORY[0x24C1A5DE0](&v66, "Vector2F[]");
    v142 = v66;
    v66 = 0;
    v143[0] = &unk_28595D1A8;
    v143[3] = v143;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v68, &v140, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v185, v69, v68);
    MEMORY[0x24C1A5DE0](&v65, "float3[]");
    MEMORY[0x24C1A5DE0](&v63, "Vector3F");
    v136 = v63;
    v63 = 0;
    v137[0] = &unk_28595D1A8;
    v137[3] = v137;
    MEMORY[0x24C1A5DE0](&v62, "Vector3F[]");
    v138 = v62;
    v62 = 0;
    v139[0] = &unk_28595D1A8;
    v139[3] = v139;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v64, &v136, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v186, v65, v64);
    MEMORY[0x24C1A5DE0](&v61, "float4[]");
    MEMORY[0x24C1A5DE0](&v59, "Vector4F");
    v132 = v59;
    v59 = 0;
    v133[0] = &unk_28595D1A8;
    v133[3] = v133;
    MEMORY[0x24C1A5DE0](&v58, "Vector4F[]");
    v134 = v58;
    v58 = 0;
    v135[0] = &unk_28595D1A8;
    v135[3] = v135;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v60, &v132, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v187, v61, v60);
    MEMORY[0x24C1A5DE0](&v57, "quatf[]");
    MEMORY[0x24C1A5DE0](&v55, "QuaternionF");
    v128 = v55;
    v55 = 0;
    v129[0] = &unk_28595D1A8;
    v129[3] = v129;
    MEMORY[0x24C1A5DE0](&v54, "QuaternionF[]");
    v130 = v54;
    v54 = 0;
    v131[0] = &unk_28595D1A8;
    v131[3] = v131;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v56, &v128, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v188, v57, v56);
    MEMORY[0x24C1A5DE0](&v53, "double[]");
    MEMORY[0x24C1A5DE0](&v51, "double");
    v124 = v51;
    v51 = 0;
    v125[0] = &unk_28595D1A8;
    v125[3] = v125;
    MEMORY[0x24C1A5DE0](&v50, "double[]");
    v126 = v50;
    v50 = 0;
    v127[0] = &unk_28595D1A8;
    v127[3] = v127;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v52, &v124, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v189, v53, v52);
    MEMORY[0x24C1A5DE0](&v49, "BOOL[]");
    MEMORY[0x24C1A5DE0](&v47, "BOOL");
    v120 = v47;
    v47 = 0;
    v121[0] = &unk_28595D1A8;
    v121[3] = v121;
    MEMORY[0x24C1A5DE0](&v46, "BOOL[]");
    v122 = v46;
    v46 = 0;
    v123[0] = &unk_28595D1A8;
    v123[3] = v123;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v48, &v120, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v190, v49, v48);
    MEMORY[0x24C1A5DE0](&v45, "token[]");
    MEMORY[0x24C1A5DE0](&v43, "DynamicString");
    v114 = v43;
    v43 = 0;
    v115[0] = &unk_28595D1A8;
    v115[3] = v115;
    MEMORY[0x24C1A5DE0](&v42, "StringID");
    v115[4] = v42;
    v42 = 0;
    v116[0] = &unk_28595D1A8;
    v116[3] = v116;
    MEMORY[0x24C1A5DE0](&v41, "DynamicString[]");
    v116[4] = v41;
    v41 = 0;
    v117[0] = &unk_28595D1A8;
    v117[3] = v117;
    MEMORY[0x24C1A5DE0](&v40, "StringID[]");
    v118 = v40;
    v40 = 0;
    v119[0] = &unk_28595D1A8;
    v119[3] = v119;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v44, &v114, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v191, v45, v44);
    MEMORY[0x24C1A5DE0](&v39, "string[]");
    MEMORY[0x24C1A5DE0](&v37, "DynamicString");
    v108 = v37;
    v37 = 0;
    v109[0] = &unk_28595D1A8;
    v109[3] = v109;
    MEMORY[0x24C1A5DE0](&v36, "StringID");
    v109[4] = v36;
    v36 = 0;
    v110[0] = &unk_28595D1A8;
    v110[3] = v110;
    MEMORY[0x24C1A5DE0](&v35, "DynamicString[]");
    v110[4] = v35;
    v35 = 0;
    v111[0] = &unk_28595D1A8;
    v111[3] = v111;
    MEMORY[0x24C1A5DE0](&v34, "StringID[]");
    v112 = v34;
    v34 = 0;
    v113[0] = &unk_28595D1A8;
    v113[3] = v113;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v38, &v108, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v192, v39, v38);
    MEMORY[0x24C1A5DE0](&v33, "asset[]");
    MEMORY[0x24C1A5DE0](&v31, "AssetHandle[]");
    v106 = v31;
    v31 = 0;
    v107[0] = &unk_28595D1A8;
    v107[3] = v107;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v32, &v106, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v193, v33, v32);
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](v179, 15);
    v1 = 60;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v178[v1 + 2]);
      v2 = v178[v1];
      if ((v2 & 7) != 0)
      {
        atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v1 -= 4;
    }

    while (v1 * 8);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v32[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v107);
    if ((v106 & 7) != 0)
    {
      atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v38[1]);
    for (i = 0; i != -20; i -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v113[i]);
      v4 = v113[i - 1];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v44[1]);
    for (j = 0; j != -20; j -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v119[j]);
      v6 = v119[j - 1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v48[1]);
    for (k = 0; k != -10; k -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v123[k]);
      v8 = v123[k - 1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v49 & 7) != 0)
    {
      atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v52[1]);
    for (m = 0; m != -10; m -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v127[m]);
      v10 = v127[m - 1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v53 & 7) != 0)
    {
      atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v56[1]);
    for (n = 0; n != -10; n -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v131[n]);
      v12 = v131[n - 1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v57 & 7) != 0)
    {
      atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v60[1]);
    for (ii = 0; ii != -10; ii -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v135[ii]);
      v14 = v135[ii - 1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v64[1]);
    for (jj = 0; jj != -10; jj -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v139[jj]);
      v16 = v139[jj - 1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v62 & 7) != 0)
    {
      atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v63 & 7) != 0)
    {
      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v68[1]);
    for (kk = 0; kk != -10; kk -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v143[kk]);
      v18 = v143[kk - 1];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v67 & 7) != 0)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v72[1]);
    for (mm = 0; mm != -10; mm -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v147[mm]);
      v20 = v147[mm - 1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v70 & 7) != 0)
    {
      atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v73 & 7) != 0)
    {
      atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v78[1]);
    for (nn = 0; nn != -20; nn -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v153[nn]);
      v22 = v153[nn - 1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v74 & 7) != 0)
    {
      atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v75 & 7) != 0)
    {
      atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v76 & 7) != 0)
    {
      atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v77 & 7) != 0)
    {
      atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v79 & 7) != 0)
    {
      atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v88[1]);
    v23 = 40;
    do
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v153[v23]);
      v24 = v153[v23 - 1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 -= 5;
    }

    while (v23 * 8);
    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v81 & 7) != 0)
    {
      atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v83 & 7) != 0)
    {
      atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v84 & 7) != 0)
    {
      atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v85 & 7) != 0)
    {
      atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v86 & 7) != 0)
    {
      atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v87 & 7) != 0)
    {
      atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v89 & 7) != 0)
    {
      atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v94[1]);
    for (i1 = 0; i1 != -20; i1 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v168[i1]);
      v26 = v168[i1 - 1];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v90 & 7) != 0)
    {
      atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v91 & 7) != 0)
    {
      atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v92 & 7) != 0)
    {
      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v93 & 7) != 0)
    {
      atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v95 & 7) != 0)
    {
      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v100[1]);
    for (i2 = 0; i2 != -20; i2 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v174[i2]);
      v28 = v174[i2 - 1];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v96 & 7) != 0)
    {
      atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v97 & 7) != 0)
    {
      atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v98 & 7) != 0)
    {
      atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v99 & 7) != 0)
    {
      atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v101 & 7) != 0)
    {
      atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v104[1]);
    for (i3 = 0; i3 != -10; i3 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v178[i3]);
      v30 = v178[i3 - 1];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v102 & 7) != 0)
    {
      atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v103 & 7) != 0)
    {
      atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v105 & 7) != 0)
    {
      atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_2476ED788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v72 = (v71 + 464);
  v73 = -480;
  while (1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*v72);
    v74 = *(v72 - 2);
    if ((v74 & 7) != 0)
    {
      atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v72 -= 4;
    v73 += 32;
    if (!v73)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a17);
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v70);
      if ((STACK[0x378] & 7) != 0)
      {
        atomic_fetch_add_explicit((STACK[0x378] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a25);
      v75 = &STACK[0x420];
      v76 = -160;
      while (1)
      {
        v77 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v75);
        v78 = *(v77 - 8);
        if ((v78 & 7) != 0)
        {
          atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v75 = (v77 - 40);
        v76 += 40;
        if (!v76)
        {
          if ((a20 & 7) != 0)
          {
            atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a21 & 7) != 0)
          {
            atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a22 & 7) != 0)
          {
            atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a23 & 7) != 0)
          {
            atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a27 & 7) != 0)
          {
            atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a33);
          v79 = &STACK[0x4C0];
          v80 = -160;
          while (1)
          {
            v81 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v79);
            v82 = *(v81 - 8);
            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v79 = (v81 - 40);
            v80 += 40;
            if (!v80)
            {
              if ((a28 & 7) != 0)
              {
                atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a29 & 7) != 0)
              {
                atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a30 & 7) != 0)
              {
                atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a31 & 7) != 0)
              {
                atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a35 & 7) != 0)
              {
                atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a39);
              v83 = &STACK[0x510];
              v84 = -80;
              while (1)
              {
                v85 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v83);
                v86 = *(v85 - 8);
                if ((v86 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v83 = (v85 - 40);
                v84 += 40;
                if (!v84)
                {
                  if ((a36 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((a37 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((a41 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a45);
                  v87 = &STACK[0x560];
                  v88 = -80;
                  while (1)
                  {
                    v89 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v87);
                    v90 = *(v89 - 8);
                    if ((v90 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    v87 = (v89 - 40);
                    v88 += 40;
                    if (!v88)
                    {
                      if ((a42 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((a43 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((a47 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a51);
                      v91 = &STACK[0x5B0];
                      v92 = -80;
                      while (1)
                      {
                        v93 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v91);
                        v94 = *(v93 - 8);
                        if ((v94 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        v91 = (v93 - 40);
                        v92 += 40;
                        if (!v92)
                        {
                          if ((a48 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((a49 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((a53 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a57);
                          v95 = &STACK[0x600];
                          v96 = -80;
                          while (1)
                          {
                            v97 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v95);
                            v98 = *(v97 - 8);
                            if ((v98 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v95 = (v97 - 40);
                            v96 += 40;
                            if (!v96)
                            {
                              if ((a54 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((a55 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((a59 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a63);
                              v99 = &STACK[0x650];
                              v100 = -80;
                              while (1)
                              {
                                v101 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v99);
                                v102 = *(v101 - 8);
                                if ((v102 & 7) != 0)
                                {
                                  atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                }

                                v99 = (v101 - 40);
                                v100 += 40;
                                if (!v100)
                                {
                                  if ((a60 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((a61 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((a65 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a68);
                                  v103 = &STACK[0x6A0];
                                  v104 = -80;
                                  while (1)
                                  {
                                    v105 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v103);
                                    v106 = *(v105 - 8);
                                    if ((v106 & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    v103 = (v105 - 40);
                                    v104 += 40;
                                    if (!v104)
                                    {
                                      if ((a66 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((a67 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((a69 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x210]);
                                      v107 = &STACK[0x6F0];
                                      v108 = -80;
                                      while (1)
                                      {
                                        v109 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v107);
                                        v110 = *(v109 - 8);
                                        if ((v110 & 7) != 0)
                                        {
                                          atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                        }

                                        v107 = (v109 - 40);
                                        v108 += 40;
                                        if (!v108)
                                        {
                                          if ((a70 & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((a70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x200] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x200] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x220] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x220] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x250]);
                                          v111 = &STACK[0x790];
                                          v112 = -160;
                                          while (1)
                                          {
                                            v113 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v111);
                                            v114 = *(v113 - 8);
                                            if ((v114 & 7) != 0)
                                            {
                                              atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                            }

                                            v111 = (v113 - 40);
                                            v112 += 40;
                                            if (!v112)
                                            {
                                              if ((STACK[0x228] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x228] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x230] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x230] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x238] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x238] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x240] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x240] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x260] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x260] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x2B0]);
                                              v115 = &STACK[0x8D0];
                                              v116 = -320;
                                              while (1)
                                              {
                                                v117 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v115);
                                                v118 = *(v117 - 8);
                                                if ((v118 & 7) != 0)
                                                {
                                                  atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                }

                                                v115 = (v117 - 40);
                                                v116 += 40;
                                                if (!v116)
                                                {
                                                  if ((STACK[0x268] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x270] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x270] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x278] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x278] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x280] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x280] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x288] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x288] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x290] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x290] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x298] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x298] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x2A0] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x2A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x2C0] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x2C0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x2F0]);
                                                  v119 = &STACK[0x970];
                                                  v120 = -160;
                                                  while (1)
                                                  {
                                                    v121 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v119);
                                                    v122 = *(v121 - 8);
                                                    if ((v122 & 7) != 0)
                                                    {
                                                      atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                    }

                                                    v119 = (v121 - 40);
                                                    v120 += 40;
                                                    if (!v120)
                                                    {
                                                      if ((STACK[0x2C8] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2C8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2D0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2D0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2D8] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2D8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2E0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x300] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x300] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x330]);
                                                      v123 = &STACK[0xA10];
                                                      v124 = -160;
                                                      while (1)
                                                      {
                                                        v125 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v123);
                                                        v126 = *(v125 - 8);
                                                        if ((v126 & 7) != 0)
                                                        {
                                                          atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                        }

                                                        v123 = (v125 - 40);
                                                        v124 += 40;
                                                        if (!v124)
                                                        {
                                                          if ((STACK[0x308] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x308] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x310] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x310] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x318] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x318] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x320] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x320] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x340] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x340] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x360]);
                                                          v127 = &STACK[0xA60];
                                                          v128 = -80;
                                                          while (1)
                                                          {
                                                            v129 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v127);
                                                            v130 = *(v129 - 8);
                                                            if ((v130 & 7) != 0)
                                                            {
                                                              atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                            }

                                                            v127 = (v129 - 40);
                                                            v128 += 40;
                                                            if (!v128)
                                                            {
                                                              if ((STACK[0x348] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x348] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x350] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x350] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x370] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x370] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              _Unwind_Resume(a1);
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned char,unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EE8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned int,unsigned short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EE9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned int,unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned long long,unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned long long,unsigned long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EECC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,signed char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<long long,int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<long long,long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<float,float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec2f,float,2>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v19, "values", a3, a4);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v19);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(&__p, v20);
      if ((v20[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v19 & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v18 = &v22;
          if (v23 < 0)
          {
            v18 = v22;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v24);
      v21 = *buf;
      v22 = *&buf[16];
      *&v23 = v30;
      *(&v23 + 7) = *(&v30 + 7);
      v12 = HIBYTE(v30);
      v30 = 0uLL;
      *&buf[16] = 0;
      v20[0] = 0;
      HIBYTE(v23) = v12;
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v21 = *buf;
    v22 = *&buf[16];
    *&v23 = v30;
    *(&v23 + 7) = *(&v30 + 7);
    v11 = HIBYTE(v30);
    v30 = 0uLL;
    *&buf[16] = 0;
    v20[0] = 0;
    HIBYTE(v23) = v11;
    if ((v27[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20[0])
  {
    v13 = v21;
    if (v21)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v21);
        *v16 = *(*(&v23 + 1) + 8 * v15++);
        v14 += 16;
      }

      while (v13 != v15);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(v20);
}

void sub_2476EF688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec3f,float,3>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v20, "values", a3, a4);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v20);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&__p, v21);
      if ((v21[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v20 & 0xFFFFFFFFFFFFFFF8;
          if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v19 = &v23;
          if (v24 < 0)
          {
            v19 = v23;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v25);
      v22 = *buf;
      v23 = *&buf[16];
      *&v24 = v31;
      *(&v24 + 7) = *(&v31 + 7);
      v12 = HIBYTE(v31);
      v31 = 0uLL;
      *&buf[16] = 0;
      v21[0] = 0;
      HIBYTE(v24) = v12;
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v28);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v22 = *buf;
    v23 = *&buf[16];
    *&v24 = v31;
    *(&v24 + 7) = *(&v31 + 7);
    v11 = HIBYTE(v31);
    v31 = 0uLL;
    *&buf[16] = 0;
    v21[0] = 0;
    HIBYTE(v24) = v11;
    if ((v28[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v21[0])
  {
    v13 = v22;
    if (v22)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v22);
        v17 = *(*(&v24 + 1) + v15);
        *(v16 + 8) = *(*(&v24 + 1) + v15 + 8);
        *v16 = v17;
        v15 += 12;
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v21);
}

void sub_2476EF9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec4f,float,4>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v18, "values", a3, a4);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v18);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(&__p, v19);
      if ((v19[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v18 & 0xFFFFFFFFFFFFFFF8;
          if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v17 = &v21;
          if (v22 < 0)
          {
            v17 = v21;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      v20 = *buf;
      v21 = *&buf[16];
      *&v22 = v29;
      *(&v22 + 7) = *(&v29 + 7);
      v12 = HIBYTE(v29);
      v29 = 0uLL;
      *&buf[16] = 0;
      v19[0] = 0;
      HIBYTE(v22) = v12;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v20 = *buf;
    v21 = *&buf[16];
    *&v22 = v29;
    *(&v22 + 7) = *(&v29 + 7);
    v11 = HIBYTE(v29);
    v29 = 0uLL;
    *&buf[16] = 0;
    v19[0] = 0;
    HIBYTE(v22) = v11;
    if ((v26[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19[0])
  {
    v13 = v20;
    if (v20)
    {
      v14 = 0;
      do
      {
        v15 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v20);
        *v15 = *(*(&v22 + 1) + v14);
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(v19);
}

void sub_2476EFD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTable<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v18, "values", a3, a4);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v18);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(v19, &__p);
      if ((v19[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v18 & 0xFFFFFFFFFFFFFFF8;
          if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v17 = &v21;
          if (v22 < 0)
          {
            v17 = v21;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      v20 = *buf;
      v21 = *&buf[16];
      *&v22 = v29;
      *(&v22 + 7) = *(&v29 + 7);
      v12 = HIBYTE(v29);
      v29 = 0uLL;
      *&buf[16] = 0;
      v19[0] = 0;
      HIBYTE(v22) = v12;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v20 = *buf;
    v21 = *&buf[16];
    *&v22 = v29;
    *(&v22 + 7) = *(&v29 + 7);
    v11 = HIBYTE(v29);
    v29 = 0uLL;
    *&buf[16] = 0;
    v19[0] = 0;
    HIBYTE(v22) = v11;
    if ((v26[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19[0])
  {
    v13 = v20;
    if (v20)
    {
      v14 = 0;
      do
      {
        v15 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v20);
        *v15 = *(*(&v22 + 1) + v14);
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(v19);
}

void sub_2476F0038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTable<double,double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values", a3, a4);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v13);
}

void sub_2476F016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<BOOL,BOOL>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v19, "values", a3, a4);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v19);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(v20, &__p);
      if ((v20[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v19 & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v18 = &v22;
          if (v23 < 0)
          {
            v18 = v22;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v24);
      v21 = *buf;
      v22 = *&buf[16];
      *&v23 = v30;
      *(&v23 + 7) = *(&v30 + 7);
      v12 = HIBYTE(v30);
      v30 = 0uLL;
      *&buf[16] = 0;
      v20[0] = 0;
      HIBYTE(v23) = v12;
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v21 = *buf;
    v22 = *&buf[16];
    *&v23 = v30;
    *(&v23 + 7) = *(&v30 + 7);
    v11 = HIBYTE(v30);
    v30 = 0uLL;
    *&buf[16] = 0;
    v20[0] = 0;
    HIBYTE(v23) = v11;
    if ((v27[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20[0])
  {
    v13 = v21;
    if (v21)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v21);
        *v16 = *(*(&v23 + 1) + v15++);
        v14 += 16;
      }

      while (v13 != v15);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(v20);
}

void sub_2476F046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableString(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x24C1A5DE0](v23, "values", a3);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v18, a1, v8);
  if ((v23[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18)
  {
    v9 = v19[0];
    if (v19[0])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v19);
        v12 = (v20 + v10);
        if (*(v20 + v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
        }

        else
        {
          v13 = *v12;
          __p.__r_.__value_.__r.__words[2] = *(v12 + 2);
          *&__p.__r_.__value_.__l.__data_ = v13;
        }

        v14 = *(*a5 + v11);
        v15 = a4[1];
        v21 = *a4;
        v22 = v15;
        RETypeInfoGetDictionaryValueType();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 += 16;
        v10 += 24;
        --v9;
      }

      while (v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(&v18);
}

void sub_2476F062C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  v17 = *(v16 - 104);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTableAssetHandle(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v18, "values", a3, a4);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v21, a1, &v18);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v18, &v21);
  if (v18)
  {
    v7 = v19[0];
    if (v19[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(v19);
        v10 = v20;
        v11 = (v20 + v9);
        if (*(v20 + v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v16, *v11, *(v11 + 1));
        }

        else
        {
          v12 = *v11;
          v16.__r_.__value_.__r.__words[2] = *(v11 + 2);
          *&v16.__r_.__value_.__l.__data_ = v12;
        }

        v13 = v10 + v9;
        if (*(v10 + v9 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v13 + 24), *(v13 + 32));
        }

        else
        {
          v14 = *(v13 + 24);
          __p.__r_.__value_.__r.__words[2] = *(v13 + 40);
          *&__p.__r_.__value_.__l.__data_ = v14;
        }

        REAssetHandleSet();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v9 += 48;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,realityio::DetailedError>::~Result(&v18);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  result = v22;
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
  }

  return result;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F0B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D1A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *a3;
  *a3 = 0uLL;
  v6(a2, &v7, *a4, a5, a6);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_2476F0C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v4, a2, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(uint64_t result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2 || (result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](result, a3, a2 + 4), result))
  {
    if (*v6 == a2)
    {
      v9 = a2;
LABEL_16:
      if (!*a2)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v9;
      v11 = v9 + 1;
LABEL_30:
      if (!*v11)
      {
        goto LABEL_31;
      }

      return result;
    }

    v8 = *a2;
    if (*a2)
    {
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v14 = a2;
      do
      {
        v9 = v14[2];
        v15 = *v9 == v14;
        v14 = v9;
      }

      while (v15);
    }

    result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, v9 + 4, a3);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(v6, &v17, a3);
    v11 = result;
    goto LABEL_30;
  }

  result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, a2 + 4, a3);
  if (result)
  {
    v11 = a2 + 1;
    v10 = a2[1];
    if (v10)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 != v7)
    {
      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, a3, v13 + 4);
      if (!result)
      {
        goto LABEL_29;
      }

      v10 = *v11;
    }

    if (v10)
    {
      v17 = v13;
      v11 = v13;
    }

    else
    {
      v17 = a2;
    }

    goto LABEL_30;
  }

  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void sub_2476F0F40(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a2 + 5));
    v3 = a2[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a1 + 5));
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v3, v5 + 4, v5 + 4);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F1464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(a1, &__p);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F1708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F19AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F1C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          v18 = *(a1 + 24);
          v17 = a1 + 24;
          v16 = v18;
          if (*(v17 + 23) >= 0)
          {
            v16 = v17;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v22);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v24[0] = v26;
      *(v24 + 7) = *(&v26 + 7);
      v14 = HIBYTE(v26);
      v26 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v24 + 7);
      v15 = v24[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v20);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v22[0] = v26;
    *(v22 + 7) = *(&v26 + 7);
    v11 = HIBYTE(v26);
    v26 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v12 = v22[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476F1EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](_BOOL8 result, uint64_t a2)
{
  qword_27EE536B8 = 0;
  qword_27EE536B0 = 0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE536B0;
    while (v5 != &qword_27EE536B0)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v7 = &qword_27EE536B0;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27EE536B0;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE536B0)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE536B0;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          {
            break;
          }

          v3 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        if (!result)
        {
          break;
        }

        v9 = v10 + 1;
        v3 = v10[1];
        if (!v3)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v3 = qword_27EE536B0;
    }

    v6 = &qword_27EE536B0;
LABEL_11:
    if (!v3)
    {
      goto LABEL_22;
    }

    v9 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2476F2114(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*(v2 + 1712));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[6]);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void anonymous namespace::usdToRe_HashTableEntries<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v29);
        v13 = v31 + v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F2744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v29);
        v13 = v31 + 4 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F2DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v29);
        v13 = v31 + 8 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F3404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v29);
        v13 = v31 + 4 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F3A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v29);
        v13 = v31 + 8 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v29);
        v13 = v31 + 4 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void *a2, __int128 *a3, const void **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v35, "keys");
  v39 = 0;
  *buf = 0u;
  v38 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v32, &v35, a1);
  if (v32[0])
  {
    v29 = v33[0];
    v30 = v33[1];
    v7 = v34;
  }

  else
  {
    v29 = *buf;
    v30 = v38;
    v7 = v39;
  }

  v31 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v30 + 1))
    {
      v8 = *(&v30 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v32, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32[0] == 1)
  {
    *buf = 0u;
    v38 = 0u;
    v9 = a3[1];
    v35 = *a3;
    v36 = v9;
    RETypeInfoGetDictionaryValueType();
    if (*&v33[0])
    {
      v10 = a3[1];
      v35 = *a3;
      v36 = v10;
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v29);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v33);
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v29);
    *(&v35 + 1) = 0;
    *&v36 = 0;
    *&v35 = &v35 + 8;
    if (v29)
    {
      v11 = 0;
      do
      {
        v12 = a3[1];
        *buf = *a3;
        v38 = v12;
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v29);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v29);
        v13 = v31 + 8 * v11;
        v14 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v16 <= v13)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_23;
            }
          }

          if (v16 >= v13)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        v15[5] = v11++;
      }

      while (v11 < v29);
    }

    v17 = a3[1];
    *buf = *a3;
    v38 = v17;
    REDictionaryIteratorCreate();
    while (1)
    {
      v18 = a3[1];
      *buf = *a3;
      v38 = v18;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v19 = a3[1];
      *buf = *a3;
      v38 = v19;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v21 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v22 = &v35 + 8;
        do
        {
          v23 = *(v21 + 4);
          v24 = v23 >= CurrentKey;
          v25 = v23 < CurrentKey;
          if (v24)
          {
            v22 = v21;
          }

          v21 = *&v21[8 * v25];
        }

        while (v21);
        if (v22 != &v35 + 8 && CurrentKey >= *(v22 + 4))
        {
          v27 = a3[1];
          *buf = *a3;
          v38 = v27;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v26 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v26, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v28 = a3[1];
    *buf = *a3;
    v38 = v28;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v35 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v32);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
}

void sub_2476F4D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableStringEntries(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, void *a2, _OWORD *a3, const void **a4)
{
  v80 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](v76, "keys");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v68, a1, v76);
  if ((v76[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v76 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v68);
  v6 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
  {
    *v74 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v68);
    if (!atomic_load(v6))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v9 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
    if ((v9 & 1) == 0)
    {
      v50 = *(realityio::logObjects(v9) + 24);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v74, a1);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v74);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf, &v68);
        v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(buf);
        *v76 = 136315394;
        *&v76[4] = Text;
        *&v76[12] = 2080;
        *&v76[14] = v52;
        _os_log_impl(&dword_247485000, v50, OS_LOG_TYPE_DEFAULT, "Unsupported keys format for (%s) at (%s)", v76, 0x16u);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v74);
      }

      goto LABEL_149;
    }
  }

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  *v76 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v68);
  if (!atomic_load(v6))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v76, &v68);
    *v74 = *&v76[8];
    *&v74[16] = *&v76[24];
    *&v74[32] = v77;
    if (v77)
    {
      v11 = (v77 - 16);
      if (*&v74[24])
      {
        v11 = *&v74[24];
      }

      atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(v76);
    if (*v74)
    {
      v12 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v74);
        if ((*(*&v74[32] + 8 * v12) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(*&v74[32] + 8 * v12) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back<std::string const&>(&v65, EmptyString);
        ++v12;
      }

      while (v12 < *v74);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v74);
  }

  else
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v68, v76);
    if (v76[0] == 1)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v68, v74);
      *buf = *&v74[8];
      *&buf[16] = *&v74[24];
      v79 = v75;
      if (v75)
      {
        v15 = (v75 - 16);
        if (*&buf[24])
        {
          v15 = *&buf[24];
        }

        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v65);
      v65 = *buf;
      v66 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      v67 = v79;
      v79 = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(buf);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v74);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v76);
  }

  memset(v74, 0, 32);
  v16 = a3[1];
  *v76 = *a3;
  *&v76[16] = v16;
  RETypeInfoGetDictionaryKeyType();
  *v76 = *v74;
  *&v76[16] = *&v74[16];
  Name = RETypeInfoGetName();
  std::string::basic_string[abi:ne200100]<0>(&__p, Name);
  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v76, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v76[0] == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = a3[1];
    *v73 = *a3;
    *&v73[16] = v18;
    DictionaryValueType = RETypeInfoGetDictionaryValueType();
    if (!*&v76[8])
    {
      goto LABEL_146;
    }

    if (v64 < 0)
    {
      if (*(&__p + 1) != 8)
      {
        if (*(&__p + 1) != 13)
        {
          goto LABEL_138;
        }

        if (*__p != 0x5363696D616E7944 || *(__p + 5) != 0x676E697274536369)
        {
          goto LABEL_138;
        }

LABEL_49:
        *v73 = *v74;
        *&v73[16] = *&v74[16];
        RETypeInfoCreateInstance();
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v65);
        REDynamicStringSet();
        goto LABEL_54;
      }

      p_p = __p;
    }

    else
    {
      if (v64 != 8)
      {
        if (v64 != 13)
        {
          goto LABEL_138;
        }

        if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
        {
          goto LABEL_138;
        }

        goto LABEL_49;
      }

      p_p = &__p;
    }

    if (*p_p != 0x4449676E69727453)
    {
LABEL_138:
      v57 = *(realityio::logObjects(DictionaryValueType) + 24);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        if (v64 >= 0)
        {
          v58 = &__p;
        }

        else
        {
          v58 = __p;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v72, &v68);
        v59 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v72);
        *v73 = 136315394;
        *&v73[4] = v58;
        *&v73[12] = 2080;
        *&v73[14] = v59;
        _os_log_impl(&dword_247485000, v57, OS_LOG_TYPE_DEFAULT, "Unsupported string format for (%s) at (%s)", v73, 0x16u);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
      }

      goto LABEL_146;
    }

    *v73 = *v74;
    *&v73[16] = *&v74[16];
    RETypeInfoCreateInstance();
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v65);
    REStringIDSet();
LABEL_54:
    v23 = a3[1];
    *v73 = *a3;
    *&v73[16] = v23;
    REDictionaryAddEntry();
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v76[8]);
    operator new();
  }

  std::vector<std::shared_ptr<unsigned char>>::resize(a4, v65);
  *&v73[8] = 0;
  *&v73[16] = 0;
  *v73 = &v73[8];
  if (v65)
  {
    v24 = 0;
    for (i = 0; i < v65; ++i)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v65);
      v27 = (v67 + v24);
      if (*(v67 + v24 + 23) < 0)
      {
        v27 = *v27;
      }

      if (v64 < 0)
      {
        if (*(&__p + 1) == 8)
        {
          v30 = __p;
          goto LABEL_77;
        }

        if (*(&__p + 1) != 13 || (*__p == 0x5363696D616E7944 ? (v29 = *(__p + 5) == 0x676E697274536369) : (v29 = 0), !v29))
        {
LABEL_132:
          v54 = *(realityio::logObjects(v26) + 24);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            if (v64 >= 0)
            {
              v55 = &__p;
            }

            else
            {
              v55 = __p;
            }

            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v72, &v68);
            v56 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v72);
            *buf = 136315394;
            *&buf[4] = v55;
            *&buf[12] = 2080;
            *&buf[14] = v56;
            _os_log_impl(&dword_247485000, v54, OS_LOG_TYPE_DEFAULT, "Unsupported string format for (%s) at (%s)", buf, 0x16u);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
          }

          goto LABEL_145;
        }
      }

      else
      {
        if (v64 == 8)
        {
          v30 = &__p;
LABEL_77:
          if (*v30 != 0x4449676E69727453)
          {
            goto LABEL_132;
          }

          *buf = *v74;
          *&buf[16] = *&v74[16];
          RETypeInfoCreateInstance();
          REStringIDSet();
          goto LABEL_79;
        }

        if (v64 != 13)
        {
          goto LABEL_132;
        }

        if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
        {
          goto LABEL_132;
        }
      }

      *buf = *v74;
      *&buf[16] = *&v74[16];
      RETypeInfoCreateInstance();
      REDynamicStringSet();
LABEL_79:
      std::string::basic_string[abi:ne200100]<0>(buf, v27);
      v31 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(v73, &v72, buf);
      if (!v31)
      {
        operator new();
      }

      *(v31 + 56) = i;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v32 = a3[1];
      *buf = *a3;
      *&buf[16] = v32;
      REDictionaryAddEntry();
      *buf = *v74;
      *&buf[16] = *&v74[16];
      RETypeInfoDestroyInstance();
      v24 += 24;
    }
  }

  v33 = a3[1];
  *buf = *a3;
  *&buf[16] = v33;
  REDictionaryIteratorCreate();
  while (1)
  {
    v34 = a3[1];
    *buf = *a3;
    *&buf[16] = v34;
    if (!REDictionaryIteratorMoveNext())
    {
      v60 = a3[1];
      *buf = *a3;
      *&buf[16] = v60;
      REDictionaryIteratorDestroy();
      goto LABEL_145;
    }

    v35 = a3[1];
    *buf = *a3;
    *&buf[16] = v35;
    CurrentKey = REDictionaryIteratorGetCurrentKey();
    if (v64 < 0)
    {
      break;
    }

    if (v64 != 8)
    {
      if (v64 != 13)
      {
        goto LABEL_130;
      }

      if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
      {
        goto LABEL_130;
      }

      goto LABEL_101;
    }

    v39 = &__p;
LABEL_104:
    if (*v39 != 0x4449676E69727453)
    {
      goto LABEL_130;
    }

    CurrentKey = REStringIDGet();
LABEL_106:
    v40 = CurrentKey;
    if (!CurrentKey)
    {
      goto LABEL_130;
    }

    v41 = std::string::basic_string[abi:ne200100]<0>(buf, CurrentKey);
    v42 = *&v73[8];
    if (!*&v73[8])
    {
      goto LABEL_120;
    }

    v43 = &v73[8];
    do
    {
      v44 = v43;
      v45 = (v42 + 32);
      v41 = std::less<std::string>::operator()[abi:ne200100](v73, (v42 + 32), buf);
      if (v41)
      {
        v46 = 8;
      }

      else
      {
        v46 = 0;
      }

      if (!v41)
      {
        v43 = v42;
      }

      v42 = *(v42 + v46);
    }

    while (v42);
    if (v43 == &v73[8] || (!v41 ? (v47 = v45) : (v47 = (v44 + 32)), v41 = std::less<std::string>::operator()[abi:ne200100](v73, buf, v47), v41))
    {
LABEL_120:
      v43 = &v73[8];
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (&v73[8] != v43)
    {
      v48 = a3[1];
      *buf = *a3;
      *&buf[16] = v48;
      REDictionaryIteratorGetCurrentValue();
      operator new();
    }

    v49 = *(realityio::logObjects(v41) + 24);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v40;
      _os_log_impl(&dword_247485000, v49, OS_LOG_TYPE_DEFAULT, "Expected to find %s in key cache.", buf, 0xCu);
    }
  }

  if (*(&__p + 1) == 8)
  {
    v39 = __p;
    goto LABEL_104;
  }

  if (*(&__p + 1) == 13 && *__p == 0x5363696D616E7944 && *(__p + 5) == 0x676E697274536369)
  {
LABEL_101:
    CurrentKey = REDynamicStringGetValue();
    goto LABEL_106;
  }

LABEL_130:
  v53 = *(realityio::logObjects(CurrentKey) + 24);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v53, OS_LOG_TYPE_DEFAULT, "Unexpected non-string key in HashTable.", buf, 2u);
  }

LABEL_145:
  std::__tree<std::string>::destroy(v73, *&v73[8]);
LABEL_146:
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v76);
  if (v64 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v65);
LABEL_149:
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v70);
  result = v69;
  if (v69)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v69);
  }

  return result;
}

void sub_2476F5C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<std::shared_ptr<unsigned char>>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[16 * a2];
      while (v4 != v11)
      {
        v12 = *(v4 - 1);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v4 -= 16;
      }

      a1[1] = v11;
    }
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

        v13 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    a1[1] = &v4[16 * v6];
  }
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D258;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  *a3 = 0uLL;
  v5(a2, &v6, a4, a5);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_2476F6094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v4, a2, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(uint64_t result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2 || (result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](result, a3, a2 + 4), result))
  {
    if (*v6 == a2)
    {
      v9 = a2;
LABEL_16:
      if (!*a2)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v9;
      v11 = v9 + 1;
LABEL_30:
      if (!*v11)
      {
        goto LABEL_31;
      }

      return result;
    }

    v8 = *a2;
    if (*a2)
    {
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v14 = a2;
      do
      {
        v9 = v14[2];
        v15 = *v9 == v14;
        v14 = v9;
      }

      while (v15);
    }

    result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, v9 + 4, a3);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(v6, &v17, a3);
    v11 = result;
    goto LABEL_30;
  }

  result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, a2 + 4, a3);
  if (result)
  {
    v11 = a2 + 1;
    v10 = a2[1];
    if (v10)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 != v7)
    {
      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v6, a3, v13 + 4);
      if (!result)
      {
        goto LABEL_29;
      }

      v10 = *v11;
    }

    if (v10)
    {
      v17 = v13;
      v11 = v13;
    }

    else
    {
      v17 = a2;
    }

    goto LABEL_30;
  }

  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void sub_2476F639C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a2 + 5));
    v3 = a2[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a1 + 5));
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v3, v5 + 4, v5 + 4);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](_BOOL8 result, uint64_t a2)
{
  qword_27EE53710 = 0;
  qword_27EE53708 = 0;
  qword_27EE53700 = &qword_27EE53708;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE53708;
    while (v5 != &qword_27EE53708)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v7 = &qword_27EE53708;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v6 + 4, v2);
      v3 = qword_27EE53708;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE53708)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE53708;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v2, (v3 + 32)))
          {
            break;
          }

          v3 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v10 + 4, v2);
        if (!result)
        {
          break;
        }

        v9 = v10 + 1;
        v3 = v10[1];
        if (!v3)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = qword_27EE53700;
      v3 = qword_27EE53708;
    }

    v6 = &qword_27EE53708;
LABEL_11:
    if (!v3)
    {
      goto LABEL_22;
    }

    v9 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2476F683C(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*(v2 + 1800));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[6]);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *realityio::WrappedRERef<REECSOPACKDeserializer *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<REECSOPACKSerializer *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::WrappedRERef<REComponent *>>::~pair(uint64_t a1)
{
  realityio::WrappedRERef<REComponent *>::~WrappedRERef((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REComponent *>::~WrappedRERef(a1 + 5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

void std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::allocator_traits<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>::destroy[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>::destroy[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_2476F727C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v39 - 113) < 0)
  {
    operator delete(*(v38 + 24));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::ArbitraryComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::ArbitraryComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<anonymous namespace::generateInputsDescriptor(void)::$_0,std::allocator<anonymous namespace::generateInputsDescriptor(void)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::operator()@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v15, this, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v13, &v15);
  v4 = v13;
  for (i = v14; v4 != i; v4 = (v4 + 32))
  {
    MEMORY[0x24C1A5DE0](&v10, "isEntityHandle");
    HasCustomDataKey = pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(v4, &v10);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (HasCustomDataKey)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
      v7 = v10;
      v8 = v11;
      while (v7 != v8)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v19, v7);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, &v19);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
        v7 = (v7 + 8);
      }

      v19 = &v10;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v19);
    }
  }

  v10 = &v13;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v10);
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

void sub_2476F771C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void sub_2476F7A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::ArbitraryComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::ArbitraryComponentBuilder::ArbitraryComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath&&>,std::tuple<>>(uint64_t **a1, void *a2, _DWORD **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v3 + 4))
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2))
    {
      break;
    }

    v4 = v6 + 1;
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfQuatf>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v54 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v42, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v42);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v42);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v42);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v41 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v47, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v47;
      v15 = v48;
      v51.__r_.__value_.__r.__words[0] = v49;
      *(v51.__r_.__value_.__r.__words + 7) = *(&v49 + 7);
      v16 = HIBYTE(v49);
      v49 = 0uLL;
      v48 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v51.__r_.__value_.__r.__words + 7);
      v17 = v51.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v15;
      *(a1 + 32) = v17;
      *(a1 + 47) = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_48;
    }

    v53.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatf>(&v53))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatf>(&v53);
        *a1 = 1;
        *(a1 + 8) = *v9;
        goto LABEL_47;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v53);
      {
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfQuatf>(&v53);
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v51, v20);
        if (v51.__r_.__value_.__l.__size_)
        {
          v22 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatf>(v21);
          *a1 = 1;
          *(a1 + 8) = *v22;
        }

        else
        {
          v36 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v36 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v47, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v47;
          v37 = v48;
          v50.__r_.__value_.__r.__words[0] = v49;
          *(v50.__r_.__value_.__r.__words + 7) = *(&v49 + 7);
          v38 = HIBYTE(v49);
          v49 = 0uLL;
          v48 = 0;
          *a1 = 0;
          *(a1 + 39) = *(v50.__r_.__value_.__r.__words + 7);
          v39 = v50.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v37;
          *(a1 + 32) = v39;
          *(a1 + 47) = v38;
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v51);
        goto LABEL_47;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v47, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v47;
      v33 = v48;
      v51.__r_.__value_.__r.__words[0] = v49;
      *(v51.__r_.__value_.__r.__words + 7) = *(&v49 + 7);
      v34 = HIBYTE(v49);
      v49 = 0uLL;
      v48 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v51.__r_.__value_.__r.__words + 7);
      v35 = v51.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v33;
      *(a1 + 32) = v35;
      *(a1 + 47) = v34;
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
LABEL_47:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v53);
LABEL_48:
        v40 = v43;
        if (v43)
        {
          if (atomic_fetch_add_explicit((v43 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*v40 + 8))(v40);
          }
        }

        return;
      }

      v32 = __p[0];
    }

    else
    {
      v14 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      std::operator+<char>();
      v23 = std::string::append(&v50, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v44, v41);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v44;
      }

      else
      {
        v25 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v51, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v46 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v47, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v47;
      v29 = v48;
      v52[0] = v49;
      *(v52 + 7) = *(&v49 + 7);
      v30 = HIBYTE(v49);
      v49 = 0uLL;
      v48 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v52 + 7);
      v31 = v52[0];
      *(a1 + 24) = v29;
      *(a1 + 32) = v31;
      *(a1 + 47) = v30;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v32 = v50.__r_.__value_.__r.__words[0];
    }

    operator delete(v32);
    goto LABEL_47;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v47, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v47;
  v11 = v48;
  v51.__r_.__value_.__r.__words[0] = v49;
  *(v51.__r_.__value_.__r.__words + 7) = *(&v49 + 7);
  v12 = HIBYTE(v49);
  v49 = 0uLL;
  v48 = 0;
  *a1 = 0;
  *(a1 + 39) = *(v51.__r_.__value_.__r.__words + 7);
  v13 = v51.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  *(a1 + 47) = v12;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476F81AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<REComponentClass *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595D488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

__n128 std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__construct_one_at_end[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  result = *(a2 + 72);
  *(v4 + 88) = *(a2 + 88);
  *(v4 + 72) = result;
  *(a1 + 8) = v4 + 96;
  return result;
}

void sub_2476F83D4(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__emplace_back_slow_path<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>(v6);
  }

  v7 = 96 * v2;
  v25 = 0;
  v26 = v7;
  v27 = v7;
  v28 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 72) = v11;
  v12 = v27;
  v13 = *a1;
  v14 = a1[1];
  v15 = v26 + *a1 - v14;
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v26 + *a1 - v14;
    do
    {
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 0;
      v19 = *(v16 + 24);
      *(v17 + 40) = *(v16 + 40);
      *(v17 + 24) = v19;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      *(v16 + 24) = 0;
      v20 = *(v16 + 48);
      *(v17 + 64) = *(v16 + 64);
      *(v17 + 48) = v20;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      *(v16 + 48) = 0;
      v21 = *(v16 + 72);
      *(v17 + 88) = *(v16 + 88);
      *(v17 + 72) = v21;
      v16 += 96;
      v17 += 96;
    }

    while (v16 != v14);
    do
    {
      std::allocator_traits<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>::destroy[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry,0>(v13);
      v13 += 96;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  v22 = v12 + 96;
  *a1 = v15;
  a1[1] = v22;
  v23 = a1[2];
  a1[2] = v28;
  v27 = v13;
  v28 = v23;
  v25 = v13;
  v26 = v13;
  std::__split_buffer<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::~__split_buffer(&v25);
  return v22;
}

void sub_2476F8620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  std::__split_buffer<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::allocator_traits<std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>>::destroy[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry,0>(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2476F8968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20)
{
  a20 = &a10;
  std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentBuilder::AnimationLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595D508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentBuilder::AnimationLibrary>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::ArbitraryComponentBuilder::AnimationLibrary>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595D558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::ArbitraryComponentBuilder::AnimationLibrary>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_28595D5A8;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::ArbitraryComponentBuilder::AnimationLibrary>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595D5D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (**(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(EmptyString + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v4 = *EmptyString;
    __str.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
    *&__str.__r_.__value_.__l.__data_ = v4;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v7 = p_str + size;
  if (size >= 1)
  {
    v8 = p_str;
    do
    {
      v9 = memchr(v8, 46, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 46)
      {
        goto LABEL_19;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_19:
  if (v9 == v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9 - p_str;
  }

  std::string::basic_string(&v25, &__str, 0, v10, &v27);
  if ((atomic_load_explicit(&qword_27EE536F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE536F8))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_27EE53718, "RealityKit");
    __cxa_guard_release(&qword_27EE536F8);
  }

  v11 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v25.__r_.__value_.__l.__size_;
  }

  v13 = qword_27EE53720;
  if (byte_27EE5372F >= 0)
  {
    v13 = byte_27EE5372F;
  }

  if (v12 != v13)
  {
    v16 = 0;
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v25.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_59;
    }

    goto LABEL_40;
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v25;
  }

  else
  {
    v14 = v25.__r_.__value_.__r.__words[0];
  }

  if (byte_27EE5372F >= 0)
  {
    v15 = &qword_27EE53718;
  }

  else
  {
    v15 = qword_27EE53718;
  }

  v16 = memcmp(v14, v15, v12) == 0;
  if (v11 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (!v16)
  {
    goto LABEL_59;
  }

LABEL_40:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__str;
  }

  else
  {
    v17 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __str.__r_.__value_.__l.__size_;
  }

  v19 = v17 + v18;
  if (v18 >= 1)
  {
    v20 = v17;
    do
    {
      v21 = memchr(v20, 46, v18);
      if (!v21)
      {
        break;
      }

      if (*v21 == 46)
      {
        goto LABEL_52;
      }

      v20 = (v21 + 1);
      v18 = v19 - v20;
    }

    while (v19 - v20 > 0);
  }

  v21 = v19;
LABEL_52:
  if (v21 == v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 - v17 + 1;
  }

  v23 = std::string::basic_string(&v25, &__str, v22, 0xFFFFFFFFFFFFFFFFLL, &v27);
  v24 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&qword_27EE53730, &v25.__r_.__value_.__l.__data_);
  if (v24 != &qword_27EE53738)
  {
    std::string::operator=(&v25, (v24 + 56));
  }

  realityio::ArbitraryComponentBuilder::updateComponentOnEntityFromProtoPrim(v2, **(a1 + 24), *(a1 + 32), **(a1 + 40), &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

LABEL_59:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2476F8F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27EE536F8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::updateComponentOnEntity(realityio::Inputs *,pxrInternal__aapl__pxrReserved__::UsdPrim const&,REEntity *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::getSwiftToREMap(_anonymous_namespace_ *this)
{
  v9[6] = *MEMORY[0x277D85DE8];
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[9],0>(v2);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[26],0>(v3);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[5],0>(v4);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[10],0>(v5);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[10],0>(v6);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[12],0>(v7);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[19],0>(v8);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[8],0>(v9);
    std::map<std::string,std::string>::map[abi:ne200100](v2, 8);
    for (i = 42; i != -6; i -= 6)
    {
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&v2[i]);
    }
  }
}

void sub_2476F90F4(_Unwind_Exception *a1)
{
  v3 = (v1 + 336);
  v4 = -384;
  do
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(v3);
    v3 = (v5 - 48);
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[9],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "Collision");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "Collider");
  return a1;
}

void sub_2476F918C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[26],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "DirectionalLightShadow");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "DirectionalLightShadowMap");
  return a1;
}

void sub_2476F91E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[5],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "Model");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "Mesh");
  return a1;
}

void sub_2476F9244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[10],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "ModelDebugOptions");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "DebugMesh");
  return a1;
}

void sub_2476F92A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[10],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "PhysicsBody");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "RigidBody");
  return a1;
}

void sub_2476F92FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[12],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "PhysicsMotion");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "MotionState");
  return a1;
}

void sub_2476F9358(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[19],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "SpotLightShadow");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "SpotLightShadowMap");
  return a1;
}

void sub_2476F93B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[8],0>(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "Synchronization");
  std::string::basic_string[abi:ne200100]<0>(v2 + 3, "Network");
  return a1;
}

void sub_2476F9410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::map<std::string,std::string>::map[abi:ne200100](const void **result, uint64_t a2)
{
  qword_27EE53740 = 0;
  qword_27EE53738 = 0;
  qword_27EE53730 = &qword_27EE53738;
  if (a2)
  {
    v2 = result;
    v3 = 48 * a2;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&qword_27EE53730, &qword_27EE53738, v2, v2);
      v2 += 6;
      v3 -= 48;
    }

    while (v3);
  }

  return result;
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D658;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D6D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ArbitraryComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ArbitraryComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__int128 *RIO_MTLX::NULL_EDGE(RIO_MTLX *this)
{
  {
    xmmword_27EE52708 = 0u;
    *&qword_27EE52718 = 0u;
    RIO_MTLX::NULL_EDGE(void)::v = 0u;
  }

  return &RIO_MTLX::NULL_EDGE(void)::v;
}

__int128 *RIO_MTLX::NULL_TREE_ITERATOR(RIO_MTLX *this)
{
  {
    *(&xmmword_27EE52758 + 1) = 0;
    RIO_MTLX::NULL_TREE_ITERATOR(void)::v = 0u;
    *&qword_27EE52740 = 0u;
    unk_27EE52749 = 0u;
  }

  return &RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
}

uint64_t *RIO_MTLX::NULL_GRAPH_ITERATOR(RIO_MTLX *this)
{
  {
    v2 = 0;
    v3 = 0;
    RIO_MTLX::GraphIterator::GraphIterator(&RIO_MTLX::NULL_GRAPH_ITERATOR(void)::v, &v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return &RIO_MTLX::NULL_GRAPH_ITERATOR(void)::v;
}

void sub_2476F97D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::NULL_INHERITANCE_ITERATOR(RIO_MTLX *this)
{
  {
    v2 = 0;
    v3 = 0;
    RIO_MTLX::InheritanceIterator::InheritanceIterator(&RIO_MTLX::NULL_INHERITANCE_ITERATOR(void)::v, &v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return &RIO_MTLX::NULL_INHERITANCE_ITERATOR(void)::v;
}

void sub_2476F9878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::TreeIterator::operator++(uint64_t *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[6] = v2 - 1;
    return a1;
  }

  if ((a1[5] & 1) == 0)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(v3 + 136) != *(v3 + 144))
      {
        v4 = a1[3];
        v5 = a1[4];
        if (v4 >= v5)
        {
          v19 = a1[2];
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v19) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v22 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v19) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>>((a1 + 2), v23);
          }

          v24 = a1[1];
          v25 = 24 * v20;
          *v25 = v3;
          *(v25 + 8) = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          *(24 * v20 + 0x10) = 0;
          v7 = v25 + 24;
          v26 = a1[2];
          v27 = a1[3] - v26;
          v28 = v25 - v27;
          memcpy((v25 - v27), v26, v27);
          v29 = a1[2];
          a1[2] = v28;
          a1[3] = v7;
          a1[4] = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          v6 = a1[1];
          *v4 = v3;
          v4[1] = v6;
          if (v6)
          {
            atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
          }

          v4[2] = 0;
          v7 = (v4 + 3);
        }

        a1[3] = v7;
        v30 = *(*a1 + 136);
        v32 = *v30;
        v31 = v30[1];
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = a1[1];
        *a1 = v32;
        a1[1] = v31;
        if (!v15)
        {
          return a1;
        }

LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        return a1;
      }
    }
  }

  *(a1 + 40) = 0;
  v8 = a1[2];
  v9 = a1[3];
  if (v8 == v9)
  {
LABEL_17:
    v15 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    if (!v15)
    {
      return a1;
    }

    goto LABEL_18;
  }

  v10 = (v9 - 24);
  while (1)
  {
    v11 = v10[2] + 1;
    v12 = *(*v10 + 136);
    if (v11 < (*(*v10 + 144) - v12) >> 4)
    {
      break;
    }

    v13 = v10[1];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      v8 = a1[2];
    }

    a1[3] = v10;
    v14 = v10 == v8;
    v10 -= 3;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  v10[2] = v11;
  v17 = *(v12 + 16 * v11);
  v18 = *(v12 + 16 * v11 + 8);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[1];
  *a1 = v17;
  if (v15)
  {
    goto LABEL_18;
  }

  return a1;
}

RIO_MTLX *RIO_MTLX::GraphIterator::operator++(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_weak_owners = a1[3].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    a1[3].__shared_weak_owners_ = shared_weak_owners - 1;
    return v1;
  }

  if ((a1[3].__shared_owners_ & 1) == 0)
  {
    a1 = a1->__vftable;
    if (*v1)
    {
      a1 = (a1->__get_deleter)(a1);
      if (a1)
      {
        v3 = *(v1 + 8);
        v4 = *(v1 + 9);
        if (v3 >= v4)
        {
          v7 = *(v1 + 7);
          v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
          v9 = v8 + 1;
          if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_143;
          }

          v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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

          if (v11)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>>(v1 + 56, v11);
          }

          v12 = 24 * v8;
          *v12 = *v1;
          v13 = *(v1 + 1);
          *(v12 + 8) = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          *(24 * v8 + 0x10) = 0;
          v6 = (v12 + 24);
          v14 = *(v1 + 7);
          v15 = *(v1 + 8) - v14;
          v16 = v12 - v15;
          memcpy((v12 - v15), v14, v15);
          v17 = *(v1 + 7);
          *(v1 + 7) = v16;
          *(v1 + 8) = v6;
          *(v1 + 9) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v3 = *v1;
          v5 = *(v1 + 1);
          v3[1] = v5;
          if (v5)
          {
            atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          }

          v3[2] = 0;
          v6 = v3 + 3;
        }

        *(v1 + 8) = v6;
        v18 = (*(**v1 + 16))(v83);
        RIO_MTLX::NULL_EDGE(v18);
        if (v83[0] != RIO_MTLX::NULL_EDGE(void)::v || v84 != xmmword_27EE52708 || v86 != qword_27EE52718)
        {
          v20 = v86;
          v19 = v87;
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            if (v20)
            {
              v81 = v86;
              v82 = v87;
              if (v87)
              {
                atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
              }

LABEL_31:
              v21 = v85;
              v80[0] = v84;
              v80[1] = v85;
              if (v85)
              {
                atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
              }

              RIO_MTLX::GraphIterator::extendPathUpstream(v1, &v81, v80);
              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }

              v22 = v82;
              if (v82)
              {
                goto LABEL_106;
              }

              goto LABEL_107;
            }
          }

          else if (v86)
          {
            v81 = v86;
            v82 = 0;
            goto LABEL_31;
          }
        }

        RIO_MTLX::Edge::~Edge(v83);
      }
    }
  }

  *(v1 + 80) = 0;
  while (1)
  {
    while (1)
    {
      v23 = *v1;
      if (*v1)
      {
        v24 = *(v1 + 1);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          RIO_MTLX::GraphIterator::returnPathDownstream(v1, v23);
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          RIO_MTLX::GraphIterator::returnPathDownstream(v1, v23);
        }
      }

      v25 = *(v1 + 8);
      if (*(v1 + 7) == v25)
      {
        RIO_MTLX::NULL_GRAPH_ITERATOR(a1);
        v35 = RIO_MTLX::NULL_GRAPH_ITERATOR(void)::v;
        v34 = *algn_27EE52778;
        if (*algn_27EE52778)
        {
          atomic_fetch_add_explicit((*algn_27EE52778 + 8), 1uLL, memory_order_relaxed);
        }

        v36 = *(v1 + 1);
        *v1 = v35;
        *(v1 + 1) = v34;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v38 = qword_27EE52780;
        v37 = *algn_27EE52788;
        if (*algn_27EE52788)
        {
          atomic_fetch_add_explicit((*algn_27EE52788 + 8), 1uLL, memory_order_relaxed);
        }

        v39 = *(v1 + 3);
        *(v1 + 2) = v38;
        *(v1 + 3) = v37;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v1 == &RIO_MTLX::NULL_GRAPH_ITERATOR(void)::v)
        {
          goto LABEL_141;
        }

        v40 = qword_27EE52790;
        if (*(v1 + 6))
        {
          v42 = (v1 + 40);
          v41 = *(v1 + 5);
          v43 = *(v1 + 4);
          *(v1 + 4) = v1 + 40;
          *(v41 + 16) = 0;
          *(v1 + 5) = 0;
          *(v1 + 6) = 0;
          if (v43[1])
          {
            v44 = v43[1];
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            v45 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v44);
            v46 = v45;
            if (v40 == &unk_27EE52798)
            {
              v40 = &unk_27EE52798;
            }

            else
            {
              v47 = v45;
              v48 = v44;
              v49 = v40;
              do
              {
                v44 = v47;
                v51 = v49[4];
                v50 = v49[5];
                if (v50)
                {
                  atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
                }

                v52 = v48[5];
                v48[4] = v51;
                v48[5] = v50;
                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                }

                v53 = *v42;
                v54 = (v1 + 40);
                v55 = (v1 + 40);
                if (*v42)
                {
                  do
                  {
                    while (1)
                    {
                      v54 = v53;
                      if (v48[4] >= v53[4])
                      {
                        break;
                      }

                      v53 = *v53;
                      v55 = v54;
                      if (!*v54)
                      {
                        goto LABEL_87;
                      }
                    }

                    v53 = v53[1];
                  }

                  while (v53);
                  v55 = v54 + 1;
                }

LABEL_87:
                std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(v1 + 4, v54, v55, v48);
                if (v44)
                {
                  v46 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v44);
                  v47 = v46;
                }

                else
                {
                  v47 = 0;
                }

                v56 = v49[1];
                if (v56)
                {
                  do
                  {
                    v40 = v56;
                    v56 = *v56;
                  }

                  while (v56);
                }

                else
                {
                  do
                  {
                    v40 = v49[2];
                    v57 = *v40 == v49;
                    v49 = v40;
                  }

                  while (!v57);
                }

                if (!v44)
                {
                  break;
                }

                v48 = v44;
                v49 = v40;
              }

              while (v40 != &unk_27EE52798);
            }

            std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(v1 + 32, v44);
            if (!v46)
            {
              goto LABEL_115;
            }

            for (i = v46[2]; i; i = i[2])
            {
              v46 = i;
            }

            v59 = v1 + 32;
            v60 = v46;
          }

          else
          {
            v59 = v1 + 32;
            v60 = 0;
          }

          std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(v59, v60);
        }

LABEL_115:
        if (v40 != &unk_27EE52798)
        {
          operator new();
        }

        v62 = qword_27EE527A8;
        v63 = qword_27EE527B0;
        v64 = qword_27EE527B0 - qword_27EE527A8;
        v65 = *(v1 + 9);
        v66 = *(v1 + 7);
        if (v65 - v66 < (qword_27EE527B0 - qword_27EE527A8))
        {
          v67 = 0xAAAAAAAAAAAAAAABLL * (v64 >> 3);
          if (v66)
          {
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::clear[abi:ne200100](v1 + 7);
            operator delete(*(v1 + 7));
            v65 = 0;
            *(v1 + 7) = 0;
            *(v1 + 8) = 0;
            *(v1 + 9) = 0;
          }

          if (v67 <= 0xAAAAAAAAAAAAAAALL)
          {
            v68 = 0xAAAAAAAAAAAAAAABLL * (v65 >> 3);
            v69 = 2 * v68;
            if (2 * v68 <= v67)
            {
              v69 = v67;
            }

            if (v68 >= 0x555555555555555)
            {
              v70 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v70 = v69;
            }

            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__vallocate[abi:ne200100](v1 + 7, v70);
          }

LABEL_143:
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v71 = *(v1 + 8);
        v72 = v71 - v66;
        if (v71 - v66 >= v64)
        {
          if (qword_27EE527A8 != qword_27EE527B0)
          {
            do
            {
              std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>::operator=[abi:ne200100](v66, v62);
              v62 += 3;
              v66 += 24;
            }

            while (v62 != v63);
            v71 = *(v1 + 8);
          }

          while (v71 != v66)
          {
            v75 = *(v71 - 2);
            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            v71 -= 24;
          }
        }

        else
        {
          if (v71 != v66)
          {
            v73 = v71 - v66;
            v74 = qword_27EE527A8;
            do
            {
              std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>::operator=[abi:ne200100](v66, v74);
              v74 += 3;
              v66 += 24;
              v73 -= 24;
            }

            while (v73);
            v71 = *(v1 + 8);
          }

          v66 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v1 + 56, (v62 + v72), v63, v71);
        }

        *(v1 + 8) = v66;
LABEL_141:
        *(v1 + 5) = xmmword_27EE527C0;
        return v1;
      }

      v26 = *(v25 - 8) + 1;
      if (v26 < (*(**(v25 - 24) + 24))(*(v25 - 24)))
      {
        break;
      }

      v31 = *(v25 - 24);
      v32 = *(v25 - 16);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        RIO_MTLX::GraphIterator::returnPathDownstream(v1, v31);
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        RIO_MTLX::GraphIterator::returnPathDownstream(v1, v31);
      }

      v33 = *(v1 + 8);
      a1 = *(v33 - 16);
      if (a1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a1);
      }

      *(v1 + 8) = v33 - 24;
    }

    v27 = *(v25 - 24);
    ++*(v25 - 8);
    v28 = (*(*v27 + 16))(v83);
    RIO_MTLX::NULL_EDGE(v28);
    if (v83[0] == RIO_MTLX::NULL_EDGE(void)::v)
    {
      v29 = v86;
      if (v84 == xmmword_27EE52708 && v86 == qword_27EE52718)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v29 = v86;
    }

    v30 = v87;
    if (v87)
    {
      break;
    }

    if (v29)
    {
      v78 = v29;
      v79 = 0;
      goto LABEL_101;
    }

LABEL_60:
    RIO_MTLX::Edge::~Edge(v83);
  }

  atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (!v29)
  {
    goto LABEL_60;
  }

  v78 = v86;
  v79 = v87;
  if (v87)
  {
    atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_101:
  v58 = v85;
  v77[0] = v84;
  v77[1] = v85;
  if (v85)
  {
    atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::GraphIterator::extendPathUpstream(v1, &v78, v77);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v22 = v79;
  if (v79)
  {
LABEL_106:
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

LABEL_107:
  RIO_MTLX::Edge::~Edge(v83);
  return v1;
}