void sub_29B0356B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0356D8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B035700@<D0>(_OWORD *a1@<X8>)
{
  sub_29B03573C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B03573C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AF8F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AF670;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0357E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B035854()
{
  v1 = nullsub_1796;
  return sub_29B035AD8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::~UsdImagingPluginLightFilterAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::~UsdImagingLightFilterAdapter(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 37);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::Populate()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B035A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 37, a2);
}

void *sub_29B035AD8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AFB80;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B035B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B035B88(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B035BB0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B035BEC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B035BEC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AFBC0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20AF940;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B035C98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AFBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B035D04()
{
  v1 = nullsub_1797;
  return sub_29B037C90(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::~UsdImagingPointsAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(this);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v2, &v3, 1uLL);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v5 = *(v4 + 13);
  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B035FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B035FC0@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::UsdImagingDataSourcePointsPrim(v8, a1, &v13, a3);
  sub_29B037EBC(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 13);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B03623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v4 + 54) ^ *a2) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v5 + 84) ^ *a2) < 8)
  {
    return 1;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, __int16 a4, uint64_t a5, double a6)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4, a5, a6);
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  sub_29AFB9C00(PrimvarDescCache, a3);
  if (a4 < 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v16, a2);
    v17 = 0;
    v16[0] = &unk_2A2060598;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v11)
    {
      v11 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v16, (v11 + 48), v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v15, v12);
  }

  if ((a4 & 0x800) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v16, a2);
    v17 = 0;
    v16[0] = &unk_2A2060598;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v13)
    {
      v13 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v16, (v13 + 40), v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v15, v14);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 102) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 165) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A2060540;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPoints::GetWidthsInterpolation(v26, &v24);
    v25 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v24, v11);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v10 + 672, &v25, 0x8000);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A2060540;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v26, &v24);
    v25 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v24, v14);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, v13 + 432, &v25, 2048);
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v16)
  {
    v16 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v16 + 6) ^ *a4) <= 7)
  {
    v17 = this;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = 0x8000;
    goto LABEL_25;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v22)
  {
    v22 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  v23 = *(v22 + 5) ^ *a4;
  v17 = this;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  if (v23 <= 7)
  {
    v21 = 2048;
LABEL_25:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(v17, v18, v19, v20, v21, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B0374F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdGeomPoints::~UsdGeomPoints(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X4>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>, double a7@<D0>)
{
  sub_29A0ECEEC(&v22, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v13)
  {
    v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v13 + 54) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v14)
    {
      v14 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v14 + 40), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v15);
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 84) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v17)
    {
      v17 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v17 + 48), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v18);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a4, a5, a6, a7);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29B037B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void *sub_29B037C90(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AFE70;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B037D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B037D40(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B037D68@<D0>(_OWORD *a1@<X8>)
{
  sub_29B037DA4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B037DA4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AFEB0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AFC10;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B037E50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AFEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B037EBC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AFF00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B037F14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B037F30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B037F58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B037F88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AFF50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B037FC8()
{
  v1 = nullsub_1798;
  return sub_29B044C3C(&var8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v2, &v3, 1uLL);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v5 = *(v4 + 21);
  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B0381D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B0381E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 8);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, (a2 + 16));
  sub_29A1E2240(&v16, (a2 + 20));
  v10 = *(a2 + 24);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::UsdImagingDataSourcePointInstancerPrim(v8, a1, &v13, a3);
  sub_29B0452D4(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__ *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, _DWORD *a4)
{
  if (a4)
  {
    sub_29A1E21F4(&v6, a4);
    sub_29A1E2240(&v6 + 1, a4 + 1);
  }

  else
  {
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B038BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a29)
  {
    sub_29A014BEC(a29);
  }

  sub_29A57F434(&__p);
  sub_29A1DCEA8(&a24);
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29A5888DC(&a30);
  sub_29A5888DC(&a34);
  sub_29A5B6480(v34 - 192);
  __p = (v34 - 160);
  sub_29A1E234C(&__p);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((v34 - 136));
  sub_29A1DCEA8((v34 - 112));
  sub_29A1DCEA8((v34 - 104));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UnloadInstancer(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = sub_29A2F4F50(this + 4, a2);
  sub_29B04683C(v9, (v6 + 4));
  sub_29B046C14(this + 4, v6);
  for (i = v10; i; i = *i)
  {
    (*(*i[6] + 144))(i[6], i + 2, a3);
  }

  sub_29B000258(a3, a2);
  return sub_29B0451E8(v9);
}

void sub_29B038DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B0451E8(va);
  _Unwind_Resume(a1);
}

void sub_29B038E00(uint64_t *a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; sub_29B045014(a1, i))
  {
    i -= 4;
  }

  a1[1] = v3;

  sub_29A1DE554(a1 + 3, 0);
}

void *sub_29B038E64(uint64_t *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v4 = sub_29B0457D4(a1, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4 + 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_PopulatePrototype(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdObject *a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5, uint64_t a6)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetDisplayPredicateForPrototypes(a1);
}

void sub_29B039E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, __int16 a43, char a44, char a45)
{
  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(&a37);
  sub_29B0020F0(v45 - 168);
  sub_29A1DCEA8(&a41);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A57F434(v45 - 232);
  *(v45 - 168) = &a43;
  sub_29A1E234C((v45 - 168));
  sub_29A58BBB4(v45 - 200);
  *(v45 - 168) = v45 - 112;
  sub_29B045E88((v45 - 168));
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ResolveCachePath@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_29A1E21F4(a3, a2);
  sub_29A1E2240(a3 + 1, a2 + 1);
  v6 = sub_29A2F4F50((a1 + 32), a3);
  if (v6)
  {
    v7 = atomic_load(v6 + 208);
    if (v7)
    {
      __p[0] = atomic_fetch_add(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_globalVariantCounter, 1u) + 1;
      sub_29A1F8E20(__p);
      sub_29A008E78(__p, "instance");
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a3, __p, v11, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  v11[0] = a3;
  result = sub_29B0453E0(a1 + 32, a3, &unk_29B4D6118, v11);
  atomic_store(0, result + 208);
  return result;
}

void sub_29B03A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_29A1DCEA8(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_29B03A2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29B045F50(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_29A1DDD84((v4 + 16), (a2 + 16));
    sub_29A1DDDC0((v4 + 20), (a2 + 20));
    v5 = *(a2 + 24);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 24) = v5;
    result = v4 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B03A348(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29B0462A8(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_29A1E21F4((v4 + 16), (a2 + 16));
    sub_29A1E2240((v4 + 20), (a2 + 20));
    v5 = *(a2 + 24);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 24) = v5;
    result = v4 + 56;
  }

  a1[1] = result;
  return result;
}

_DWORD *sub_29B03A3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A58BB1C(a1, v4);
  sub_29A58BBEC(v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v6);
  return sub_29A1DE3A4(&v5);
}

uint64_t sub_29B03A518(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29A324D54(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29A2258F0((a1 + 40), (a2 + 40));
  sub_29A225948((a1 + 44), (a2 + 44));
  v7 = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = v7;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, int *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, _DWORD *a4)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v31, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, v31, a3);
    if (ProtoPrim[3] || (v26 = "usdImaging/pointInstancerAdapter.cpp", v27 = "TrackVariability", v28 = 521, v29 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v30 = 0, v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, v13), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "proto.adapter", v16) & 1) != 0))
    {
      if (ProtoPrim[1] != *ProtoPrim || (v26 = "usdImaging/pointInstancerAdapter.cpp", v27 = "TrackVariability", v28 = 524, v29 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v30 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v20 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v18, v19, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "proto.paths.size() > 0", v20) & 1) != 0))
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v26);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v31 + 1);
    sub_29A1DE3A4(v31);
  }

  else if (sub_29A2F4F50(a1 + 4, a3))
  {
    v21 = *a2;
    v9 = *(a2 + 1);
    v22 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v23, a2 + 4);
    sub_29A1E2240(&v24, a2 + 5);
    v10 = *(a2 + 3);
    v25 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v11)
    {
      v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v12)
    {
      v12 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v21, (v11 + 504), 0x20000, (v12 + 8), a4, 0, 0);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((atomic_load_explicit(&qword_2A17540E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17540E0))
  {
    sub_29B03E0DC(&unk_2A17540A8);
    __cxa_atexit(sub_29B03E130, &unk_2A17540A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17540E0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v10))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, a3);
  }

  else
  {
    sub_29A1E21F4(&v11, a2);
    sub_29A1E2240(&v11 + 1, a2 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  v6 = sub_29A2F4F50(this + 4, &v11);
  if (v6)
  {
    v7 = sub_29A328A44(v6 + 4, a3);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = &unk_2A17540A8;
    }
  }

  else
  {
    v8 = &unk_2A17540A8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  return v8;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::UsdObject *a3, _BYTE *a4, double a5)
{
  if (a4 || (sub_29B2CF340(v5) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }
}

void sub_29B03BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetInstancerVisible(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v5, a2);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v6, a1, &v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a1, &v6, a3);
}

void sub_29B03C0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A57F434(va1);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, double a5)
{
  v5 = a4;
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  if ((*(*a1 + 352))(a1, a3))
  {
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v20, a3);
      ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v20, a3);
      if (ProtoPrim[3] || (*&v22 = "usdImaging/pointInstancerAdapter.cpp", *(&v22 + 1) = "UpdateForTime", *&v23 = 688, *(&v23 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", LOBYTE(v24) = 0, v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, v12), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "proto.adapter", v15) & 1) != 0))
      {
        if (ProtoPrim[1] != *ProtoPrim || (*&v22 = "usdImaging/pointInstancerAdapter.cpp", *(&v22 + 1) = "UpdateForTime", *&v23 = 691, *(&v23 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", LOBYTE(v24) = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v19 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v17, v18, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "proto.paths.size() > 0", v19) & 1) != 0))
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v22);
        }
      }

      sub_29A1DCEA8(&v20);
    }
  }

  else
  {
    v11 = sub_29A2F4F50(a1 + 4, a3);
    if ((v5 & 0x40) != 0 && v11)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v21, a2);
      v21[0] = &unk_2A2060328;
      sub_29AFB9C00(PrimvarDescCache, a3);
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetPositionsAttr(v21, &v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v38, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v38, a3);
    if (ProtoPrim[3] && ProtoPrim[1] != *ProtoPrim)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, &v37);
    }

    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
    sub_29A1DE3A4(&v38);
    return v21;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v10 + 104) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v12 + 92) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v13 + 93) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v14 + 123) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v15 + 153) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*v16 ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v17 + 2) ^ *a4) <= 7)
  {
LABEL_26:
    v37 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v18)
    {
      v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v18 + 104) ^ *a4) <= 7)
    {
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v19)
      {
        v19 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v20 = (v19 + 72);
      goto LABEL_47;
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v22)
    {
      v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v22 + 92) ^ *a4) > 7)
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v24)
      {
        v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v24 + 93) ^ *a4) > 7)
      {
        v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v26)
        {
          v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v26 + 123) ^ *a4) > 7)
        {
          v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v28)
          {
            v28 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }

          if ((*(v28 + 153) ^ *a4) > 7)
          {
            v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v30)
            {
              v30 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*v30 ^ *a4) > 7)
            {
              v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v31)
              {
                v31 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v31 + 2) ^ *a4) > 7)
              {
LABEL_48:
                LODWORD(v38) = 5;
                pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4, &v37, &v38, 64);
              }

              v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v32)
              {
                v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              v20 = (v32 + 16);
            }

            else
            {
              v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v20)
              {
                v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }
            }
          }

          else
          {
            v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v29)
            {
              v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            v20 = (v29 + 656);
          }
        }

        else
        {
          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          if (!v27)
          {
            v27 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          }

          v20 = (v27 + 64);
        }

