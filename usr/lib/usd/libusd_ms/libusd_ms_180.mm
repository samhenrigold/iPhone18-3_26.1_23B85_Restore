void sub_29AF88388(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF883B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF883E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6E28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF88420(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6E50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF88494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF884BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF884EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6EA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF8852C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A6EC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF88584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF885A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF885C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF885F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A6F18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::UsdImagingDataSourcePrimvars(uint64_t a1, _DWORD *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *a4, uint64_t a5)
{
  *a1 = &unk_2A20A6F40;
  v10 = (a1 + 12);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240(v10, a2 + 1);
  *(a1 + 16) = *a3;
  v11 = *(a3 + 8);
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v12 = *(a3 + 24);
  *(a1 + 40) = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = a5;
  *(a1 + 72) = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetAuthoredPrimvars(a4);
}

void sub_29AF88880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a14 = &a9;
  sub_29A7A3864(&a14);
  sub_29AF8A488(v16, *(v14 + 64));
  sub_29A57F434(v15);
  sub_29A1DCEA8((v14 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::_GetPrefixedName(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X8>)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  std::operator+<char>();
  if (v5 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2, p_p);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AF88974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A1D7F98(a2, *(this + 9));
  v4 = *(this + 7);
  if (v4 != (this + 64))
  {
    do
    {
      sub_29A1D8028(a2, v4 + 4);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 64));
  }

  sub_29A008E78(__p, "primvars:");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(this + 2, __p, v16);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16[0] != v16[1])
  {
    v8 = v16[0] + 16;
    LODWORD(__p[0]) = *v16[0];
    v9 = *(v16[0] + 1);
    __p[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v13, v8);
    sub_29A1E2240(&v14, v8 + 1);
    v10 = *(v8 + 1);
    v15 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    Overlay::UsdProperty_As(__p, &v11);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11);
  }

  __p[0] = v16;
  sub_29A58C74C(__p);
}

void sub_29AF88BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A124AB0(&__p);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29A31B8F0(this + 56, a2);
  if ((this + 64) == v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvars::_GetPrefixedName(a2, &v19);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship((this + 16), &v19, v18);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v18);
  }

  v7 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(&v19, (v6 + 40));
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(v8))
  {
    v9 = *(this + 6);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndicesAttr((v7 + 40), v17);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v18, v17);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation((v7 + 40), &v14);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolationToken(&v14, &v15);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource(&v16, &v15);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName((v7 + 40), &v11);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(&v12, &v11);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource(&v13, &v12);
    sub_29AF89154(this + 8, a2, v9, &v19, v18, &v16, &v13);
  }

  *a3 = 0;
  a3[1] = 0;
  return sub_29A5896C0(&v19);
}

void sub_29AF88FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  v23 = *(v21 - 184);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29ABEF2C0((v21 - 176));
  sub_29A5B6480(va);
  _Unwind_Resume(a1);
}

void sub_29AF89154(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v15 = operator new(0x120uLL);
  sub_29A589860(v21, a4);
  sub_29A589860(v20, a5);
  v16 = a6[1];
  v19[0] = *a6;
  v19[1] = v16;
  *a6 = 0;
  a6[1] = 0;
  v17 = a7[1];
  v18[0] = *a7;
  v18[1] = v17;
  *a7 = 0;
  a7[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::UsdImagingDataSourcePrimvar(v15, a1, a2, a3, v21, v20, v19, v18);
}

void sub_29AF89254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A5896C0(&a13);
  sub_29A5896C0(va);
  if (v30)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void *sub_29AF89294@<X0>(const pxrInternal__aapl__pxrReserved__::UsdRelationship *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::UsdImagingDataSourceRelationship(v6, a1, a2);

  return sub_29AF8258C(a3, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::UsdImagingDataSourceCustomPrimvars(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  *a1 = &unk_2A20A6F70;
  v10 = (a1 + 12);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240(v10, a2 + 1);
  *(a1 + 16) = *a3;
  v11 = *(a3 + 8);
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), (a3 + 16));
  sub_29A1E2240((a1 + 36), (a3 + 20));
  v12 = *(a3 + 24);
  *(a1 + 40) = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = a5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29AF71768((a1 + 56), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * (a4[1] - *a4));
  return a1;
}

void sub_29AF89414(_Unwind_Exception *a1)
{
  sub_29A57F434(v2);
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
  v5 = *(this + 7);
  v6 = *(this + 8);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_29AF894B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Get@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 == v4)
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = this;
    while ((*a2 ^ *v5) > 7)
    {
      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v22, (this + 16), (v5 + 1));
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v21, &v22);
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(v21))
    {
      v8 = *(v7 + 6);
      pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v20);
      v9 = v5[2];
      if (v9)
      {
        v18 = v5[2];
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v18 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v27 = 0;
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v10)
        {
          v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v17 = 0;
        v11 = sub_29A5809FC(&v22, (v10 + 488), &v27, &v17);
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolationToken(&v27, &v18);
        }

        else
        {
          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v12)
          {
            v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          v13 = *(v12 + 9);
          v18 = v13;
          if ((v13 & 7) != 0)
          {
            v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
            {
              v18 = v14;
            }
          }
        }

        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource(&v19, &v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(&v22, &v16);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(&v27, &v16);
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource(&v17, &v27);
      sub_29AF89154(v7 + 8, a2, v8, v21, v20, &v19, &v17);
    }

    *a3 = 0;
    a3[1] = 0;
    sub_29A5896C0(v21);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
    sub_29A1DE3A4(&v24);
    this = v23;
    if (v23)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v15);
    }
  }

  return this;
}

void sub_29AF89788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  v34 = *(v32 - 56);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(&a16);
  sub_29A5896C0(va);
  sub_29A5888DC(v32 - 88);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Invalidate(uint64_t a1@<X0>, uint64_t *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  v17[7] = *MEMORY[0x29EDCA608];
  *(a3 + 56) = 0x800000000;
  v15 = 0u;
  v16 = 0u;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v7 = sub_29AF899B8(&v15, (v5 + 8));
    sub_29A166F2C(v7, v5);
    v5 += 24;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  while (v8 != v9)
  {
    v10 = sub_29A161380(&v15, v8);
    v11 = v10;
    if (*(&v15 + 1) != v10)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v10);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, DefaultLocator, v11 + 1);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, v17);
      sub_29ABC3488(v17);
    }

    ++v8;
  }

  v13 = *(&v16 + 1);
  *(&v16 + 1) = 0;
  if (v13)
  {
    v14 = sub_29A155EF4(v13);
    operator delete(v14);
  }

  v17[0] = &v15;
  sub_29A40DADC(v17);
}

void sub_29AF89984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29ABC3488(va);
  sub_29AF89A6C(&a9);
  sub_29ABD3178(v12);
}

void *sub_29AF899B8(void *a1, atomic_uint **a2)
{
  v2 = *a2;
  v6 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v3;
    }
  }

  v7 = 0;
  v4 = sub_29AF8A794(a1, &v6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4 + 1;
}

void sub_29AF89A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF89A6C(uint64_t a1)
{
  sub_29A1601D8((a1 + 24), 0);
  v3 = a1;
  sub_29A40DADC(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::UsdImagingDataSourcePrimvar(void *a1, uint64_t a2, atomic_uint **a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a5, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A20A6FA0;
  a1[1] = a4;
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 2), a5);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 17), a6);
  a1[32] = *a7;
  v12 = a7[1];
  a1[33] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  a1[34] = *a8;
  v13 = a8[1];
  a1[35] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute((a1 + 17));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v14);
}

void sub_29AF89D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29ABC3488(&a9);
  v11 = *(v9 + 35);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v9 + 33);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  sub_29A5896C0(v9 + 136);
  sub_29A5896C0(v9 + 16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrimvar *this)
{
  v3 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute((this + 136));
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v2);
}

void sub_29AF89FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8A1F0(uint64_t a1)
{
  sub_29AF8A338(a1);

  operator delete(v1);
}

void sub_29AF8A21C(uint64_t a1)
{
  sub_29AF8A3E0(a1);

  operator delete(v1);
}

void sub_29AF8A244(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6FA0;
  v2 = *(a1 + 35);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 33);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A5896C0(a1 + 136);
  sub_29A5896C0(a1 + 16);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8A2BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A6FA0;
  v2 = *(a1 + 35);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 33);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A5896C0(a1 + 136);
  sub_29A5896C0(a1 + 16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v4);
}

void sub_29AF8A338(uint64_t a1)
{
  *a1 = &unk_2A20A6F40;
  sub_29AF8A488(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8A3E0(uint64_t a1)
{
  *a1 = &unk_2A20A6F70;
  v5 = (a1 + 56);
  sub_29AC1C990(&v5);
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8A488(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AF8A488(a1, *a2);
    sub_29AF8A488(a1, a2[1]);
    sub_29AF8A4E4((a2 + 4));

    operator delete(a2);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AF8A4E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  result = *(a1 + 16);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *sub_29AF8A56C(uint64_t ***a1, uint64_t *a2, uint64_t a3, void **a4, uint64_t a5)
{
  v7 = sub_29A153CF4(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AF8A604(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

_DWORD *sub_29AF8A604@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  v6[4] = **a2;
  *v7 = 0;
  *(v6 + 10) = 3;
  v6[6] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v6 + 14);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v6 + 15);
  v6[8] = 0;
  v6[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AF8A688(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7018;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8A6E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8A6FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8A724(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8A754(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7068))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF8A794(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 4;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = v6;
    v13 = v5;
    v7 = sub_29A162678(v4, &v12, &v12);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 16 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 2;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    sub_29A3AA17C(&v12, a2, a2 + 1);
    sub_29AF8A930(a1, &v12);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v11 = a1[1];
    if ((v11 - *a1) >= 0x7F1)
    {
      sub_29AF8AB90(a1);
      v11 = a1[1];
    }

    return (v11 - 16);
  }

  return result;
}

void sub_29AF8A8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF8A930(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF8A978(a1, a2);
  }

  else
  {
    result = sub_29A3ACAE4(v3, a2) + 2;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AF8A978(uint64_t **a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[2 * v2];
  *(&v17 + 1) = &v8[2 * v7];
  sub_29A3ACAE4(v16, a2);
  *&v17 = v16 + 2;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29AF8AA84(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A40DDD8(&v15);
  return v14;
}

void sub_29AF8AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A40DDD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF8AA84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_29A3ACAE4(a4, v6);
      v6 += 2;
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 += 2)
    {
      v7 = v5[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29AF8AB58(v9);
}

uint64_t sub_29AF8AB58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A40DD8C(a1);
  }

  return a1;
}

void sub_29AF8AB90(void *a1)
{
  v1 = (a1 + 3);
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 16;
      }

      while (v6 < (a1[1] - *a1) >> 4);
    }
  }
}

void sub_29AF8AC7C(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::UsdImagingDataSourceRelationship(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A20A7090;
  *(a1 + 8) = *a2;
  v6 = *(a2 + 8);
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 32) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = a3;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::GetValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship *this@<X0>, float a2@<S0>, void *a3@<X8>)
{
  (*(*this + 32))(v4, a2);
  a3[1] = &off_2A2076AF0;
  sub_29A18ECC8(a3, v4);
  sub_29ABED558(v4);
}

void sub_29AF8ADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship::GetTypedValue(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRelationship *this@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets((this + 8), &v3);
  sub_29AF8AE74(a2, v3, v4);
  v6 = &v3;
  sub_29A1E234C(&v6);
}

void sub_29AF8AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF8AE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29ABF4840(a1, a2, a3);
  return a1;
}

void sub_29AF8AEC8(uint64_t a1)
{
  *a1 = &unk_2A20A7090;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8AF50(uint64_t a1)
{
  *a1 = &unk_2A20A7090;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::UsdImagingDataSourceRenderPassPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A70E0;
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim *this@<X0>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2061FD8;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2061FD8;
    *v6 = &unk_2A20A7200;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2061FD8;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7248;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(v8);
  }
}

void sub_29AF8B348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(va);
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Invalidate(uint64_t **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v8[7] = *MEMORY[0x29EDCA608];
  sub_29AF8B540();
  if ((atomic_load_explicit(&qword_2A1751C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751C50))
  {
    sub_29AE15FD8(qword_2A1751C28, qword_2A1751CE8, unk_2A1751CF0, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751C50);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C28, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v8, DefaultLocator, v4);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v8);
        sub_29ABC3488(v8);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_29AF8B540()
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D00))
  {
    v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v0)
    {
      v0 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    v1 = *(v0 + 25);
    v8 = v1;
    if ((v1 & 7) != 0)
    {
      v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 = v2;
      }
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v3)
    {
      v3 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    v4 = *(v3 + 36);
    v9 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 = v5;
      }
    }

    qword_2A1751CE8 = 0;
    unk_2A1751CF0 = 0;
    qword_2A1751CF8 = 0;
    sub_29A12EF7C(&qword_2A1751CE8, &v8, &v10, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v7 = *(&v8 + i);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751CE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D00);
  }
}

void sub_29AF8B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1751D00);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::UsdImagingDataSourceRenderSettingsPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A7110;
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim *this@<X0>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062088;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062088;
    *v6 = &unk_2A20A72C0;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062088;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7308;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(v8);
  }
}

void sub_29AF8BA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(va);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Invalidate(uint64_t **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29AF8BC94();
  if ((atomic_load_explicit(&qword_2A1751C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751C80))
  {
    sub_29AE15FD8(qword_2A1751C58, qword_2A1751D08, *algn_2A1751D10, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751C80);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C58, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v9, DefaultLocator, v4);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_29AF8BC94()
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D20))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v2 = *(v1 + 12);
    v11 = v2;
    if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v4 = *(v3 + 7);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v5)
    {
      v5 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v6 = *(v5 + 11);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A12EF7C(v9, &v11, &v14, 3uLL);
    sub_29AF8D354(SchemaAttributeNames, v9, &qword_2A1751D08);
    v10 = v9;
    sub_29A124AB0(&v10);
    for (i = 16; i != -8; i -= 8)
    {
      v8 = *(&v11 + i);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D20);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::UsdImagingDataSourceRenderProductPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A7140;
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim *this@<X0>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062030;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062030;
    *v6 = &unk_2A20A7380;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062030;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A73C8;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(v8);
  }
}

void sub_29AF8C29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(va);
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Invalidate(uint64_t **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29AF8C4AC();
  if ((atomic_load_explicit(&qword_2A1751CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751CB0))
  {
    sub_29AE15FD8(qword_2A1751C88, qword_2A1751D28, *algn_2A1751D30, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751C88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751CB0);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751C88, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v9, DefaultLocator, v4);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_29AF8C4AC()
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D40))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderProduct::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v2 = *(v1 + 11);
    v11 = v2;
    if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v4 = *(v3 + 7);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v5)
    {
      v5 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v6 = *(v5 + 10);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v9, 0, sizeof(v9));
    sub_29A12EF7C(v9, &v11, &v14, 3uLL);
    sub_29AF8D354(SchemaAttributeNames, v9, &qword_2A1751D28);
    v10 = v9;
    sub_29A124AB0(&v10);
    for (i = 16; i != -8; i -= 8)
    {
      v8 = *(&v11 + i);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D40);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::UsdImagingDataSourceRenderVarPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A7170;
  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim *this@<X0>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(this);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(this) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, (this + 16));
    v8[0] = &unk_2A2062138;
    v5 = *(this + 6);
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, v8);
    v9[0] = &unk_2A2062138;
    *v6 = &unk_2A20A7440;
    sub_29A1E21F4(v6 + 2, this + 2);
    sub_29A1E2240(v6 + 3, this + 3);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v6 + 4), v9);
    *(v6 + 2) = &unk_2A2062138;
    *(v6 + 5) = v5;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A20A7488;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(v9);
    *a3 = v6;
    a3[1] = v7;
    pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(v8);
  }
}

