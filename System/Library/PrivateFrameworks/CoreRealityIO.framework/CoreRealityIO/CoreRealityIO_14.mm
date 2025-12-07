void sub_247576524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<float,float>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v47, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v47);
  }

  else
  {
    v47 = 3;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v50 = 0;
    v51 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
        v44 = *&__sz[1];
        v45 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v46 = v42;
        v42 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v44 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_29;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_59:
    v24 = 0;
    goto LABEL_60;
  }

  realityio::getAttributeValue<float>(a2, __sz);
  if (LOBYTE(__sz[0]) == 1)
  {
    if (!DWORD2(v44))
    {
      v12 = v44;
      if (*(&v45 + 1))
      {
        goto LABEL_67;
      }

      v13 = v46;
      if (v46)
      {
        v14 = atomic_load(v46 - 2);
        if (v14 != 1)
        {
          goto LABEL_67;
        }

        v13 = v46;
        v15 = *(v46 - 1);
      }

      else
      {
        v15 = 0;
      }

      if (v44 != v15)
      {
        *(v13 + v44) = __sz[1];
LABEL_25:
        *&v44 = v44 + 1;
        goto LABEL_26;
      }

LABEL_67:
      v31 = v46;
      v32 = 1;
      do
      {
        v33 = v32;
        v32 *= 2;
      }

      while (v33 < v44 + 1);
      New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(&v44, v33);
      v35 = New;
      if (v12)
      {
        v36 = 4 * v12;
        v37 = New;
        do
        {
          v38 = *v31;
          v31 = (v31 + 4);
          *v37 = v38;
          v37 = (v37 + 4);
          v36 -= 4;
        }

        while (v36);
      }

      *(New + v12) = __sz[1];
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
      v46 = v35;
      goto LABEL_25;
    }

    v52.__begin_ = "vt/array.h";
    v52.__end_ = "emplace_back";
    v52.__end_cap_.__value_ = 416;
    v53 = "void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back(Args &&...) [T = float, Args = <const float &>]";
    v54 = 0;
    if (v45)
    {
      v39 = 4;
    }

    else
    {
      v39 = 3;
    }

    if (HIDWORD(v44))
    {
      v40 = v39;
    }

    else
    {
      v40 = 2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Array rank %u != 1", v40);
  }

  else
  {
    LODWORD(v52.__begin_) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back<float>(&v44, &v52);
  }

LABEL_26:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v42) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_29:
  v16 = v46;
  if (!IsPrimvar)
  {
    goto LABEL_43;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v18 = Indices;
  if (Indices)
  {
    memset(&v52, 0, sizeof(v52));
    std::vector<int>::resize(&v52, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v19 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v20 = __sz[4] + 4 * __sz[0];
    if (v19 != v20)
    {
      begin = v52.__begin_;
      do
      {
        v22 = *v19++;
        *begin++ = v22;
      }

      while (v19 != v20);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v24 = REGeomModelDescriptorAddIndexedAttributeFloat();
    if (v52.__begin_)
    {
      v52.__end_ = v52.__begin_;
      operator delete(v52.__begin_);
    }
  }

  else
  {
    v24 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v18 & 1) == 0)
  {
LABEL_43:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v26 = 1;
    }

    else
    {
      v26 = IsArray;
    }

    if ((v26 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v28 = IsScalar) : (v28 = 0), v28 == 1))
    {
      if (!a3)
      {
        v29 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v29 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v29 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3790](a1, a3, v11, v44, v16))
      {
        v24 = 1;
        goto LABEL_60;
      }
    }

    goto LABEL_59;
  }

LABEL_60:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
  }

  return v24;
}

void sub_247576ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<double,double>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v59, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v59);
  }

  else
  {
    v59 = 3;
    v60 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v62 = 0;
    v63 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
        v56 = *&__sz[1];
        v57 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v58 = v54;
        v54 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v56 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_66:
    v28 = 0;
    goto LABEL_67;
  }

  realityio::getAttributeValue<double>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v56))
    {
      v64.__begin_ = "vt/array.h";
      v64.__end_ = "emplace_back";
      v64.__end_cap_.__value_ = 416;
      v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<double>::emplace_back(Args &&...) [T = double, Args = <double>]";
      v66 = 0;
      if (v57)
      {
        v52 = 4;
      }

      else
      {
        v52 = 3;
      }

      if (HIDWORD(v56))
      {
        v51 = v52;
      }

      else
      {
        v51 = 2;
      }

      goto LABEL_93;
    }

    v16 = v56;
    if (!*(&v57 + 1))
    {
      v17 = v58;
      if (!v58)
      {
        v19 = 0;
LABEL_30:
        if (v56 != v19)
        {
          v17[v56] = 0;
          goto LABEL_32;
        }

        goto LABEL_80;
      }

      v18 = atomic_load(v58 - 2);
      if (v18 == 1)
      {
        v17 = v58;
        v19 = *(v58 - 1);
        goto LABEL_30;
      }
    }

LABEL_80:
    v43 = v58;
    v44 = 1;
    do
    {
      v45 = v44;
      v44 *= 2;
    }

    while (v45 < v56 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v56, v45);
    v39 = New;
    if (v16)
    {
      v47 = 8 * v16;
      v48 = New;
      do
      {
        v49 = *v43++;
        *v48++ = v49;
        v47 -= 8;
      }

      while (v47);
    }

    New[v16] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
    goto LABEL_86;
  }

  if (DWORD2(v56))
  {
    v64.__begin_ = "vt/array.h";
    v64.__end_ = "emplace_back";
    v64.__end_cap_.__value_ = 416;
    v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<double>::emplace_back(Args &&...) [T = double, Args = <const double &>]";
    v66 = 0;
    if (v57)
    {
      v50 = 4;
    }

    else
    {
      v50 = 3;
    }

    if (HIDWORD(v56))
    {
      v51 = v50;
    }

    else
    {
      v51 = 2;
    }

LABEL_93:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 1, "Array rank %u != 1", v51);
    goto LABEL_33;
  }

  v12 = v56;
  if (*(&v57 + 1))
  {
    goto LABEL_74;
  }

  v13 = v58;
  if (v58)
  {
    v14 = atomic_load(v58 - 2);
    if (v14 != 1)
    {
      goto LABEL_74;
    }

    v13 = v58;
    v15 = *(v58 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v56 == v15)
  {
LABEL_74:
    v35 = v58;
    v36 = 1;
    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v37 < v56 + 1);
    v38 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v56, v37);
    v39 = v38;
    if (v12)
    {
      v40 = 8 * v12;
      v41 = v38;
      do
      {
        v42 = *v35++;
        *v41++ = v42;
        v40 -= 8;
      }

      while (v40);
    }

    v38[v12] = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
LABEL_86:
    v58 = v39;
    goto LABEL_32;
  }

  v13[v56] = __sz[1];
LABEL_32:
  *&v56 = v56 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v54) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v58;
  if (!IsPrimvar)
  {
    goto LABEL_50;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v64, 0, sizeof(v64));
    std::vector<int>::resize(&v64, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v64.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v28 = REGeomModelDescriptorAddIndexedAttributeDouble();
    if (v64.__begin_)
    {
      v64.__end_ = v64.__begin_;
      operator delete(v64.__begin_);
    }
  }

  else
  {
    v28 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_50:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = IsArray;
    }

    if ((v30 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v32 = IsScalar) : (v32 = 0), v32 == 1))
    {
      if (!a3)
      {
        v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v33 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v33 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3780](a1, a3, v11, v56, v20))
      {
        v28 = 1;
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

LABEL_67:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
  }

  return v28;
}

void sub_247577198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

void realityio::addSkeletonJointBindingsToModelDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a3, pxrInternal__aapl__pxrReserved__::UsdSkelRoot *a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 1);
  if (v4 && (*(v4 + 57) & 8) == 0 && (*(*a3 + 32))(a3) && realityio::isValidSkeleton(a3, v9))
  {
    VertexCount = REGeomModelDescriptorGetVertexCount();
    MEMORY[0x24C1A4F20](v80);
    pxrInternal__aapl__pxrReserved__::UsdSkelRoot::Find();
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(&v72, v80, a3);
    if (v72)
    {
      MEMORY[0x24C1A5790](v69);
      if (v79 && (*(v79 + 57) & 8) == 0 && (v11 = (*(v78 + 32))(&v78), v11))
      {
        UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v11);
        v13 = UsdPrimDefaultPredicate[1].i64[0];
        v14.i64[0] = -8193;
        v14.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v14).u64[0];
        v14.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
        v65 = v14;
        v66 = v13;
        pxrInternal__aapl__pxrReserved__::UsdSkelCache::Populate();
        pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkinningQuery(v65.i64, v80, a4);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(v69, &v65);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&v65);
      }

      else
      {
        v59 = v75;
        v60 = v76;
        *&v61 = v77;
        if (v77)
        {
          v15 = (v77 - 16);
          if (*(&v60 + 1))
          {
            v15 = *(&v60 + 1);
          }

          atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointIndicesAttr(&v47, a2);
        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointWeightsAttr(&v43, a2);
        pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointsAttr(&v40, a2);
        *&v53 = 0;
        v51 = 0u;
        v52 = 0u;
        LODWORD(v37) = 3;
        *(&v37 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v38 + 1) = 0;
        *v83 = 3;
        *&v83[8] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v84 + 1) = 0;
        LODWORD(v63.__begin_) = 4;
        v63.__end_ = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v64 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::UsdSkelSkinningQuery();
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(v69, &v65);
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&v65);
        if ((v64 & 7) != 0)
        {
          atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v63.__end_cap_);
        if (v63.__end_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63.__end_);
        }

        if ((BYTE8(v84) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v84 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v84);
        if (*&v83[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v83[8]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v51);
        if ((BYTE8(v41) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
        if (*(&v40 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v40 + 1));
        }

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
        if (*(&v43 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v43 + 1));
        }

        if ((v50 & 7) != 0)
        {
          atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
        if (v48)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v59);
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v69))
      {
        v16 = *(MEMORY[0x277D860B8] + 16);
        v59 = *MEMORY[0x277D860B8];
        v60 = v16;
        v17 = *(MEMORY[0x277D860B8] + 48);
        v61 = *(MEMORY[0x277D860B8] + 32);
        v62 = v17;
        memset(&v63, 0, sizeof(v63));
        memset(&v58, 0, sizeof(v58));
        __dst = 0;
        v56 = 0;
        v57 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::GetGeomBindTransform();
        MEMORY[0x24C1A4BE0](&v51, &v65);
        v59 = v51;
        v60 = v52;
        v61 = v53;
        v62 = v54;
        v18 = v70;
        std::vector<int>::resize(&v63, VertexCount);
        if (v63.__begin_ != v63.__end_)
        {
          v19 = 0;
          v20 = (v63.__end_ - v63.__begin_ - 4) >> 2;
          v21 = vdupq_n_s32(v18);
          v22 = vdupq_n_s32(4 * v18);
          v23 = vdupq_n_s64(v20);
          v24 = vmulq_s32(v21, xmmword_247757A20);
          v25 = v63.__begin_ + 2;
          do
          {
            v26 = vdupq_n_s64(v19);
            v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_247758360)));
            v28 = vaddq_s32(v24, v21);
            if (vuzp1_s16(v27, *v21.i8).u8[0])
            {
              *(v25 - 2) = v28.i32[0];
            }

            if (vuzp1_s16(v27, *&v21).i8[2])
            {
              *(v25 - 1) = v28.u32[1];
            }

            if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_247758350)))).i32[1])
            {
              *v25 = v28.i64[1];
            }

            v19 += 4;
            v24 = vaddq_s32(v24, v22);
            v25 += 4;
          }

          while (((v20 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v19);
        }

        v29 = v71;
        pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetJointOrder(&v47, &v72);
        v30 = v47;
        v65.i32[0] = 3;
        v65.i64[1] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v67 = 0;
        v68 = 0;
        LODWORD(v51) = 3;
        *(&v51 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v52 + 1) = 0;
        *&v53 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::HasJointInfluences(v69))
        {
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
          ElementSize = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v65);
        }

        else
        {
          ElementSize = 0;
        }

        if (v30 && (!pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() || ElementSize == pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v51)))
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::VtArray(&v43, v30);
          for (i = 0; i != v30; ++i)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v43);
            *(v46 + 4 * i) = i;
          }

          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          if (v29)
          {
            pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v29, &v43, &v40);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(&v40, &v43);
          }

          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
          {
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
          }

          v85 = 0;
          *v83 = 0u;
          v84 = 0u;
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
          {
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
          }

          if (ElementSize >= 1 && v56 != __dst && v58.__end_ != v58.__begin_ && (v56 - __dst) >> 2 >= ElementSize && v58.__end_ - v58.__begin_ >= ElementSize)
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(buf, a3);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetString(buf);
            REGeomModelDescriptorAddSkinningData();
            pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(buf);
            v33 = MEMORY[0x24C1A3810](a1, "skinnedAnimationGeometryBindTransform", 4, 4, &v59);
            if ((v33 & 1) == 0)
            {
              v34 = *(realityio::logObjects(v33) + 24);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v36, a4);
                Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v36);
                *buf = 136315138;
                *&buf[4] = Text;
                _os_log_impl(&dword_247485000, v34, OS_LOG_TYPE_DEFAULT, "Did not add bind transforms for (Prim %s)", buf, 0xCu);
                pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v36);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v83);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v37);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v43);
        }

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v52) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v52 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v52);
        if (*(&v51 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v51 + 1));
        }

        if ((v68 & 7) != 0)
        {
          atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
        if (v65.i64[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.i64[1]);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v47);
        if (__dst)
        {
          v56 = __dst;
          operator delete(__dst);
        }

        if (v58.__begin_)
        {
          v58.__end_ = v58.__begin_;
          operator delete(v58.__begin_);
        }

        if (v63.__begin_)
        {
          v63.__end_ = v63.__begin_;
          operator delete(v63.__begin_);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(v69);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v74);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(v73);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(&v72);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v75);
    MEMORY[0x24C1A4DE0](&v78);
    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v81);
    }
  }
}

void sub_247577F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v61 - 144);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a13);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a25);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a35);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a61);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a30);
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(&STACK[0x330]);
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::~UsdSkelSkeletonQuery(&STACK[0x4C0]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef((v61 - 256));
  MEMORY[0x24C1A4DE0](v61 - 216);
  v63 = *(v61 - 184);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::isValidSkeleton(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetJointsAttr(&v11, this);
  v20 = 0;
  {
    pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetBindTransformsAttr(&v7, this);
    v18 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v17) == NumElements && (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v17) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetRestTransformsAttr(v6, this);
      v16 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v15) == NumElements)
      {
        v4 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v15);
      }

      else
      {
        v4 = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(v6);
    }

    else
    {
      v4 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
    }
  }

  else
  {
    v4 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  return v4;
}

void sub_247578424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v11 - 56));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v11 - 40));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, (a2 + 20));
  if (a2 == a1)
  {
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v5 = *(a1 + 24);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a1 + 40);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=();
  *(a1 + 144) = *(a2 + 144);
  v7 = *(a1 + 152);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 160, (a2 + 160));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 164, (a2 + 164));
  if (a2 != a1)
  {
    v8 = *(a1 + 168);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a2 + 168) = 0;
  }

  *(a1 + 176) = *(a2 + 176);
  v9 = *(a1 + 184);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 192, (a2 + 192));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 196, (a2 + 196));
  if (a2 != a1)
  {
    v10 = *(a1 + 200);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 200) = *(a2 + 200);
    *(a2 + 200) = 0;
  }

  *(a1 + 208) = *(a2 + 208);
  v11 = *(a1 + 216);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 224, (a2 + 224));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 228, (a2 + 228));
  if (a2 != a1)
  {
    v12 = *(a1 + 232);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 232) = *(a2 + 232);
    *(a2 + 232) = 0;
  }

  *(a1 + 240) = *(a2 + 240);
  v13 = *(a1 + 248);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 256, (a2 + 256));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 260, (a2 + 260));
  if (a2 != a1)
  {
    v14 = *(a1 + 264);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 264) = *(a2 + 264);
    *(a2 + 264) = 0;
  }

  v15 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v16 = *(a1 + 280);
  *(a1 + 272) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v18 = *(a1 + 296);
  *(a1 + 288) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(a1 + 304, a2 + 304);
  std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(a1 + 352, a2 + 352);
  return a1;
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper *a1, __int128 *a2, unint64_t *a3)
{
  if (a3)
  {
    v6 = *a1;
    if (pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::IsIdentity(a1) && *a2 == v6)
    {

      pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(a3, a2);
    }

    else
    {
      v7 = *a3;
      v18 = 0;
      v16[0] = &v18;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(a3, v6, v16);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
      if (v6 > v7)
      {
        bzero((a3[4] + 4 * v7), 4 * (v6 - v7));
      }

      if ((pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::IsNull(a1) & 1) == 0)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::_IsOrdered(a1))
        {
          if (v6 - *(a1 + 1) >= *a2)
          {
            v8 = *a2;
          }

          else
          {
            v8 = v6 - *(a1 + 1);
          }

          v9 = *(a2 + 4);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
          if (v8)
          {
            memmove((a3[4] + 4 * *(a1 + 1)), v9, 4 * v8);
          }
        }

        else
        {
          v10 = *(a2 + 4);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(a3);
          v11 = *a2;
          if (*(a1 + 2) < *a2)
          {
            v11 = *(a1 + 2);
          }

          if (v11)
          {
            v12 = a3[4];
            v13 = *(a1 + 6);
            do
            {
              v15 = *v13++;
              v14 = v15;
              if ((v15 & 0x80000000) == 0 && *a3 > v14)
              {
                *(v12 + 4 * v14) = *v10;
              }

              ++v10;
              --v11;
            }

            while (v11);
          }
        }
      }
    }
  }

  else
  {
    v16[0] = "usdSkel/animMapper.h";
    v16[1] = "Remap";
    v16[2] = 187;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdSkelAnimMapper::Remap(const Container &, Container *, int, const typename Container::value_type *) const [Container = pxrInternal__aapl__pxrReserved__::VtArray<int>]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "'target' is null");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v8);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }
}

{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }
}