LABEL_47:
        sub_29A166F2C(&v37, v20);
        goto LABEL_48;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
LABEL_45:
        v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }
    }

    v20 = (v23 + 56);
    goto LABEL_47;
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v33)
  {
    v33 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v33 + 109) ^ *a4) < 8)
  {
    return 0x20000;
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v34)
  {
    v34 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v34 + 63) ^ *a4) < 8)
  {
    return 0x20000;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, v8))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 64, 1);
  }

  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v36)
  {
    v36 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v21 = 4294967293;
  if ((*(v36 + 158) ^ *a4) >= 8)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v35))
    {
      return 4294967293;
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

void sub_29B03D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ProcessPrimRemoval(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v13, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A2258F0(&v14, a2);
  sub_29A225948(&v15, a2 + 1);
  v8 = sub_29A2F4F50(a1 + 4, &v14);
  if (v8)
  {
    do
    {
      if (!v8)
      {
        break;
      }

      sub_29A2258F0(&v14, v8 + 4);
      sub_29A225948(&v15, v8 + 5);
      sub_29A1E21F4(&v13, v8 + 6);
      sub_29A1E2240(&v13 + 1, v8 + 7);
      v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      v10 = v9;
      if (v9)
      {
        v8 = sub_29A2F4F50(a1 + 4, &v13);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13 + 1);
      sub_29A1DE3A4(&v13);
    }

    while (v10);
    if (a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v12, &v14);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      sub_29A1DE3A4(&v12);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UnloadInstancer(a1, &v14, a3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  return sub_29A1DE3A4(&v14);
}

void sub_29B03D684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ProcessPrimRemoval(this, a2, a3, &v6);
  v4 = v6;
  v5 = v7;
  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a3, v4);
    v4 = (v4 + 8);
  }

  v9 = &v6;
  sub_29A1E234C(&v9);
}

void sub_29B03D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v12, a3);
    (*(*ProtoPrim[3] + 152))(ProtoPrim[3], a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
    return sub_29A1DE3A4(&v12);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a5, a3, a4);
    if ((a4 & 0x40) != 0)
    {

      return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
    }
  }

  return result;
}

void sub_29B03D8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkRefineLevelDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 160))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03D994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkReprDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 168))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkCullStyleDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 176))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkRenderTagDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 184))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 192))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 512);
  }
}

void sub_29B03DD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 200))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 1024);
  }
}

void sub_29B03DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkLightParamsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 216))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 4);
  }
}

void sub_29B03DFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkCollectionsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 232))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 0x200000);
  }
}

void sub_29B03E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B03E0DC(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 44));
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return a1;
}

uint64_t sub_29B03E130(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = a1;
  sub_29A1E234C(&v4);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::SdfPath ***a4, uint64_t a5)
{
  v8 = (*(*a1 + 352))(a1, a3);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v12, a3);
    *a4 = ProtoPrim;
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v11);
  }

  return v8;
}

void sub_29B03E368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UpdateInstancerVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, double a4)
{
  if (sub_29AF49C14(4))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PointInstancer::_UpdateInstancerVisibility] %s\n", v7, v8, Text, *&a4);
  }

  if (*(a3 + 168) == 1)
  {
    std::mutex::lock((a3 + 104));
    pxrInternal__aapl__pxrReserved__::operator==();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_CorrectTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X4>, __int128 *a4@<X5>, _OWORD *a5@<X8>, double a6@<D0>)
{
  memset(v32, 0, sizeof(v32));
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(&v24, a1);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v32, &v24, 0, 0.0);
  v12 = a4[5];
  v28 = a4[4];
  v29 = v12;
  v13 = a4[7];
  v30 = a4[6];
  v31 = v13;
  v14 = a4[1];
  v24 = *a4;
  v25 = v14;
  v15 = a4[3];
  v26 = a4[2];
  v27 = v15;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v24, v32);
  v16 = v29;
  a5[4] = v28;
  a5[5] = v16;
  v17 = v31;
  a5[6] = v30;
  a5[7] = v17;
  v18 = v25;
  *a5 = v24;
  a5[1] = v18;
  v19 = v27;
  v20 = *a3;
  v21 = a3[1] - *a3;
  a5[2] = v26;
  a5[3] = v19;
  if (v21 >= 9)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v22, a1, (v20 + 8));
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, v22, (*a3 + 8), a6);
  }

  sub_29A5B9D18(a2, v23);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v23);
}

void sub_29B03E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_29A1DCEA8(&a25);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetScenePrimPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a5@<X8>)
{
  v36 = *MEMORY[0x29EDCA608];
  if (sub_29AF49C14(9))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPath: proto = %s\n", v9, v10, Text);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v33);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33 + 1);
  sub_29A1E21F4(&v31, a2);
  sub_29A1E2240(&v32, a2 + 1);
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v21, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  v11 = sub_29A2F4F50(a1 + 4, a2);
  if (v11)
  {
    sub_29A2258F0(&v33, v11 + 6);
    v12 = v11 + 7;
LABEL_11:
    sub_29A225948(&v33 + 1, v12);
  }

  else
  {
    v13 = a1 + 48;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (sub_29A328A44(v13 + 4, a2))
      {
        sub_29A2258F0(&v33, v13 + 4);
        v12 = v13 + 20;
        goto LABEL_11;
      }
    }
  }

  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21 + 1);
  v14 = v33;
  v15 = v21;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
  sub_29A1DE3A4(&v21);
  if (v14 == v15 || (ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v33, a2), !ProtoPrim[3]))
  {
    *a5 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(a1, ProtoPrim, &v30);
    v17 = sub_29A2F4F50(a1 + 4, &v33);
    if (v17)
    {
      sub_29A1E21F4(&v28, v17 + 6);
      sub_29A1E2240(&v29, v17 + 7);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v21, a1, &v33);
      TimeWithOffset = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a1, 0.0);
      (*(*a1 + 504))(&v34, a1, &v21, &v33, a2, TimeWithOffset);
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
      sub_29A1DE3A4(&v23);
      if (v22)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v19);
      }

      if (sub_29A19D610(&v34))
      {
        if ((v35 & 4) != 0)
        {
          (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
        }

        sub_29A1E21F4(&v26, &v33);
        sub_29A1E2240(&v27, &v33 + 1);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v28, &v21);
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v25, a1, &v21);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
        sub_29A1DE3A4(&v21);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v25);
      }

      *a5 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
      sub_29A186B14(&v34);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
      sub_29A1DE3A4(&v28);
    }

    else
    {
      *a5 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a5);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a5 + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
    sub_29A1DE3A4(&v30);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32);
  sub_29A1DE3A4(&v31);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33 + 1);
  return sub_29A1DE3A4(&v33);
}

void sub_29B03F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8((v30 - 168));
  sub_29A186B14(v30 - 112);
  sub_29A1DCEA8((v30 - 160));
  sub_29A1DCEA8((v30 - 152));
  sub_29A1DCEA8((v30 - 144));
  sub_29A1DCEA8((v30 - 136));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetScenePrimPaths(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v26 = 0uLL;
  v27 = 0;
  sub_29A2FCAE8(a5, (a3[1] - *a3) >> 2);
  if (a4)
  {
    sub_29B03F4F4(a4, (a3[1] - *a3) >> 2);
  }

  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    do
    {
      (*(*a1 + 312))(v28, a1, a2, *(v10 + 4 * v11), &v26);
      sub_29A377BD0(a5, v28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
      sub_29A1DE3A4(v28);
      if (a4)
      {
        v12 = *(a4 + 8);
        v13 = *(a4 + 16);
        if (v12 >= v13)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          v28[4] = a4;
          if (v18)
          {
            v19 = sub_29A012C48(a4, v18);
          }

          else
          {
            v19 = 0;
          }

          v20 = &v19[24 * v15];
          v21 = &v19[24 * v18];
          *v20 = 0;
          *(v20 + 1) = 0;
          *(v20 + 2) = 0;
          *v20 = v26;
          *(v20 + 2) = v27;
          v26 = 0uLL;
          v27 = 0;
          v14 = v20 + 24;
          v22 = *(a4 + 8) - *a4;
          v23 = &v20[-v22];
          memcpy(&v20[-v22], *a4, v22);
          v24 = *a4;
          *a4 = v23;
          *(a4 + 8) = v14;
          v25 = *(a4 + 16);
          *(a4 + 16) = v21;
          v28[2] = v24;
          v28[3] = v25;
          v28[0] = v24;
          v28[1] = v24;
          sub_29B046C70(v28);
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = v26;
          v12[2] = v27;
          v26 = 0uLL;
          v27 = 0;
          v14 = v12 + 3;
        }

        *(a4 + 8) = v14;
      }

      ++v11;
      v10 = *a3;
    }

    while (v11 < (a3[1] - *a3) >> 2);
  }

  v28[0] = &v26;
  sub_29AEE6928(v28);
}

void sub_29B03F4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13)
{
  a13 = &a9;
  sub_29AEE6928(&a13);
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

void **sub_29B03F4F4(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
    v8 = v2[1] - *v2;
    v9 = &v4[v3 - v8];
    memcpy(v9, *v2, v8);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return sub_29B046C70(v12);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_29A2F4F50(a1 + 4, a2);
  if (v8 || (result = sub_29B2CF388(v22, a2, a3), (result & 1) != 0))
  {
    sub_29A1E21F4(&v20, v8 + 6);
    sub_29A1E2240(&v21, v8 + 7);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v20))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v20, &v19);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v14, a1, &v19);
      PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v14, 0);
      v10 = *PrimAdapter;
      v11 = PrimAdapter[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 304))(v10, &v20, a2, a4);
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
      if (v15)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v12);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
    }

    else
    {
      (*(*a1 + 304))(a1, &v20, a2, a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
    return sub_29A1DE3A4(&v20);
  }

  return result;
}