void sub_29AF8CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(va);
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Invalidate(uint64_t **a1@<X2>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  v9[7] = *MEMORY[0x29EDCA608];
  sub_29AF8CCC4();
  if ((atomic_load_explicit(&qword_2A1751CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751CE0))
  {
    sub_29AE15FD8(qword_2A1751CB8, qword_2A1751D48, *algn_2A1751D50, 0);
    __cxa_atexit(sub_29A657A90, qword_2A1751CB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751CE0);
  }

  *(a2 + 56) = 0x800000000;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = sub_29A160470(qword_2A1751CB8, v4);
      if (v6)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v6);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v9, DefaultLocator, v4);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v9);
        sub_29ABC3488(v9);
      }

      else
      {
        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettingsLocator(0);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, NamespacedSettingsLocator);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_29AF8CCC4()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751D60))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdRenderVar::GetSchemaAttributeNames(1);
    v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v1)
    {
      v1 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    v2 = *(v1 + 4);
    v6 = v2;
    if ((v2 & 7) != 0)
    {
      v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
      {
        v6 = v3;
      }
    }

    memset(v4, 0, sizeof(v4));
    sub_29A12EF7C(v4, &v6, &v7, 1uLL);
    sub_29AF8D354(SchemaAttributeNames, v4, &qword_2A1751D48);
    v5 = v4;
    sub_29A124AB0(&v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1751D48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751D60);
  }
}

void sub_29AF8CE64(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8CF00(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF8CFA0(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8D03C(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF8D0DC(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8D178(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF8D218(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8D2B4(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

char *sub_29AF8D354@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A1D7F98(a3, a2[1] - *a2 + a1[1] - *a1);
  sub_29A372808(a3, a3[1], *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(a3, a3[1], *a2, a2[1], a2[1] - *a2);
}

void sub_29AF8D3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *sub_29AF8D404(atomic_ullong *a1)
{
  result = sub_29AF8D44C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::~UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *sub_29AF8D44C()
{
  v0 = operator new(0x80uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *sub_29AF8D490(atomic_ullong *a1)
{
  result = sub_29AF8D4D8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::~UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *sub_29AF8D4D8()
{
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *sub_29AF8D51C(atomic_ullong *a1)
{
  result = sub_29AF8D564();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::~UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *sub_29AF8D564()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AF8D5A8(_DWORD *a1)
{
  *a1 = &unk_2A20A7200;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8D618(_DWORD *a1)
{
  *a1 = &unk_2A20A7200;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8D68C(void *a1@<X8>)
{
  sub_29AF8B540();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

pxrInternal__aapl__pxrReserved__ *sub_29AF8D6E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v6)
  {
    v6 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v6 + 25) ^ *a2) <= 7)
  {
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::GetPassTypeAttr((a1 + 16), v9);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!result)
  {
    result = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(result + 36) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::GetRenderSourceRel((a1 + 16), v9);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v9);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF8D8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  a9 = &a12;
  sub_29A1E234C(&a9);
  sub_29A5B6480(va);
  _Unwind_Resume(a1);
}

void sub_29AF8D938(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8D960(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8D990(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8D9D0(_DWORD *a1)
{
  *a1 = &unk_2A20A72C0;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8DA40(_DWORD *a1)
{
  *a1 = &unk_2A20A72C0;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8DAB4(void *a1@<X8>)
{
  sub_29AF8BC94();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8DB08(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  if ((*(v6 + 12) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    if ((*(v8 + 7) ^ *a2) > 7)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v10)
      {
        v10 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      if ((*(v10 + 11) ^ *a2) > 7)
      {
        sub_29A580660(v17, (a1 + 24), (a1 + 32));
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v13, v17, a2);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
        sub_29A1DE3A4(&v18);
        if (v17[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v12);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetProductsRel(v17, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v11);
      }

      sub_29AF8AE74(v17, v13, v14);
      sub_29ABE9C5C(v17, &v16);
      *a3 = v16;
      sub_29ABED558(v17);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::GetCameraRel(v17, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v9);
      }

      if (v13 == v14)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        sub_29ABE8360(v13, v17);
        *a3 = *v17;
      }
    }

    v17[0] = &v13;
    sub_29A1E234C(v17);
  }

  else
  {
    sub_29A580660(v17, (a1 + 24), (a1 + 32));
    sub_29AF8DF9C(v17, &v13);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
    if (v17[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v7);
    }

    pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v17, &v13);
    *a3 = *v17;
    sub_29A184A10(&v13, 0);
  }
}

void sub_29AF8DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8DF9C(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  memset(v2, 0, sizeof(v2));
  pxrInternal__aapl__pxrReserved__::UsdRenderComputeNamespacedSettings(a1, v2, a2);
  v3 = v2;
  sub_29A124AB0(&v3);
}

void sub_29AF8DFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void sub_29AF8E000(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8E028(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8E058(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7358))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8E098(_DWORD *a1)
{
  *a1 = &unk_2A20A7380;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8E108(_DWORD *a1)
{
  *a1 = &unk_2A20A7380;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8E17C(void *a1@<X8>)
{
  sub_29AF8C4AC();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8E1D0(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  if ((*(v6 + 11) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    if ((*(v8 + 7) ^ *a2) > 7)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      if (!v10)
      {
        v10 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      }

      if ((*(v10 + 10) ^ *a2) > 7)
      {
        sub_29A580660(v17, (a1 + 24), (a1 + 32));
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v13, v17, a2);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
        sub_29A1DE3A4(&v18);
        if (v17[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v12);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderProduct::GetOrderedVarsRel(v17, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v11);
      }

      sub_29AF8AE74(v17, v13, v14);
      sub_29ABE9C5C(v17, &v16);
      *a3 = v16;
      sub_29ABED558(v17);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::GetCameraRel(v17, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v9);
      }

      if (v13 == v14)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        sub_29ABE8360(v13, v17);
        *a3 = *v17;
      }
    }

    v17[0] = &v13;
    sub_29A1E234C(v17);
  }

  else
  {
    sub_29A580660(v17, (a1 + 24), (a1 + 32));
    sub_29AF8DF9C(v17, &v13);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
    if (v17[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v7);
    }

    pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v17, &v13);
    *a3 = *v17;
    sub_29A184A10(&v13, 0);
  }
}

void sub_29AF8E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_guard_abort(qword_2A1751D90);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8E728(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8E750(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8E780(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7418))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8E7C0(_DWORD *a1)
{
  *a1 = &unk_2A20A7440;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8E830(_DWORD *a1)
{
  *a1 = &unk_2A20A7440;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8E8A4(void *a1@<X8>)
{
  sub_29AF8CCC4();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8E8F8(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _OWORD *a3@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  }

  if ((*(v6 + 4) ^ *a2) > 7)
  {
    sub_29A580660(v10, (a1 + 24), (a1 + 32));
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v9, v10, a2);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
    sub_29A1DE3A4(&v11);
    if (v10[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10[1], v8);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
  }

  sub_29A580660(v10, (a1 + 24), (a1 + 32));
  sub_29AF8DF9C(v10, &v9);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if (v10[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10[1], v7);
  }

  pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v10, &v9);
  *a3 = *v10;
  sub_29A184A10(&v9, 0);
}

void sub_29AF8EB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8EBC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8EBF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8EC20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A74D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage *this@<X0>, uint64_t *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(this);
  v4 = *SchemaToken;
  v10 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetSchemaToken(SchemaToken);
  v11 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v6;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v10, &v12, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v10 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF8ED50(_Unwind_Exception *a1)
{
  v2 = 8;
  while (1)
  {
    v3 = *(v1 + v2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 -= 8;
    if (v2 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens))
    {
      sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
    }

    v19 = 0uLL;
    v8 = sub_29A5A70E0(this + 1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPathResolverContext(v17, v8);
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetSchemaToken(SchemaToken) ^ *a2) <= 7)
  {
    memset(&__p, 0, sizeof(__p));
    v9 = sub_29A5A70E0(this + 1);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v10)
    {
      v10 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredMetadata(v9, (v10 + 280)))
    {
      v11 = sub_29A5A70E0(this + 1);
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
      if (!v12)
      {
        v12 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
      }

      sub_29A81B024(v11, (v12 + 280), &__p);
    }

    v13 = 0uLL;
    memset(v17, 0, sizeof(v17));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v16, &__p);
      sub_29ABE8360(&v16, &v19);
      v13 = v19;
    }

    v20 = v13;
    v19 = 0uLL;
    pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetActiveRenderSettingsPrim(v17, &v20);
    v15 = sub_29A5A70E0(this + 1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AF8F148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A1DCEA8(&a14);
  sub_29ABEF2C0(&a16);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::UsdImagingDataSourceStage(void *result, uint64_t *a2)
{
  v2 = *a2;
  *result = &unk_2A20A7500;
  result[1] = v2;
  *a2 = 0;
  return result;
}

{
  v2 = *a2;
  *result = &unk_2A20A7500;
  result[1] = v2;
  *a2 = 0;
  return result;
}

void sub_29AF8F3C4(void *a1)
{
  *a1 = &unk_2A20A7548;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29AF8F434(void **a1)
{
  *a1 = &unk_2A20A7548;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8F490(void **a1)
{
  *a1 = &unk_2A20A7548;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AF8F510(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

uint64_t *sub_29AF8F52C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF8F54C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF8F698(a1);
}

void sub_29AF8F698(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A0176E4(&v2);
      operator delete(v1);
    }
  }
}

uint64_t sub_29AF8F6F0(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29AF8F758();
  }

  return *a1;
}

void sub_29AF8F758()
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29AF8F7D0(void *a1)
{
  v1 = operator new(0x20uLL);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void *sub_29AF8F848(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7660;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8F8A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8F8BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8F8E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8F914(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A76B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::UsdImagingDataSourceTetMeshTopology(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A7720;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A20606F8;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF8FA00(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::GetNames@<X0>(uint64_t *a1@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v2)
  {
    v2 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v3 = *(v2 + 3);
  v12 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v5)
  {
    v5 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v6 = *(v5 + 1);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v7)
  {
    v7 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v8 = *(v7 + 2);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF8FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    TetVertexIndicesAttr = pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetTetVertexIndicesAttr((this + 16), &v15);
    v8 = *(this + 5);
    TetVertexIndicesLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndicesLocator(TetVertexIndicesAttr);
    sub_29AF8FE08(&v15, v8, this + 8, TetVertexIndicesLocator);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v10)
  {
    v10 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v10 + 2) ^ *a2) <= 7)
  {
    SurfaceFaceVertexIndicesAttr = pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetSurfaceFaceVertexIndicesAttr((this + 16), &v15);
    v12 = *(this + 5);
    SurfaceFaceVertexIndicesLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndicesLocator(SurfaceFaceVertexIndicesAttr);
    sub_29AF8FE94(&v15, v12, this + 8, SurfaceFaceVertexIndicesLocator);
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(result + 3) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetOrientationAttr((this + 16), &v15);
    sub_29AF6E290(&v15, *(this + 5));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::UsdImagingDataSourceTetMesh(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A7750;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A20606F8;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF8FFC0(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::GetNames@<X0>(uint64_t *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v3 = *(v2 + 1);
  v11 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v6 = *(v5 + 2);
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v10 = *(&v11 + i);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    if ((*(v7 + 2) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDoubleSidedAttr((this + 16), v8);
      sub_29AF7D438(v8, *(this + 5));
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    sub_29AF9027C(this + 2, (this + 16), *(this + 5), v8);
    *a3 = *v8;
  }
}

void sub_29AF9027C(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::UsdImagingDataSourceTetMeshTopology(v8, a1, v9, a3);
  sub_29AF90C94(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v9);
}

void sub_29AF90320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::UsdImagingDataSourceTetMeshPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A7780;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  return sub_29A1D8028(a2, v3);
}

void sub_29AF904DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, (this + 16));
    v7[0] = &unk_2A20606F8;
    sub_29AF905F8(this + 2, v7, *(this + 6), &v8);
    *a3 = v8;
    v8 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v7);
  }
}

void sub_29AF905E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void sub_29AF905F8(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::UsdImagingDataSourceTetMesh(v8, a1, v9, a3);
  sub_29AF90DA0(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v9);
}

void sub_29AF9069C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v16[57] = *MEMORY[0x29EDCA608];
  *(a5 + 56) = 0x800000000;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 134) ^ *v10) < 8)
      {
        goto LABEL_11;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 131) ^ *v10) < 8)
      {
        goto LABEL_11;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 91) ^ *v10) <= 7)
      {
LABEL_11:
        TopologyLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopologyLocator(v12);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, TopologyLocator);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 30) ^ *v10) <= 7)
      {
        DoubleSidedLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSidedLocator(v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DoubleSidedLocator);
      }

      v10 = (v10 + 8);
    }

    while (v10 != v11);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v16);
  sub_29ABD3178(v16);
}

void sub_29AF90898(_DWORD *a1)
{
  *a1 = &unk_2A20A7720;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF90908(_DWORD *a1)
{
  *a1 = &unk_2A20A7720;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF9097C(_DWORD *a1)
{
  *a1 = &unk_2A20A7750;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF909EC(_DWORD *a1)
{
  *a1 = &unk_2A20A7750;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF90A60(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF90AFC(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF90C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void sub_29AF90C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF90C94(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A77F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF90CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF90D08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF90D30(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF90D60(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7848))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF90DA0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF90DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF90E14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF90E3C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF90E6C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A78C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::UsdImagingDataSourceUsdPrimInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20A78E8;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 32) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::~UsdImagingDataSourceUsdPrimInfo(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this)
{
  *this = &unk_2A20A78E8;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 7);
  sub_29A1DE3A4(this + 6);
  v4 = *(this + 2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::~UsdImagingDataSourceUsdPrimInfo(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 1);
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v7 = *(v6 + 2);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v9 = *(v8 + 3);
  v23 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v10)
  {
    v10 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v11 = *(v10 + 4);
  v24 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v12)
  {
    v12 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v13 = *(v12 + 5);
  v25 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A12EF7C(a2, &v21, &v26, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v16 = *(&v21 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (sub_29A656834(this + 8, v14))
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v18)
    {
      v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A1D8028(a2, v18 + 6);
  }

  result = sub_29A5B9DEC(this + 8, v17);
  if (result)
  {
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v20)
    {
      v20 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    return sub_29A1D8028(a2, v20 + 7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v9)
    {
      v9 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    if ((*(v9 + 2) ^ *a2) > 7)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v11)
      {
        v11 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      if ((*(v11 + 3) ^ *a2) > 7)
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v12)
        {
          v12 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v12 + 4) ^ *a2) <= 7)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas((this + 8), a2, v20);
        }

        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v15)
        {
          v15 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v15 + 5) ^ *a2) <= 7)
        {
          v20[0] = 0;
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetKind((this + 8), v20);
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v16)
        {
          v16 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v16 + 6) ^ *a2) <= 7)
        {
          if (sub_29A656834(this + 8, a2))
          {
            pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype((this + 8), v17, v19);
            pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v19);
          }

          goto LABEL_44;
        }

        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v18)
        {
          v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v18 + 7) ^ *a2) > 7 || (sub_29A5B9DEC(this + 8, a2) & 1) == 0)
        {
          goto LABEL_44;
        }

        LOBYTE(v20[0]) = 1;
      }

      else
      {
        LOBYTE(v20[0]) = sub_29AF91744(this + 8, a2);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v20, v19);
    }

    else
    {
      v10 = *(this + 2);
      if (!v10 || (*(v10 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v10, a2);
      }

      sub_29ABCCFA4(*(v10 + 24), v19);
    }

    *a3 = *v19;
    return;
  }

  v7 = sub_29A5970D0(this + 8, a2);
  if ((atomic_load_explicit(&qword_2A1751DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751DD0))
  {
    sub_29AF917CC();
    __cxa_atexit(sub_29AF918BC, &xmmword_2A1751DA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751DD0);
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = &xmmword_2A1751DC0;
        goto LABEL_28;
      }

LABEL_44:
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v8 = &xmmword_2A1751DB0;
  }

  else
  {
    v8 = &xmmword_2A1751DA0;
  }

LABEL_28:
  v14 = *v8;
  v13 = *(v8 + 1);
  *a3 = v14;
  a3[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

unint64_t sub_29AF91744(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = *(v2 + 56), (v3 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
    v3 = *(v2 + 56);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_29AF91780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A8446C0(a1, a2, a3);
  return a1;
}

double sub_29AF917CC()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v0)
  {
    v0 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v0 + 9, &v4);
  xmmword_2A1751DA0 = v4;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v1)
  {
    v1 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v1 + 10, &v4);
  xmmword_2A1751DB0 = v4;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v2)
  {
    v2 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v2 + 11, &v4);
  result = *&v4;
  xmmword_2A1751DC0 = v4;
  return result;
}

void sub_29AF91888(_Unwind_Exception *exception_object)
{
  if (*(&xmmword_2A1751DB0 + 1))
  {
    sub_29A014BEC(*(&xmmword_2A1751DB0 + 1));
  }

  if (*(&xmmword_2A1751DA0 + 1))
  {
    sub_29A014BEC(*(&xmmword_2A1751DA0 + 1));
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF918BC(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumeFieldBindings::UsdImagingDataSourceVolumeFieldBindings(void *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2, uint64_t a3)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((a1 + 1), a2);
  a1[1] = &unk_2A2060BE0;
  a1[4] = a3;
  return a1;
}

void sub_29AF91A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void **a12)
{
  sub_29A124AB0(&a12);
  sub_29A349AC0(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_29AF91AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::UsdImagingDataSourceVolumePrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  *a1 = &unk_2A20A7960;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF91C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetSchemaToken(this) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, (this + 16));
    v6[0] = &unk_2A2060BE0;
    sub_29AF91D44(v6, *(this + 6), &v7);
    *a3 = v7;
    v7 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(v6);
  }
}

void sub_29AF91D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void sub_29AF91D44(const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a1);
  v7[0] = &unk_2A2060BE0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumeFieldBindings::UsdImagingDataSourceVolumeFieldBindings(v6, v7, a2);
  sub_29AF921A8(a3, v6);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(v7);
}