void realityio::makeValueLookupByIndex(uint64_t *a1, std::vector<unsigned int>::size_type __sz, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, std::vector<unsigned int> *a8)
{
  memset(&v41, 0, sizeof(v41));
  v10 = a8;
  if (!a8)
  {
    v10 = &v41;
    if (a7 > 1)
    {
      if (a7 == 2)
      {
        v29 = a4 - a3;
        v30 = ((a4 - a3) >> 2);
        std::vector<int>::resize(&v41, v30);
        if ((v29 & 0x3FFFFFFFCLL) != 0)
        {
          v31 = 0;
          v32 = vdupq_n_s64(v30 - 1);
          v33 = xmmword_247758350;
          v34 = xmmword_247758360;
          v35 = v41.__begin_ + 2;
          v36 = vdupq_n_s64(4uLL);
          do
          {
            v37 = vmovn_s64(vcgeq_u64(v32, v34));
            if (vuzp1_s16(v37, *v32.i8).u8[0])
            {
              *(v35 - 2) = v31;
            }

            if (vuzp1_s16(v37, *&v32).i8[2])
            {
              *(v35 - 1) = v31 + 1;
            }

            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v33))).i32[1])
            {
              *v35 = v31 + 2;
              v35[1] = v31 + 3;
            }

            v31 += 4;
            v33 = vaddq_s64(v33, v36);
            v34 = vaddq_s64(v34, v36);
            v35 += 4;
          }

          while (((v30 + 3) & 0x1FFFFFFFCLL) != v31);
        }
      }

      else
      {
        if (a7 != 3)
        {
          goto LABEL_38;
        }

        v20 = a6 - a5;
        v21 = ((a6 - a5) >> 2);
        std::vector<int>::resize(&v41, v21);
        if ((v20 & 0x3FFFFFFFCLL) != 0)
        {
          v22 = 0;
          v23 = vdupq_n_s64(v21 - 1);
          v24 = xmmword_247758350;
          v25 = xmmword_247758360;
          v26 = v41.__begin_ + 2;
          v27 = vdupq_n_s64(4uLL);
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v23, v25));
            if (vuzp1_s16(v28, *v23.i8).u8[0])
            {
              *(v26 - 2) = v22;
            }

            if (vuzp1_s16(v28, *&v23).i8[2])
            {
              *(v26 - 1) = v22 + 1;
            }

            if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
            {
              *v26 = v22 + 2;
              v26[1] = v22 + 3;
            }

            v22 += 4;
            v24 = vaddq_s64(v24, v27);
            v25 = vaddq_s64(v25, v27);
            v26 += 4;
          }

          while (((v21 + 3) & 0x1FFFFFFFCLL) != v22);
        }
      }
    }

    else if (a7)
    {
      if (a7 != 1)
      {
        goto LABEL_38;
      }

      v11 = __sz;
      v12 = __sz;
      std::vector<int>::resize(&v41, __sz);
      if (v11)
      {
        v13 = 0;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = xmmword_247758350;
        v16 = xmmword_247758360;
        v17 = v41.__begin_ + 2;
        v18 = vdupq_n_s64(4uLL);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v14, v16));
          if (vuzp1_s16(v19, *v14.i8).u8[0])
          {
            *(v17 - 2) = v13;
          }

          if (vuzp1_s16(v19, *&v14).i8[2])
          {
            *(v17 - 1) = v13 + 1;
          }

          if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
          {
            *v17 = v13 + 2;
            v17[1] = v13 + 3;
          }

          v13 += 4;
          v15 = vaddq_s64(v15, v18);
          v16 = vaddq_s64(v16, v18);
          v17 += 4;
        }

        while (((v12 + 3) & 0x1FFFFFFFCLL) != v13);
      }
    }

    else
    {
      __x = 0;
      std::vector<unsigned int>::resize(&v41, 1uLL, &__x);
    }

    v10 = &v41;
  }

LABEL_38:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  begin = v10->__begin_;
  v39 = &v41;
  if (a8)
  {
    v39 = a8;
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, begin, v39->__end_, v39->__end_ - begin);
  if (v41.__begin_)
  {
    v41.__end_ = v41.__begin_;
    operator delete(v41.__begin_);
  }
}

void sub_247578D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void realityio::makeFaceVertexIndexList(void **a1, std::vector<unsigned int>::size_type a2, uint64_t *a3, uint64_t *a4, int a5, char **a6)
{
  v6 = a6;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v12 = *a3;
  v11 = a3[1];
  if (!a6)
  {
    realityio::makeValueLookupByIndex(&__p, a2, *a3, v11, *a4, a4[1], a5, 0);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v34, __p, v33, (v33 - __p) >> 2);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    v6 = &v34;
  }

  v14 = *a4;
  v13 = a4[1];
  v15 = (v13 - *a4) >> 2;
  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](a1, v15, &__p);
  if (a5 == 1)
  {
    if (v13 != v14)
    {
      v28 = 0;
      v29 = *a4;
      v30 = *v6;
      v31 = *a1;
      do
      {
        *(v31 + 4 * v28) = *&v30[4 * *(v29 + 4 * v28)];
        ++v28;
      }

      while (v15 > v28);
    }
  }

  else if (a5 == 3)
  {
    if (v6 != a1)
    {
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *v6, v6[1], (v6[1] - *v6) >> 2);
    }
  }

  else if (a5 == 2 && ((v11 - v12) & 0x3FFFFFFFCLL) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = *a3;
    v19 = *a1 + 8;
    do
    {
      v20 = *(v18 + 4 * v16);
      if (v17 < v20)
      {
        v21 = 0;
        v22 = *&(*v6)[4 * v16];
        v23 = (v20 - v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v24 = vdupq_n_s64(v20 - v17 - 1);
        v25 = &v19[4 * v17];
        do
        {
          v26 = vdupq_n_s64(v21);
          v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_247758360)));
          if (vuzp1_s16(v27, 2).u8[0])
          {
            *(v25 - 2) = v22;
          }

          if (vuzp1_s16(v27, 2).i8[2])
          {
            *(v25 - 1) = v22;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_247758350)))).i32[1])
          {
            *v25 = v22;
            *(v25 + 1) = v22;
          }

          v21 += 4;
          v25 += 16;
        }

        while (v23 != v21);
        v17 = v20;
      }

      ++v16;
    }

    while (v16 != ((v11 - v12) >> 2));
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_247578FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::isCatmullClarkSurface(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(&v9, this);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v9, &v5);
  if (v5 == 1)
  {
    v2 = atomic_load(MEMORY[0x277D86550]);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    v3 = (*(v2 + 96) ^ v6) < 8;
    if (v5)
    {
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

LABEL_9:
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  return v3;
}

void sub_247579120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a9 == 1)
  {
    if ((a10 & 7) != 0)
    {
      atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (a17 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a18);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247579308(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::getBoundSubsetsAndCoverage(uint64_t a1, char **a2, BOOL *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v24, (a1 + 8), (a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v5);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
  }

  if ((IsA & 1) == 0)
  {
    return 0;
  }

  v7 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v40[3] = 0;
  v40[0] = MEMORY[0x277D867B8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v38, v7);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v24 = (MEMORY[0x277D866A8] + 16);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v34, &v24);
  MEMORY[0x24C1A4DB0](&v24);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v34) || v38 == *(&v38 + 1))
  {
    v9 = 0;
  }

  else
  {
    v42 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v41);
    *a3 = 0;
    memset(__p, 0, sizeof(__p));
    if (NumElements)
    {
      std::vector<BOOL>::__vallocate[abi:ne200100](__p, NumElements);
    }

    v23 = a3;
    v11 = *(&v38 + 1);
    v10 = v38;
    if (v38 == *(&v38 + 1))
    {
LABEL_23:
      *v23 = 1;
      v14 = *a2;
      if (*a2)
      {
        v15 = a2[1];
        v16 = *a2;
        if (v15 != v14)
        {
          v17 = v15 - 24;
          v18 = v15 - 24;
          v19 = (v15 - 24);
          do
          {
            v20 = *v19;
            v19 -= 3;
            (*v20)(v18);
            v17 -= 24;
            v21 = v18 == v14;
            v18 = v19;
          }

          while (!v21);
          v16 = *a2;
        }

        a2[1] = v14;
        operator delete(v16);
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      *a2 = v38;
      a2[2] = v39;
      v39 = 0;
      v38 = 0uLL;
      v9 = 1;
    }

    else
    {
      while (1)
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(&v29, v10);
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v29, &v24);
        v13 = 0;
        if (v24)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v25);
          v12 = v28;
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v25);
          if (v12 == v28 + 4 * v25)
          {
            v13 = 1;
          }
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v24);
        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        if (v30)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
        }

        if (!v13)
        {
          break;
        }

        v10 = (v10 + 24);
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      v9 = 0;
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v41);
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
  if (v35)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
  }

  v24 = &v38;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v24);
  MEMORY[0x24C1A5AA0](v40);
  return v9;
}