void sub_29B03F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  sub_29A1DCEA8(va2);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(*this + 352))(this, a2))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, a2);
  }

  else
  {
    v7 = sub_29A2F4F50(this + 4, a2);
    if (v7)
    {
      v8 = v7;
      sub_29A1E21F4(a3, v7 + 6);

      return sub_29A1E2240((a3 + 4), v8 + 7);
    }

    else
    {
      v12[0] = "usdImaging/pointInstancerAdapter.cpp";
      v12[1] = "GetInstancerId";
      v12[2] = 1657;
      v12[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerId(const UsdPrim &, const SdfPath &) const";
      v13 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Unexpected path <%s>", Text);
      v11 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v10);
      sub_29A1E21F4(a3, v11);
      return sub_29A1E2240((a3 + 4), v11 + 1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  if ((*(*this + 352))(this, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a2);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, &v9);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_29A2F4F50(this + 4, a2);
  if (result)
  {
    for (i = (result + 48); ; result = sub_29A1E28B4(a3, i + 4))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }
  }

  return result;
}

void sub_29B03FA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SampleInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, double a2, uint64_t a3, unsigned int *a4, unint64_t a5, uint64_t a6, _OWORD *a7)
{
  *&v22[5] = a2;
  if (a5)
  {
    v9 = sub_29A2F4F50(a1 + 4, a4);
    if (v9 || (sub_29B2CF420(v22) & 1) != 0)
    {
      sub_29A1E21F4(&v20, v9 + 6);
      sub_29A1E2240(&v21, v9 + 7);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCurrentTimeSamplingInterval(&v18, a1);
      memset(__p, 0, sizeof(__p));
      v12[0] = v18;
      sub_29A08B03C(__p, v12);
      v12[0] = v19;
      sub_29A08B03C(__p, v12);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v20))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v20, &v16);
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v14, a1, &v16);
        v10 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, v14, 0)[1];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        *v12 = v18;
        v13 = v19;
        sub_29B03FF2C(v14, v12, __p);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v12, a1, a4);
      *v14 = v18;
      v15 = v19;
      sub_29B03FF2C(v12, v14, __p);
    }
  }

  return 0;
}

void sub_29B03FE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A57F434(&a25);
  sub_29A1DCEA8(&a30);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  sub_29A1DCEA8((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_29B03FF2C(int *a1, uint64_t a2, double **a3)
{
  v6 = *a1;
  v4 = *(a1 + 1);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v8, a1 + 4);
  sub_29A1E2240(&v9, a1 + 5);
  v5 = *(a1 + 3);
  v10 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
}

void sub_29B0401A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _OWORD *a5@<X8>, double a6@<D0>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v30, 1.0);
  if (((*(*a1 + 352))(a1, a3) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, a2, a3, a6);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v29, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v29, a3);
  if (ProtoPrim[3] || (*&v26 = 1778, *(&v26 + 1) = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const", LOBYTE(v27) = 0, v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, v13, "usdImaging/pointInstancerAdapter.cpp", "GetTransform", v26, v27), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v25, "proto.adapter", v16) & 1) != 0))
  {
    if (ProtoPrim[1] != *ProtoPrim || (v25[0] = "usdImaging/pointInstancerAdapter.cpp", v25[1] = "GetTransform", *&v26 = 1781, *(&v26 + 1) = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const", LOBYTE(v27) = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v20 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v18, v19, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v25, "proto.paths.size() > 0", v20) & 1) != 0))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v28);
    }
  }

  v21 = v30[5];
  a5[4] = v30[4];
  a5[5] = v21;
  v22 = v30[7];
  a5[6] = v30[6];
  a5[7] = v22;
  v23 = v30[1];
  *a5 = v30[0];
  a5[1] = v23;
  v24 = v30[3];
  a5[2] = v30[2];
  a5[3] = v24;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29 + 1);
  return sub_29A1DE3A4(&v29);
}

void sub_29B04055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SampleTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  *a5 = 0;
  (*(*a1 + 376))(v12);
  v7 = v12[5];
  a6[4] = v12[4];
  a6[5] = v7;
  v8 = v12[7];
  a6[6] = v12[6];
  a6[7] = v8;
  v9 = v12[1];
  *a6 = v12[0];
  a6[1] = v9;
  v10 = v12[3];
  a6[2] = v12[2];
  a6[3] = v10;
  return 1;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SamplePrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t *a4, unint64_t a5, _DWORD *a6, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a7, uint64_t a8, double a9)
{
  if (!a5)
  {
    return 0;
  }

  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v34, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v34, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v33);
  }

  v20 = *a4;
  v34 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v21)
  {
    v21 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v21 + 9) ^ *a4) > 7)
  {
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v24)
    {
      v24 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v24 + 8) ^ *a4) > 7)
    {
      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v27)
      {
        v27 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      if ((*(v27 + 7) ^ *a4) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v33, a2);
        v33 = &unk_2A2060328;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::UsesOrientationsf(&v33, &v34);
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v28)
      {
        v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v28 + 82) ^ *a4) > 7)
      {
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v30)
        {
          v30 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*v30 ^ *a4) > 7)
        {
          v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v31)
          {
            v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v31 + 2) ^ *a4) > 7)
          {
            goto LABEL_21;
          }

          v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v32)
          {
            v32 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }

          v23 = (v32 + 16);
        }

        else
        {
          v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v23)
          {
            v23 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }
        }
      }

      else
      {
        v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v29)
        {
          v29 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v23 = (v29 + 1224);
      }
    }

    else
    {
      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v25)
      {
        v25 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v23 = (v25 + 984);
    }
  }

  else
  {
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v22)
    {
      v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v23 = (v22 + 832);
  }

  sub_29A166F2C(&v34, v23);
LABEL_21:
  v19 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SamplePrimvar(a1, a2, a3, &v34, a5, a6, a7, a8, a9);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v19;
}

void sub_29B040A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(&a10);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::IsChildPath(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1754128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754128))
  {
    sub_29A0CD6B0(&unk_2A17540E8, "^proto\\d+_[^.\\/\\s]+_id\\d+$", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A17540E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1754128);
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  v4 = *(Name + 23);
  v5 = Name[1];
  if ((v4 & 0x80u) != 0)
  {
    Name = *Name;
    v4 = v5;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = sub_29A17BEA8(Name, Name + v4, __p, &unk_2A17540E8, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  if (!(*(*a1 + 352))(a1, a3))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a1, a2, a4);
  }

  v46 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v45, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v45, a3);
  if (!ProtoPrim[3])
  {
    v40 = "usdImaging/pointInstancerAdapter.cpp";
    v41 = "GetVisible";
    v42 = 1903;
    v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v44 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v25 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v23, v24, Text);
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "proto.adapter", v25) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (ProtoPrim[1] == *ProtoPrim)
  {
    v40 = "usdImaging/pointInstancerAdapter.cpp";
    v41 = "GetVisible";
    v42 = 1906;
    v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v44 = 0;
    v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v29 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v27, v28, v26);
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "proto.paths.size() > 0", v29) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v9 = *(ProtoPrim + 12);
  v10 = sub_29A2F4F50(a1 + 4, &v45);
  if (v10 || (v40 = "usdImaging/pointInstancerAdapter.cpp", v41 = "GetVisible", v42 = 1914, v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v44 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "it != _instancerData.end()", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UpdateInstancerVisibility(a1, &v45, (v10 + 3), a4);
    v46 = *(v10 + 193);
  }

  v11 = v46;
  if ((v9 & 0x400) != 0)
  {
    if (v46)
    {
      v12 = *ProtoPrim;
      if (ProtoPrim[1] - *ProtoPrim != 8)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v35, a1, (v12 + v14));
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(&v35, v15, &v40);
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v30, a1, (*ProtoPrim + v14 - 8));
          pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(a1, &v40, &v30, &v46, a4);
          if ((v34 & 7) != 0)
          {
            atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33);
          sub_29A1DE3A4(&v32);
          if (v31)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31, v16);
          }

          if ((v43 & 7) != 0)
          {
            atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42 + 1);
          sub_29A1DE3A4(&v42);
          if (v41)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41, v17);
          }

          if ((v39 & 7) != 0)
          {
            atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
          sub_29A1DE3A4(&v37);
          if (v36)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v18);
          }

          ++v13;
          v12 = *ProtoPrim;
          v14 += 8;
        }

        while (v13 < ((ProtoPrim[1] - *ProtoPrim) >> 3) - 1);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v40, a1, (ProtoPrim + 5));
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v35, a1, (ProtoPrim[1] - 8));
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(a1, &v40, &v35, &v46, a4);
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
      sub_29A1DE3A4(&v37);
      if (v36)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v19);
      }

      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42 + 1);
      sub_29A1DE3A4(&v42);
      if (v41)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41, v20);
      }

LABEL_35:
      v11 = v46;
    }
  }

  else
  {
    v11 = v46 & *(ProtoPrim + 52);
    v46 = v11;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v45 + 1);
  sub_29A1DE3A4(&v45);
  return v11 & 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetPurpose(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v11, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, &v10);
  }

  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(a2, &v10, x8_0);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29B0412FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(va);
  sub_29A57F434(va1);
  sub_29A1DCEA8((v3 - 56));
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetSubdivTags@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t x8_0@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v11, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v10);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags(x8_0);
}

void sub_29B041504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTopology(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t x8_0@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v10, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTopology(x8_0);
}

void sub_29B0416A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v9, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v9, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v8);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetCullStyle();
}

void sub_29B041848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtent@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t x8_0@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v11, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v10);
  }

  *&result = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent(x8_0).u64[0];
  return result;
}

void sub_29B0419EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v9, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v9, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v8);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetDoubleSided();
}

void sub_29B041B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetMaterialId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v11, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v11, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v10);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId(a4);
}

void sub_29B041DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  sub_29A57F434(va2);
  sub_29A1DCEA8((v5 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetLightParamValue(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, double a5@<D0>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v12, a3);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(a1, a2, a3, a4, a6, a5);
}

void sub_29B042078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29A57F434(&a9);
  sub_29B03E130(va);
  sub_29A1DCEA8((v12 - 72));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t x8_0@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v10, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialResource(x8_0);
}