void sub_29AF91DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, uint64_t a4@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, a5);
  if ((atomic_load_explicit(&qword_2A1751DF0, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A1751DF0);
    if (v7)
    {
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
      if (!v17)
      {
        v17 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
      }

      if ((*(v17 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v17 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
      }

      sub_29A911628(":", EmptyString, &qword_2A1751DD8);
      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1751DD8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751DF0);
    }
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    while (1)
    {
      v10 = (*v8 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v11 = byte_2A1751DEF >= 0 ? &qword_2A1751DD8 : qword_2A1751DD8;
      v12 = *(v10 + 23);
      v13 = v12 >= 0 ? *(v10 + 23) : v10[1];
      v7 = strlen(v11);
      if (v13 >= v7)
      {
        v14 = v7;
        v15 = v12 >= 0 ? v10 : *v10;
        v7 = strncmp(v15, v11, v14);
        if (!v7)
        {
          break;
        }
      }

      v8 = (v8 + 8);
      if (v8 == v9)
      {
        return;
      }
    }

    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetDefaultLocator(v7);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
  }
}

void sub_29AF91FC0(uint64_t a1)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF92014(uint64_t a1)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF9206C(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF92108(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29AF921A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A79C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF92200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF9221C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF92244(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF92274(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7A10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF922B4()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 2, "USDIMAGING_CHANGES", 0);
  v0 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0 + 8, "USDIMAGING_CHANGES", "Report change processing events");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 0, "USDIMAGING_COLLECTIONS", 0);
  v1 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1, "USDIMAGING_COLLECTIONS", "Report collection queries");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 3, "USDIMAGING_COMPUTATIONS", 0);
  v2 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 12, "USDIMAGING_COMPUTATIONS", "Report Hydra computation usage in usdImaging.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 1, "USDIMAGING_COORDSYS", 0);
  v3 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 4, "USDIMAGING_COORDSYS", "Coordinate systems");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 4, "USDIMAGING_INSTANCER", 0);
  v4 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 16, "USDIMAGING_INSTANCER", "Report instancer messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 5, "USDIMAGING_PLUGINS", 0);
  v5 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5 + 20, "USDIMAGING_PLUGINS", "Report plugin status messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 6, "USDIMAGING_POINT_INSTANCER_PROTO_CREATED", 0);
  v6 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v6 + 24, "USDIMAGING_POINT_INSTANCER_PROTO_CREATED", "Report PI prototype stats as they are created");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 7, "USDIMAGING_POINT_INSTANCER_PROTO_CULLING", 0);
  v7 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v7 + 28, "USDIMAGING_POINT_INSTANCER_PROTO_CULLING", "Report PI culling debug info");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 8, "USDIMAGING_POPULATION", 0);
  v8 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v8 + 32, "USDIMAGING_POPULATION", "Report population events");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 9, "USDIMAGING_SELECTION", 0);
  v9 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v9 + 36, "USDIMAGING_SELECTION", "Report selection messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 10, "USDIMAGING_SHADERS", 0);
  v10 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v10 + 40, "USDIMAGING_SHADERS", "Report shader status messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&unk_2A20A7A28, 11, "USDIMAGING_UPDATES", 0);
  v11 = sub_29AF4A7DC() + 44;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v11, "USDIMAGING_UPDATES", "Report non-authored, time-varying data changes");
}

void sub_29AF92550(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_DRAWMODE_CACHE))
  {
    sub_29B2CCE3C();
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::UsdImagingDelegate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(this, a2, a3);
  *(v5 + 3) = 0;
  *v5 = &unk_2A20A7A48;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 16) = 1065353216;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 15) = 0;
  *(v5 + 26) = 1065353216;
  *(v5 + 14) = v5 + 120;
  *(v5 + 16) = 0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 42) = 1065353216;
  *(v5 + 12) = 0u;
  *(v5 + 52) = 1065353216;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 62) = 1065353216;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 72) = 1065353216;
  *(v5 + 296) = 0;
  sub_29AFA14F4(v5 + 304, 8uLL, v32);
  *(this + 108) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 218);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 219);
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 240) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 242);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 243);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(this + 976, 1.0);
  *(this + 1104) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 277);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 278);
  *(this + 140) = 0x7FF0000000000000;
  *(this + 141) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 282);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 283);
  *(this + 284) = 0;
  *(this + 143) = 0;
  *(this + 145) = 0;
  *(this + 144) = 0;
  *(this + 292) = 0;
  *(this + 147) = 0;
  *(this + 149) = 0;
  *(this + 148) = 0;
  *(this + 1200) = 0;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 159) = 0;
  *(this + 320) = 1065353216;
  v6 = *(this + 140);
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  sub_29AFA2B9C(this + 1288, 0, v30, v6);
  sub_29AFA17D0(v30);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2);
  (*(*RenderDelegate + 280))(v32);
  sub_29AFA18C0(this + 240, v32);
  if ((v32[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v32[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 140);
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  sub_29AFA33B4(this + 3048, this + 1920, v28, v8);
  sub_29AFA1974(v28);
  sub_29AFA6514(this + 3680);
  v9 = *(this + 140);
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  sub_29AFA3BB8(this + 4312, 0, v26, v9);
  sub_29AFA1A78(v26);
  sub_29AFA42D0(this + 4944);
  v10 = *(this + 140);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  sub_29AFA4648(this + 5576, 0, v24, v10);
  sub_29AFA1A78(v24);
  *(this + 389) = 0u;
  *(this + 388) = 0u;
  *(this + 1560) = 1065353216;
  *(this + 6248) = 0u;
  *(this + 6264) = 0u;
  *(this + 1570) = 1065353216;
  *(this + 393) = 0u;
  *(this + 394) = 0u;
  *(this + 1580) = 1065353216;
  *(this + 6328) = 0u;
  *(this + 6344) = 0u;
  *(this + 1590) = 1065353216;
  *(this + 6376) = 0u;
  *(this + 796) = this + 6376;
  *(this + 799) = 850045863;
  *(this + 806) = 0;
  *(this + 402) = 0u;
  *(this + 401) = 0u;
  *(this + 400) = 0u;
  sub_29AFA4A60(this + 6456);
  v11 = *(this + 140);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  sub_29AFA4DCC(this + 7088, 0, v22, v11);
  sub_29AFA1B80(v22);
  v12 = *(this + 140);
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  sub_29AFA55EC(this + 7720, 0, v20, v12);
  sub_29AFA1D18(v20);
  v13 = *(this + 140);
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  sub_29AFA5D80(this + 8352, 0, v18, v13);
  sub_29AFA1E08(v18);
  *(this + 2246) = 16843009;
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  if (!v15)
  {
    v15 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  }

  *(this + 8988) = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::HasAdapter(v14, (v15 + 8));
  *(this + 8989) = 257;
  *(this + 2248) = 0;
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v16)
  {
    v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  *(this + 8996) = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v16 + 20);
  *(this + 8997) = 0;
  return this;
}

void sub_29AF92A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29AFA1E08(va);
  sub_29AFAA89C(v9 + v12);
  sub_29AFAA1C8(v9 + v11);
  sub_29AFA99F8(v9 + v10);
  sub_29AF92C70(v9 + 6208);
  sub_29AFA91F8(v9 + 5576);
  sub_29AFA8A1C(v9 + 4944);
  sub_29AFA8348(v9 + 4312);
  sub_29AFA7A38(v9 + 3680);
  sub_29AFA71F4(v9 + 3048);
  sub_29AFA2078((v9 + 1920));
  sub_29AFA69C4(v9 + 1288);
  sub_29AFA68F8(v9 + 1248);
  *(v13 - 96) = v9 + 1224;
  sub_29A1E234C((v13 - 96));
  v14 = *(v9 + 1216);
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  *(v13 - 96) = v9 + 1176;
  sub_29A1E234C((v13 - 96));
  sub_29ABEC7EC((v9 + 1144));
  sub_29A1DCEA8((v9 + 1128));
  sub_29A1DCEA8((v9 + 1108));
  sub_29A1DCEA8((v9 + 968));
  sub_29AFA20CC(v9 + 928);
  *(v13 - 96) = v9 + 904;
  sub_29A1E234C((v13 - 96));
  *(v13 - 96) = v9 + 880;
  sub_29A1E234C((v13 - 96));
  sub_29A1DCEA8((v9 + 872));
  sub_29A5AD4D8((v9 + 864));
}

uint64_t sub_29AF92C70(uint64_t a1)
{
  std::mutex::~mutex((a1 + 184));
  sub_29A1E2AEC(a1 + 160, *(a1 + 168));
  sub_29AFA1EF8(a1 + 120);
  sub_29A58D230(a1 + 80);
  sub_29AFA1F78(a1 + 40);

  return sub_29AFA1FF8(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::~UsdImagingDelegate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  *this = &unk_2A20A7A48;
  pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(this + 151);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSubtree(*(this + 1), (this + 16), this);
  sub_29AFAB644(this + 256);
  sub_29AFAB6A0(this + 72);
  sub_29A1EF938(this + 112, *(this + 15));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = this + 120;
  sub_29AFAB6FC(this + 32);
  sub_29AFAAF70(this + 8352);
  sub_29AFAA89C(this + 7720);
  sub_29AFAA1C8(this + 7088);
  sub_29AFA99F8(this + 6456);
  std::mutex::~mutex((this + 6392));
  sub_29A1E2AEC(this + 6368, *(this + 797));
  sub_29AFA1EF8(this + 6328);
  sub_29A58D230(this + 6288);
  sub_29AFA1F78(this + 6248);
  sub_29AFA1FF8(this + 6208);
  sub_29AFA91F8(this + 5576);
  sub_29AFA8A1C(this + 4944);
  sub_29AFA8348(this + 4312);
  sub_29AFA7A38(this + 3680);
  sub_29AFA71F4(this + 3048);
  sub_29AFA2078((this + 1920));
  sub_29AFA69C4(this + 1288);
  sub_29AFA68F8(this + 1248);
  v6 = (this + 1224);
  sub_29A1E234C(&v6);
  v2 = *(this + 152);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v6 = (this + 1176);
  sub_29A1E234C(&v6);
  v3 = *(this + 145);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 144);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 143);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 283);
  sub_29A1DE3A4(this + 282);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 278);
  sub_29A1DE3A4(this + 277);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 243);
  sub_29A1DE3A4(this + 242);
  sub_29AFA20CC(this + 928);
  v6 = (this + 904);
  sub_29A1E234C(&v6);
  v6 = (this + 880);
  sub_29A1E234C(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 219);
  sub_29A1DE3A4(this + 218);
  sub_29A5AD4D8(this + 108);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::~UsdImagingDelegate(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (*(this + 8997) == 1 && !sub_29AF91744(a2, a2))
  {
    IsKind = 1;
  }

  else if (sub_29A7557D8(a2, a2))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(&v13, this, a2);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v4)
    {
      v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = v13;
    if ((*(v4 + 29) ^ v13) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v10, a2);
      v12 = 0;
      v10 = &unk_2A205FFB0;
      if (v11 && (*(v11 + 57) & 8) == 0 && off_2A205FFD0(&v10))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelApplyDrawModeAttr(&v10, v9);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(v9);
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
      v9[3] = 0;
      v9[0] = &unk_2A205F668;
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
      if (!v7)
      {
        v7 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
      }

      IsKind = pxrInternal__aapl__pxrReserved__::UsdModelAPI::IsKind(v9, (v7 + 8), 1);
      pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI(v9);
      pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v10);
      v5 = v13;
    }

    else
    {
      IsKind = 0;
    }

    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    IsKind = 0;
  }

  return IsKind & 1;
}

void sub_29AF9320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = *(v14 - 40);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(atomic_uint **__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3@<X1>)
{
  if (*(this + 8997) == 1 && (sub_29AF91744(a3, a3) & 1) == 0)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v6)
    {
      v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v7 = *(v6 + 8);
    *a1 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a1 = v8;
      }
    }
  }

  else
  {
    v5 = &unk_2A1751000;
    if ((atomic_load_explicit(&qword_2A1751E08, memory_order_acquire) & 1) == 0)
    {
      v9 = __cxa_guard_acquire(&qword_2A1751E08);
      v5 = &unk_2A1751000;
      if (v9)
      {
        v10 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_DRAWMODE_CACHE);
        if (!v10)
        {
          pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
        }

        byte_2A1751E00 = *v10 == 1;
        __cxa_guard_release(&qword_2A1751E08);
        v5 = &unk_2A1751000;
      }
    }

    if (v5[3584] == 1)
    {

      sub_29AF933F8();
    }

    sub_29AF9358C(a3, a1);
  }
}