void sub_2475797A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v27 - 112));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a23);
  a23 = &a27;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&a23);
  MEMORY[0x24C1A5AA0](v27 - 144);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2475799FC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::addOpenSubdivDataToModelDescriptor(uint64_t a1, realityio *this)
{
  result = realityio::isCatmullClarkSurface(this, this);
  if (result)
  {
    VertexCount = REGeomModelDescriptorGetVertexCount();
    REGeomModelDescriptorSetSurfaceType();
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseIndicesAttr(&v56, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseLengthsAttr(&v52, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseSharpnessesAttr(&v48, this);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v56, v45);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v52, &v42);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v48, &v37);
    if (v45[0] == 1 && v42 == 1 && v37 == 1 && v38 && v38 == v43[0])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v43);
      v6 = v44;
      v7 = v43[0];
      if (v43[0])
      {
        v8 = 0;
        LODWORD(v9) = 0;
        v10 = 0;
        v11 = 1;
        while (1)
        {
          v12 = *(v44 + 4 * v8);
          if (v12 < 2)
          {
            break;
          }

          v9 = (v12 + v9);
          v10 = v10 + v12 - 1;
          v8 = v11;
          if (v43[0] <= v11++)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
LABEL_13:
        if (v46[0] == v9)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v46);
          v14 = v47;
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v38);
          v15 = v41;
          std::vector<unsigned int>::vector[abi:ne200100](&v35, 2 * v10);
          std::vector<float>::vector[abi:ne200100](&__p, v10);
          if (v7)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v21 = *(v6 + 4 * v16);
              v22 = v21 - 1;
              if (v21 != 1)
              {
                v23 = *(v15 + 4 * v16);
                v24 = v35;
                v25 = v22 + v18;
                v26 = __p;
                v27 = v14[v19];
                while (1)
                {
                  v21 = v27 < VertexCount;
                  if (v27 >= VertexCount)
                  {
                    break;
                  }

                  v24[v17] = v27;
                  v27 = v14[++v19];
                  v24[v17 + 1] = v27;
                  v26[v18++] = v23;
                  v17 += 2;
                  if (!--v22)
                  {
                    v18 = v25;
                    break;
                  }
                }
              }

              if (v14[v19] >= VertexCount)
              {
                break;
              }

              ++v19;
              v16 = (v20 + 1);
              if (v7 > v16)
              {
                v28 = v21;
              }

              else
              {
                v28 = 0;
              }

              ++v20;
              if ((v28 & 1) == 0)
              {
                if (!v21)
                {
                  break;
                }

                goto LABEL_27;
              }
            }
          }

          else
          {
LABEL_27:
            MEMORY[0x24C1A37D0](a1, "osdEdgeCreaseIndices", 4, (v36 - v35) >> 2);
            MEMORY[0x24C1A3790](a1, "osdEdgeCreaseWeights", 4, (v34 - __p) >> 2);
          }

          if (__p)
          {
            v34 = __p;
            operator delete(__p);
          }

          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }
        }
      }
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(&v37);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v42);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v45);
    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
    if (v49)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
    }

    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
    if (v53)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v53);
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    if (v57)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerIndicesAttr(&v37, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerSharpnessesAttr(&v56, this);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v37, v45);
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v56, &v42);
    if (v45[0] == 1 && v42 == 1 && v46[0] && v46[0] == v43[0])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v46);
      if (v46[0])
      {
        v29 = v46[0];
        v30 = v47;
        while (1)
        {
          v31 = *v30++;
          if (v31 >= VertexCount)
          {
            break;
          }

          if (!--v29)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        MEMORY[0x24C1A37D0](a1, "osdVertexCreaseIndices", 4);
        v32 = v43[0];
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v43);
        MEMORY[0x24C1A3790](a1, "osdVertexCreaseWeights", 4, v32, v44);
      }
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(&v42);
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v45);
    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    if (v57)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
    result = v38;
    if (v38)
    {
      return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
    }
  }

  return result;
}

void sub_247579EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (__p)
  {
    operator delete(__p);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(&a15);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&a21);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v26 - 176));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v26 - 144));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v26 - 112));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24757A174(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24757A364(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(const void **a1, unint64_t a2)
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

        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

__n128 realityio::getGeomPrimitiveOrientation(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v11 = xmmword_247757270;
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(IsValid);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (IsA & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), v5 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(), (v5) || (pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v5), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()))
    {
      MEMORY[0x24C1A5DE0](&v13, "axis");
      MEMORY[0x24C1A5DE0](&v12, "Z");
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v15, this, &v13);
      if (v15)
      {
        v6 = v16;
      }

      else
      {
        v6 = v12;
      }

      v14 = v6;
      if ((v6 & 7) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
        {
          v14 = v7;
        }
      }

      if (v15 == 1)
      {
        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else if (v18 < 0)
      {
        operator delete(__p);
      }

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
      {
        v8 = xmmword_24775F400;
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        v8 = vbslq_s8(vdupq_n_s32(v9), xmmword_24775F410, xmmword_247757270);
      }

      v11 = v8;
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return v11;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t realityio::createGeomModelDescriptorWithPrimitivePrim@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, unsigned __int16 a3@<W2>, __int16 a4@<W3>, __int16 a5@<W4>, __int16 a6@<W5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (!result)
  {
    return result;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(result);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if ((result & 1) == 0)
  {
    return result;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(result);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    v14 = atomic_load(MEMORY[0x277D86550]);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    realityio::getAttributeValue<float>(v60, this, (v14 + 1016));
    v15 = v60[0];
    v16 = *&v60[8];
    if ((v60[0] & 1) == 0 && SHIBYTE(v61) < 0)
    {
      operator delete(*&v60[24]);
    }

    memset(v60, 0, 28);
    REGeomBuildBoxDefaultOptions();
    v17 = 2.0;
    if (v15)
    {
      v17 = v16;
    }

    *&v60[12] = v17;
    *&v60[16] = v17;
    *&v60[20] = v17;
    *v54 = *v60;
    *&v54[12] = *&v60[12];
    v18 = REGeomModelDescriptorCreateFromBoxOptions();
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(IsA);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    v19 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (v19)
    {
      REGeomBuildSphereDefaultOptions();
      v20 = atomic_load(MEMORY[0x277D86550]);
      if (!v20)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      realityio::getAttributeValue<float>(v60, this, (v20 + 920));
      if ((v60[0] & 1) == 0 && SHIBYTE(v61) < 0)
      {
        operator delete(*&v60[24]);
      }

      v18 = REGeomModelDescriptorCreateFromSphereOptions();
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(v19);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      v21 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (v21)
      {
        v22 = MEMORY[0x277D86550];
        v23 = atomic_load(MEMORY[0x277D86550]);
        if (!v23)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
        }

        realityio::getAttributeValue<float>(v60, this, (v23 + 920));
        if ((v60[0] & 1) == 0 && SHIBYTE(v61) < 0)
        {
          operator delete(*&v60[24]);
        }

        v24 = atomic_load(v22);
        if (!v24)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
        }

        realityio::getAttributeValue<float>(v60, this, (v24 + 408));
        if ((v60[0] & 1) == 0 && SHIBYTE(v61) < 0)
        {
          operator delete(*&v60[24]);
        }

        REGeomBuildConeDefaultOptions();
        v18 = REGeomModelDescriptorCreateFromConeOptions();
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v21);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
        {
          v25 = MEMORY[0x277D86550];
          v26 = atomic_load(MEMORY[0x277D86550]);
          if (!v26)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
          }

          *v60 = 1056964608;
          realityio::getAttributeValueWithDefaultValue<float>((v26 + 920), v60, this);
          v28 = v27;
          v29 = atomic_load(v25);
          if (!v29)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
          }

          *v60 = 1065353216;
          realityio::getAttributeValueWithDefaultValue<float>((v29 + 408), v60, this);
          v31 = v30;
          memset(v60, 0, 20);
          REGeomBuildCapsuleDefaultOptions();
          v32 = v31 + v28 * 2.0;
          *&v60[8] = v28;
          *&v60[12] = v32;
          *v60 = a4;
          *&v60[4] = a5;
          *v54 = *v60;
          *&v54[16] = *&v60[16];
          v18 = REGeomModelDescriptorCreateFromCapsuleOptions();
        }

        else
        {
          if (!pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(this))
          {
            v40 = 0;
            goto LABEL_36;
          }

          v33 = MEMORY[0x277D86550];
          v34 = atomic_load(MEMORY[0x277D86550]);
          if (!v34)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
          }

          *v60 = 1065353216;
          realityio::getAttributeValueWithDefaultValue<float>((v34 + 920), v60, this);
          v36 = v35;
          v37 = atomic_load(v33);
          if (!v37)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
          }

          *v60 = 0x40000000;
          realityio::getAttributeValueWithDefaultValue<float>((v37 + 408), v60, this);
          v39 = v38;
          memset(v60, 0, 24);
          REGeomBuildCylinderDefaultOptions();
          *&v60[8] = v36;
          *&v60[12] = v36;
          *&v60[4] = v39;
          *v60 = a6;
          *v54 = *v60;
          *&v54[16] = *&v60[16];
          v18 = REGeomModelDescriptorCreateFromCylinderOptions();
        }
      }
    }
  }

  v40 = v18;
LABEL_36:
  result = *a7;
  if (*a7)
  {
    result = RERelease();
  }

  *a7 = v40;
  if (v40)
  {
    v41 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *v60 = MEMORY[0x277D866C8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorAttr(&v56, v41);
    MEMORY[0x24C1A4EF0](v60);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v56) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v56))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v56, v60);
      if (v60[0] == 1)
      {
        *v54 = *&v60[8];
        *&v54[16] = *&v60[24];
        v55 = v61;
        if (v61)
        {
          v42 = (v61 - 4);
          if (*&v54[24])
          {
            v42 = *&v54[24];
          }

          atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
        }

        if (*v54 == 1)
        {
          __p = 0;
          v52 = 0;
          v53 = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v54);
          v49 = *v55;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v54);
          v48 = v55[1];
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v54);
          __asm { FMOV            V0.4S, #1.0 }

          *&_Q0 = __PAIR64__(v48, v49);
          DWORD2(_Q0) = v55[2];
          v50 = _Q0;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v50);
          MEMORY[0x24C1A3810](v40, "vertexColor", 0, 1, __p);
          if (__p)
          {
            v52 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v54);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v60);
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
    result = v57;
    if (v57)
    {
      return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
    }
  }

  return result;
}