void sub_29B042228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v20, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, v20, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v24);
  }

  if (sub_29A2F4F50(a1 + 4, a3))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v13)
    {
      v13 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v13 + 9) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      v26 = 0;
      *v24 = 0u;
      v25 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetPositionsAttr(v27, v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v14)
    {
      v14 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v14 + 7) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      LODWORD(v20[0]) = 3;
      v20[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::UsesOrientationsf(v27, v20);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v15)
    {
      v15 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v15 + 8) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      v26 = 0;
      *v24 = 0u;
      v25 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetScalesAttr(v27, v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v16 + 82) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      v26 = 0;
      *v24 = 0u;
      v25 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetVelocitiesAttr(v27, v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*v17 ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      v26 = 0;
      *v24 = 0u;
      v25 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetAccelerationsAttr(v27, v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v18 + 2) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, a2);
      v27[0] = &unk_2A2060328;
      v26 = 0;
      *v24 = 0u;
      v25 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetAngularVelocitiesAttr(v27, v20);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v23 = 0;
    v20[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, a4, v24);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v20);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v24, v19);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::Get(a2, a4, a6);
}

void sub_29B042AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A186B14(v15);
  sub_29A7A079C(&a9);
  sub_29A7A079C(&a15);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationInputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v16 = 0u;
  v17 = 0u;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v7, a3, &v10, &v11))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v10, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(x8_0);
  return sub_29B0020F0(&v11);
}

void sub_29B042E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationOutputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v16 = 0u;
  v17 = 0u;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v7, a3, &v10, &v11))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v10, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(x8_0);
  return sub_29B0020F0(&v11);
}

void sub_29B042F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationPrimvars@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v16);
  v17 = 0u;
  v18 = 0u;
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v8, a3, &v11, &v12))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v11, &v10);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(x8_0);
  return sub_29B0020F0(&v12);
}

void sub_29B043118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationInput@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
  v18 = 0u;
  v19 = 0u;
  v12 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v9, a3, &v12, &v13))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v12, &v11);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInput(x8_0);
  return sub_29B0020F0(&v13);
}

void sub_29B0432B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>, double a5@<D0>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19 + 1);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21 + 1);
    v22 = 0u;
    v23 = 0u;
    v18 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v10, a2, &v18, &v19))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v18, &v17);
    }

    sub_29B0020F0(&v19);
  }

  v11 = sub_29A2F4F50(a1 + 4, a2);
  if (v11)
  {
    v12 = v11;
    v13 = sub_29A328A44(v11 + 4, a3);
    if (v13 && v12[13] != sub_29AD16F3C(v12 + 12, v13 + 16))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v19, a2);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v17, a1, &v19);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPerPrototypeIndices(a1, &v17, a5, &v19);
    }

    v19 = "usdImaging/pointInstancerAdapter.cpp";
    v20 = "GetInstanceIndices";
    v21 = 2334;
    *&v22 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstanceIndices(const UsdPrim &, const SdfPath &, const SdfPath &, UsdTimeCode) const";
    BYTE8(v22) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "No matching ProtoRootPath found for (%s, %s)", v16, Text, v15);
  }

  a4[1] = 0;
}

void sub_29B0435C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29AFA1C7C(va1);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationKernel@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v16 = 0u;
  v17 = 0u;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v7, a3, &v10, &v11))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v10, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(x8_0);
  return sub_29B0020F0(&v11);
}

void sub_29B04377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::PopulateSelection(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v31 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v22, a3);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v22, a3) + 3))
    {
      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v22);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: proto = %s pi = %s\n", v12, v13, Text, v11, a6);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
  }

  else if (sub_29A2F4F50(a1 + 4, a3))
  {
    if (sub_29AF49C14(9))
    {
      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: pi = %s\n", v15, v16, v14);
    }

    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    LODWORD(v27[0]) = *a4;
    v17 = *(a4 + 8);
    v27[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 48), 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v28, (a4 + 16));
    sub_29A1E2240(&v29, (a4 + 20));
    v18 = *(a4 + 24);
    v30 = v18;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v28))
    {
      sub_29A7E416C(v27, v23);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v10, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(x8_0);
}

void sub_29B0448A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/pointInstancerAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 2634;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Should use overidden ProcessPrimResync/ProcessPrimRemoval");
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetRelativeInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v8, a3);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v9, a1, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v8 + 1);
  sub_29A1DE3A4(v8);
  memset(v8, 0, sizeof(v8));
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, &v9, a3, a5);
}

void sub_29B044B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  sub_29A57F434(va);
  sub_29A1DCEA8((v41 - 232));
  sub_29A57F434(v41 - 96);
  _Unwind_Resume(a1);
}