void sub_29AF9356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AF9358C(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, a1);
  v4[3] = 0;
  v3 = 0;
  v4[0] = &unk_2A205FFB0;
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::ComputeModelDrawMode(v4, &v3, a2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(v4);
}

void sub_29AF93614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__ **a2, char a3)
{
  v15 = 0;
  if ((a3 & 1) == 0 && sub_29A656834(a2, a2))
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v5)
    {
      v5 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    }

    goto LABEL_19;
  }

  if (*(this + 8997) == 1 && (sub_29AF91744(a2, a2) & 1) == 0)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v6)
    {
LABEL_17:
      v6 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    }

LABEL_18:
    v5 = (v6 + 8);
    goto LABEL_19;
  }

  if (*(this + 8988) == 1 && *(this + 8987) == 1 && pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(this, a2))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = a2[1];
  if (!v7 || (*(v7 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(a2[1], a2);
  }

  v5 = (*(v7 + 3) + 48);
LABEL_19:
  sub_29A166F2C(&v15, v5);
  v8 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(this, &v15);
  v9 = v8;
  if (!*v8)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::_GetStaticTfType(v8);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a2, SchemaInfo))
    {
      v13 = atomic_load(&qword_2A1751DF8);
      if (!v13)
      {
        v13 = sub_29AFAC5E0();
      }

      v9 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(this, (v13 + 1));
    }
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v9;
}

void sub_29AF937D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A160470(this + 4, a2);
  if (!v4)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructAdapter(&v20, v5, a2);
    if (v20)
    {
      v16[0] = this;
      memset(&v16[1], 0, 32);
      memset(v17, 0, sizeof(v17));
      memset(v18, 0, sizeof(v18));
      memset(v19, 0, sizeof(v19));
      if ((*(*v20 + 512))())
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SetDelegate(v20, this);
      }

      else
      {
        v14[0] = "usdImaging/delegate.cpp";
        v14[1] = "_AdapterLookup";
        v14[2] = 263;
        v14[3] = "const UsdImagingPrimAdapterSharedPtr &pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(const TfToken &)";
        v15 = 0;
        v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v7)
        {
          v8 = (v7 + 16);
          if (*(v7 + 39) < 0)
          {
            v8 = *v8;
          }
        }

        else
        {
          v8 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Selected hydra renderer doesn't support prim type '%s'", v6, v8);
        v9 = v21;
        v20 = 0;
        v21 = 0;
        if (v9)
        {
          sub_29A014BEC(v9);
        }
      }

      v14[0] = &v19[1] + 1;
      sub_29AFA229C(v14);
      v14[0] = v19;
      sub_29A1E234C(v14);
      v14[0] = &v18[1] + 1;
      sub_29A1E234C(v14);
      v14[0] = v18;
      sub_29AFA2378(v14);
      v14[0] = &v17[1] + 1;
      sub_29AFA2378(v14);
      v14[0] = v17;
      sub_29A1E234C(v14);
      v14[0] = &v16[2];
      sub_29A1E234C(v14);
    }

    v10 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = v20;
    v11 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16[0] = v10;
    v16[1] = v12;
    v16[2] = v11;
    v4 = sub_29AFAC7A0(this + 32, v16, v16);
    if (v16[2])
    {
      sub_29A014BEC(v16[2]);
    }

    if ((v16[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  return v4 + 3;
}

void sub_29AF93A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29AF93AA0(va);
  v17 = *(v15 - 56);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(a1);
}

void **sub_29AF93AA0(void **a1)
{
  v3 = a1 + 20;
  sub_29AFA229C(&v3);
  v3 = a1 + 17;
  sub_29A1E234C(&v3);
  v3 = a1 + 14;
  sub_29A1E234C(&v3);
  v3 = a1 + 11;
  sub_29AFA2378(&v3);
  v3 = a1 + 8;
  sub_29AFA2378(&v3);
  v3 = a1 + 5;
  sub_29A1E234C(&v3);
  v3 = a1 + 2;
  sub_29A1E234C(&v3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(uint64_t a1, unsigned int *a2)
{
  v2 = sub_29A2F4F50((a1 + 72), a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

__n128 pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicate@<Q0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, __n128 *a2@<X8>)
{
  if (*(this + 8997) == 1)
  {
    v5 = 0uLL;
    v6 = 0;
    sub_29B2AFCB4(&v5, 0);
  }

  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(this);
  result = *UsdPrimDefaultPredicate;
  *a2 = *UsdPrimDefaultPredicate;
  a2[1].n128_u64[0] = UsdPrimDefaultPredicate[1].n128_u64[0];
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicateForPrototypes(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  if (*(this + 8997) == 1)
  {
    v2 = 0uLL;
    v3 = 0;
    sub_29B2AFCB4(&v2, 0);
  }

  v2 = 0uLL;
  v3 = 0;
  sub_29B2AFCB4(&v2, 0);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SyncAll(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  memset(v24, 0, 24);
  v24[3] = this;
  v22 = *(this + 11);
  v23 = 0;
  while (v22 != v23)
  {
    v3 = *sub_29AF93F64(&v22);
    v4 = sub_29AF93F64(&v22);
    v5 = *v4;
    v6 = *(*v4 + 76);
    if (a2)
    {
      *(v5 + 76) = v6 | 0xFFFFFFFD;
    }

    else if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7 || (__p[0] = "usdImaging/delegate.cpp", __p[1] = "SyncAll", v19 = 422, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SyncAll(BOOL)", v21 = 0, v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v3 + 16)), v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v15, v16, v14), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "adapter", v17) & 1) != 0))
    {
      if (sub_29AF49C14(11))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v3 + 16));
        v10 = *(v5 + 76);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(__p, v10);
        if (v19 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Sync] PREP: <%s> dirtyFlags: 0x%x [%s]\n", v11, v12, Text, v10, v13);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_29A1E28B4(v24, (v3 + 16));
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

LABEL_18:
    sub_29AF93F9C(&v22);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(v24);
  __p[0] = v24;
  sub_29A1E234C(__p);
}

void sub_29AF93F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  __p = &a22;
  sub_29A1E234C(&__p);
  _Unwind_Resume(a1);
}

void *sub_29AF93F64(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CCE70();
  }

  return result;
}

uint64_t sub_29AF93F9C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_HdPrimInfo, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_HdPrimInfo, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(void *a1)
{
  sub_29A0ECEEC(&v4, "usdImaging", "static void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(_Worker *)");
  *(a1[3] + 296) = 1;
  v2 = (a1[1] - *a1) >> 3;
  v3[0] = sub_29AF96E04;
  v3[1] = 0;
  v3[2] = a1;
  sub_29AFAE758(v2, v3, 1);
  *(a1[3] + 296) = 0;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }
}

void sub_29AF940B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Sync(void *a1)
{
  if (a1[30])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = a1;
    if (sub_29AF49C14(11) && (v2 = a1[29]) != 0)
    {
      do
      {
        v3 = sub_29A2F4F50(a1 + 9, v2 + 4);
        if (v3 && sub_29AF49C14(11))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 4));
          v5 = *(v3 + 19);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(__p, v5);
          v8 = v14 >= 0 ? __p : __p[0];
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Sync] PREP: <%s> dirtyFlags: 0x%x [%s]\n", v6, v7, Text, v5, v8);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v2 = *v2;
      }

      while (v2);
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    v10 = a1[29];
    if (v10)
    {
      v11 = 0;
      v12 = a1[29];
      do
      {
        ++v11;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v11 = 0;
    }

    sub_29AFAC9F8(&v15, v9, v10, 0, v11);
    sub_29ACC9560((a1 + 27));
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(&v15);
    __p[0] = &v15;
    sub_29A1E234C(__p);
  }
}

void sub_29AF94200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  __p = &a18;
  sub_29A1E234C(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(void **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(this, a2, v3, v2);
  v4 = v2;
  sub_29A1E234C(&v4);
  v2[0] = v3;
  sub_29A1E234C(v2);
}

void sub_29AF942A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_29A1E234C((v14 - 40));
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(void **a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3, uint64_t a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_CanPopulate(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SetStateForPopulation(a1, a2, a3, a4);
    memset(v21, 0, 24);
    v21[3] = a1;
    v8 = a1;
    v9 = v21;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }
}

void sub_29AF94428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_29A1DCEA8((v9 - 56));
  sub_29AF93AA0(&a9);
  a9 = (v9 - 88);
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_CanPopulate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!*(this + 108) || (sub_29B2CCEBC(v4) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2);
  }

  return 0;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SetStateForPopulation(void *result, pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t a3, uint64_t a4)
{
  if (!result[108])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(v4, this, this);
    if (v4[1])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
  }

  return result;
}

void sub_29AF9469C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_29B28D068(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v30, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(UsdImagingIndexProxy *)");
  if (*(a2 + 2) != *(a2 + 3))
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance))
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
    }

    memset(v28, 0, sizeof(v28));
    v29 = 1065353216;
    v8 = *(this + 111);
    v32 = *(this + 110);
    v33 = v8;
    while (v32 != v33)
    {
      v9 = sub_29A1E25CC(&v32, v5, v6);
      sub_29A43A86C(v28, v9, v9);
      sub_29A1E264C(&v32);
    }

    if (sub_29AF49C14(2))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 872));
      v10 = sub_29A5A70E0(this + 108);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v27, v10);
      sub_29A1DA6E4(v27);
    }

    v19 = *(this + 1);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::SceneIndexEmulationNoticeBatchBegin(v19);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v32, v11, v12, v13);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_29AF9673C(&v24, (*(a2 + 3) - *(a2 + 2)) >> 3);
    memset(v23, 0, sizeof(v23));
    v14 = a2;
    v15 = *(a2 + 2);
    v18 = v14;
    if (v15 != *(v14 + 3))
    {
      sub_29AF96818(this, v15);
    }

    v21 = v24;
    v22 = v25;
    while (v21 != v22)
    {
      v16 = *(*sub_29AF96AE8(&v21) + 32);
      v17 = sub_29AF96AE8(&v21);
      (*(*v16 + 64))(&v20, v16, *v17, v18, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
      sub_29A1DE3A4(&v20);
      sub_29AF96B20(&v21);
    }

    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v32);
    v21 = v23;
    sub_29A65E064(&v21);
    v21 = &v24;
    sub_29AFAD26C(&v21);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v32);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::SceneIndexEmulationNoticeBatchEnd(v19);
    result = sub_29A43A24C(v28);
  }

  if (v30)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v31, v30);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForVariabilityUpdate(void *a1)
{
  if (sub_29AF49C14(2))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Repopulate] %zu variability tasks in worker\n", v2, v3, (a1[1] - *a1) >> 3);
  }

  v4 = a1[3];
  v5 = a1[1] - *a1;
  if (v5)
  {
    *(v4 + 1200) = 0;
  }

  *(v4 + 296) = 1;
  v6[0] = sub_29AF96BA0;
  v6[1] = 0;
  v6[2] = a1;
  sub_29AFAE758((v5 >> 3), v6, 1);
  *(a1[3] + 296) = 0;
}

void sub_29AF96138(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this))
  {
    if (*this != *(a1 + 568))
    {
      sub_29AFA6A1C(a1);
      atomic_store(1u, (a1 + 576));
      sub_29A2258F0((a1 + 568), this);

      sub_29A225948((a1 + 572), this + 1);
    }
  }

  else
  {
    v6[0] = "usdImaging/resolvedAttributeCache.h";
    v6[1] = "SetRootPath";
    v6[2] = 152;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_XfStrategy>::SetRootPath(const SdfPath &) [Strategy = pxrInternal__aapl__pxrReserved__::UsdImaging_XfStrategy, ImplData = BOOL]";
    v7 = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
    if (*(String + 23) >= 0)
    {
      v5 = String;
    }

    else
    {
      v5 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid root path: %s", v5);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_OnUsdObjectsChanged(void *a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a2, uint64_t *a3)
{
  result = sub_29B2ACEC8(a3);
  if (v7 & 1 | result)
  {
    if (sub_29B2A21F4(a3, a1 + 108) || (result = sub_29B2CCFE4(v45), (result & 1) != 0))
    {
      if (sub_29AF49C14(2))
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
      }

      ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a2);
      v8 = ResyncedPaths + 1;
      v9 = *ResyncedPaths;
      if (*ResyncedPaths != ResyncedPaths + 1)
      {
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath((v9 + 4)) && pxrInternal__aapl__pxrReserved__::_HasConnectionChanged((v9 + 4), &ResyncedPaths))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v40, (v9 + 4));
            v10 = a1[154];
            if (v10 >= a1[155])
            {
              v11 = sub_29A378160((a1 + 153), &v40);
            }

            else
            {
              sub_29A1DDD84(a1[154], &v40);
              sub_29A1DDDC0((v10 + 4), &v40 + 1);
              v11 = v10 + 8;
            }

            a1[154] = v11;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
            sub_29A1DE3A4(&v40);
          }

          else
          {
            v12 = a1[154];
            if (v12 >= a1[155])
            {
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
            }

            sub_29A1E21F4(a1[154], v9 + 8);
            sub_29A1E2240((v12 + 4), v9 + 9);
            a1[154] = v12 + 8;
          }

          v13 = v9[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v9[2];
              v15 = *v14 == v9;
              v9 = v14;
            }

            while (!v15);
          }

          v9 = v14;
        }

        while (v14 != v8);
      }

      ResolvedAssetPathsResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResolvedAssetPathsResyncedPaths(a2);
      v17 = ResolvedAssetPathsResyncedPaths + 1;
      v18 = *ResolvedAssetPathsResyncedPaths;
      if (*ResolvedAssetPathsResyncedPaths != ResolvedAssetPathsResyncedPaths + 1)
      {
        v19 = a1[154];
        do
        {
          if (v19 >= a1[155])
          {
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
          }

          sub_29A1E21F4(v19, v18 + 8);
          sub_29A1E2240(v19 + 1, v18 + 9);
          v19 += 2;
          a1[154] = v19;
          v20 = v18[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v18[2];
              v15 = *v21 == v18;
              v18 = v21;
            }

            while (!v15);
          }

          v18 = v21;
        }

        while (v21 != v17);
      }

      ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(a2);
      v22 = ChangedInfoOnlyPaths + 1;
      v23 = *ChangedInfoOnlyPaths;
      if (*ChangedInfoOnlyPaths != ChangedInfoOnlyPaths + 1)
      {
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v23 + 4)))
          {
            pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(a2, (v23 + 4), &v40);
            if (v40 != i)
            {
              v46 = v23 + 4;
              v24 = sub_29AFAF480((a1 + 156), v23 + 8, &unk_29B4D6118, &v46);
              sub_29A372808(v24 + 3, v24[4], v40, i, i - v40);
            }

            v47 = &v40;
            sub_29A124AB0(&v47);
          }

          else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v23 + 4)))
          {
            v40 = 0;
            i = 0;
            v42 = 0;
            sub_29AFAF724((a1 + 156), v23 + 8, v23 + 8, &v40);
            v47 = &v40;
            sub_29A124AB0(&v47);
            if (pxrInternal__aapl__pxrReserved__::_HasConnectionChanged((v23 + 4), &ChangedInfoOnlyPaths))
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v40, (v23 + 4));
              v25 = a1[154];
              if (v25 >= a1[155])
              {
                v26 = sub_29A378160((a1 + 153), &v40);
              }

              else
              {
                sub_29A1DDD84(a1[154], &v40);
                sub_29A1DDDC0((v25 + 4), &v40 + 1);
                v26 = v25 + 8;
              }

              a1[154] = v26;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
              sub_29A1DE3A4(&v40);
            }
          }

          v27 = v23[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v23[2];
              v15 = *v28 == v23;
              v23 = v28;
            }

            while (!v15);
          }

          v23 = v28;
        }

        while (v28 != v22);
      }

      result = sub_29AF49C14(2);
      if (result)
      {
        v40 = *ResyncedPaths;
        for (i = ResyncedPaths + 1; v40 != i; result = sub_29AF99AC0(&v40))
        {
          if (sub_29AF49C14(2))
          {
            v31 = sub_29AF99A88(&v40);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v31 + 32));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Resync queued: %s\n", v33, v34, Text);
          }
        }

        v40 = *ChangedInfoOnlyPaths;
        for (i = ChangedInfoOnlyPaths + 1; v40 != i; result = sub_29AF99AC0(&v40))
        {
          v35 = sub_29AF99B68(&v40, v29, v30);
          if (sub_29A2F4F50(a1 + 156, v35))
          {
            if (sub_29AF49C14(2))
            {
              v36 = sub_29AF99A88(&v40);
              v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v36 + 32));
              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Refresh queued: %s\n", v38, v39, v37);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29AF966E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

char **sub_29AF9673C(char **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A08E058(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[48 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29AFAD370(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AFAD518(&v12);
  }

  return result;
}

void sub_29AF96804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFAD518(va);
  _Unwind_Resume(a1);
}

void sub_29AF96818(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = sub_29A5A70E0((a1 + 864));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(a2, &v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v6, v4, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  sub_29A1DE3A4(&v5);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
}

void sub_29AF9699C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF969DC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AFAE62C(a1, a2);
  }

  else
  {
    result = sub_29AFAD420(v3, a2) + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AF96A24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  return a1;
}

uint64_t sub_29AF96A8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void *sub_29AF96AE8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD02C();
  }

  return result;
}