void realityio::getAttributeValueWithDefaultValue<float>(const pxrInternal__aapl__pxrReserved__::TfToken *a1, int a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  realityio::getAttributeValue<float>(v3, this, a1);
  if ((v3[0] & 1) == 0 && v4 < 0)
  {
    operator delete(v3[3]);
  }
}

pxrInternal__aapl__pxrReserved__::UsdGeomGprim *realityio::approximateGeomWithPrimitivePrim@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(result);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        *a6 = xmmword_24775F420;
LABEL_14:
        *(a6 + 16) = 14;
        return result;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        v13 = ((v9 - 2) * v9 + 2);
        v14 = v9 * (v9 - 1);
LABEL_12:
        v15 = (2 * v14);
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result)
      {
        v13 = (a3 + 1);
        v15 = (2 * a3 - 2);
LABEL_13:
        *a6 = v13;
        *(a6 + 8) = v15;
        goto LABEL_14;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(result);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (result || (result = pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(this), result))
      {
        v13 = (2 * a4 * (a5 - 1) + 2);
        v14 = a5 * a4;
        goto LABEL_12;
      }
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

uint64_t *realityio::createModelDescriptorFromUsdGeomMesh@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  *v148 = 0;
  v8 = (this + 8);
  v7 = *(this + 1);
  if (!v7)
  {
    goto LABEL_23;
  }

  if ((*(v7 + 57) & 8) != 0)
  {
    v7 = 0;
LABEL_23:
    *a6 = v7;
    *v148 = 0;
    return realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v148);
  }

  v10 = a3;
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v7 = *v148;
    goto LABEL_23;
  }

  __p = 0;
  v146 = 0;
  v147 = 0;
  memset(&v144, 0, sizeof(v144));
  memset(&v143, 0, sizeof(v143));
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v161, this);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v157, this);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(&v153, this);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v161) || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v157) || (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v153) & 1) == 0)
  {
    v26 = 0;
    goto LABEL_26;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v161, &v182);
  if (v182)
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v157, &v175);
    if ((v175 & 1) == 0)
    {
      v26 = 0;
LABEL_390:
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(&v175);
      goto LABEL_391;
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v153, __sz);
    if (__sz[0])
    {
      v13 = a4;
      if (pxrInternal__aapl__pxrReserved__::UsdGeomMesh::ValidateTopology())
      {
        std::vector<int>::resize(&v144, v176);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v176);
        v14 = v181;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v176);
        v15 = &v181[v176];
        if (v14 != v15)
        {
          begin = v144.__begin_;
          do
          {
            v17 = *v14++;
            *begin++ = v17;
          }

          while (v14 != v15);
        }

        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v183);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v183);
        v18 = v188;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v183);
        v20 = v188 + 12 * v183;
        if (v18 != v20)
        {
          v21 = __p;
          do
          {
            *&v19 = *v18;
            DWORD2(v19) = *(v18 + 8);
            *v21++ = v19;
            v18 += 12;
          }

          while (v18 != v20);
        }

        std::vector<int>::resize(&v143, __sz[1]);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&__sz[1]);
        v22 = v152;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&__sz[1]);
        v23 = &v152[__sz[1]];
        if (v22 != v23)
        {
          v24 = v143.__begin_;
          a4 = v13;
          do
          {
            v25 = *v22++;
            *v24++ = v25;
          }

          while (v22 != v23);
          v26 = 1;
          goto LABEL_389;
        }

        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      a4 = v13;
    }

    else
    {
      v26 = 0;
    }

LABEL_389:
    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
    goto LABEL_390;
  }

  v26 = 0;
LABEL_391:
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(&v182);
LABEL_26:
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v155);
  if (v154)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v154);
  }

  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v159);
  if (v158)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v158);
  }

  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v163);
  if (v162)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v162);
  }

  if ((v26 & 1) == 0)
  {
    *a6 = *v148;
LABEL_46:
    *v148 = 0;
    goto LABEL_47;
  }

  HighVertexPerPolygon = REGeomModelDescriptorCreateHighVertexPerPolygon();
  if (*v148)
  {
    RERelease();
  }

  *v148 = HighVertexPerPolygon;
  if (!HighVertexPerPolygon)
  {
    *a6 = 0;
    goto LABEL_46;
  }

  v29 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v182, v8, this + 4);
  Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v29);
  if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
  }

  REGeomModelDescriptorSetName();
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
  if (v183)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
  }

  if (MEMORY[0x24C1A3800](*v148, "vertexPosition", 1, (v146 - __p) >> 4))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v182, this);
    v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
    if ((*v31 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
    }

    REGeomModelDescriptorAddAttributeAlias();
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetOrientationAttr(&v175, this);
    v32 = atomic_load(MEMORY[0x277D86550]);
    if (!v32)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v175, &v182);
    if (v182)
    {
      v33 = v183;
    }

    else
    {
      v33 = *(v32 + 976);
    }

    if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (v182 == 1)
    {
      if ((v183 & 7) != 0)
      {
        atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else if (SHIBYTE(v188) < 0)
    {
      operator delete(v186);
    }

    if ((v179 & 7) != 0)
    {
      atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v177);
    if (v176)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
    }

    v34 = atomic_load(MEMORY[0x277D86550]);
    v140 = v33;
    if (!v34)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    REGeomModelDescriptorSetWindingOrder();
    *__sz = 0u;
    v150 = 0u;
    v151 = 1.0;
    v35 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v182, v8, this + 4);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(v142, v35);
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(__sz, vcvtps_u32_f32(((v142[1] - v142[0]) >> 5) / v151));
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v182, this);
    v36 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
    if ((*v36 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v36 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, EmptyString, EmptyString);
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexCountsAttr(&v182, this);
    v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
    if ((*v38 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v39 = ((*v38 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v39, v39);
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(&v182, this);
    v40 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
    if ((*v40 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v41 = ((*v40 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v41 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v41, v41);
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v139 = a4;
    v164 = 0;
    v161 = MEMORY[0x277D86790] + 16;
    MEMORY[0x24C1A5DE0](&v157, "primvars:normals");
    LODWORD(v175) = 3;
    v176 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v179 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::HasPrimvar(&v161, &v157))
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(&v182, &v161, &v157);
      LODWORD(v175) = v182;
      v42 = v183;
      if (v183)
      {
        atomic_fetch_add_explicit((v183 + 48), 1uLL, memory_order_relaxed);
      }

      if (v176)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
      }

      v176 = v42;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v177, &v184);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v178, &v185);
      pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v179, &v186);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v175))
      {
        v43 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v175);
        if ((*v43 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v44 = ((*v43 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v44, v44);
        v45 = atomic_load(MEMORY[0x277D86550]);
        if (!v45)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
        }

        if (realityio::addUsdAttributeToGeomModelDescriptor(*v148, &v175, "vertexNormal", (v45 + 1232)))
        {
          v46 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
          if ((*v46 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v46);
          }

          REGeomModelDescriptorAddAttributeAlias();
        }
      }

      if ((v187 & 7) != 0)
      {
        atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v186 & 7) != 0)
      {
        atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
      if (v183)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v175) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsAttr(&v182, this);
      LODWORD(v175) = v182;
      if (v176)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
      }

      v176 = v183;
      v183 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v177, &v184);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v178, &v185);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v179 = v186;
      v186 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
      if (v183)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
      }

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v175))
      {
        v47 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v175);
        if ((*v47 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v48 = ((*v47 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v48 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v47);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v48, v48);
        v49 = *v148;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(&v182, this);
        v50 = realityio::addUsdAttributeToGeomModelDescriptor(v49, &v175, "vertexNormal", &v182);
        if ((v182 & 7) != 0)
        {
          atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v50)
        {
          v51 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v175);
          if ((*v51 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v51);
          }

          REGeomModelDescriptorAddAttributeAlias();
        }
      }
    }

    if ((v179 & 7) != 0)
    {
      atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v177);
    if (v176)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
    }

    if ((v157 & 7) != 0)
    {
      atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    LODWORD(v182) = 3;
    v183 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v186 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v175, &v161);
    v53 = v175;
    for (i = v176; v53 != i; v53 += 6)
    {
      if ((realityio::isTexCoord2(v53, v52) & 1) != 0 || realityio::isScalar2(v53, v55))
      {
        if ((*a2 ^ *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v53)) <= 7)
        {
          LODWORD(v182) = *v53;
          v57 = v53[1];
          if (v57)
          {
            atomic_fetch_add_explicit((v57 + 48), 1uLL, memory_order_relaxed);
          }

          if (v183)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
          }

          v183 = v57;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v184, v53 + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v185, v53 + 5);
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v186, v53 + 3);
          break;
        }

        if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v182) & 1) == 0)
        {
          LODWORD(v182) = *v53;
          v56 = v53[1];
          if (v56)
          {
            atomic_fetch_add_explicit((v56 + 48), 1uLL, memory_order_relaxed);
          }

          if (v183)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
          }

          v183 = v56;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v184, v53 + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v185, v53 + 5);
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v186, v53 + 3);
        }
      }
    }

    v157 = &v175;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v157);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v182))
    {
      v58 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
      if ((*v58 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v59 = ((*v58 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v59 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v58);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v59, v59);
      v60 = atomic_load(MEMORY[0x277D86550]);
      if (!v60)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      if (realityio::addUsdAttributeToGeomModelDescriptor(*v148, &v182, "vertexUV", (v60 + 136)))
      {
        v61 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
        if ((*v61 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v61);
        }

        REGeomModelDescriptorAddAttributeAlias();
      }
    }

    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    v62 = atomic_load(MEMORY[0x277D86550]);
    v63 = v140;
    if (!v62)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    if ((*(v62 + 106) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v64 = ((*(v62 + 106) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v64 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v62);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v64, v64);
    v65 = atomic_load(MEMORY[0x277D86550]);
    if (!v65)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    if ((*(v65 + 107) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v66 = ((*(v65 + 107) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v66 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v65);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v66, v66);
    v67 = *v148;
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorPrimvar(&v182, this);
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayOpacityPrimvar(&v175, this);
    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
    {
      HasValue = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v182);
    }

    else
    {
      HasValue = 0;
    }

    if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
    {
      v69 = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v175);
    }

    else
    {
      v69 = 0;
    }

    if (((HasValue | v69) & 1) == 0)
    {
      goto LABEL_287;
    }

    if (HasValue)
    {
      v70 = atomic_load(MEMORY[0x277D86550]);
      if (!v70)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      v138 = realityio::addUsdAttributeToGeomModelDescriptor(v67, &v182, 0, (v70 + 136));
    }

    else
    {
      v138 = 0;
    }

    if (v69)
    {
      v71 = atomic_load(MEMORY[0x277D86550]);
      if (!v71)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      v72 = realityio::addUsdAttributeToGeomModelDescriptor(v67, &v175, 0, (v71 + 136));
    }

    else
    {
      v72 = 0;
    }

    if (((v138 | v72) & 1) == 0)
    {
      goto LABEL_287;
    }

    if (v138)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v157, &v182);
      v74 = realityio::meshAttributeRateForInterpolation(&v157, v73);
      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v74 = 255;
    }

    if (v72)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v157, &v175);
      v76 = realityio::meshAttributeRateForInterpolation(&v157, v75);
      v77 = v76;
      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v138)
      {
        v137 = 1;
        if (v76 != v74)
        {
          goto LABEL_230;
        }

        v78 = v74;
        if (v76 == 2)
        {
          goto LABEL_230;
        }
      }

      else
      {
        v78 = v76;
        if (v76 == 2)
        {
          v137 = 1;
          goto LABEL_230;
        }
      }
    }

    else
    {
      v78 = 255;
    }

    v80 = (v74 & 0xFE) == 2 || v78 == 3;
    v137 = v80;
    v77 = v78;