void *sub_29B044B8C(void *a1)
{
  *a1 = &unk_2A20AFF78;
  sub_29B044E80((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B044BDC(void *a1)
{
  *a1 = &unk_2A20AFF78;
  sub_29B044E80((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void *sub_29B044C3C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B01B8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B044CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B044CEC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B044D14@<D0>(_OWORD *a1@<X8>)
{
  sub_29B044D50(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B044D50(void *a1@<X8>)
{
  v2 = operator new(0x60uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_2A20B01F8;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 3) = &unk_2A20AFF78;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 22) = 1065353216;
  *a1 = v2 + 24;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 24));
}

void sub_29B044E14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B01F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B044E80(uint64_t a1)
{
  sub_29B044EBC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B044EBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B044F00((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B044F00(uint64_t a1)
{
  std::mutex::~mutex((a1 + 112));
  sub_29A1DE554((a1 + 104), 0);
  v3 = (a1 + 80);
  sub_29B044F8C(&v3);
  v3 = (a1 + 56);
  sub_29A1E234C(&v3);
  sub_29B0451E8(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29B044F8C(void ***a1)
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
        v4 -= 4;
        sub_29B045014(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29B045014(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

_DWORD *sub_29B045054(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29B045094(uint64_t *result, uint64_t a2, char *a3)
{
  v3 = result[4];
  if (v3)
  {
    if (result[3] || (v4 = atomic_load((v3 - 16)), v4 != 1))
    {
      sub_29B2CF498(result, result + 4, a3);
    }
  }
}

void *sub_29B0450D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_29B045150(a1, a3);
  if (a4)
  {
    v7 = a2 + 40 * a4;
    v8 = result;
    do
    {
      v9 = *(a2 + 16);
      *v8 = *a2;
      *(v8 + 16) = v9;
      v10 = *(a2 + 32);
      *(v8 + 32) = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (*(v8 + 24))
        {
          v11 = *(v8 + 24);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      a2 += 40;
      v8 += 40;
    }

    while (a2 != v7);
  }

  return result;
}

void *sub_29B045150(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::VtArray<int>]");
  if (a2 > 0x333333333333332)
  {
    v3 = -1;
  }

  else
  {
    v3 = 40 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29B0451E8(uint64_t a1)
{
  sub_29B045224(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B045224(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B045268((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B045268(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = (a1 + 8);
  sub_29A1E234C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *sub_29B0452D4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0248;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B04532C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B045348(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B045370(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0453A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B0298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B0453E0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      for (result = *v9; result; result = *result)
      {
        v11 = result[1];
        if (v11 == v6)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B045628(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B045610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B045778(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B045628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xD8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B0456AC(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B0456AC(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29B045704((a1 + 2));
  return a1;
}

uint64_t sub_29B045704(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 850045863;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void sub_29B045778(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B044F00(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B0457D4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 4;
    sub_29A1E21F4(&v11, a2);
    sub_29A1E2240(&v12, (a2 + 4));
    v13 = v5;
    v14 = v11;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v11);
    v15 = v12;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v12);
    v16 = v13;
    v6 = sub_29A2F49C0(v4, &v14, &v14);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    if ((v5 & 1) == 0)
    {
      return (*a1 + 16 * v6[3]);
    }

    goto LABEL_9;
  }

  result = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 2;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
LABEL_9:
    sub_29A1E21F4(&v14, a2);
    sub_29A1E2240(&v15, (a2 + 4));
    v16 = *(a2 + 8);
    sub_29B0459A8(a1, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    v10 = a1[1];
    if ((v10 - *a1) >= 0x7F1)
    {
      sub_29B045D14(a1);
      v10 = a1[1];
    }

    return (v10 - 16);
  }

  return result;
}

void sub_29B04596C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29B045054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B0459A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29B045A18(a1, a2);
  }

  else
  {
    sub_29A1E21F4(*(a1 + 8), a2);
    sub_29A1E2240((v4 + 4), (a2 + 4));
    *(v4 + 8) = *(a2 + 8);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B045A18(char **a1, uint64_t a2)
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

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v16 = v8;
  v17 = v9;
  *(&v18 + 1) = &v8[16 * v7];
  sub_29A1E21F4(v9, a2);
  sub_29A1E2240(v9 + 1, (a2 + 4));
  *(v9 + 1) = *(a2 + 8);
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = &v9[*a1 - v10];
  sub_29B045B38(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B045C98(&v16);
  return v15;
}

void sub_29B045B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B045C98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B045B38(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1E21F4(v4, v8);
      sub_29A1E2240((v4 + 4), (v8 + 4));
      *(v4 + 8) = *(v8 + 8);
      v8 += 16;
      v4 = v13 + 16;
      v13 += 16;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29B045014(a1, v6);
      v6 += 4;
    }
  }

  return sub_29B045C0C(v10);
}

uint64_t sub_29B045C0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B045C44(a1);
  }

  return a1;
}

uint64_t *sub_29B045C44(uint64_t *result)
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
      v3 -= 4;
      result = sub_29B045014(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29B045C98(void **a1)
{
  sub_29B045CCC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29B045CCC(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29B045014(v4, (v1 - 16));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29B045D14(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1DE554(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = *v1;
        v8 = (v4 + v6);
        sub_29A1E21F4(&v9, (v4 + v6 - 4));
        sub_29A1E2240(&v10, v8);
        v11 = v5;
        v12 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
        v13 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
        v14 = v11;
        sub_29A2F49C0(v7, &v12, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
        sub_29A1DE3A4(&v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
        sub_29A1DE3A4(&v9);
        ++v5;
        v4 = *a1;
        v6 += 16;
      }

      while (v5 < (a1[1] - *a1) >> 4);
    }
  }
}

void sub_29B045E48(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29B045E88(void ***a1)
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
        v4 -= 56;
        sub_29B045F10(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29B045F10(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));

  return sub_29A1DE3A4((a2 + 16));
}

uint64_t sub_29B045F50(char **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = *a2;
  sub_29A1DDD84(v8 + 4, (a2 + 16));
  sub_29A1DDDC0(v8 + 5, (a2 + 20));
  v9 = *(a2 + 24);
  *(v8 + 37) = *(a2 + 37);
  *(v8 + 24) = v9;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29B0460B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B04622C(&v16);
  return v15;
}

void sub_29B0460A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B04622C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B0460B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 16;
    do
    {
      *v4 = *(v8 - 16);
      sub_29A1DDD84((v4 + 16), v8);
      sub_29A1DDDC0((v4 + 20), (v8 + 4));
      v9 = *(v8 + 8);
      *(v4 + 37) = *(v8 + 21);
      *(v4 + 24) = v9;
      v4 = v15 + 56;
      v15 += 56;
      v10 = v8 + 40;
      v8 += 56;
    }

    while (v10 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      sub_29B045F10(a1, v6);
      v6 += 56;
    }
  }

  return sub_29B0461A0(v12);
}

uint64_t sub_29B0461A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0461D8(a1);
  }

  return a1;
}

uint64_t *sub_29B0461D8(uint64_t *result)
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
      v3 -= 56;
      result = sub_29B045F10(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29B04622C(void **a1)
{
  sub_29B046260(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29B046260(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 56;
      result = sub_29B045F10(v4, v1 - 56);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29B0462A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = *a2;
  sub_29A1E21F4(v8 + 4, (a2 + 16));
  sub_29A1E2240(v8 + 5, (a2 + 20));
  v9 = *(a2 + 24);
  *(v8 + 37) = *(a2 + 37);
  *(v8 + 24) = v9;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29B0460B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B04622C(&v16);
  return v15;
}

void sub_29B0463FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29B04622C(va);
  _Unwind_Resume(a1);
}

void *sub_29B046410(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      for (result = *v9; result; result = *result)
      {
        v11 = result[1];
        if (v11 == v6)
        {
          if (result[2] == *a2)
          {
            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B046658(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B046640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B04674C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B046658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B0466DC((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B0466DC(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 52));
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return a1;
}

void sub_29B04674C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B045268(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29B0467A8(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B0467E0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B0467E0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B045268(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29B04683C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B0468B4(a1, i + 4, i + 4);
  }

  return a1;
}

void *sub_29B0468B4(void *a1, unsigned int *a2, _DWORD *a3)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    sub_29B046AFC(a1, v4, a3, v11);
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29B046AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B04674C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29B046AFC(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29B046B6C((v8 + 2), a3);
}

void sub_29B046B6C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

uint64_t sub_29B046C14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B044F00(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void **sub_29B046C70(void **a1)
{
  sub_29B046CA4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B046CA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29AEE6928(&v5);
  }
}

void *sub_29B046CF8()
{
  v1 = nullsub_1799;
  return sub_29B046FE8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::~UsdImagingPortalLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(this);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v2, &v3, 1uLL);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v5 = *(v4 + 31);
  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::Populate()
{
  v2[0] = "usdImaging/portalLightAdapter.cpp";
  v2[1] = "Populate";
  v2[2] = 56;
  v2[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Portal lights are not yet supported in USD imaging");
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/portalLightAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 64;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Portal lights are not yet supported in USD imaging");
}

void *sub_29B046FE8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B0500;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29B047074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B047098(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0470C0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0470FC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0470FC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B0540;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B02C0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0471A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B0540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B047238(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SHARED_XFORM_CACHE))
  {
    sub_29B2CF4F4();
  }
}

void sub_29B047268(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_BINDING_CACHE))
  {
    sub_29B2CF524();
  }
}

void sub_29B047298(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_VIS_CACHE))
  {
    sub_29B2CF554();
  }
}

void sub_29B0472C8(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_PURPOSE_CACHE))
  {
    sub_29B2CF584();
  }
}

void sub_29B0472F8(uint64_t result, uint64_t a2)
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_POINT_INSTANCER_INDICES_CACHE))
  {
    sub_29B2CF5B4();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetImagingSubprims(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, void *a2@<X8>)
{
  v7[0] = "usdImaging/primAdapter.cpp";
  v7[1] = "GetImagingSubprims";
  v7[2] = 84;
  v7[3] = "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetImagingSubprims(const UsdPrim &)";
  v8 = 0;
  if (!this)
  {
    __cxa_bad_typeid();
  }

  pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(__p, *(*this - 8));
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v7, "Datasource support not yet added for adapter '%s'", v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_29B0473DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  if (*a1)
  {
    *(a4 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a1, a2, a3, a4);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ShouldCullSubtree(pxrInternal__aapl__pxrReserved__ **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this, SchemaInfo);
  if (IsA)
  {
    v8 = this[1];
    if (!v8 || (*(v8 + 57) & 8) != 0)
    {
      IsA = pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v7);
    }

    if (**(v8 + 3))
    {
      return 0;
    }
  }

  v9 = pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(IsA);
  v11 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v9, v10);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this, v11))
  {
    return 0;
  }

  v14 = this[1];
  if (!v14 || (*(v14 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v14, v12);
  }

  return **(v14 + 3) != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v5 = *a4;
  v6 = *(a4 + 8);
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v4, v5);
    if (FieldDefinition)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::IsPlugin(FieldDefinition))
      {
        break;
      }
    }

    ++v5;
  }

  return 4294967293;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  (*(*this + 528))(this);
  v5 = sub_29A5A70E0((*(this + 3) + 864));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v6, v5, a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>)
{
  v5 = sub_29A5A70E0((*(this + 3) + 864));

  return pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(a1, v5, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  result = sub_29AFAF990(*(this + 3) + 112, a2);
  if (result != v7)
  {
    v8 = result;
    v9 = v7;
    do
    {
      if (*(v8 + 9) != *a2)
      {
        if (sub_29AF49C14(2))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
          v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v8 + 9));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("<%s> Resyncing dependent %s\n", v12, v13, Text, v11);
        }

        result = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*(this + 3), v8 + 9);
        if (result)
        {
          v14 = result;
          if (*result || (v18[0] = "usdImaging/primAdapter.cpp", v18[1] = "_ResyncDependents", v18[2] = 245, v18[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(const SdfPath &, UsdImagingIndexProxy *)", v19 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "primInfo->adapter != nullptr", 0), (result & 1) != 0))
          {
            result = (*(**v14 + 136))(*v14, v8 + 9, a3);
          }
        }
      }

      v15 = *(v8 + 1);
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
          v16 = *(v8 + 2);
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != v9);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceCategories(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(this);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstancerPrototypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SamplePrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, unint64_t a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, unint64_t a5, _DWORD *a6, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a7, uint64_t a8, double a9)
{
  v11[9] = *MEMORY[0x29EDCA608];
  *&v11[4] = a9;
  if (a5)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v11, a2);
    v11[3] = 0;
    v11[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(v11, a4);
  }

  return 0;
}

void sub_29B047EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_29A7A079C(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetScenePrimPath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, a1) + 1;

  return sub_29A1E2240(v3, a1 + 1);
}

void sub_29B048404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a17);
  sub_29A1DCEA8((v17 - 76));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3)
{
  v89[2] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1754158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754158))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v6)
    {
      v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v7)
    {
      v7 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(v63, v6, v7 + 13);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v8)
    {
      v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v9)
    {
      v9 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v64, v8 + 1, v9 + 14);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v10)
    {
      v10 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v11)
    {
      v11 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v65, v10 + 2, v11 + 15);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v12)
    {
      v12 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v13)
    {
      v13 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v66, v12 + 14, v13 + 16);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v14)
    {
      v14 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v15)
    {
      v15 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v67, v14 + 3, v15 + 17);
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v16)
    {
      v16 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v17)
    {
      v17 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v68, v16 + 5, v17 + 18);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v18)
    {
      v18 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v19)
    {
      v19 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v69, v18 + 6, v19 + 19);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v20)
    {
      v20 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v21)
    {
      v21 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v70, v20 + 7, v21 + 20);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v22)
    {
      v22 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v23)
    {
      v23 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v71, v22 + 9, v23 + 21);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v24)
    {
      v24 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v25)
    {
      v25 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v72, v24 + 16, v25 + 22);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v26)
    {
      v26 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v27)
    {
      v27 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v73, v26 + 8, v27 + 23);
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v28)
    {
      v28 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v29)
    {
      v29 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v74, v28 + 15, v29 + 36);
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v30)
    {
      v30 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v31)
    {
      v31 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v75, v30 + 10, v31 + 37);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v32)
    {
      v32 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v33)
    {
      v33 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v76, v32 + 11, v33 + 38);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v34)
    {
      v34 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v35)
    {
      v35 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v77, v34 + 12, v35 + 39);
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v36)
    {
      v36 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v37)
    {
      v37 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v78, v36 + 18, v37 + 31);
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v38)
    {
      v38 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v39)
    {
      v39 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v79, v38 + 19, v39 + 32);
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v40)
    {
      v40 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v41)
    {
      v41 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v80, v40 + 20, v41 + 29);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v42)
    {
      v42 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v43)
    {
      v43 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v81, v42 + 21, v43 + 30);
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v44)
    {
      v44 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v45)
    {
      v45 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v82, v44 + 22, v45 + 34);
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v46)
    {
      v46 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v47)
    {
      v47 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v83, v46 + 23, v47 + 33);
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v48)
    {
      v48 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v49)
    {
      v49 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v84, v48 + 24, v49 + 35);
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v50)
    {
      v50 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v51)
    {
      v51 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v85, v50 + 25, v51 + 26);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v52)
    {
      v52 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v53)
    {
      v53 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v86, v52 + 26, v53 + 24);
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v54)
    {
      v54 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v55)
    {
      v55 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v87, v54 + 27, v55 + 25);
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v56)
    {
      v56 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v57)
    {
      v57 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v88, v56 + 28, v57 + 27);
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v58)
    {
      v58 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v59)
    {
      v59 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(v89, v58 + 29, v59 + 28);
    sub_29B04E448(qword_2A1754130, v63, 27);
    v60 = 54;
    do
    {
      v61 = v63[v60 - 1];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v63[v60 - 2];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 -= 2;
    }

    while (v60 * 8);
    __cxa_atexit(sub_29B048E64, qword_2A1754130, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1754158);
  }

  v5 = sub_29A16039C(qword_2A1754130, a3);
  if (v5)
  {
    a3 = (v5 + 3);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(this, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(void *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a5@<X8>, double a6@<D0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v32, a2);
  v34 = 0;
  v32 = &unk_2A20618F0;
  v13 = a1[3];
  if (v33 && (*(v33 + 57) & 8) == 0 && (off_2A2061910(&v32) & 1) != 0)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v14)
    {
      v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v14 + 45) ^ *a4) > 7)
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v22)
      {
        v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v22 + 34) ^ *a4) <= 7)
      {
        memset(v31, 0, sizeof(v31));
        pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetFiltersRel(&v32, &v35);
        pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(&v35, v31);
        if ((v39 & 7) != 0)
        {
          atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
        sub_29A1DE3A4(&v37);
        if (v36)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v23);
        }

        *(a5 + 1) = &off_2A2048F00;
        sub_29A23E64C(a5);
      }

      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v24)
      {
        v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v24 + 73) ^ *a4) > 7)
      {
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v25)
        {
          v25 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        if ((*(v25 + 7) ^ *a4) > 7)
        {
          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v26)
          {
            v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v26 + 85) ^ *a4) <= 7)
          {
            if (!v33 || (*(v33 + 57) & 8) != 0)
            {
              v27 = 0;
            }

            else
            {
              v27 = v32[4](&v32);
            }

            *(a5 + 1) = &unk_2A20443C3;
            *a5 = v27;
            goto LABEL_41;
          }

          v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v28)
          {
            v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v28 + 51) ^ *a4) <= 7)
          {
            *(a5 + 1) = 0;
            pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetMaterialSyncModeAttr(&v32, &v35);
            v29.n128_f64[0] = a6;
            pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(&v35, a5, v29);
            sub_29A5888DC(&v35);
            goto LABEL_41;
          }
        }

        else if ((*(a1[3] + 8990) & 1) == 0 || ((*(*a1 + 360))(a1, a2, a3, a6) & 1) == 0)
        {
          *(a5 + 1) = &unk_2A2044C63;
          *a5 = 0;
          goto LABEL_41;
        }

        *(a5 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(a2, a4);
      }

      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetShadowLinkCollectionAPI(&v32, &v35);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v35, v31);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetLightLinkCollectionAPI(&v32, &v35);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v35, v31);
    }

    v15 = v31[0];
    *a5 = v31[0];
    *(a5 + 1) = &off_2A2044E88 + 1;
    if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a5 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v31[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v31[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&v35);
  }

  else
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v16 + 48) ^ *a4) > 7)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v20)
      {
        v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v20 + 47) ^ *a4) > 7)
      {
        *(a5 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a2, a4);
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v31, a2);
      v31[0] = &unk_2A2061A18;
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::GetFilterLinkCollectionAPI(v31, &v35);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v35, &v30);
      v21 = v30;
      *a5 = v30;
      *(a5 + 1) = &off_2A2044E88 + 1;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a5 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&v35);
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(v31);
    }

    else
    {
      v17 = *(a2 + 1);
      if (!v17 || (*(v17 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v17, v12);
      }

      v18 = *(v17 + 24);
      *(a5 + 1) = &off_2A2044E88 + 1;
      v19 = *(v18 + 48);
      *a5 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a5 &= 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

LABEL_41:
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(&v32);
}

void sub_29B04945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(va);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform@<Q0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>)
{
  v2 = *(this + 3);
  v3 = *(v2 + 1056);
  *(a1 + 4) = *(v2 + 1040);
  *(a1 + 5) = v3;
  v4 = *(v2 + 1088);
  *(a1 + 6) = *(v2 + 1072);
  *(a1 + 7) = v4;
  v5 = *(v2 + 992);
  *a1 = *(v2 + 976);
  *(a1 + 1) = v5;
  result = *(v2 + 1008);
  v7 = *(v2 + 1024);
  *(a1 + 2) = result;
  *(a1 + 3) = v7;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    sub_29A1E21F4(a3, *a2);
    result = sub_29A1E2240(a3 + 1, v4 + 1);
    if ((a2[1] - *a2) >= 9)
    {
      v8 = sub_29A5A70E0((*(a1 + 24) + 864));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v18, v8, a3);
      if (!sub_29A5A9294(&v18))
      {
        v13 = "usdImaging/primAdapter.cpp";
        v14 = "_GetPrimPathFromInstancerChain";
        v15 = 874;
        v16 = "SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(const SdfPathVector &) const";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "prim.IsInPrototype()", 0);
      }

      LODWORD(v13) = v18;
      v14 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19 + 6, 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(&v15, &v20);
      sub_29A1E2240(&v15 + 1, &v21);
      v16 = v22;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (sub_29A5B9DEC(&v13, v9))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
      }

      sub_29A5B9D18(&v13, &v11);
      LODWORD(v13) = v11;
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v10);
      }

      v14 = v12;
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29B0498D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_29A57F434(va);
  sub_29A1DCEA8(v18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialBindingPurpose(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 280);

  return v1();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialRenderContexts(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 296);

  return v1();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v2 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 304);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsPrimvarFilteringNeeded(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 312);

  return v1();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetShaderSourceTypes(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 320);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t *a5, char a6)
{
  sub_29ACCA394(&v11, a3, a4, a5, a6);
  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_4:
    result = sub_29AE70BB0(a2, &v11);
  }

  else
  {
    while ((*a3 ^ *v9) > 7)
    {
      v9 += 32;
      if (v9 == v8)
      {
        goto LABEL_4;
      }
    }

    sub_29A166F2C(v9, &v11);
    *(v9 + 8) = v12;
    result = sub_29A166F2C((v9 + 16), &v13);
    *(v9 + 24) = v14;
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B049C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_RemovePrimvar(uint64_t a1, void *a2, unint64_t *a3)
{
  v7 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v13 = v3;
    v14 = v4;
    v9 = *a3;
    while ((v9 ^ *v7) > 7)
    {
      v7 += 4;
      if (v7 == v6)
      {
        return result;
      }
    }

    sub_29AE75CE8(&v12, (v7 + 4), v6, v7);
    return sub_29ABEEA50(a2, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ComputeAndMergePrimvar(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *this, double a4, uint64_t *a5, unsigned int *a6)
{
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetPrimvarName(&v15, this);
  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::Get<pxrInternal__aapl__pxrReserved__::VtValue>(this, v16, a4))
  {
    if (!a6)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(this, __p);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(__p, v11);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(this, __p);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(&v14, __p);
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (sub_29AF49C14(10))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsIndexed(this);
  }

  v10 = sub_29AF49C14(10);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_RemovePrimvar(v10, a5, &v15);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A186B14(v16);
}

void sub_29B049F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(&a21);
  _Unwind_Resume(a1);
}

void sub_29B04A194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B04A1B4(uint64_t result, void *a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v8 = -v5;
    while ((*a2 ^ *v5) >= 8)
    {
      v5 += 32;
      v8 -= 32;
      if (v5 == v4)
      {
        return result;
      }
    }

    if (v5 != v4 && (result & 1) == 0)
    {
      if (sub_29AF49C14(2))
      {
        v9 = *v5 & 0xFFFFFFFFFFFFFFF8;
        if (v9)
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

        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a4);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Removing primvar descriptor %s for cachePath %s.\n", v12, v13, v10, Text);
      }

      sub_29AE75CE8(&v15, 32 - v8, a3[1], -v8);
      return sub_29ABEEA50(a3, v14);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, uint64_t a5, int a6)
{
  v18 = 3;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v17, a2);
  v17[3] = 0;
  v17[0] = &unk_2A2060598;
  if (a6)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(v17, a4);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v17, a4, &v12);
  v18 = v12;
  v10 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 6, 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19, v9);
  }

  v19 = v10;
  sub_29A2258F0(&v20, &v14);
  sub_29A225948(&v21, &v15);
  sub_29A166F2C(&v22, &v16);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(&v12, v11);
}