void *sub_29AF96B20(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim, std::shared_ptr<pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter>>>>::operator++() [T = std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim, std::shared_ptr<pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter>>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 48;
  }

  return a1;
}

void sub_29AF96BA0(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v5 = 8 * a2;
    do
    {
      v22 = a1[3];
      memset(v23, 0, sizeof(v23));
      memset(v24, 0, sizeof(v24));
      memset(v25, 0, sizeof(v25));
      memset(v26, 0, sizeof(v26));
      v6 = *a1;
      v7 = sub_29A2F4F50((v22 + 72), (*a1 + v5));
      if (v7)
      {
        v8 = v7 + 3;
      }

      else
      {
        v8 = 0;
      }

      if (v7 || (v17 = "usdImaging/delegate.cpp", v18 = "UpdateVariability", v19 = 353, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateVariability(size_t, size_t)", v21 = 0, v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + v5)), v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v10, v11, v9), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "primInfo", v12) & 1) != 0))
      {
        if (*v8 || (v17 = "usdImaging/delegate.cpp", v18 = "UpdateVariability", v19 = 355, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateVariability(size_t, size_t)", v21 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + v5)), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v14, v15, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "adapter", v16) & 1) != 0))
        {
          (*(**v8 + 104))(*v8, v8 + 2, v6 + v5, v8 + 6, 0);
        }
      }

      v17 = &v26[1] + 1;
      sub_29AFA229C(&v17);
      v17 = v26;
      sub_29A1E234C(&v17);
      v17 = &v25[1] + 1;
      sub_29A1E234C(&v17);
      v17 = v25;
      sub_29AFA2378(&v17);
      v17 = &v24[1] + 1;
      sub_29AFA2378(&v17);
      v17 = v24;
      sub_29A1E234C(&v17);
      v17 = &v23[8];
      sub_29A1E234C(&v17);
      v5 += 8;
      --v3;
    }

    while (v3);
  }
}

void sub_29AF96DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF96E04(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v4 = result;
    v5 = 8 * a2;
    do
    {
      v6 = v4[3];
      v7 = *v4;
      result = sub_29A2F4F50((v6 + 72), (*v4 + v5));
      if (result)
      {
        v8 = (result + 24);
      }

      else
      {
        v8 = 0;
      }

      if (result)
      {
        if (*(result + 24) || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "UpdateForTime", v13[2] = 379, v13[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateForTime(size_t, size_t)", v14 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + v5)), v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v10, v11, Text), result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "adapter", v12), (result & 1) != 0))
        {
          result = (*(**v8 + 112))(*v8, v8 + 4, v7 + v5, v8[13], 0, *(v6 + 1120));
          v8[13] = 0;
        }
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *a1, double a2)
{
  *&v3[2] = a2;
  sub_29A0ECEEC(v3, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(UsdTimeCode)");
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  v88[9] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v83, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()");
  if (*(this + 153) != *(this + 154) || *(this + 159))
  {
    if (sub_29AF49C14(11))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Update] Update for scene edits\n", v2, v3);
    }

    sub_29AFA6A1C(this + 644);
    atomic_store(1u, this + 466);
    pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData::ClearCaches((this + 1920));
    sub_29AFA724C(this + 1524);
    atomic_store(1u, this + 906);
    sub_29AFA83A0(this + 2156);
    atomic_store(1u, this + 1222);
    sub_29AFA8A74(this + 2472);
    atomic_store(1u, this + 1380);
    sub_29AFA9250(this + 2788);
    atomic_store(1u, this + 1538);
    sub_29AFA7A90(this + 1840);
    atomic_store(1u, this + 1064);
    sub_29AFA9A50(this + 3228);
    atomic_store(1u, this + 1758);
    sub_29AFAA220(this + 3544);
    atomic_store(1u, this + 1916);
    sub_29AFAA8F4(this + 3860);
    atomic_store(1u, this + 2074);
    sub_29AFAAFC8(this + 4176);
    atomic_store(1u, this + 2232);
    memset(v82, 0, 24);
    v82[3] = this;
    v76[0] = this;
    v76[1] = v82;
    memset(v77, 0, sizeof(v77));
    memset(v78, 0, sizeof(v78));
    memset(v79, 0, sizeof(v79));
    v80 = 0u;
    v81 = 0;
    v75[0] = 0;
    v75[1] = 0;
    v74 = v75;
    v6 = *(this + 153);
    v7 = *(this + 154);
    if (v6 != v7)
    {
      v63 = 0;
      v64 = 0uLL;
      sub_29A2FCAE8(&v63, (v7 - v6) >> 3);
      v8 = *(this + 153);
      v9 = *(this + 154);
      v10 = 126 - 2 * __clz((v9 - v8) >> 3);
      if (v9 == v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      sub_29A24ED30(v8, v9, &v71, v11, 1);
      v15 = *(this + 153);
      v16 = *(this + 154);
      if (v15 != v16)
      {
        sub_29A1E28B4(&v63, *(this + 153));
        for (i = (v15 + 8); i != v16; i = (i + 8))
        {
          if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(i, v15))
          {
            sub_29A1E28B4(&v63, i);
            v15 = i;
          }
        }
      }

      v18 = *(this + 154);
      v19 = *(this + 153);
      while (v18 != v19)
      {
        v18 -= 2;
        sub_29A1E230C(this + 1224, v18);
      }

      *(this + 154) = v19;
      v71 = 0u;
      v72 = 0u;
      v73 = 1065353216;
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v86, v12, v13, v14);
      v20 = v63;
      for (j = v64; v20 != j; v20 = (v20 + 8))
      {
        if (sub_29AF49C14(2))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v20);
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[usdPathsToResync] Updating cache map for %s\n", v23, v24, Text);
        }

        v69 = 0uLL;
        v70 = 0;
        sub_29A1E21F4(&v59, v20);
        sub_29A1E2240(&v59 + 1, v20 + 1);
        v60 = v69;
        v61 = v70;
        v70 = 0;
        v69 = 0uLL;
        sub_29A4B4590(&v66, &v59);
        v25 = sub_29AFAEFA4(&v71, &v66, &v66);
        v27 = v26;
        v85 = &v66 + 1;
        sub_29A1E234C(&v85);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v66 + 1);
        sub_29A1DE3A4(&v66);
        v85 = &v60;
        sub_29A1E234C(&v85);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59 + 1);
        sub_29A1DE3A4(&v59);
        v85 = &v69;
        sub_29A1E234C(&v85);
        if (v27)
        {
          *&v66 = 0;
          *(&v66 + 1) = v87;
          v28 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v66, 0x28uLL);
          *(v28 - 11) = 1;
          *v28 = &unk_2A20A8018;
          v28[1] = this;
          v28[2] = v20;
          v28[3] = v25 + 3;
          v28[4] = v88;
          (***(v28 - 5))();
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v86);
      v30 = v63;
      for (k = v64; v30 != k; v30 = (v30 + 8))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(v30))
        {
          v66 = 0uLL;
          *&v67 = 0;
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, v30, &v66, &v71, v76, &v74);
          v59 = &v66;
          sub_29A124AB0(&v59);
        }

        else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(v30))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v69, v30);
          v66 = 0uLL;
          *&v67 = 0;
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, &v69, &v66, &v71, v76, &v74);
          v59 = &v66;
          sub_29A124AB0(&v59);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v69 + 1);
          sub_29A1DE3A4(&v69);
        }

        else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(v30))
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(this, v30, &v71, v76, 0);
        }

        else
        {
          *&v66 = "usdImaging/delegate.cpp";
          *(&v66 + 1) = "ApplyPendingUpdates";
          *&v67 = 1085;
          *(&v67 + 1) = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()";
          LOBYTE(v68) = 0;
          v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v30);
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v66, "Unexpected path type to resync: <%s>", v32, v31);
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v86);
      sub_29AD2C48C(&v71);
      v86 = &v63;
      sub_29A1E234C(&v86);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_ProcessRemovals(v76, v4, v5);
    if (*(this + 159))
    {
      v71 = 0u;
      v72 = 0u;
      v73 = 1065353216;
      sub_29A1C04D0(&v71, this + 1248);
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v86, v33, v34, v35);
      v66 = 0u;
      v67 = 0u;
      v68 = 1065353216;
      for (m = v72; m; m = *m)
      {
        if (sub_29AF49C14(2))
        {
          v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((m + 2));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[usdPathsToUpdate] Updating cache map for %s\n", v38, v39, v37);
        }

        v69 = 0uLL;
        v70 = 0;
        sub_29A1E21F4(&v63, m + 4);
        sub_29A1E2240(&v63 + 1, m + 5);
        v64 = v69;
        v65 = v70;
        v70 = 0;
        v69 = 0uLL;
        sub_29A4B4590(&v59, &v63);
        v40 = sub_29AFAEFA4(&v66, &v59, &v59);
        v42 = v41;
        v85 = &v60;
        sub_29A1E234C(&v85);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59 + 1);
        sub_29A1DE3A4(&v59);
        v85 = &v64;
        sub_29A1E234C(&v85);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v63 + 1);
        sub_29A1DE3A4(&v63);
        v85 = &v69;
        sub_29A1E234C(&v85);
        if (v42)
        {
          v59 = 0;
          *&v60 = v87;
          v43 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v59, 0x28uLL);
          *(v43 - 11) = 1;
          *v43 = &unk_2A20A8060;
          v43[1] = this;
          v43[2] = m + 2;
          v43[3] = v40 + 3;
          v43[4] = v88;
          (***(v43 - 5))();
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v86);
      v63 = v72;
      *&v64 = 0;
      while (v63 != v64)
      {
        v44 = *sub_29AF9995C(&v63);
        v45 = *sub_29AF9995C(&v63);
        if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v44 + 16)) & 1) != 0 || pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v44 + 16)))
        {
          if (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, (v44 + 16), v45 + 24, &v66, v76, &v74))
          {
            pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_ProcessRemovals(v76, v46, v47);
            sub_29AFAF424(&v66);
          }
        }

        else
        {
          v59 = "usdImaging/delegate.cpp";
          *&v60 = "ApplyPendingUpdates";
          *(&v60 + 1) = 1145;
          v61 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()";
          v62 = 0;
          v48 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v44 + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v59, 3, "Unexpected path type to update: <%s>", v48);
        }

        sub_29AF99994(&v63);
      }

      sub_29AD2C48C(&v66);
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v86);
      sub_29AFA68F8(&v71);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_UniqueifyPathsToRepopulate(v76);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(this, v76);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForVariabilityUpdate(v82);
    DirtyPaths = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetDirtyPaths((this + 6208));
    if (DirtyPaths[2])
    {
      v50 = (DirtyPaths + 1);
      v51 = *DirtyPaths;
      if (*DirtyPaths != (DirtyPaths + 1))
      {
        do
        {
          if (sub_29AF49C14(2))
          {
            v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v51 + 7));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Update]: invalidate collection member prim %s\n", v53, v54, v52);
          }

          v55 = sub_29A2F4F50(this + 9, v51 + 7);
          if (v55)
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v55 + 5));
          }

          v56 = *(v51 + 1);
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = *(v51 + 2);
              v58 = *v57 == v51;
              v51 = v57;
            }

            while (!v58);
          }

          v51 = v57;
        }

        while (v57 != v50);
      }

      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ClearDirtyPaths((this + 6208));
    }

    sub_29A1E2AEC(&v74, v75[0]);
    v86 = &v80;
    sub_29AFA229C(&v86);
    v86 = &v79[1] + 1;
    sub_29A1E234C(&v86);
    v86 = v79;
    sub_29A1E234C(&v86);
    v86 = &v78[1] + 1;
    sub_29AFA2378(&v86);
    v86 = v78;
    sub_29AFA2378(&v86);
    v86 = &v77[1] + 1;
    sub_29A1E234C(&v86);
    v86 = v77;
    sub_29A1E234C(&v86);
    v86 = v82;
    sub_29A1E234C(&v86);
  }

  if (v83)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v84, v83);
  }
}

void sub_29AF97C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29A1E2AEC(&a34, a35);
  sub_29AF93AA0(&a37);
  a37 = &a60;
  sub_29A1E234C(&a37);
  sub_29A0E9CEC(&a64);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF97E28(uint64_t result, double a2)
{
  if (a2 != *(result + 560))
  {
    atomic_fetch_add((result + 576), 2u);
    *(result + 560) = a2;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTimes(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate ***a1, double **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 == a2[1] - *a2)
  {
    if (v2 != v3)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(*v2, **a2);
    }
  }

  else
  {
    v4[0] = "usdImaging/delegate.cpp";
    v4[1] = "SetTimes";
    v4[2] = 897;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTimes(const std::vector<UsdImagingDelegate *> &, const std::vector<UsdTimeCode> &)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Mismatched parameters");
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a1 + 120))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }
}