LABEL_230:
    LODWORD(v83) = REGeomModelDescriptorGetIndexCount();
    FaceCount = REGeomModelDescriptorGetFaceCount();
    v135 = v74;
    VertexCount = REGeomModelDescriptorGetVertexCount();
    v82 = FaceCount;
    LODWORD(v153) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v157, FaceCount, &v153);
    v83 = v83;
    LODWORD(v172) = -1;
    std::vector<unsigned int>::vector[abi:ne200100](&v153, v83, &v172);
    REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
    REGeomModelDescriptorGetIndices();
    v84 = VertexCount;
    v85 = v135;
    if (!v138)
    {
      v85 = v77;
    }

    if (v137)
    {
      v85 = 3;
    }

    if (v85 != 1)
    {
      v84 = 1;
    }

    v134 = v85;
    if (v85 != 3)
    {
      v83 = v84;
    }

    v172 = 0;
    v173 = 0;
    v174 = 0;
    if (v83)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(&v172, v83);
    }

    LODWORD(v168) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v170, FaceCount, &v168);
    if (FaceCount)
    {
      v86 = 0;
      v87 = v157;
      v88 = v170;
      do
      {
        v89 = *v87++;
        v86 += v89;
        *v88++ = v86;
        --v82;
      }

      while (v82);
    }

    v63 = v140;
    if (v72)
    {
      v90 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v175);
      if ((*v90 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v90);
      }

      if (REGeomModelDescriptorGetAttributeIndex() == -1)
      {
        goto LABEL_279;
      }

      AttributeValueCount = REGeomModelDescriptorGetAttributeValueCount();
      std::vector<float>::vector[abi:ne200100](&v168, AttributeValueCount);
      memset(&v167, 0, sizeof(v167));
      REGeomModelDescriptorGetAttributeValuesFloat();
      if (REGeomModelDescriptorIsAttributeIndexed())
      {
        AttributeIndexCount = REGeomModelDescriptorGetAttributeIndexCount();
        std::vector<int>::resize(&v167, AttributeIndexCount);
        REGeomModelDescriptorGetAttributeIndices();
        v93 = &v167;
      }

      else
      {
        v93 = 0;
      }

      if (v137)
      {
        realityio::makeFaceVertexIndexList(&v165, VertexCount, &v170, &v153, v77, v93);
      }

      else
      {
        realityio::makeValueLookupByIndex(&v165, VertexCount, v170, v171, v153, v154, v77, v93);
      }

      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      if (v167.__begin_)
      {
        v167.__end_ = v167.__begin_;
        operator delete(v167.__begin_);
      }

      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }
    }

    if (v138)
    {
      v94 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v182);
      if ((*v94 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v94);
      }

      if (REGeomModelDescriptorGetAttributeIndex() == -1)
      {
        goto LABEL_279;
      }

      v95 = REGeomModelDescriptorGetAttributeValueCount();
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v168, v95);
      memset(&v167, 0, sizeof(v167));
      REGeomModelDescriptorGetAttributeValuesVector3F();
      if (REGeomModelDescriptorIsAttributeIndexed())
      {
        v96 = REGeomModelDescriptorGetAttributeIndexCount();
        std::vector<int>::resize(&v167, v96);
        REGeomModelDescriptorGetAttributeIndices();
        v97 = &v167;
      }

      else
      {
        v97 = 0;
      }

      if (v137)
      {
        realityio::makeFaceVertexIndexList(&v165, VertexCount, &v170, &v153, v135, v97);
      }

      else
      {
        realityio::makeValueLookupByIndex(&v165, VertexCount, v170, v171, v153, v154, v135, v97);
      }

      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      if (v167.__begin_)
      {
        v167.__end_ = v167.__begin_;
        operator delete(v167.__begin_);
      }

      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }
    }

    MEMORY[0x24C1A3810](v67, "vertexColor", v134, (v173 - v172) >> 4);
LABEL_279:
    if (v170)
    {
      v171 = v170;
      operator delete(v170);
    }

    if (v172)
    {
      v173 = v172;
      operator delete(v172);
    }

    if (v153)
    {
      v154 = v153;
      operator delete(v153);
    }

    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }

LABEL_287:
    if ((v180 & 7) != 0)
    {
      atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v179 & 7) != 0)
    {
      atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v177);
    if (v176)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
    }

    if ((v187 & 7) != 0)
    {
      atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v182, v8, this + 4);
    pxrInternal__aapl__pxrReserved__::UsdSkelRoot::Find();
    if (!v176 || (*(v176 + 57) & 8) != 0)
    {
      v98 = 0;
    }

    else
    {
      v98 = (v175[4])(&v175);
    }

    MEMORY[0x24C1A4DE0](&v175);
    if ((v186 & 7) != 0)
    {
      atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v184);
    if (v183)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v183);
    }

    if (v98)
    {
      v100 = MEMORY[0x277D86558];
      v101 = atomic_load(MEMORY[0x277D86558]);
      if (!v101)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v101 + 6) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v102 = ((*(v101 + 6) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v102 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v101);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v102, v102);
      v103 = atomic_load(v100);
      if (!v103)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v103 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v104 = ((*(v103 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v104 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v103);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v104, v104);
      v105 = atomic_load(v100);
      if (!v105)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v105 + 20) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v106 = ((*(v105 + 20) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v106 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v105);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v106, v106);
      v107 = atomic_load(v100);
      if (!v107)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v107 + 23) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v108 = ((*(v107 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v108 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v107);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v108, v108);
      v109 = atomic_load(v100);
      if (!v109)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v109 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v110 = ((*(v109 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v110 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v109);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v110, v110);
      v111 = atomic_load(v100);
      if (!v111)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v111 + 11) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v112 = ((*(v111 + 11) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v112 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v111);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v112, v112);
      v113 = atomic_load(v100);
      if (!v113)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v113 + 12) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v114 = ((*(v113 + 12) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v114 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v113);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v114, v114);
      v115 = atomic_load(v100);
      if (!v115)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData(MEMORY[0x277D86558]);
      }

      if ((*(v115 + 10) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v116 = ((*(v115 + 10) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v116 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v115);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v116, v116);
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v175, v8, this + 4);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v186 = 0;
      v182 = MEMORY[0x277D86780] + 16;
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v177);
      if (v176)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
      }

      pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v157, &v182);
      v117 = *v148;
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v175, v8, this + 4);
      realityio::addSkeletonJointBindingsToModelDescriptor(v117, &v182, &v157, &v175);
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v177);
      if (v176)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v176);
      }

      MEMORY[0x24C1A53A0](&v157);
      MEMORY[0x24C1A5620](&v182);
    }

    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v182, &v161);
      v118 = v182;
      v119 = v183;
      while (v118 != v119)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() && ((realityio::isTexCoord2(v118, v120) & 1) != 0 || realityio::isTexCoord3(v118, v121)))
        {
          v122 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v118);
          v123 = ((*v122 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v122 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122));
          if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(__sz, v123))
          {
            v124 = atomic_load(MEMORY[0x277D86550]);
            if (!v124)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
            }

            realityio::addUsdAttributeToGeomModelDescriptor(*v148, v118, 0, (v124 + 136));
            v125 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v118);
            if ((*v125 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v126 = ((*v125 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v126 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v125);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v126, v126);
          }
        }

        v118 = (v118 + 48);
      }

      v175 = &v182;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v175);
    }

    if ((realityio::isCatmullClarkSurface(this, v99) & a5) == 1)
    {
      realityio::addOpenSubdivDataToModelDescriptor(*v148, this);
    }

    if (v139)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvarsWithAuthoredValues(&v182, &v161);
      v127 = v182;
      v128 = v183;
      while (v127 != v128)
      {
        if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar())
        {
          v129 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v127);
          v130 = ((*v129 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v129 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v129));
          if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(__sz, v130))
          {
            v131 = atomic_load(MEMORY[0x277D86550]);
            if (!v131)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
            }

            realityio::addUsdAttributeToGeomModelDescriptor(*v148, v127, 0, (v131 + 136));
            v132 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v127);
            if ((*v132 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v133 = ((*v132 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v133 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v132);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(__sz, v133, v133);
          }
        }

        v127 = (v127 + 48);
      }

      v175 = &v182;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar>::__destroy_vector::operator()[abi:ne200100](&v175);
    }

    *a6 = *v148;
    *v148 = 0;
    MEMORY[0x24C1A56A0](&v161);
    v182 = v142;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v182);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__sz);
    if ((v63 & 7) != 0)
    {
      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_47;
  }

  *a6 = 0;