void sub_29B04A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_29A7A079C(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(va1);
  sub_29A5888DC(va2);
  _Unwind_Resume(a1);
}

void sub_29B04A7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04A91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B04A94C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ResolveCachePath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, a1) + 1;

  return sub_29A1E2240(v3, a1 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, int a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, _DWORD *a6, int a7, _BYTE *a8)
{
  sub_29A0ECEEC(&v12, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(UsdPrim, const TfToken &, HdDirtyBits, const TfToken &, HdDirtyBits *, BOOL, BOOL *) const");
  if (a8)
  {
    *a8 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v11, a2, a3);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11);
}

void sub_29B04AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_29A5888DC(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(uint64_t a1, pxrInternal__aapl__pxrReserved__ **a2, int a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, _DWORD *a5)
{
  sub_29A0ECEEC(&v19, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(UsdPrim, HdDirtyBits, const TfToken &, HdDirtyBits *) const");
  v10 = *(a1 + 24);
  v11 = sub_29AFB0654(v10 + 1288, a2);
  v12 = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::TransformMightBeTimeVarying(v11);
  if (v12)
  {
    *a5 |= a3;
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v15)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v15, a4);
  }

  else if ((sub_29AFB0654(v10 + 1288, a2)[3] & 1) == 0)
  {
    sub_29A5B9D18(a2, &v17);
    *a2 = v17;
    v14 = a2[1];
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v13);
    }

    a2[1] = v18;
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }

  return v12;
}

void sub_29B04AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a6)
{
  v19 = a6;
  sub_29A0ECEEC(&v18, "usdImaging", "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const");
  v9 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v17, 1.0);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a3);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v11)
  {
    v11 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v11 + 20) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v11 + 20) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(Name, EmptyString, &__p);
  if (v16 == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  if ((atomic_load_explicit(&qword_2A1754168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754168))
  {
    v13 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SHARED_XFORM_CACHE);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1754160 = *v13 == 1;
    __cxa_guard_release(&qword_2A1754168);
  }

  if (byte_2A1754160 == 1 && *(v9 + 1848) == v19)
  {
    sub_29B04B214();
  }

  sub_29B04B3A8(a2, &v14);
}

void sub_29B04B190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  __cxa_guard_abort(&qword_2A1754168);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v36 - 120);
  _Unwind_Resume(a1);
}

void sub_29B04B388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04B3A8(int *a1@<X0>, double *a4@<X8>)
{
  v14[0] = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a4, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v13, 1.0);
  v8 = *a1;
  v6 = *(a1 + 1);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v10, a1 + 4);
  sub_29A1E2240(&v11, a1 + 5);
  v7 = *(a1 + 3);
  v12 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8);
}

void sub_29B04B660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, double a3, uint64_t a4, unint64_t a5, _DWORD *a6, _OWORD *a7)
{
  if (a5)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2);
  }

  return 0;
}

void sub_29B04BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v5, this, a2);
  *(a3 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
}

void sub_29B04BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A186B14(v9);
  sub_29A5888DC(&a9);
  _Unwind_Resume(a1);
}

void sub_29B04C0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04C0C4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double a2)
{
  v3 = a2;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v2, a1);
  v2[0] = &unk_2A205FF00;
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputeVisibility(v2, &v3);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, void *a5@<X8>)
{
  if (sub_29B04C244())
  {
    sub_29B04C2E8();
  }

  sub_29B04C484(&v11, a2);
  if ((v12 & 1) != 0 || (v8 = *a4) == 0)
  {
    v8 = v11;
    if (!v11)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v9)
      {
        v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v8 = *(v9 + 29);
    }
  }

  *a5 = v8;
  if ((v8 & 7) != 0)
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a5 = v10;
    }
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29B04C244()
{
  if ((atomic_load_explicit(&qword_2A1754188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754188))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_PURPOSE_CACHE);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1754180 = *v1 == 1;
    __cxa_guard_release(&qword_2A1754188);
  }

  return byte_2A1754180;
}