void sub_29AF981C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (a4)
  {
    v7 = sub_29A328A44(a3, a2);
    v8 = sub_29AF49C14(2);
    if (v7)
    {
      if (v8)
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[_GatherDependencies] Found entry in flattened cache for %s with %lu paths\n", v10, v11, Text, (v7[4] - v7[3]) >> 3);
      }

      if (v7 + 3 != a4)
      {
        v12 = v7[3];
        v13 = v7[4];

        sub_29A324D54(a4, v12, v13, (v13 - v12) >> 3);
      }
    }

    else
    {
      if (v8)
      {
        v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[_GatherDependencies] No entry in flattened cache for %s\n ", v15, v16, v14);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, a2, a4);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, void *a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5, uint64_t a6)
{
  v46 = a4;
  sub_29A0ECEEC(&v60, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(const SdfPath &, const TfTokenVector &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, SdfPathSet *)");
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    sub_29A99AE50(a3);
    v11 = v52 >= 0 ? &__p : __p;
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: %s %s\n", v9, v10, Text, v11, v46);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2))
  {
    v12 = sub_29AFAF990((a1 + 14), a2);
    v14 = v13;
    if (v12 != v13)
    {
      do
      {
        sub_29A1E21F4(&__p, v12 + 9);
        sub_29A1E2240(&__p + 1, v12 + 10);
        if (sub_29A2F4F50(a1 + 9, &__p))
        {
          sub_29A1E28B4(&v57, &__p);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
        sub_29A1DE3A4(&__p);
        v15 = v12[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v12[2];
            v17 = *v16 == v12;
            v12 = v16;
          }

          while (!v17);
        }

        v12 = v16;
      }

      while (v16 != v14);
    }

    goto LABEL_32;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a2))
  {
LABEL_32:
    v24 = 0;
    goto LABEL_33;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v56, a2);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
  v19 = sub_29A5A70E0(a1 + 108);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&__p, v19, &v56);
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v21)
  {
    v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v21 + 79) ^ *NameToken) < 8)
  {
    goto LABEL_26;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v22)
  {
    v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v22 + 71) ^ *NameToken) < 8 || pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CanContainPropertyName(NameToken, v20))
  {
    goto LABEL_26;
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v33)
  {
    v33 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v33 + 158) ^ *NameToken) < 8)
  {
    goto LABEL_53;
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v34)
  {
    v34 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v34 + 114) ^ *NameToken) < 8)
  {
    goto LABEL_53;
  }

  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v35)
  {
    v35 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v35 + 83) ^ *NameToken) < 8 || pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(NameToken, v23) || pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(NameToken, v36))
  {
LABEL_53:
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, &v56, v46, &v57);
LABEL_54:
    v24 = 0;
    goto LABEL_27;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::CanContainPropertyName(NameToken, v37))
  {
    if (sub_29AF49C14(2))
    {
      v39 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: Collection property <%s> modified; conservatively invalidating all prims to ensure that we discover material binding changes.\n", v40, v41, v39);
    }

    v54 = a1[11];
    v55 = 0;
    while (v54 != v55)
    {
      v42 = sub_29AF93F64(&v54);
      sub_29A1E28B4(&v57, (*v42 + 16));
      sub_29AF93F9C(&v54);
    }

    goto LABEL_54;
  }

  if (!pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI::CanContainPropertyName(NameToken, v38))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p);
  }

  if (sub_29AF49C14(2))
  {
    v43 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: HdCoordSys bindings affected for %s\n", v44, v45, v43);
  }

LABEL_26:
  v24 = 1;
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(a1, &v56, v46, a5, 1);
LABEL_27:
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v52);
  sub_29A1DE3A4(&v51);
  if (v50)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v50, v25);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56 + 1);
  sub_29A1DE3A4(&v56);
LABEL_33:
  v27 = v57;
  for (i = v58; v27 != i; v27 += 2)
  {
    v28 = sub_29A2F4F50(a1 + 9, v27);
    if (sub_29AF49C14(2))
    {
      v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v27);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected prim: <%s>\n", v30, v31, v29);
    }

    if (v28)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v28 + 5));
    }
  }

  __p = &v57;
  sub_29A1E234C(&__p);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v61, v60);
  }

  return v24 & 1;
}

void sub_29AF98BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, __int16 *a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A57F434(&__p);
  sub_29A1DCEA8(&a27);
  a23 = &a29;
  sub_29A1E234C(&a23);
  sub_29A0E9CEC(v31 - 104);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4, int a5)
{
  sub_29A0ECEEC(&v68, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)");
  v49 = a3;
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Resync Prim]: <%s>\n", v9, v10, Text);
  }

  sub_29A1E21F4(v63, a2);
  v11 = sub_29A1E2240(v63 + 1, a2 + 1);
  v12 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v11);
  v13 = *&v63[0];
  v14 = *v12;
  if (*&v63[0] != *v12)
  {
    v15 = sub_29AFAF990((a1 + 14), v63);
    v17 = v16;
    if (v15 != v16)
    {
      do
      {
        if (*&v63[0] == *a2)
        {
          if (sub_29AF49C14(2))
          {
            v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v15 + 9));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected prim: <%s>\n", v19, v20, v18);
          }
        }

        else if (sub_29AF49C14(2))
        {
          v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v15 + 9));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected ancestor prim: <%s>\n", v22, v23, v21);
        }

        v24 = sub_29A2F4F50(a1 + 9, v15 + 9);
        if (v24)
        {
          v25 = (v24 + 3);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          if (v24[3] || (v58 = "usdImaging/delegate.cpp", v59 = "_ResyncUsdPrim", v60 = 1386, v61 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)", v62 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "primInfo->adapter != nullptr", 0) & 1) != 0))
          {
            if ((sub_29AF99BEC(v25) & 1) == 0)
            {
              (*(**v25 + 136))(*v25, v15 + 9, a4);
            }
          }
        }

        v26 = *(v15 + 1);
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = *(v15 + 2);
            v28 = *v27 == v15;
            v15 = v27;
          }

          while (!v28);
        }

        v15 = v27;
      }

      while (v27 != v17);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v58, v63);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v63 + 1);
  sub_29A1DE3A4(v63);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, a2, v49, &v65);
  v30 = v65;
  v29 = v66;
  if (v66 == v65)
  {
    v42 = sub_29A5A70E0(a1 + 108);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v58, v42, a2);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v58);
  }

  do
  {
    if (sub_29AF49C14(2))
    {
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v30);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected child prim: <%s>\n", v32, v33, v31);
    }

    v34 = sub_29A2F4F50(a1 + 9, v30);
    if (v34)
    {
      v37 = (v34 + 3);
    }

    else
    {
      v37 = 0;
    }

    if (v34)
    {
      if (v34[3] || (v58 = "usdImaging/delegate.cpp", v59 = "_ResyncUsdPrim", v60 = 1423, v61 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)", v62 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "primInfo->adapter != nullptr", 0) & 1) != 0))
      {
        if (v13 == v14)
        {
          v38 = *v37;
LABEL_40:
          (*(*v38 + 136))(v38, v30, a4);
          goto LABEL_41;
        }

        v39 = sub_29AF99BEC(v37);
        v38 = *v37;
        {
          goto LABEL_40;
        }
      }
    }

LABEL_41:
    v30 = (v30 + 8);
  }

  while (v30 != v29);
  if (v13 == v14)
  {
    if (a5)
    {
      if (sub_29AF49C14(2))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  (repopulating from root)\n", v40, v41);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a4, a2);
    }

    else
    {
      memset(v63, 0, sizeof(v63));
      v64 = 1065353216;
      v43 = a1[111];
      v58 = a1[110];
      v59 = v43;
      while (v58 != v59)
      {
        v44 = sub_29A1E25CC(&v58, v35, v36);
        sub_29A43A86C(v63, v44, v44);
        sub_29A1E264C(&v58);
      }

      v45 = sub_29A5A70E0(a1 + 108);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v55, v45, a2);
      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicate(a1, &v51);
      sub_29A58C2CC(&v58, &v55, &v51);
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56 + 1);
      sub_29A1DE3A4(&v56);
      if (*(&v55 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v55 + 1), v46);
      }

      sub_29A58BB1C(&v58, &v55);
      v51.n128_u64[0] = v59;
      v51.n128_u64[1] = &v58;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v52);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v52 + 1);
      v53 = 0;
      v54 = 0;
      if (v55 == *&v51)
      {
        v47 = 1;
        if (v56 == v52 && !v57 && !BYTE4(v57))
        {
          v47 = BYTE5(v57);
        }
      }

      else
      {
        v47 = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v52 + 1);
      sub_29A1DE3A4(&v52);
      if (v47)
      {
        sub_29A58BDD8(&v55, &v51);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56 + 1);
      sub_29A1DE3A4(&v56);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60 + 1);
      sub_29A1DE3A4(&v60);
      sub_29A43A24C(v63);
    }
  }

  v58 = &v65;
  sub_29A1E234C(&v58);
  if (v68)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v69, v68);
  }
}

void sub_29AF99768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  a28 = (v28 - 128);
  sub_29A1E234C(&a28);
  sub_29A0E9CEC(v28 - 104);
  _Unwind_Resume(a1);
}

void *sub_29AF9995C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD078();
  }

  return result;
}

uint64_t sub_29AF99994(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::_HasConnectionChanged(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29A55CDFC(*a2, a1);
  if (*a2 + 8 == v3)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = v5 + 8;
  do
  {
    v7 = *(*(v6 - 8) + 184);
    result = (v7 >> 12) & 1;
    if ((v7 & 0x1000) != 0)
    {
      break;
    }

    v9 = v6 == v4;
    v6 += 8;
  }

  while (!v9);
  return result;
}

void *sub_29AF99A88(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD0C4();
  }

  return result;
}

void *sub_29AF99AC0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange>::operator++() [T = const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t sub_29AF99B68(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange>::operator*() [T = const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

const void *sub_29AF99BEC(const void **a1)
{
  result = *a1;
  if (result)
  {
  }

  return result;
}

uint64_t sub_29AF99C54(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v3);

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
}

uint64_t sub_29AF99C94(pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a1)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v3);

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_UpdateSingleValue(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v6 = sub_29A2F4F50(this + 9, a2);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (result = sub_29B2CD110(v16), (result & 1) != 0))
  {
    v8 = *v7;
    if (!*v7)
    {
      v14[0] = "usdImaging/delegate.cpp";
      v14[1] = "_UpdateSingleValue";
      v14[2] = 1720;
      v14[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_UpdateSingleValue(const SdfPath &, int)";
      v15 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v11, v12, Text);
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "primInfo->adapter", v13);
      if (!result)
      {
        return result;
      }

      v8 = *v7;
    }

    return (*(*v8 + 112))(v8, v7 + 2, a2, a3, 0, *(this + 140));
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  v8[0] = this;
  memset(&v8[1], 0, 32);
  memset(v9, 0, sizeof(v9));
  memset(v10, 0, sizeof(v10));
  memset(v11, 0, sizeof(v11));
  for (i = *(this + 11); i; i = *i)
  {
    if (!i[3])
    {
      v6[0] = "usdImaging/delegate.cpp";
      v6[1] = "_MarkRenderTagsDirty";
      v6[2] = 1738;
      v6[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty()";
      v7 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
      v5 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v3, v4, Text);
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "primInfo.adapter", v5) & 1) == 0)
      {
        continue;
      }
    }

    (*(*i[3] + 184))(i[3], i + 5, i + 2, v8);
  }

  v6[0] = &v11[1] + 1;
  sub_29AFA229C(v6);
  v6[0] = v11;
  sub_29A1E234C(v6);
  v6[0] = &v10[1] + 1;
  sub_29A1E234C(v6);
  v6[0] = v10;
  sub_29AFA2378(v6);
  v6[0] = &v9[1] + 1;
  sub_29AFA2378(v6);
  v6[0] = v9;
  sub_29A1E234C(v6);
  v6[0] = &v8[2];
  sub_29A1E234C(v6);
}

void sub_29AF99F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayRender(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8984) != a2)
  {
    *(this + 8984) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayProxy(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8985) != a2)
  {
    *(this + 8985) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayGuides(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8986) != a2)
  {
    *(this + 8986) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetUsdDrawModesEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8987) != a2)
  {
    if (*(this + 12))
    {
      v6 = v2;
      v7 = v3;
      v4[0] = "usdImaging/delegate.cpp";
      v4[1] = "SetUsdDrawModesEnabled";
      v4[2] = 1803;
      v4[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetUsdDrawModesEnabled(BOOL)";
      v5 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "SetUsdDrawModesEnabled() was called after population; this is currently unsupported...");
    }

    else
    {
      *(this + 8987) = a2;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneMaterialsEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8989) != a2)
  {
    *(this + 8989) = a2;
    v9[0] = this;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(this + 11); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetSceneMaterialsEnabled";
        v7[2] = 1824;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneMaterialsEnabled(BOOL)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 208))(i[3], i + 5, i + 2, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneLightsEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8990) != a2)
  {
    *(this + 8990) = a2;
    v9[0] = this;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(this + 11); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetSceneLightsEnabled";
        v7[2] = 1846;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneLightsEnabled(BOOL)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 152))(i[3], i + 5, i + 2, 18, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetWindowPolicy(uint64_t a1, int a2)
{
  if (*(a1 + 8992) != a2)
  {
    *(a1 + 8992) = a2;
    v9[0] = a1;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(a1 + 88); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetWindowPolicy";
        v7[2] = 1867;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetWindowPolicy(CameraUtilConformWindowPolicy)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 224))(i[3], i + 5, i + 2, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, char a2)
{
  if (*(this + 12))
  {
    v2 = "usdImaging/delegate.cpp";
    v3 = "SetDisplayUnloadedPrimsWithBounds";
    v4 = 1881;
    v5 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(BOOL)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "SetDisplayUnloadedPrimsWithBounds() was called after population; this is currently unsupported.");
  }

  else if (*(this + 8988))
  {
    *(this + 8997) = a2;
  }

  else
  {
    v2 = "usdImaging/delegate.cpp";
    v3 = "SetDisplayUnloadedPrimsWithBounds";
    v4 = 1885;
    v5 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(BOOL)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "This delegate does not have draw mode adapter; unloaded prims cannot be displayed with bounds.");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCurrentTimeSamplingInterval@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, uint64_t a2@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 282);
  v5 = 0.0;
  v6 = 0.0;
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v7)
    {
      v7 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    (*(*this + 328))(v14, this, this + 1128, v7 + 160);
    if (sub_29A346994(v14))
    {
      v8 = *sub_29A337248(v14);
      v5 = v8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v9)
    {
      v9 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    (*(*this + 328))(v13, this, this + 1128, v9 + 168);
    if (sub_29A346994(v13))
    {
      v10 = *sub_29A337248(v13);
      v6 = v10;
    }

    sub_29A186B14(v13);
    result = sub_29A186B14(v14);
  }

  v11 = *(this + 140);
  v12 = v5 + v11;
  *a2 = v12;
  *(a2 + 8) = fabs(v12) != INFINITY;
  *(a2 + 16) = v6 + v11;
  *(a2 + 24) = fabs(v6 + v11) != INFINITY;
  return result;
}

void sub_29AF9A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AF9A890(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AF9A888);
}

int *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCameraForSampling(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 282, a2);

  return sub_29A225948(this + 283, a2 + 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetRenderTag@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v25);
  v5 = sub_29A2F4F50(this + 9, &v25);
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 29);
  *a3 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a3 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v6 || (v23[0] = "usdImaging/delegate.cpp", v23[1] = "GetRenderTag", v23[2] = 1938, v23[3] = "virtual TfToken pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetRenderTag(const SdfPath &)", v24 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v23, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 368))(v23);
    if (v23 == a3)
    {
      if ((v23[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a3 = v23[0];
      v23[0] = 0;
    }
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 29) ^ *a3) <= 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v11)
    {
      v11 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

LABEL_36:
    sub_29A166F2C(a3, v11);
    goto LABEL_37;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = this + 0x2000;
  if ((*(v12 + 119) ^ *a3) <= 7 && v13[792] != 1)
  {
    goto LABEL_33;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 111) ^ *a3) <= 7 && v13[793] != 1)
  {
    goto LABEL_33;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 49) ^ *a3) <= 7 && (v13[794] & 1) == 0)
  {
LABEL_33:
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v16)
    {
      v16 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v11 = (v16 + 16);
    goto LABEL_36;
  }