LABEL_47:
  if (v143.__begin_)
  {
    v143.__end_ = v143.__begin_;
    operator delete(v143.__begin_);
  }

  if (v144.__begin_)
  {
    v144.__end_ = v144.__begin_;
    operator delete(v144.__begin_);
  }

  if (__p)
  {
    v146 = __p;
    operator delete(__p);
  }

  return realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v148);
}

void sub_24757CA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52)
{
  if (__p)
  {
    a52 = __p;
    operator delete(__p);
  }

  v53 = *(v51 - 256);
  if (v53)
  {
    *(v51 - 248) = v53;
    operator delete(v53);
  }

  v54 = *(v51 - 232);
  if (v54)
  {
    *(v51 - 224) = v54;
    operator delete(v54);
  }

  v55 = *(v51 - 208);
  if (v55)
  {
    *(v51 - 200) = v55;
    operator delete(v55);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar((v51 - 184));
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar((v51 - 136));
  MEMORY[0x24C1A56A0](&a44);
  a44 = &a16;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a44);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a30);
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&a28);
  _Unwind_Resume(a1);
}

void realityio::approximateGeomFromUsdGeomMesh(realityio *this@<X0>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v8, this);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

uint64_t realityio::addAttributeFromUsdSkelBlendShape(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *a2, *(a2 + 8));
  }

  else
  {
    v62 = *a2;
  }

  std::string::append(&v62, "|blendTargetPosDeltas");
  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetOffsetsAttr(&v58, a3);
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v58) & 1) == 0)
  {
    v9 = 0;
    goto LABEL_54;
  }

  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetPointIndicesAttr(&v54, a3);
  if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v54))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v58);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&TypeName);
    v5 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_15;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_15;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_15:
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v58, v79);
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v54, v75);
      v9 = 0;
      if (v79[0] == 1 && (v75[0] & 1) != 0)
      {
        v72 = v80;
        v73 = v81;
        v74 = v82;
        if (v82)
        {
          v10 = &v82[-1];
          if (*(&v73 + 1))
          {
            v10 = *(&v73 + 1);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        v69 = v76;
        v70 = v77;
        v71 = v78;
        if (v78)
        {
          v11 = (v78 - 16);
          if (*(&v70 + 1))
          {
            v11 = *(&v70 + 1);
          }

          atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
        }

        v12 = v69;
        VertexCount = REGeomModelDescriptorGetVertexCount();
        v9 = 0;
        if (v12 <= VertexCount && v72 == v12)
        {
          __p = 0;
          v67 = 0;
          v68 = 0;
          memset(&v65, 0, sizeof(v65));
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v12 + 1);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v72);
          v15 = __p;
          if (v72)
          {
            v16 = v74;
            v17 = 12 * v72;
            do
            {
              *&v14 = v16->f64[0];
              DWORD2(v14) = LODWORD(v16->f64[1]);
              *v15++ = v14;
              v16 = (v16 + 12);
              v17 -= 12;
            }

            while (v17);
            v15 = __p;
          }

          __x = (v67 - v15) >> 4;
          v63 = 0u;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v63);
          std::vector<unsigned int>::resize(&v65, VertexCount, &__x);
          v18 = v69;
          if (v69)
          {
            v19 = 0;
            v20 = v71;
            v21 = 1;
            begin = v65.__begin_;
            while (1)
            {
              v9 = 0;
              v23 = *(v20 + 4 * v19);
              if ((v23 & 0x80000000) != 0 || v23 >= VertexCount)
              {
                break;
              }

              v24 = v21 - 1;
              v19 = v21;
              v25 = v18 > v21++;
              begin[v23] = v24;
              if (!v25)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            v9 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          }

          if (v65.__begin_)
          {
            v65.__end_ = v65.__begin_;
            operator delete(v65.__begin_);
          }

          if (__p)
          {
            v67 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v72);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v75);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v79);
      goto LABEL_50;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_70;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_70;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_70:
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(v79, &v58);
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v54, v75);
      v9 = 0;
      if (v79[0] == 1 && (v75[0] & 1) != 0)
      {
        v72 = v80;
        v73 = v81;
        v74 = v82;
        if (v82)
        {
          v34 = &v82[-1];
          if (*(&v73 + 1))
          {
            v34 = *(&v73 + 1);
          }

          atomic_fetch_add_explicit(v34, 1uLL, memory_order_relaxed);
        }

        v69 = v76;
        v70 = v77;
        v71 = v78;
        if (v78)
        {
          v35 = (v78 - 16);
          if (*(&v70 + 1))
          {
            v35 = *(&v70 + 1);
          }

          atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
        }

        v36 = v69;
        v37 = REGeomModelDescriptorGetVertexCount();
        v9 = 0;
        if (v36 <= v37 && v72 == v36)
        {
          __p = 0;
          v67 = 0;
          v68 = 0;
          memset(&v65, 0, sizeof(v65));
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v36 + 1);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v72);
          v38 = __p;
          if (v72)
          {
            v39 = v74;
            v40 = (v74 + 24 * v72);
            do
            {
              v41 = *v39;
              *&v41.f64[0] = vcvt_f32_f64(*v39);
              v42 = v39[1].f64[0];
              *&v41.f64[1] = v42;
              *v38++ = v41;
              v39 = (v39 + 24);
            }

            while (v39 != v40);
            v38 = __p;
          }

          __x = (v67 - v38) >> 4;
          v63 = 0u;
          _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v63);
          std::vector<unsigned int>::resize(&v65, v37, &__x);
          v43 = v69;
          if (v69)
          {
            v44 = 0;
            v45 = v71;
            v46 = 1;
            v47 = v65.__begin_;
            while (1)
            {
              v9 = 0;
              v48 = *(v45 + 4 * v44);
              if ((v48 & 0x80000000) != 0 || v48 >= v37)
              {
                break;
              }

              v49 = v46 - 1;
              v44 = v46;
              v25 = v43 > v46++;
              v47[v48] = v49;
              if (!v25)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
LABEL_91:
            v9 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          }

          if (v65.__begin_)
          {
            v65.__end_ = v65.__begin_;
            operator delete(v65.__begin_);
          }

          if (__p)
          {
            v67 = __p;
            operator delete(__p);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v72);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v75);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(v79);
      goto LABEL_50;
    }

    if (!atomic_load(v5))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
    {
      if (!atomic_load(v5))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
      }

      if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
      {
        if (!atomic_load(v5))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
        }

        if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v9 = 0;
          goto LABEL_50;
        }
      }
    }

    v29 = _ZN9realityio29addIndexedBlendShapeAttributeIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERKNS1_12UsdAttributeESH_(*a1, &v62, &v58, &v54);
  }

  else
  {
    v26 = *a1;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v62;
    }

    else
    {
      v27 = v62.__r_.__value_.__r.__words[0];
    }

    v28 = atomic_load(MEMORY[0x277D86550]);
    if (!v28)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    v29 = realityio::addUsdAttributeToGeomModelDescriptor(v26, &v58, v27, (v28 + 1232));
  }

  v9 = v29;
LABEL_50:
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
  if (v55)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v55);
  }