void sub_29B04C464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04C484(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a2);
  v3[0] = &unk_2A205FF00;
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputePurposeInfo(a1, v3);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(v3);
}

void sub_29B04C4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va);
  _Unwind_Resume(a1);
}

void *sub_29B04C500(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInheritablePurpose@<X0>(atomic_uint **__return_ptr a1@<X8>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3@<X1>)
{
  if (sub_29B04C244())
  {
    sub_29B04C2E8();
  }

  sub_29B04C484(v8, a3);
  result = sub_29A751ED0(v8);
  v6 = *result;
  *a1 = *result;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v7;
    }
  }

  if ((v8[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v8[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3)
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_2A1754198, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1754198);
    v3 = a3;
    if (v4)
    {
      v5 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_BINDING_CACHE);
      if (!v5)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A1754190 = *v5 == 1;
      __cxa_guard_release(&qword_2A1754198);
      v3 = a3;
    }
  }

  if (byte_2A1754190 == 1)
  {

    sub_29AFAD758();
  }

  sub_29B04C708(v3);
}

void sub_29B04C708(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v5 = 4;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v8);
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, a1);
  v4[3] = 0;
  v4[0] = &unk_2A20611A8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v4);
}

void sub_29B04C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29A5B6480(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetFullModelDrawMode(__int128 *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3@<X1>)
{
  v9[8] = *MEMORY[0x29EDCA608];
  sub_29ACB7794(a1);
  if (sub_29A7557D8(a3, v6))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(&v8, this[3], a3);
    if (&v8 == a1)
    {
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = v8;
    }

    *(a1 + 8) = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(this[3], a3);
    v7 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a3);
    v9[3] = 0;
    v9[0] = &unk_2A205FFB0;
    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelDrawModeColorAttr(v7, &v8);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8);
  }
}

void sub_29B04D174(_Unwind_Exception *a1)
{
  sub_29A186B14(v3 - 104);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(v3 - 184);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI((v3 - 136));
  sub_29AFA24D0(v1);
  _Unwind_Resume(a1);
}

void sub_29B04D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

int64x2_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent@<Q0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a1 + 16) = xmmword_29B43C5A0;
  result = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(a1 + 32) = result;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationSceneInputNames(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(byte_2A17541B0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CF5E4();
  }

  return &qword_2A17541B8;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleExtComputationInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v10[2] = *MEMORY[0x29EDCA608];
  if (!a6)
  {
    return 0;
  }

  *a7 = 0;
  (*(*a1 + 480))(v10);
  sub_29A18606C(a8, v10);
  sub_29A186B14(v10);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPerPrototypeIndices(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  v7 = &unk_2A1754000;
  if ((atomic_load_explicit(&qword_2A17541A8, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A17541A8);
    v7 = &unk_2A1754000;
    if (v8)
    {
      v9 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_POINT_INSTANCER_INDICES_CACHE);
      if (!v9)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A17541A0 = *v9 == 1;
      __cxa_guard_release(&qword_2A17541A8);
      v7 = &unk_2A1754000;
    }
  }

  if (v7[416] == 1 && *(v6 + 7648) == a3)
  {
    sub_29B04D704();
  }

  sub_29B04D8A4(a2, a4);
}

void sub_29B04D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04D8A4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v8, a1);
  v8 = &unk_2A2060328;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetProtoIndicesAttr(&__p, v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29B04DAE4(unint64_t *a1, unint64_t a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v4 = v2;
  sub_29B04DB74(a1, a2, &v4);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B04DB74(unint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_29B0450D8(a1, v9, a2, *a1);
          }

          v10 = *a3;
          v11 = &v7[5 * v3];
          do
          {
            v12 = *(v10 + 16);
            *v11 = *v10;
            *(v11 + 1) = v12;
            v13 = *(v10 + 32);
            v11[4] = v13;
            if (v13)
            {
              v14 = (v13 - 16);
              if (v11[3])
              {
                v14 = v11[3];
              }

              atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
            }

            v11 += 5;
          }

          while (v11 != &v7[5 * a2]);
LABEL_40:
          if (v7 != a1[4])
          {
            sub_29AFA1C7C(a1);
            a1[4] = v7;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a1;
      }

      v21 = sub_29B0450D8(a1, v7, a2, v20);
      v7 = v21;
      if (v3 < a2)
      {
        v22 = *a3;
        v23 = &v21[5 * v3];
        do
        {
          v24 = *(v22 + 16);
          *v23 = *v22;
          *(v23 + 1) = v24;
          v25 = *(v22 + 32);
          v23[4] = v25;
          if (v25)
          {
            v26 = (v25 - 16);
            if (v23[3])
            {
              v26 = v23[3];
            }

            atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
          }

          v23 += 5;
        }

        while (v23 != &v21[5 * a2]);
      }

      goto LABEL_40;
    }

    if (a2 < 0x666666666666667)
    {
      v7 = sub_29B045150(a1, a2);
      v15 = *a3;
      v16 = v7;
      do
      {
        v17 = *(v15 + 16);
        *v16 = *v15;
        *(v16 + 1) = v17;
        v18 = *(v15 + 32);
        v16[4] = v18;
        if (v18)
        {
          v19 = (v18 - 16);
          if (v16[3])
          {
            v19 = v16[3];
          }

          atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
        }

        v16 += 5;
      }

      while (v16 != &v7[5 * a2]);
      goto LABEL_40;
    }
  }

  sub_29B04DDA8(a1);
}

void sub_29B04DDA8(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29AFA1C7C(a1);
    }

    else if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    *a1 = 0;
  }
}

void sub_29B04DE2C(double *a1, double *a2, double *a3, uint64_t a4, double a5)
{
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v10 >= v9)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = a3 - a2;
  }

  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    v12 = MEMORY[0x29EDC9418];
    while (1)
    {
      v13 = operator new(8 * v11, v12);
      if (v13)
      {
        break;
      }

      v14 = v11 >> 1;
      v15 = v11 > 1;
      v11 >>= 1;
      if (!v15)
      {
        v16 = 0;
        v11 = v14;
        goto LABEL_11;
      }
    }

    v16 = v13;
  }

LABEL_11:
  sub_29B04DF48(a1, a2, a3, a4, v9, v10, v16, v11, a5);
  if (v16)
  {

    operator delete(v16);
  }
}

void sub_29B04DF30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B04DF48(double *result, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = *a2;
      v15 = -a5;
      while (1)
      {
        v16 = *(v13 + result);
        if (v14 < v16)
        {
          break;
        }

        ++v13;
        if (__CFADD__(v15++, 1))
        {
          return;
        }
      }

      v18 = -v15;
      v41 = a3;
      v42 = a8;
      if (-v15 >= v10)
      {
        if (v15 == -1)
        {
          *(v13 + result) = v14;
          *a2 = v16;
          return;
        }

        v27 = v18 / 2;
        v28 = &result[v18 / 2];
        v20 = a2;
        if (a2 != a3)
        {
          v29 = a3 - a2;
          v20 = a2;
          do
          {
            v30 = v29 >> 1;
            v31 = &v20[v29 >> 1];
            v33 = *v31;
            v32 = v31 + 1;
            v29 += ~(v29 >> 1);
            if (v33 < *(v13 + v28))
            {
              v20 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        v19 = v20 - a2;
        v21 = v13 + v28;
      }

      else
      {
        v19 = v10 / 2;
        v20 = &a2[v10 / 2];
        v21 = a2;
        if ((a2 - result) != v13)
        {
          v22 = (a2 - result - v13) >> 3;
          v21 = v13 + result;
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = (v24 + 1);
            v22 += ~(v22 >> 1);
            if (*v20 < v26)
            {
              v22 = v23;
            }

            else
            {
              v21 = v25;
            }
          }

          while (v22);
        }

        v27 = (v21 - result - v13) >> 3;
      }

      a5 = -(v27 + v15);
      v34 = v10 - v19;
      v35 = v27;
      v36 = sub_29B04E2B0(v21, a2, v20);
      v37 = v35;
      v38 = v36;
      if (v37 + v19 >= v10 - (v37 + v19) - v15)
      {
        v40 = v37;
        sub_29B04DF48(v36, v20, v41, a4, a5, v34, a7, v42);
        v20 = v21;
        v34 = v19;
        a8 = v42;
        a5 = v40;
        a3 = v38;
        result = (v13 + result);
      }

      else
      {
        v39 = v19;
        a8 = v42;
        sub_29B04DF48(v13 + result, v21, v36, a4, v37, v39, a7, v42);
        result = v38;
        a3 = v41;
      }

      v10 = v34;
      a2 = v20;
      if (!v34)
      {
        return;
      }
    }

    sub_29B04E1B4(result, a2, a3, a4, a5, v10, a7, a9);
  }
}

double sub_29B04E1B4(double *a1, double *a2, double *a3, int a4, uint64_t a5, uint64_t a6, double *__src, double result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v10 = -__src;
      v11 = __src;
      v12 = a1;
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        v10 -= 8;
      }

      while (v12 != a2);
      while (a2 != a3)
      {
        result = *a2;
        v14 = *a2 >= *__src;
        if (*a2 >= *__src)
        {
          result = *__src;
        }

        a2 += *a2 < *__src;
        __src += v14;
        *a1++ = result;
        if (v11 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v10));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      __src[v8++] = result;
    }

    while (&a2[v8] != a3);
    v9 = &__src[v8];
    while (a2 != a1)
    {
      result = *(v9 - 1);
      if (result >= *(a2 - 1))
      {
        --v9;
      }

      else
      {
        result = *--a2;
      }

      *--a3 = result;
      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = *--v9;
        result = v16;
        a3[v15--] = v16;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *sub_29B04E2B0(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_29B04E37C(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_29B04E37C(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v13 = *(v12 - 1);
      v12 -= 8;
      v14 = v13;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v14;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t sub_29B04E448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29A57764C(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void sub_29B04E4C0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CF65C();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B04E5F8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B04EB64(a1, a2, v26);
  v4 = v26[0];
  if (v26[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v26[1] == a1 + 16;
  }

  if (v5)
  {
    sub_29B04EEF0(v19);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v12, a2);
    v15 = 0;
    v12.n128_u64[0] = &unk_2A2060598;
    v7 = v12.n128_u64[1];
    if (v12.n128_u64[1])
    {
      atomic_fetch_add_explicit((v12.n128_u64[1] + 48), 1uLL, memory_order_relaxed);
    }

    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v6);
    }

    v20 = v7;
    sub_29A2258F0(&v21, &v13);
    sub_29A225948(&v22, &v14);
    sub_29A166F2C(v23, &v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v12);
    v8 = v24;
    v23[1] = 0;
    v24 = 0;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v9 = atomic_load((a1 + 576));
    atomic_store(v9 - 1, &v25);
    sub_29B04F3CC(&v12, a2, v19);
    sub_29B04EFC8(a1, &v12, 0, v18);
    v4 = v18[0];
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v16);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12.n128_u64[1], v10);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v19);
  }

  return v4 + 40;
}