LABEL_37:
  if (sub_29AF49C14(0))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v25);
    v20 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetRenderTag %s -> %s \n", v18, v19, Text, v21);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
  return sub_29A1DE3A4(&v25);
}

void sub_29AF9AC04(_Unwind_Exception *a1)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF9AC64@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29A2F4F50((a1 + 176), a2);
  if (v6)
  {
    v7 = v6;
    sub_29A1E21F4(a3, v6 + 6);
    v8 = a3 + 1;
    v9 = v7 + 7;
LABEL_5:

    return sub_29A1E2240(v8, v9);
  }

  v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(0);
  v12 = *(a1 + 16);
  v11 = (a1 + 16);
  if (v12 == *v10)
  {
    sub_29A1E21F4(a3, a2);
    v8 = a3 + 1;
    v9 = a2 + 1;
    goto LABEL_5;
  }

  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v10);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, v11, v14, 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v11, "usdImaging", "virtual HdBasisCurvesTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v10);
  v6 = sub_29A2F4F50(this + 9, &v10);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "GetBasisCurvesTopology", v13[2] = 1969, v13[3] = "virtual HdBasisCurvesTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology(const SdfPath &)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 408))(v13, *(this + 140));
    if (sub_29AF9AF0C(v13))
    {
      v8 = sub_29AF9AF94(v13);
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3, v8);
      sub_29A186B14(v13);
      goto LABEL_9;
    }

    sub_29A186B14(v13);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3);
LABEL_9:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  result = sub_29A1DE3A4(&v10);
  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return result;
}

void sub_29AF9AEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9AF0C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_2A2075CC0 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void **sub_29AF9AF94(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AF9AF0C(a1))
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
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void **a3@<X8>)
{
  v27[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v25, "usdImaging", "virtual HdMeshTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v24);
  v6 = sub_29A2F4F50(this + 9, &v24);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v16 = "usdImaging/delegate.cpp";
    v17[0] = "GetMeshTopology";
    v17[1] = 1991;
    *&v18 = "virtual HdMeshTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology(const SdfPath &)";
    BYTE8(v18) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v16, "primInfo", 0) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  (*(**v7 + 408))(v27, *(this + 140));
  if (!sub_29AF9B34C(v27))
  {
    sub_29A186B14(v27);
LABEL_16:
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3);
    goto LABEL_17;
  }

  v8 = sub_29AF9B3D4(v27);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, v8, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = a3[48];
  if (v9 != a3[49])
  {
    v11 = *v9;
    v10 = v9 + 1;
    LODWORD(v16) = v11;
    sub_29AF9B468(this, v10, (&v16 + 4));
    v10 += 2;
    sub_29AF9B468(this, v10, (v17 + 4));
    v12 = *(v10 + 3);
    v19 = *(v10 + 7);
    v18 = v12;
    v13 = *(v10 + 11);
    v20 = v13;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(&v19 + 1))
      {
        v14 = *(&v19 + 1);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    sub_29ACC86E8(&v21, &v16);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if (a3 + 48 != &v21)
  {
    sub_29AC52FEC(a3 + 48, v21, v22, (v22 - v21) >> 6);
  }

  v16 = &v21;
  sub_29AC5346C(&v16);
  sub_29A186B14(v27);
LABEL_17:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
  result = sub_29A1DE3A4(&v24);
  if (v25)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return result;
}

void sub_29AF9B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(v20 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9B34C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_2A207C888 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void **sub_29AF9B3D4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AF9B34C(a1))
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
  }
}

uint64_t *sub_29AF9B468@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29A2F4F50((a1 + 136), a2);
  if (v6)
  {
    v7 = v6;
    sub_29A1E21F4(a3, v6 + 6);
    v8 = a3 + 1;
    v9 = v7 + 7;
LABEL_9:

    return sub_29A1E2240(v8, v9);
  }

  v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(0);
  v12 = *(a1 + 16);
  v11 = (a1 + 16);
  if (v12 == *v10 || !(v13 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2)))
  {
    sub_29A1E21F4(a3, a2);
    v8 = a3 + 1;
    v9 = a2 + 1;
    goto LABEL_9;
  }

  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v13);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, v14, v11, 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v12, "usdImaging", "virtual UsdImagingDelegate::SubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v11);
  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetSubdivTags", v9[2] = 2024, v9[3] = "virtual UsdImagingDelegate::SubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 296))(*v7, v7 + 2, &v11, *(this + 140));
  }

  else
  {
    *(a3 + 224) = 0;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  result = sub_29A1DE3A4(&v11);
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29AF9B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v12, "usdImaging", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v11);
  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetExtent", v9[2] = 2040, v9[3] = "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 416))(*v7, v7 + 2, &v11, *(this + 140));
  }

  else
  {
    *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    *(a3 + 16) = xmmword_29B43C5A0;
    *(a3 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  result = sub_29A1DE3A4(&v11);
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29AF9B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v9);
  v3 = sub_29A2F4F50(this + 9, &v9);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 || (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetDoubleSided", v7[2] = 2055, v7[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDoubleSided(const SdfPath &)", v8 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0) & 1) != 0))
  {
    v5 = (*(**v4 + 424))(*v4, v4 + 2, &v9, *(this + 140));
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  sub_29A1DE3A4(&v9);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v9);
  v3 = sub_29A2F4F50(this + 9, &v9);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    v4 = 0;
  }

  if (!v3 && (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetCullStyle", v7[2] = 2074, v7[3] = "virtual HdCullStyle pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCullStyle(const SdfPath &)", v8 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0) & 1) == 0) || (v5 = (*(**v4 + 400))(*v4, v4 + 2, &v9, *(this + 140)), !v5))
  {
    v5 = *(this + 292);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
  sub_29A1DE3A4(&v9);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDisplayStyle(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v6);
  v3 = sub_29A328A44(this + 32, &v6);
  v4 = (this + 1136);
  if (v3)
  {
    v4 = (v3 + 3);
  }

  sub_29AD01650(&v7, *v4, 0, 1, 0, 0, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
  sub_29A1DE3A4(&v6);
  return v7;
}

void sub_29AF9BACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetModelDrawMode@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29ACB7794(a3);
  sub_29AF9AC64(this, a2, &v13);
  v6 = sub_29A2F4F50(this + 9, &v13);
  if (v6)
  {
    v7 = (v6 + 3);
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (*&v9 = "usdImaging/delegate.cpp", *(&v9 + 1) = "GetModelDrawMode", v10 = 2107, v11 = "virtual HdModelDrawMode pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetModelDrawMode(const SdfPath &)", v12 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v9, "primInfo", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetFullModelDrawMode(&v9, *v7, (v7 + 2));
    sub_29AF9BBF8(a3, &v9);
    sub_29AFA24D0(&v9);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13 + 1);
  return sub_29A1DE3A4(&v13);
}

void sub_29AF9BBC8(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v2 - 40));
  sub_29AFA24D0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9BBF8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a1 + 24);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v7 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v7;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v8;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v9;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v11 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v11;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v13 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v13;
  *(a2 + 247) = 0;
  *(a2 + 224) = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v14 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v14;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v15 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v15;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v16 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *v16 = v17;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevelFallback(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, unsigned int a2)
{
  if (*(this + 284) != a2 && sub_29AF9C094(this, a2))
  {
    *(this + 284) = a2;
    v14[0] = this;
    memset(&v14[1], 0, 32);
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    memset(v17, 0, sizeof(v17));
    v12 = *(this + 11);
    v13 = 0;
    while (v12 != v13)
    {
      v4 = *sub_29AF93F64(&v12);
      v5 = *sub_29AF93F64(&v12);
      if (!sub_29A2F4F50(this + 32, (v4 + 16)))
      {
        if (*(v5 + 24) || (v10[0] = "usdImaging/delegate.cpp", v10[1] = "SetRefineLevelFallback", v10[2] = 2129, v10[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevelFallback(int)", v11 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v4 + 16)), v9 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v7, v8, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "primInfo.adapter", v9) & 1) != 0))
        {
          (*(**(v5 + 24) + 160))(*(v5 + 24), v5 + 40, v4 + 16, v14);
        }
      }

      sub_29AF93F9C(&v12);
    }

    v10[0] = &v17[1] + 1;
    sub_29AFA229C(v10);
    v10[0] = v17;
    sub_29A1E234C(v10);
    v10[0] = &v16[1] + 1;
    sub_29A1E234C(v10);
    v10[0] = v16;
    sub_29AFA2378(v10);
    v10[0] = &v15[1] + 1;
    sub_29AFA2378(v10);
    v10[0] = v15;
    sub_29A1E234C(v10);
    v10[0] = &v14[2];
    sub_29A1E234C(v10);
  }
}

void sub_29AF9C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AF9C094(uint64_t a1, unsigned int a2)
{
  if (a2 >= 9)
  {
    v4[0] = "usdImaging/delegate.h";
    v4[1] = "_ValidateRefineLevel";
    v4[2] = 519;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ValidateRefineLevel(int)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Invalid refinement level(%d), expected range is [0,8]", a2);
  }

  return a2 < 9;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, unsigned int a3)
{
  if (sub_29AF9C094(this, a3))
  {
    v6 = sub_29A2F4F50(this + 32, a2);
    if (v6)
    {
      if (*(v6 + 6) == a3)
      {
        return;
      }

      *(v6 + 6) = a3;
    }

    else
    {
      v22[0] = a2;
      *(sub_29A85CB40(this + 256, a2, &unk_29B4D6118, v22) + 6) = a3;
      if (*(this + 284) == a3)
      {
        return;
      }
    }

    v22[0] = this;
    memset(&v22[1], 0, 32);
    memset(v23, 0, sizeof(v23));
    memset(v24, 0, sizeof(v24));
    memset(v25, 0, sizeof(v25));
    v7 = sub_29A2F4F50(this + 9, a2);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v20[0] = "usdImaging/delegate.cpp";
      v20[1] = "SetRefineLevel";
      v20[2] = 2165;
      v20[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(const SdfPath &, int)";
      v21 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v11, v12, Text);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v20, "primInfo", v13))
      {
        goto LABEL_12;
      }
    }

    v9 = *v8;
    if (!*v8)
    {
      LOBYTE(v19) = 0;
      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v15, v16, v14, "usdImaging/delegate.cpp", "SetRefineLevel", 2166, "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(const SdfPath &, int)", v19);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v18, "primInfo->adapter", v17))
      {
        goto LABEL_12;
      }

      v9 = *v8;
    }

    (*(*v9 + 160))(v9, v8 + 2, a2, v22);
LABEL_12:
    v20[0] = &v25[1] + 1;
    sub_29AFA229C(v20);
    v20[0] = v25;
    sub_29A1E234C(v20);
    v20[0] = &v24[1] + 1;
    sub_29A1E234C(v20);
    v20[0] = v24;
    sub_29AFA2378(v20);
    v20[0] = &v23[1] + 1;
    sub_29AFA2378(v20);
    v20[0] = v23;
    sub_29A1E234C(v20);
    v20[0] = &v22[2];
    sub_29A1E234C(v20);
  }
}

void sub_29AF9C360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = sub_29A2F4F50(this + 32, a2);
  if (v4)
  {
    v5 = *(v4 + 6);
    sub_29AFAFC20(this + 32, v4);
    if (v5 != *(this + 284))
    {
      v21[0] = this;
      memset(&v21[1], 0, 32);
      memset(v22, 0, sizeof(v22));
      memset(v23, 0, sizeof(v23));
      memset(v24, 0, sizeof(v24));
      v6 = sub_29A2F4F50(this + 9, a2);
      if (v6)
      {
        v7 = v6 + 3;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        v19[0] = "usdImaging/delegate.cpp";
        v19[1] = "ClearRefineLevel";
        v19[2] = 2188;
        v19[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(const SdfPath &)";
        v20 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v10, v11, Text);
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "primInfo", v12))
        {
          goto LABEL_9;
        }
      }

      v8 = *v7;
      if (!*v7)
      {
        LOBYTE(v18) = 0;
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, v13, "usdImaging/delegate.cpp", "ClearRefineLevel", 2189, "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(const SdfPath &)", v18);
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "primInfo->adapter", v16))
        {
          goto LABEL_9;
        }

        v8 = *v7;
      }

      (*(*v8 + 160))(v8, v7 + 2, a2, v21);
LABEL_9:
      v19[0] = &v24[1] + 1;
      sub_29AFA229C(v19);
      v19[0] = v24;
      sub_29A1E234C(v19);
      v19[0] = &v23[1] + 1;
      sub_29A1E234C(v19);
      v19[0] = v23;
      sub_29AFA2378(v19);
      v19[0] = &v22[1] + 1;
      sub_29AFA2378(v19);
      v19[0] = v22;
      sub_29A1E234C(v19);
      v19[0] = &v21[2];
      sub_29A1E234C(v19);
    }
  }
}

void sub_29AF9C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetReprFallback(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::HdReprSelector::operator==(this + 143, a2))
  {
    sub_29A166F2C(this + 143, a2);
    sub_29A166F2C(this + 144, a2 + 1);
    sub_29A166F2C(this + 145, a2 + 2);
    v15[0] = this;
    memset(&v15[1], 0, 32);
    memset(v16, 0, sizeof(v16));
    memset(v17, 0, sizeof(v17));
    memset(v18, 0, sizeof(v18));
    v13 = *(this + 11);
    v14 = 0;
    while (v13 != v14)
    {
      v4 = *sub_29AF93F64(&v13);
      v5 = sub_29AF93F64(&v13);
      v6 = *v5;
      if (*(*v5 + 24) || (v11[0] = "usdImaging/delegate.cpp", v11[1] = "SetReprFallback", v11[2] = 2212, v11[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetReprFallback(const HdReprSelector &)", v12 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v4 + 16)), v10 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v8, v9, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "primInfo.adapter", v10) & 1) != 0))
      {
        (*(**(v6 + 24) + 168))(*(v6 + 24), v6 + 40, v4 + 16, v15);
      }

      sub_29AF93F9C(&v13);
    }

    v11[0] = &v18[1] + 1;
    sub_29AFA229C(v11);
    v11[0] = v18;
    sub_29A1E234C(v11);
    v11[0] = &v17[1] + 1;
    sub_29A1E234C(v11);
    v11[0] = v17;
    sub_29AFA2378(v11);
    v11[0] = &v16[1] + 1;
    sub_29AFA2378(v11);
    v11[0] = v16;
    sub_29A1E234C(v11);
    v11[0] = &v15[2];
    sub_29A1E234C(v11);
  }
}

void sub_29AF9C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCullStyleFallback(uint64_t a1, int a2)
{
  if (*(a1 + 1168) != a2)
  {
    *(a1 + 1168) = a2;
    v13[0] = a1;
    memset(&v13[1], 0, 32);
    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    v11 = *(a1 + 88);
    v12 = 0;
    while (v11 != v12)
    {
      v2 = *sub_29AF93F64(&v11);
      v3 = sub_29AF93F64(&v11);
      v4 = *v3;
      if (*(*v3 + 24) || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "SetCullStyleFallback", v9[2] = 2235, v9[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCullStyleFallback(HdCullStyle)", v10 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 16)), v8 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v6, v7, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo.adapter", v8) & 1) != 0))
      {
        (*(**(v4 + 24) + 176))(*(v4 + 24), v4 + 40, v2 + 16, v13);
      }

      sub_29AF93F9C(&v11);
    }

    v9[0] = &v16[1] + 1;
    sub_29AFA229C(v9);
    v9[0] = v16;
    sub_29A1E234C(v9);
    v9[0] = &v15[1] + 1;
    sub_29A1E234C(v9);
    v9[0] = v15;
    sub_29AFA2378(v9);
    v9[0] = &v14[1] + 1;
    sub_29AFA2378(v9);
    v9[0] = v14;
    sub_29A1E234C(v9);
    v9[0] = &v13[2];
    sub_29A1E234C(v9);
  }
}