LABEL_54:
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
  if (v59)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_24757E29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a36);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v36 - 192);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v36 - 144);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(v36 - 96);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a11);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a15);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio29addIndexedBlendShapeAttributeIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERKNS1_12UsdAttributeESH_(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this, pxrInternal__aapl__pxrReserved__::UsdObject *a4)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(v39, this);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a4, v35);
  v5 = 0;
  if (v39[0] == 1 && (v35[0] & 1) != 0)
  {
    v32 = v40;
    v33 = v41;
    v34 = v42;
    if (v42)
    {
      v6 = (v42 - 8);
      if (*(&v33 + 1))
      {
        v6 = *(&v33 + 1);
      }

      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    v29 = v36;
    v30 = v37;
    v31 = v38;
    if (v38)
    {
      v7 = (v38 - 16);
      if (*(&v30 + 1))
      {
        v7 = *(&v30 + 1);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    VertexCount = REGeomModelDescriptorGetVertexCount();
    v5 = 0;
    if (v29 <= VertexCount && v32 == v29)
    {
      __p = 0;
      v27 = 0;
      v28 = 0;
      memset(&v25, 0, sizeof(v25));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, v29 + 1);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, v32);
      v10 = __p;
      if (v32)
      {
        v11 = v34;
        v12 = &v34[3 * v32];
        v13 = MEMORY[0x277D86658];
        do
        {
          LODWORD(v9) = *(v13 + 4 * *v11);
          DWORD1(v9) = *(v13 + 4 * v11[1]);
          DWORD2(v9) = *(v13 + 4 * v11[2]);
          *v10++ = v9;
          v11 += 3;
        }

        while (v11 != v12);
        v10 = __p;
      }

      __x = (v27 - v10) >> 4;
      v23 = 0u;
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(&__p, &v23);
      std::vector<unsigned int>::resize(&v25, VertexCount, &__x);
      v14 = v29;
      if (v29)
      {
        v15 = 0;
        v16 = v31;
        v17 = 1;
        begin = v25.__begin_;
        while (1)
        {
          v5 = 0;
          v19 = *(v16 + 4 * v15);
          if ((v19 & 0x80000000) != 0 || v19 >= VertexCount)
          {
            break;
          }

          v20 = v17 - 1;
          v15 = v17;
          v21 = v14 > v17++;
          begin[v19] = v20;
          if (!v21)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        v5 = REGeomModelDescriptorAddIndexedAttributeVector3F();
      }

      if (v25.__begin_)
      {
        v25.__end_ = v25.__begin_;
        operator delete(v25.__begin_);
      }

      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v32);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v35);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(v39);
  return v5;
}

void sub_24757E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v24 - 144);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(v24 - 96);
  _Unwind_Resume(a1);
}

double std::__optional_storage_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (a1 != a2)
    {
      if (*(a1 + 40))
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
        v4 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v4;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = 0;
      }
    }
  }

  else if (*(a1 + 40))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
    *(a1 + 40) = 0;
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery::~UsdSkelSkinningQuery(pxrInternal__aapl__pxrReserved__::UsdSkelSkinningQuery *this)
{
  std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](this + 352);
  std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](this + 304);
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 33);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 256);
  v5 = *(this + 31);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  v6 = *(this + 29);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 224);
  v7 = *(this + 27);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  v8 = *(this + 25);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 192);
  v9 = *(this + 23);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  v10 = *(this + 21);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 160);
  v11 = *(this + 19);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  v12 = *(this + 16);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 112);
  v14 = *(this + 13);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  v15 = *(this + 10);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 9);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 64);
  v17 = *(this + 7);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  v18 = *(this + 5);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v20 = *(this + 1);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
  }
}

uint64_t std::__optional_destruct_base<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,false>::~__optional_destruct_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
  }

  return a1;
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24757EB84(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v36.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(&v36))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(&v36);
        v7 = *(v6 + 8);
        *a3 = 1;
        *(a3 + 8) = *v6;
        *(a3 + 16) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3f>(&v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(v14);
          v16 = *(v15 + 8);
          *a3 = 1;
          *(a3 + 8) = *v15;
          *(a3 + 16) = v16;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v27 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v27;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v27) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v27;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v25 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v25;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v25) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v25;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v36);
        return;
      }

      v24 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v17 = std::string::append(&v29, ") at the given time: ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v28;
      }

      else
      {
        v19 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v35, v19, size);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v31 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v23 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v23;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v23) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v23;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v24 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v24);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24757EFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24757F1D0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(&v41);
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
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v17);
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

void sub_24757F67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(uint64_t a1)
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

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24757FC10(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
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
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v58))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v58);
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
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v58))
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
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(&v56);
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

void sub_2475802AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v36.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>(&v36))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(&v36);
        v7 = *(v6 + 16);
        *a3 = 1;
        *(a3 + 8) = *v6;
        *(a3 + 24) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3d>(&v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(v14);
          v16 = *(v15 + 16);
          *a3 = 1;
          *(a3 + 8) = *v15;
          *(a3 + 24) = v16;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v27 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v27;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v27) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v27;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v25 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v25;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v25) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v25;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v36);
        return;
      }

      v24 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v17 = std::string::append(&v29, ") at the given time: ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v28;
      }

      else
      {
        v19 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v35, v19, size);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v31 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v23 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v23;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v23) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v23;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v24 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v24);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247580778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(uint64_t a1)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
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
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v58))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v58);
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
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v58))
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
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(&v56);
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

void sub_2475811EC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(uint64_t a1)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247581824(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(&v41);
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
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v17);
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

void sub_247581CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(uint64_t a1)
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

void realityio::getAttributeValue<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<int>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247582510(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v34.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(&v34))
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(&v34);
        *a3 = 1;
        *(a3 + 8) = v6;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v34);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v11))
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<int>(&v34);
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v33, v12);
        if (v33.__r_.__value_.__l.__size_)
        {
          v14 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v13);
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
        goto LABEL_38;
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
LABEL_38:
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
        goto LABEL_38;
      }

      v22 = v27.__r_.__value_.__r.__words[0];
    }

    operator delete(v22);
    goto LABEL_38;
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

void sub_247582934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back<int>(uint64_t *a1, _DWORD *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (a1[3])
    {
      goto LABEL_14;
    }

    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v5 = a1[4];
    if (v5)
    {
      if (a1[3])
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
      *(v5 + 4 * v4) = *a2;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_14:
    v9 = a1[4];
    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v4 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, v11);
    v13 = New;
    if (v4)
    {
      v14 = 4 * v4;
      v15 = New;
      do
      {
        v16 = *v9++;
        *v15++ = v16;
        v14 -= 4;
      }

      while (v14);
    }

    *(New + v4) = *a2;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    a1[4] = v13;
    goto LABEL_13;
  }

  v18[0] = "vt/array.h";
  v18[1] = "emplace_back";
  v18[2] = 416;
  v18[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back(Args &&...) [T = int, Args = <int>]";
  v19 = 0;
  if (*(a1 + 3))
  {
    if (*(a1 + 4))
    {
      v17 = 4;
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v17 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Array rank %u != 1", v17);
}

void realityio::getAttributeValue<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<unsigned int>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247582CB4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247582EA4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v34.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(&v34))
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(&v34);
        *a3 = 1;
        *(a3 + 8) = v6;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v34);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v11))
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned int>(&v34);
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v33, v12);
        if (v33.__r_.__value_.__l.__size_)
        {
          v14 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(v13);
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
        goto LABEL_38;
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
LABEL_38:
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
        goto LABEL_38;
      }

      v22 = v27.__r_.__value_.__r.__words[0];
    }

    operator delete(v22);
    goto LABEL_38;
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

void sub_2475832C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(&v41);
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
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v17);
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

void sub_24758379C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(uint64_t a1)
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

void realityio::getAttributeValue<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<unsigned char>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247583C2C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247583E1C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v34.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned char>(&v34))
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(&v34);
        *a3 = 1;
        *(a3 + 8) = v6;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v34);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B8], v11))
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned char>(&v34);
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v33, v12);
        if (v33.__r_.__value_.__l.__size_)
        {
          v14 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(v13);
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
        goto LABEL_38;
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
LABEL_38:
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
        goto LABEL_38;
      }

      v22 = v27.__r_.__value_.__r.__words[0];
    }

    operator delete(v22);
    goto LABEL_38;
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

void sub_247584240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(&v41);
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
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v17);
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

void sub_247584714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back<float>(uint64_t *a1, _DWORD *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (a1[3])
    {
      goto LABEL_14;
    }

    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v5 = a1[4];
    if (v5)
    {
      if (a1[3])
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
      *(v5 + 4 * v4) = *a2;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_14:
    v9 = a1[4];
    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v4 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(a1, v11);
    v13 = New;
    if (v4)
    {
      v14 = 4 * v4;
      v15 = New;
      do
      {
        v16 = *v9++;
        *v15++ = v16;
        v14 -= 4;
      }

      while (v14);
    }

    *(New + v4) = *a2;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    a1[4] = v13;
    goto LABEL_13;
  }

  v18[0] = "vt/array.h";
  v18[1] = "emplace_back";
  v18[2] = 416;
  v18[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back(Args &&...) [T = float, Args = <float>]";
  v19 = 0;
  if (*(a1 + 3))
  {
    if (*(a1 + 4))
    {
      v17 = 4;
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v17 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Array rank %u != 1", v17);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247584D0C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<double>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(&v41);
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
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<double>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v17);
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