void sub_29B04E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_29B04EAB4(va);
  sub_29B04EB24(va1);
  _Unwind_Resume(a1);
}

void sub_29B04E7C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a4 + 48);
  v5 = atomic_load((a4 + 48));
  v6 = (a1 + 576);
  v7 = atomic_load((a1 + 576));
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v13 = *a3;
    v12 = a3[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a4 + 40);
    *(a4 + 32) = v13;
    *(a4 + 40) = v12;
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v15 = atomic_load((a1 + 576));
    atomic_store(v15 + 1, (a4 + 48));
  }

  else
  {
    do
    {
      v16 = atomic_load(v4);
      v17 = atomic_load(v6);
    }

    while (v16 != v17 + 1);
  }
}

void sub_29B04E860(uint64_t a2@<X1>, void *a3@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar ***a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v4 = a3[1];
  if (v4 && (*(v4 + 57) & 8) == 0)
  {
    if ((*(*a3 + 32))(a3))
    {
      sub_29A5B9D18(a2, &v6);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
    }
  }
}

void sub_29B04EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_29A7A3864(&a9);
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B04EAB4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI((a1 + 32));
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

void sub_29B04EB24(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(this);
}

void sub_29B04EB64(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29B04EC9C(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 96);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29B04EC9C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29B04ED38(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B04ED38(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B04ED38(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29B04EE1C(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B04EE1C@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x68);
  *(result + 12) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[12];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA4CD0(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29B04EEF0(uint64_t a1)
{
  v4 = 1;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7);
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, &v4);
  *(a1 + 24) = 0;
  *a1 = &unk_2A2060598;
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v2);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_29B04EFC8(uint64_t a1@<X0>, __n128 *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, &a2->n128_u64[1], &a2[1], &a2[1].n128_u64[1]);
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29B04EC9C(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 12) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 96);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == v14->n128_u32[0] && *(v16 + 16) == v14->n128_u64[1] && *(v16 + 24) == v14[1].n128_u64[0] && (v14[1].n128_u64[1] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA4CD0(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 96);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B04F204(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29B04F204(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  sub_29B04F27C((v5 + 1), a3);
  v5[12] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B04F254(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B04F27C(uint64_t a1, __n128 *a2)
{
  *a1 = a2->n128_u32[0];
  v4 = a2->n128_u64[1];
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), &a2[1]);
  sub_29A1E2240((a1 + 20), &a2[1].n128_u32[1]);
  v5 = a2[1].n128_u64[1];
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B04F328((a1 + 32), a2 + 2);
  return a1;
}

__n128 sub_29B04F328(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, __n128 *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  v3->n128_u64[0] = &unk_2A205F368;
  v4 = a2[1].n128_u64[1];
  v3[1].n128_u64[1] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3[1].n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v3->n128_u64[0] = &unk_2A2060598;
  result = a2[2];
  v3[2] = result;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  v6 = atomic_load(&a2[3]);
  atomic_store(v6, &v3[3]);
  return result;
}

uint64_t sub_29B04F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B04F484((a1 + 32), a3);
  return a1;
}

void sub_29B04F484(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  *v3 = &unk_2A205F368;
  v4 = *(a2 + 24);
  *(v3 + 3) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = &unk_2A2060598;
  v5 = *(a2 + 40);
  *(v3 + 4) = *(a2 + 32);
  *(v3 + 5) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = atomic_load((a2 + 48));
  atomic_store(v6, v3 + 12);
}

void sub_29B04F554(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B07F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B04F5C8@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 59);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void sub_29B04F62C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      sub_29B04F5C8(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_VisStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_);
      __cxa_atexit(sub_29A424A8C, &pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_VisStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, &dword_299FE7000);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B04F7D0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B04FC4C(a1, a2, v8);
  if (v8[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29B04FFD8(v7);
    sub_29B04FAB4(&v6, a2);
    sub_29A758894(v7, &v6);
  }

  return v8[0] + 40;
}

void sub_29B04F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B04FBD0(va);
  v5 = *(v3 - 64);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(v3 - 184);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B04F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a3@<X2>, void *a4@<X8>)
{
  sub_29A5B9D18(a2, &v13);
  v7 = sub_29B04F62C(a1, &v13);
  v8 = *v7;
  *a4 = *v7;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v9;
    }
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v10);
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(result + 62) ^ *a4) >= 8)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v12);
  }

  return result;
}

void sub_29B04FAB4(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
  v9 = &unk_2A205FF00;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A205FF20(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetVisibilityAttr(&v4, &v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1, &v4);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v3);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  }
}

void sub_29B04FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B04FBD0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a1 + 32);
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

void sub_29B04FC4C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29B04FD84(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 176);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29B04FD84(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29B04FE20(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B04FE20(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B04FE20(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29B04FF04(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B04FF04@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xB8);
  *(result + 22) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[22];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA3E4C(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *sub_29B04FFD8(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  sub_29B04F5C8(v2 + 15);
  *(a1 + 32) = 0;
  return a1;
}

void sub_29B050020(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, a2 + 1, a2 + 4, a2 + 3);
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29B04FD84(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 22) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 176);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == *(v14 + 1) && *(v16 + 24) == *(v14 + 2) && (*(v14 + 3) ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA3E4C(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 176);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B05025C(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29B05025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  sub_29AFA95FC((v5 + 1), a3);
  v5[22] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B0502AC(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B0502D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFAC580((a1 + 32), a3);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B05038C@<X0>(uint64_t a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 29);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  *(a1 + 8) = 0;
  return result;
}

void sub_29B0503F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      sub_29B05038C(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_PurposeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_);
      __cxa_atexit(sub_29B04C500, &pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_PurposeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, &dword_299FE7000);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B050598(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B050B74(a1, a2, v8);
  if (v8[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29B050F00(v7);
    sub_29B0509DC(&v6, a2);
    sub_29A758894(v7, &v6);
  }

  return v8[0] + 40;
}

void sub_29B050708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B050AF8(va);
  v5 = *(v3 - 72);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(v3 - 192);
  _Unwind_Resume(a1);
}

unsigned int *sub_29B05074C(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + 136);
  v5 = atomic_load((a4 + 136));
  v6 = result + 144;
  v7 = atomic_load(result + 144);
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v12 = result;
    result = sub_29A166F2C((a4 + 120), a3);
    *(a4 + 128) = *(a3 + 8);
    v13 = atomic_load(v12 + 144);
    atomic_store(v13 + 1, (a4 + 136));
  }

  else
  {
    do
    {
      v14 = atomic_load(v4);
      v15 = atomic_load(v6);
    }

    while (v14 != v15 + 1);
  }

  return result;
}

void sub_29B050998(_Unwind_Exception *exception_object)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0509DC(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
  v9 = &unk_2A205FF00;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A205FF20(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(&v9, &v4);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1, &v4);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v3);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  }
}

void sub_29B050AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B050AF8(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a1 + 32);
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

void sub_29B050B74(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29B050CAC(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 184);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29B050CAC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29B050D48(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B050D48(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B050D48(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29B050E2C(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B050E2C@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xC0);
  *(result + 23) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[23];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA4540(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *sub_29B050F00(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  sub_29B05038C(v2 + 120);
  *(a1 + 34) = 0;
  return a1;
}

void sub_29B050F48(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, a2 + 1, a2 + 4, a2 + 3);
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29B050CAC(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 23) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 184);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == *(v14 + 1) && *(v16 + 24) == *(v14 + 2) && (*(v14 + 3) ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA4540(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 184);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B051184(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29B051184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xC0);
  sub_29B0511FC((v5 + 1), a3);
  v5[23] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B0511D4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B0511FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A589860(a1 + 32, a2 + 32);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  v6 = atomic_load((a2 + 168));
  atomic_store(v6, (a1 + 168));
  return a1;
}

uint64_t sub_29B0512B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B051370((a1 + 32), a3);
  return a1;
}

void sub_29B051370(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1, a2);
  v4 = *(a2 + 120);
  *(v3 + 15) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 15) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v3 + 128) = *(a2 + 128);
  v5 = atomic_load((a2 + 136));
  atomic_store(v5, v3 + 34);
}

void sub_29B0513D8(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CF6C8();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

void sub_29B051508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA1C7C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29B051524(uint64_t a1, uint64_t a2)
{
  sub_29B05178C(a1, a2, v17);
  v4 = v17[0];
  if (v17[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v17[1] == a1 + 16;
  }

  if (v5)
  {
    memset(v16, 0, 28);
    v15 = 0u;
    v14 = 0;
    sub_29AFA1C7C(&v15);
    v15 = 0u;
    memset(v16, 0, 24);
    *v9 = 0u;
    v10 = 0u;
    v11 = 0;
    sub_29AFA1C7C(v9);
    v6 = atomic_load((a1 + 576));
    atomic_store(v6 - 1, &v16[3]);
    sub_29B051E98(v9, a2, &v14);
    sub_29B051B18(a1, v9, 0, v13);
    v4 = v13[0];
    sub_29AFA1C7C(v12);
    if ((BYTE8(v10) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    if (v9[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9[1], v7);
    }

    sub_29AFA1C7C(&v15);
  }

  return v4 + 40;
}

void sub_29B05165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29B051724(&a9);
  sub_29AFA1C7C((v9 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B05169C(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = (a4 + 48);
  v5 = atomic_load((a4 + 48));
  v6 = (result + 576);
  v7 = atomic_load((result + 576));
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v11 = result;
    result = sub_29B051F7C(a4 + 8, a3);
    v12 = atomic_load((v11 + 576));
    atomic_store(v12 + 1, (a4 + 48));
  }

  else
  {
    do
    {
      v13 = atomic_load(v4);
      v14 = atomic_load(v6);
    }

    while (v13 != v14 + 1);
  }

  return result;
}

uint64_t sub_29B051724(uint64_t a1)
{
  sub_29AFA1C7C((a1 + 40));
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

void sub_29B05178C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29B0518C4(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 96);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29B0518C4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29B051960(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B051960(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B051960(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29B051A44(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B051A44@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x68);
  *(result + 12) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[12];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA5060(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}