void sub_29AF9C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v4 = (this + 976);
  if (!pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(a2, this + 122))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = *(a2 + 3);
    v4[2] = *(a2 + 2);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 7);
    v4[6] = *(a2 + 6);
    v4[7] = v10;
    v4[4] = v8;
    v4[5] = v9;
    v22[0] = this;
    memset(&v22[1], 0, 32);
    memset(v23, 0, sizeof(v23));
    memset(v24, 0, sizeof(v24));
    memset(v25, 0, sizeof(v25));
    v20 = *(this + 11);
    v21 = 0;
    while (v20 != v21)
    {
      v11 = *sub_29AF93F64(&v20);
      v12 = sub_29AF93F64(&v20);
      v13 = *v12;
      if (*(*v12 + 24) || (v18[0] = "usdImaging/delegate.cpp", v18[1] = "SetRootTransform", v18[2] = 2259, v18[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootTransform(const GfMatrix4d &)", v19 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 + 16)), v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v15, v16, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "primInfo.adapter", v17) & 1) != 0))
      {
        (*(**(v13 + 24) + 192))(*(v13 + 24), v13 + 40, v11 + 16, v22);
      }

      sub_29AF93F9C(&v20);
    }

    v18[0] = &v25[1] + 1;
    sub_29AFA229C(v18);
    v18[0] = v25;
    sub_29A1E234C(v18);
    v18[0] = &v24[1] + 1;
    sub_29A1E234C(v18);
    v18[0] = v24;
    sub_29AFA2378(v18);
    v18[0] = &v23[1] + 1;
    sub_29AFA2378(v18);
    v18[0] = v23;
    sub_29A1E234C(v18);
    v18[0] = &v22[2];
    sub_29A1E234C(v18);
  }
}

void sub_29AF9CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetInvisedPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *a1, uint64_t *a2)
{
  v3 = *(a1 + 114);
  v4 = *(a1 + 113);
  v5 = *a2;
  v6 = a2[1];
  if (v3 - v4 == v6 - v5)
  {
    if (v4 == v3)
    {
      return;
    }

    for (i = v5; *v4 == *i; ++i)
    {
      if (++v4 == v3)
      {
        return;
      }
    }
  }

  sub_29AFAFC7C(&v20, v5, v6);
  sub_29A31BE04(&v18, *(a1 + 113), *(a1 + 114));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_29AFAFD00(v20, &v21, v18, &v19, &v15, &v13);
  pxrInternal__aapl__pxrReserved__::SdfPath::RemoveDescendentPaths(&v15);
  v14[0] = v15;
  v14[1] = v16;
  if (v15 != v16)
  {
    v11 = sub_29A1E25CC(v14, v9, v10);
    sub_29AF96818(a1, v11);
  }

  if ((a1 + 904) != a2)
  {
    sub_29A324D54(a1 + 904, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
  v13 = &v15;
  sub_29A1E234C(&v13);
  sub_29A1E2AEC(&v18, v19);
  sub_29A1E2AEC(&v20, v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRigidXformOverrides(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 928);
  result = sub_29AFAFE74(a1 + 928, a2);
  if ((result & 1) == 0)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v12 = *(a2 + 16);
    v13 = 0;
    if (v12)
    {
      v6 = sub_29AF9D414(&v12);
      sub_29AF96818(a1, (*v6 + 16));
    }

    memset(v18, 0, sizeof(v18));
    v12 = *(a1 + 944);
    v13 = 0;
    if (v12)
    {
      v7 = sub_29AF9D4CC(&v12);
      sub_29AF96818(a1, (*v7 + 16));
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_29AF9D584(a1 + 1288, v19, v18, &v15);
    pxrInternal__aapl__pxrReserved__::SdfPath::RemoveDescendentPaths(&v15);
    v14[0] = v15;
    v14[1] = v16;
    if (v15 != v16)
    {
      v10 = sub_29A1E25CC(v14, v8, v9);
      sub_29AF96818(a1, v10);
    }

    if (v4 != a2)
    {
      *(a1 + 960) = *(a2 + 32);
      sub_29AFB1238(v4, *(a2 + 16), 0);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
    v11 = &v15;
    sub_29A1E234C(&v11);
    v11 = v18;
    sub_29A65E064(&v11);
    return sub_29AFA17D0(v19);
  }

  return result;
}

void sub_29AF9D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  a12 = &a23;
  sub_29A1E234C(&a12);
  a12 = &a26;
  sub_29A65E064(&a12);
  sub_29AFA17D0(v26 - 144);
  _Unwind_Resume(a1);
}

void *sub_29AF9D414(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD188();
  }

  return result;
}

uint64_t sub_29AF9D44C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void *sub_29AF9D4CC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD1D4();
  }

  return result;
}

uint64_t sub_29AF9D504(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t sub_29AF9D584(uint64_t result, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdObject **a3, uint64_t a4)
{
  v4 = result;
  if (*(a2 + 24) || *a3 != a3[1])
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 1065353216;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v31 = *(a2 + 16);
    v32 = 0;
    if (v31)
    {
      v5 = *sub_29AFB0344(&v31);
      sub_29AFB0344(&v31);
      sub_29AFB037C(v4, (v5 + 16));
    }

    v35[0] = v40;
    v35[1] = 0;
    if (v40)
    {
      v6 = *sub_29AFB061C(v35);
      sub_29AFB061C(v35);
      if (v36 != v37)
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
      }

      sub_29A75A400(&v31, v6 + 16);
      sub_29A58BB1C(&v31, &v25);
      v20 = v32;
      v21 = &v31;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
      v23 = 0;
      v24 = 0;
      while (v26 != v21 || v25 != v20 || v27 != v22 || v28 != v23 || v29 != v24 || v30 != HIBYTE(v24))
      {
        sub_29A58BBEC(&v25, v15);
        v7 = sub_29AFB0654(v4, v15);
        if (v7)
        {
          v8 = atomic_load((v4 + 576));
          atomic_store(v8 - 1, v7 + 40);
        }

        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
        sub_29A1DE3A4(&v17);
        if (v16)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v9);
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v25);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
      sub_29A1DE3A4(&v22);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
      sub_29A1DE3A4(&v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v34);
      sub_29A1DE3A4(&v33);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    v11 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        if (sub_29AFB11A4((v4 + 584), v11))
        {
          sub_29A75A400(&v31, v11);
          sub_29A58BB1C(&v31, &v25);
          v20 = v32;
          v21 = &v31;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
          v23 = 0;
          v24 = 0;
          while (v26 != v21 || v25 != v20 || v27 != v22 || v28 != v23 || v29 != v24 || v30 != HIBYTE(v24))
          {
            sub_29A58BBEC(&v25, v15);
            v12 = sub_29AFB0654(v4, v15);
            if (v12)
            {
              v13 = atomic_load((v4 + 576));
              atomic_store(v13 - 1, v12 + 40);
            }

            if ((v19 & 7) != 0)
            {
              atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
            sub_29A1DE3A4(&v17);
            if (v16)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v14);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v25);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
          sub_29A1DE3A4(&v22);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
          sub_29A1DE3A4(&v27);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v34);
          sub_29A1DE3A4(&v33);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
        }

        v11 += 32;
      }

      while (v11 != v10);
    }

    v31 = &v36;
    sub_29A1E234C(&v31);
    return sub_29AFA17D0(&v39);
  }

  return result;
}

void sub_29AF9DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 - 152);
  sub_29A1E234C(&a19);
  sub_29AFA17D0(v19 - 128);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 1104) != a2)
  {
    *(this + 1104) = a2;
    v13[0] = this;
    memset(&v13[1], 0, 32);
    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    v11 = *(this + 11);
    v12 = 0;
    while (v11 != v12)
    {
      v2 = *sub_29AF93F64(&v11);
      v3 = sub_29AF93F64(&v11);
      v4 = *v3;
      if (*(*v3 + 24) || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "SetRootVisibility", v9[2] = 2401, v9[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootVisibility(BOOL)", v10 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 16)), v8 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v6, v7, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo.adapter", v8) & 1) != 0))
      {
        (*(**(v4 + 24) + 200))(*(v4 + 24), v4 + 40, v2 + 16, v13);
      }

      sub_29AF93F9C(&v11);
    }

    v9[0] = &v16[1] + 1;
    sub_29AFA229C(v9);
    v9[0] = v16;
    sub_29A1E234C(v9);
    v9[0] = &v15[1] + 1;
    sub_29A1E234C(v9);
    v9[0] = v15;
    sub_29AFA2378(v9);
    v9[0] = &v14[1] + 1;
    sub_29AFA2378(v9);
    v9[0] = v14;
    sub_29A1E234C(v9);
    v9[0] = &v13[2];
    sub_29A1E234C(v9);
  }
}

void sub_29AF9DDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootInstancerId(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = (this + 1108);
  if (*a2 != *v3)
  {
    sub_29A2258F0(v3, a2);
    sub_29A225948(this + 278, a2 + 1);
    v16[0] = this;
    memset(&v16[1], 0, 32);
    memset(v17, 0, sizeof(v17));
    memset(v18, 0, sizeof(v18));
    memset(v19, 0, sizeof(v19));
    v14 = *(this + 11);
    v15 = 0;
    while (v14 != v15)
    {
      v5 = *sub_29AF93F64(&v14);
      v6 = sub_29AF93F64(&v14);
      v7 = *v6;
      if (*(*v6 + 24) || (v12[0] = "usdImaging/delegate.cpp", v12[1] = "SetRootInstancerId", v12[2] = 2423, v12[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootInstancerId(const SdfPath &)", v13 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v5 + 16)), v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v9, v10, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "primInfo.adapter", v11) & 1) != 0))
      {
        (*(**(v7 + 24) + 152))(*(v7 + 24), v7 + 40, v5 + 16, 0x10000, v16);
      }

      sub_29AF93F9C(&v14);
    }

    v12[0] = &v19[1] + 1;
    sub_29AFA229C(v12);
    v12[0] = v19;
    sub_29A1E234C(v12);
    v12[0] = &v18[1] + 1;
    sub_29A1E234C(v12);
    v12[0] = v18;
    sub_29AFA2378(v12);
    v12[0] = &v17[1] + 1;
    sub_29AFA2378(v12);
    v12[0] = v17;
    sub_29A1E234C(v12);
    v12[0] = &v16[2];
    sub_29A1E234C(v12);
  }
}

void sub_29AF9E008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPath@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unsigned int **a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X8>)
{
  sub_29AF9AC64(a1, a2, &v34);
  v10 = sub_29A2F4F50((a1 + 72), &v34);
  if (v10 && (v11 = v10[3]) != 0)
  {
    (*(*v11 + 312))(v11, &v34, a3, a4);
    if (sub_29AF49C14(9))
    {
      sub_29A008864(v28);
      if (a4)
      {
        v12 = *a4;
        v13 = a4[1];
        if (*a4 != v13)
        {
          do
          {
            v14 = pxrInternal__aapl__pxrReserved__::operator<<(&v29, v12);
            v15 = sub_29A00911C(v14, ": ", 2);
            v16 = MEMORY[0x29C2C1ED0](v15, v12[2]);
            sub_29A00911C(v16, ",", 1);
            v12 += 3;
          }

          while (v12 != v13);
        }
      }

      else
      {
        sub_29A00911C(&v29, "no instancerContext", 19);
      }

      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v34);
        v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a5);
        std::stringbuf::str();
        v23 = v27 >= 0 ? &__p : __p;
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPath(%s, %d) = %s [%s]\n", v21, v22, Text, a3, v20, v23);
        if (v27 < 0)
        {
          operator delete(__p);
        }
      }

      v28[0] = *MEMORY[0x29EDC9528];
      v24 = *(MEMORY[0x29EDC9528] + 72);
      *(v28 + *(v28[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      v29 = v24;
      v30 = (MEMORY[0x29EDC9570] + 16);
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = (MEMORY[0x29EDC9568] + 16);
      std::locale::~locale(v31);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v33);
    }
  }

  else
  {
    v28[0] = "usdImaging/delegate.cpp";
    v28[1] = "GetScenePrimPath";
    v29 = 2441;
    v30 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPath(const SdfPath &, int, HdInstancerContext *)";
    LOBYTE(v31[0].__locale_) = 0;
    v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v28, "GetScenePrimPath: Couldn't find rprim <%s>", v18, v17);
    sub_29A1DDD84(a5, &v34);
    sub_29A1DDDC0(a5 + 1, &v34 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v34 + 1);
  return sub_29A1DE3A4(&v34);
}

void sub_29AF9E370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a20);
  sub_29A1DCEA8(v20);
  sub_29A1DCEA8((v21 - 72));
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPaths@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_29AF9AC64(a1, a2, &v17);
  v10 = sub_29A2F4F50((a1 + 72), &v17);
  if (v10 && (v11 = v10[3]) != 0)
  {
    (*(*v11 + 320))(v11, &v17, a3, a4);
  }

  else
  {
    v15[0] = "usdImaging/delegate.cpp";
    v15[1] = "GetScenePrimPaths";
    v15[2] = 2475;
    v15[3] = "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPaths(const SdfPath &, std::vector<int>, std::vector<HdInstancerContext> *)";
    v16 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "GetScenePrimPaths: Couldn't find rprim <%s>", v13, Text);
    sub_29A34A4F0(a5, (a3[1] - *a3) >> 2, &v17);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  return sub_29A1DE3A4(&v17);
}

void sub_29AF9E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::PopulateSelection(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5)
{
  if (a1[108])
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
    if (sub_29AF49C14(9))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Prim selection: %s\n", v8, v9, Text);
    }

    v10 = sub_29A5A70E0(a1 + 108);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v12, v10, a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v12);
  }

  return 0;
}

void sub_29AF9E9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v19 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  v22 = va_arg(va4, void);
  v23 = va_arg(va4, void);
  va_copy(v6, va1);
  sub_29A1E234C(va);
  sub_29A1DCEA8(va2);
  sub_29A57F434(va3);
  sub_29A57F434(va4);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v16, 1.0);
  sub_29AF9AC64(this, a2, &v15);
  v6 = sub_29A2F4F50(this + 9, &v15);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "GetTransform", v13[2] = 2572, v13[3] = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetTransform(const SdfPath &)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 376))(*v7, v7 + 2, &v15, 0, *(this + 140));
  }

  else
  {
    v9 = v16[5];
    a3[4] = v16[4];
    a3[5] = v9;
    v10 = v16[7];
    a3[6] = v16[6];
    a3[7] = v10;
    v11 = v16[1];
    *a3 = v16[0];
    a3[1] = v11;
    v12 = v16[3];
    a3[2] = v16[2];
    a3[3] = v12;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  return sub_29A1DE3A4(&v15);
}

void sub_29AF9EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, float *a4, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a5)
{
  sub_29AF9AC64(this, a2, &v15);
  v9 = sub_29A2F4F50(this + 9, &v15);
  if (v9)
  {
    v10 = v9 + 3;
  }

  else
  {
    v10 = 0;
  }

  if (v9 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "SampleTransform", v13[2] = 2592, v13[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleTransform(const SdfPath &, size_t, float *, GfMatrix4d *)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    v11 = (*(**v10 + 384))(*v10, v10 + 2, &v15, a3, a4, a5, *(this + 140));
  }

  else
  {
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  return v11;
}