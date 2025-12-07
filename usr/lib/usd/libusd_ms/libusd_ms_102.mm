unint64_t *sub_29AA4FA94()
{
  v1 = nullsub_1494;
}

void pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::~AppleAnnotationTaskAPI(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/annotationTaskAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static AppleAnnotationTaskAPI pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A2070268;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA4FC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA4FCC4(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17475C0, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI]";
    v12 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v10);
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA4FE9C(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070268;
  }

  else
  {
    v7 = 1;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v7);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070268;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    result = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
    }
  }

  return result;
}

uint64_t sub_29AA4FE9C(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17475C0, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI]";
    v10 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
    if (*(TypeName + 23) >= 0)
    {
      v8 = TypeName;
    }

    else
    {
      v8 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v8);
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17475C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17475C8))
  {
    __cxa_guard_release(&qword_2A17475C8);
  }

  return &qword_2A17475C0;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17475D8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17475D8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::_GetStaticTfType(v2);
      byte_2A17475D0 = sub_29A7343F0(&qword_2A17475C0, v3);
      __cxa_guard_release(&qword_2A17475D8);
    }
  }

  return byte_2A17475D0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::GetCompletedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 16));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::CreateCompletedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 16), v9, 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleAnnotationTaskAPI *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17475F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17475F8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 2);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A17475E0 = 0;
    *algn_2A17475E8 = 0;
    qword_2A17475F0 = 0;
    sub_29A12EF7C(&qword_2A17475E0, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17475E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17475F8);
  }

  if ((atomic_load_explicit(&qword_2A1747618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747618))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA503DC(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747600, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747618);
  }

  if (v1)
  {
    return &qword_2A1747600;
  }

  else
  {
    return &qword_2A17475E0;
  }
}

char *sub_29AA503DC(uint64_t **a1)
{
  qword_2A1747608 = 0;
  unk_2A1747610 = 0;
  qword_2A1747600 = 0;
  sub_29A1D7F98(&qword_2A1747600, ((*algn_2A17475E8 - qword_2A17475E0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747600, qword_2A1747608, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747600, qword_2A1747608, qword_2A17475E0, *algn_2A17475E8, (*algn_2A17475E8 - qword_2A17475E0) >> 3);
}

void sub_29AA50474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA50498()
{
  v1 = nullsub_1495;
}

void pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::~AppleAnnotationTimeOffsetAPI(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/annotationTimeOffsetAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static AppleAnnotationTimeOffsetAPI pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A20702C0;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA506A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA506C8(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747620, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI]";
    v12 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v10);
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA508A0(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A20702C0;
  }

  else
  {
    v7 = 1;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v7);
    *(a3 + 3) = 0;
    *a3 = &unk_2A20702C0;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    result = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
    }
  }

  return result;
}

uint64_t sub_29AA508A0(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747620, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI]";
    v10 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
    if (*(TypeName + 23) >= 0)
    {
      v8 = TypeName;
    }

    else
    {
      v8 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v8);
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747628))
  {
    __cxa_guard_release(&qword_2A1747628);
  }

  return &qword_2A1747620;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747638, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747638);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::_GetStaticTfType(v2);
      byte_2A1747630 = sub_29A7343F0(&qword_2A1747620, v3);
      __cxa_guard_release(&qword_2A1747638);
    }
  }

  return byte_2A1747630;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::GetStartTimeOffsetAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 160));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::CreateStartTimeOffsetAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 160), (v9 + 72), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::GetStartTrimAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 168));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::CreateStartTrimAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 168), (v9 + 72), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::GetEndTrimAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 72));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::CreateEndTrimAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 72), (v9 + 72), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleAnnotationTimeOffsetAPI *this)
{
  v1 = this;
  v15 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747658))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 20);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v5)
    {
      v5 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v6 = *(v5 + 21);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v7)
    {
      v7 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v8 = *(v7 + 9);
    v14 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747640 = 0;
    *algn_2A1747648 = 0;
    qword_2A1747650 = 0;
    sub_29A12EF7C(&qword_2A1747640, &v12, &v15, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747640, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747658);
  }

  if ((atomic_load_explicit(&qword_2A1747678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747678))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA511B4(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747660, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747678);
  }

  if (v1)
  {
    return &qword_2A1747660;
  }

  else
  {
    return &qword_2A1747640;
  }
}

char *sub_29AA511B4(uint64_t **a1)
{
  qword_2A1747668 = 0;
  unk_2A1747670 = 0;
  qword_2A1747660 = 0;
  sub_29A1D7F98(&qword_2A1747660, ((*algn_2A1747648 - qword_2A1747640) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747660, qword_2A1747668, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747660, qword_2A1747668, qword_2A1747640, *algn_2A1747648, (*algn_2A1747648 - qword_2A1747640) >> 3);
}

void sub_29AA5124C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA51270()
{
  v1 = nullsub_1496;
}

void pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::~AppleAudioAnnotation(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/audioAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleAudioAnnotation pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070318;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA51470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747688))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747680, "AppleAudioAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747680, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747688);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/audioAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleAudioAnnotation pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070318;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747698))
  {
    __cxa_guard_release(&qword_2A1747698);
  }

  return &qword_2A1747690;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A17476A8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17476A8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::_GetStaticTfType(v2);
      byte_2A17476A0 = sub_29A7343F0(&qword_2A1747690, v3);
      __cxa_guard_release(&qword_2A17476A8);
    }
  }

  return byte_2A17476A0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::GetFilePathAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 80));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::CreateFilePathAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 80), (v9 + 96), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::GetTranscriptionAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 200));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::CreateTranscriptionAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 200), (v9 + 80), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleAudioAnnotation *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17476C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17476C8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 10);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v6)
    {
      v6 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v7 = *(v6 + 25);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A17476B0 = 0;
    *algn_2A17476B8 = 0;
    qword_2A17476C0 = 0;
    sub_29A12EF7C(&qword_2A17476B0, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17476B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17476C8);
  }

  if ((atomic_load_explicit(&qword_2A17476E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17476E8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA51D1C(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17476D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17476E8);
  }

  if (v1)
  {
    return &qword_2A17476D0;
  }

  else
  {
    return &qword_2A17476B0;
  }
}

void sub_29AA51CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A17476C8);
  _Unwind_Resume(a1);
}

char *sub_29AA51D1C(uint64_t **a1)
{
  qword_2A17476D8 = 0;
  unk_2A17476E0 = 0;
  qword_2A17476D0 = 0;
  sub_29A1D7F98(&qword_2A17476D0, ((*algn_2A17476B8 - qword_2A17476B0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17476D0, qword_2A17476D8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17476D0, qword_2A17476D8, qword_2A17476B0, *algn_2A17476B8, (*algn_2A17476B8 - qword_2A17476B0) >> 3);
}

void sub_29AA51DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA51DD8()
{
  v1 = nullsub_1497;
}

void pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::~AppleCaptureAnnotation(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::~AppleResourceAnnotation(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/captureAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleCaptureAnnotation pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070370;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA51FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17476F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17476F8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17476F0, "AppleCaptureAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A17476F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17476F8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/captureAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleCaptureAnnotation pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070370;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747708))
  {
    __cxa_guard_release(&qword_2A1747708);
  }

  return &qword_2A1747700;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747718, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747718);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::_GetStaticTfType(v2);
      byte_2A1747710 = sub_29A7343F0(&qword_2A1747700, v3);
      __cxa_guard_release(&qword_2A1747718);
    }
  }

  return byte_2A1747710;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::GetPoseAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 120));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::CreatePoseAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 120), (v9 + 360), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleCaptureAnnotation *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747738))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 15);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747720 = 0;
    *algn_2A1747728 = 0;
    qword_2A1747730 = 0;
    sub_29A12EF7C(&qword_2A1747720, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747720, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747738);
  }

  if ((atomic_load_explicit(&qword_2A1747758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747758))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::GetSchemaAttributeNames(1);
    sub_29AA52690(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747740, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747758);
  }

  if (v1)
  {
    return &qword_2A1747740;
  }

  else
  {
    return &qword_2A1747720;
  }
}

char *sub_29AA52690(uint64_t **a1)
{
  qword_2A1747748 = 0;
  unk_2A1747750 = 0;
  qword_2A1747740 = 0;
  sub_29A1D7F98(&qword_2A1747740, ((*algn_2A1747728 - qword_2A1747720) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747740, qword_2A1747748, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747740, qword_2A1747748, qword_2A1747720, *algn_2A1747728, (*algn_2A1747728 - qword_2A1747720) >> 3);
}

void sub_29AA52728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA5274C()
{
  v1 = nullsub_1498;
}

void pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::~AppleResourceAnnotation(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/resourceAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleResourceAnnotation pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A20703C8;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA5294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747768))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747760, "AppleResourceAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747760, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747768);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/resourceAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleResourceAnnotation pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A20703C8;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747778))
  {
    __cxa_guard_release(&qword_2A1747778);
  }

  return &qword_2A1747770;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747788, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747788);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::_GetStaticTfType(v2);
      byte_2A1747780 = sub_29A7343F0(&qword_2A1747770, v3);
      __cxa_guard_release(&qword_2A1747788);
    }
  }

  return byte_2A1747780;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::GetFilePathAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 80));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::CreateFilePathAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 80), (v9 + 96), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::GetOverlayAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 112));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::CreateOverlayAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 112), (v9 + 552), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleResourceAnnotation *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17477A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17477A8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 10);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v6)
    {
      v6 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v7 = *(v6 + 14);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A1747790 = 0;
    *algn_2A1747798 = 0;
    qword_2A17477A0 = 0;
    sub_29A12EF7C(&qword_2A1747790, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747790, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17477A8);
  }

  if ((atomic_load_explicit(&qword_2A17477C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17477C8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA531F8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17477B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17477C8);
  }

  if (v1)
  {
    return &qword_2A17477B0;
  }

  else
  {
    return &qword_2A1747790;
  }
}

void sub_29AA53180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A17477A8);
  _Unwind_Resume(a1);
}

char *sub_29AA531F8(uint64_t **a1)
{
  qword_2A17477B8 = 0;
  unk_2A17477C0 = 0;
  qword_2A17477B0 = 0;
  sub_29A1D7F98(&qword_2A17477B0, ((*algn_2A1747798 - qword_2A1747790) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17477B0, qword_2A17477B8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17477B0, qword_2A17477B8, qword_2A1747790, *algn_2A1747798, (*algn_2A1747798 - qword_2A1747790) >> 3);
}

void sub_29AA53290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA532B4()
{
  v1 = nullsub_1499;
}

void pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::~AppleScribbleAnnotation(pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCurves::~UsdGeomCurves(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/scribbleAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleScribbleAnnotation pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070420;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA534B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17477D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17477D8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17477D0, "AppleScribbleAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A17477D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17477D8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/scribbleAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleScribbleAnnotation pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070420;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A17477E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17477E8))
  {
    __cxa_guard_release(&qword_2A17477E8);
  }

  return &qword_2A17477E0;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A17477F8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17477F8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::_GetStaticTfType(v2);
      byte_2A17477F0 = sub_29A7343F0(&qword_2A17477E0, v3);
      __cxa_guard_release(&qword_2A17477F8);
    }
  }

  return byte_2A17477F0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleScribbleAnnotation *this)
{
  v1 = this;
  if ((atomic_load_explicit(byte_2A1747820, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BC784();
  }

  if ((atomic_load_explicit(&qword_2A1747818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747818))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetSchemaAttributeNames(1);
    qword_2A1747800 = 0;
    *algn_2A1747808 = 0;
    qword_2A1747810 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (v1)
  {
    return &qword_2A1747800;
  }

  else
  {
    return &qword_2A1747828;
  }
}

unint64_t *sub_29AA538FC()
{
  v1 = nullsub_1500;
}

void pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::~AppleShapeAnnotation(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::~UsdGeomBoundable(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/shapeAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleShapeAnnotation pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070478;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA53AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747848))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747840, "AppleShapeAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747840, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747848);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/shapeAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleShapeAnnotation pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070478;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747858))
  {
    __cxa_guard_release(&qword_2A1747858);
  }

  return &qword_2A1747850;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747868, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747868);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::_GetStaticTfType(v2);
      byte_2A1747860 = sub_29A7343F0(&qword_2A1747850, v3);
      __cxa_guard_release(&qword_2A1747868);
    }
  }

  return byte_2A1747860;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetTypeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 216));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::CreateTypeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 216), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetDimensionsAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 48));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::CreateDimensionsAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 48), (v9 + 160), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetFillColorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 88));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::CreateFillColorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 88), (v9 + 304), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetStrokeColorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 176));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::CreateStrokeColorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 176), (v9 + 304), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetStrokeWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 184));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::CreateStrokeWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 184), (v9 + 56), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleShapeAnnotation *this)
{
  v1 = this;
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747888))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 27);
    v16 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v5)
    {
      v5 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v6 = *(v5 + 6);
    v17 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v7)
    {
      v7 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v8 = *(v7 + 11);
    v18 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v9)
    {
      v9 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v10 = *(v9 + 22);
    v19 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v11)
    {
      v11 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v12 = *(v11 + 23);
    v20 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747870 = 0;
    *algn_2A1747878 = 0;
    qword_2A1747880 = 0;
    sub_29A12EF7C(&qword_2A1747870, &v16, &v21, 5uLL);
    for (i = 32; i != -8; i -= 8)
    {
      v14 = *(&v16 + i);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747870, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747888);
  }

  if ((atomic_load_explicit(&qword_2A17478A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17478A8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetSchemaAttributeNames(1);
    sub_29AA54900(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747890, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17478A8);
  }

  if (v1)
  {
    return &qword_2A1747890;
  }

  else
  {
    return &qword_2A1747870;
  }
}

char *sub_29AA54900(uint64_t **a1)
{
  qword_2A1747898 = 0;
  unk_2A17478A0 = 0;
  qword_2A1747890 = 0;
  sub_29A1D7F98(&qword_2A1747890, ((*algn_2A1747878 - qword_2A1747870) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747890, qword_2A1747898, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747890, qword_2A1747898, qword_2A1747870, *algn_2A1747878, (*algn_2A1747878 - qword_2A1747870) >> 3);
}

void sub_29AA54998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA549BC()
{
  v1 = nullsub_1501;
}

void pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::~AppleSpatialAnnotationGroup(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/spatialAnnotationGroup.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleSpatialAnnotationGroup pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A20704D0;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA54BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17478B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17478B8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17478B0, "AppleSpatialAnnotationGroup");
    __cxa_atexit(sub_29A424A8C, &unk_2A17478B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17478B8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/spatialAnnotationGroup.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleSpatialAnnotationGroup pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A20704D0;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this)
{
  if ((atomic_load_explicit(&qword_2A17478C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17478C8))
  {
    __cxa_guard_release(&qword_2A17478C8);
  }

  return &qword_2A17478C0;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this)
{
  if ((atomic_load_explicit(&qword_2A17478D8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17478D8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::_GetStaticTfType(v2);
      byte_2A17478D0 = sub_29A7343F0(&qword_2A17478C0, v3);
      __cxa_guard_release(&qword_2A17478D8);
    }
  }

  return byte_2A17478D0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::GetPoseAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 120));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::CreatePoseAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 120), (v9 + 360), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleSpatialAnnotationGroup *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17478F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17478F8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 15);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A17478E0 = 0;
    *algn_2A17478E8 = 0;
    qword_2A17478F0 = 0;
    sub_29A12EF7C(&qword_2A17478E0, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17478E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17478F8);
  }

  if ((atomic_load_explicit(&qword_2A1747918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747918))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetSchemaAttributeNames(1);
    sub_29AA55274(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747900, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747918);
  }

  if (v1)
  {
    return &qword_2A1747900;
  }

  else
  {
    return &qword_2A17478E0;
  }
}

char *sub_29AA55274(uint64_t **a1)
{
  qword_2A1747908 = 0;
  unk_2A1747910 = 0;
  qword_2A1747900 = 0;
  sub_29A1D7F98(&qword_2A1747900, ((*algn_2A17478E8 - qword_2A17478E0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747900, qword_2A1747908, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747900, qword_2A1747908, qword_2A17478E0, *algn_2A17478E8, (*algn_2A17478E8 - qword_2A17478E0) >> 3);
}

void sub_29AA5530C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA55330()
{
  v1 = nullsub_1502;
}

void pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::~AppleTextAnnotation(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/textAnnotation.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleTextAnnotation pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070528;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA55530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747928))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747920, "AppleTextAnnotation");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747920, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747928);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/textAnnotation.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleTextAnnotation pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070528;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  result = v10;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747938))
  {
    __cxa_guard_release(&qword_2A1747938);
  }

  return &qword_2A1747930;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this)
{
  if ((atomic_load_explicit(&qword_2A1747948, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747948);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::_GetStaticTfType(v2);
      byte_2A1747940 = sub_29A7343F0(&qword_2A1747930, v3);
      __cxa_guard_release(&qword_2A1747948);
    }
  }

  return byte_2A1747940;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::GetTextAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 192));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::CreateTextAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v8)
  {
    v8 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 192), (v9 + 80), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleTextAnnotation::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleTextAnnotation *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747968))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *(v3 + 24);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747950 = 0;
    *algn_2A1747958 = 0;
    qword_2A1747960 = 0;
    sub_29A12EF7C(&qword_2A1747950, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747950, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747968);
  }

  if ((atomic_load_explicit(&qword_2A1747988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747988))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA55BE8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747970, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747988);
  }

  if (v1)
  {
    return &qword_2A1747970;
  }

  else
  {
    return &qword_2A1747950;
  }
}

char *sub_29AA55BE8(uint64_t **a1)
{
  qword_2A1747978 = 0;
  unk_2A1747980 = 0;
  qword_2A1747970 = 0;
  sub_29A1D7F98(&qword_2A1747970, ((*algn_2A1747958 - qword_2A1747950) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747970, qword_2A1747978, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747970, qword_2A1747978, qword_2A1747950, *algn_2A1747958, (*algn_2A1747958 - qword_2A1747950) >> 3);
}

void sub_29AA55C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType *pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType::AppleAnnotationTokensType(pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType *this)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "author");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "circle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "completed");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "cone");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "created");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "cuboid");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "dimensions");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "editor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "endTime");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "endTrim");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "filePath");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "fillColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "identifier");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "modified");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "overlay");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "pose");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "rectangle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "relatedObjects");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "sphere");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "startTime");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "startTimeOffset");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "startTrim");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "strokeColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "strokeWidth");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "text");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "transcription");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "triangle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "type");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "AppleAnnotationGroup");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "AppleAnnotationGroupAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "AppleAnnotationTaskAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "AppleAnnotationTimeOffsetAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "AppleAudioAnnotation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "AppleCaptureAnnotation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 34, "AppleResourceAnnotation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 35, "AppleScribbleAnnotation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 36, "AppleShapeAnnotation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 37, "AppleSpatialAnnotationGroup");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 38, "AppleTextAnnotation");
  v3 = *this;
  v45 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v46 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v47 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v48 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v49 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v50 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v51 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v52 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v53 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v54 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v55 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v56 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v57 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v58 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v59 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v60 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v61 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v62 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v63 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v64 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v65 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v66 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v67 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v68 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v69 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v70 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v71 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v72 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v73 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v74 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v75 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v76 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v77 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v78 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v79 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v80 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v81 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v82 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v83 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  sub_29A12EF7C(this + 39, &v45, &v84, 0x27uLL);
  for (i = 304; i != -8; i -= 8)
  {
    v43 = *(&v45 + i);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA56708(_Unwind_Exception *a1)
{
  v3 = 304;
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
      v5 = v1[38];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[37];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[36];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[35];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[34];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[33];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[32];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[31];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[30];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[29];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[28];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[27];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[26];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[25];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[24];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[23];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[22];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[21];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[20];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[19];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[18];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[17];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[16];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[15];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[14];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[13];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[12];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[11];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[10];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[9];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[8];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[7];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[6];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[5];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[4];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[3];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[2];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[1];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

unint64_t *sub_29AA56B78()
{
  v1 = nullsub_1503;
}

void pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::~UsdSplatsPreliminary_GaussianSplatsAPI(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdSplats/preliminary_GaussianSplatsAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdSplatsPreliminary_GaussianSplatsAPI pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A2070580;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA56D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA56DA8(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747990, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI]";
    v12 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v10);
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA56F80(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070580;
  }

  else
  {
    v7 = 1;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v7);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070580;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    result = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
    }
  }

  return result;
}

uint64_t sub_29AA56F80(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747990, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI]";
    v10 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
    if (*(TypeName + 23) >= 0)
    {
      v8 = TypeName;
    }

    else
    {
      v8 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v8);
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747998))
  {
    __cxa_guard_release(&qword_2A1747998);
  }

  return &qword_2A1747990;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17479A8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17479A8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::_GetStaticTfType(v2);
      byte_2A17479A0 = sub_29A7343F0(&qword_2A1747990, v3);
      __cxa_guard_release(&qword_2A17479A8);
    }
  }

  return byte_2A17479A0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetGaussianSplatsAPIversionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 8));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateGaussianSplatsAPIversionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 8), (v9 + 16), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetSortingModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 80));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateSortingModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 80), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetProjectionModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 56));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateProjectionModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 56), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetOrientationsAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 16));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateOrientationsAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 16), (v9 + 776), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetOrientationsfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 24));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateOrientationsfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 24), (v9 + 784), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetScalesAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 64));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateScalesAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 64), (v9 + 592), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetScalesfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 72));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::CreateScalesfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 72), (v9 + 616), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_GaussianSplatsAPI *this)
{
  v1 = this;
  v27 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17479C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17479C8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v3)
    {
      v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v4 = *(v3 + 1);
    v20 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v5)
    {
      v5 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v6 = *(v5 + 10);
    v21 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v7)
    {
      v7 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v8 = *(v7 + 7);
    v22 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v9)
    {
      v9 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v10 = *(v9 + 2);
    v23 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v11)
    {
      v11 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v12 = *(v11 + 3);
    v24 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v13)
    {
      v13 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v14 = *(v13 + 8);
    v25 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v15)
    {
      v15 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v16 = *(v15 + 9);
    v26 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A17479B0 = 0;
    *algn_2A17479B8 = 0;
    qword_2A17479C0 = 0;
    sub_29A12EF7C(&qword_2A17479B0, &v20, &v27, 7uLL);
    for (i = 48; i != -8; i -= 8)
    {
      v18 = *(&v20 + i);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17479B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17479C8);
  }

  if ((atomic_load_explicit(&qword_2A17479E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17479E8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA57F84(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17479D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17479E8);
  }

  if (v1)
  {
    return &qword_2A17479D0;
  }

  else
  {
    return &qword_2A17479B0;
  }
}

char *sub_29AA57F84(uint64_t **a1)
{
  qword_2A17479D8 = 0;
  unk_2A17479E0 = 0;
  qword_2A17479D0 = 0;
  sub_29A1D7F98(&qword_2A17479D0, ((*algn_2A17479B8 - qword_2A17479B0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17479D0, qword_2A17479D8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17479D0, qword_2A17479D8, qword_2A17479B0, *algn_2A17479B8, (*algn_2A17479B8 - qword_2A17479B0) >> 3);
}

void sub_29AA5801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA58040()
{
  v1 = nullsub_1504;
}

void pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::~UsdSplatsPreliminary_SphericalHarmonicsAPI(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdSplats/preliminary_SphericalHarmonicsAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdSplatsPreliminary_SphericalHarmonicsAPI pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A20705D8;
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  result = v9;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return result;
}

void sub_29AA58248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA58270(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17479F0, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI]";
    v12 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v8);
    if (*(TypeName + 23) >= 0)
    {
      v10 = TypeName;
    }

    else
    {
      v10 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v10);
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA58448(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A20705D8;
  }

  else
  {
    v7 = 1;
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v7);
    *(a3 + 3) = 0;
    *a3 = &unk_2A20705D8;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    result = v8;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v6);
    }
  }

  return result;
}

uint64_t sub_29AA58448(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A17479F0, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI]";
    v10 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(v6);
    if (*(TypeName + 23) >= 0)
    {
      v8 = TypeName;
    }

    else
    {
      v8 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Class '%s' is not correctly registered with the UsdSchemaRegistry as a schema type. The schema may need to be regenerated.", v8);
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17479F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17479F8))
  {
    __cxa_guard_release(&qword_2A17479F8);
  }

  return &qword_2A17479F0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747A08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747A08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::_GetStaticTfType(v2);
      byte_2A1747A00 = sub_29A7343F0(&qword_2A17479F0, v3);
      __cxa_guard_release(&qword_2A1747A08);
    }
  }

  return byte_2A1747A00;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::GetSphericalHarmonicsAPIversionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 88));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::CreateSphericalHarmonicsAPIversionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 88), (v9 + 16), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::GetSphericalHarmonicsColorSpaceAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 96));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::CreateSphericalHarmonicsColorSpaceAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 96), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::GetPrimvarsSphericalHarmonicsAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 40));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::CreatePrimvarsSphericalHarmonicsAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 40), (v9 + 592), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::GetPrimvarsSphericalHarmonicsfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v3)
  {
    v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 48));
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  sub_29A1DE3A4(&v8);
  result = v7;
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::CreatePrimvarsSphericalHarmonicsfAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  if (!v8)
  {
    v8 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 48), (v9 + 616), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdSplatsPreliminary_SphericalHarmonicsAPI *this)
{
  v1 = this;
  v18 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A28))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v3)
    {
      v3 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v4 = *(v3 + 11);
    v14 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v5)
    {
      v5 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v6 = *(v5 + 12);
    v15 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v7)
    {
      v7 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v8 = *(v7 + 5);
    v16 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    if (!v9)
    {
      v9 = sub_29A90D48C(&pxrInternal__aapl__pxrReserved__::UsdSplatsTokens);
    }

    v10 = *(v9 + 6);
    v17 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747A10 = 0;
    *algn_2A1747A18 = 0;
    qword_2A1747A20 = 0;
    sub_29A12EF7C(&qword_2A1747A10, &v14, &v18, 4uLL);
    for (i = 24; i != -8; i -= 8)
    {
      v12 = *(&v14 + i);
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747A10, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747A28);
  }

  if ((atomic_load_explicit(&qword_2A1747A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A48))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA58F18(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747A30, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747A48);
  }

  if (v1)
  {
    return &qword_2A1747A30;
  }

  else
  {
    return &qword_2A1747A10;
  }
}

char *sub_29AA58F18(uint64_t **a1)
{
  qword_2A1747A38 = 0;
  unk_2A1747A40 = 0;
  qword_2A1747A30 = 0;
  sub_29A1D7F98(&qword_2A1747A30, ((*algn_2A1747A18 - qword_2A1747A10) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747A30, qword_2A1747A38, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747A30, qword_2A1747A38, qword_2A1747A10, *algn_2A1747A18, (*algn_2A1747A18 - qword_2A1747A10) >> 3);
}

void sub_29AA58FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdSplatsTokensType *pxrInternal__aapl__pxrReserved__::UsdSplatsTokensType::UsdSplatsTokensType(pxrInternal__aapl__pxrReserved__::UsdSplatsTokensType *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cameraDistance");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "gaussianSplatsAPIversion");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "orientations");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "orientationsf");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "perspective");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "primvars:sphericalHarmonics");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "primvars:sphericalHarmonicsf");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "projectionMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "scales");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "scalesf");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "sortingMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "sphericalHarmonicsAPIversion");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "sphericalHarmonicsColorSpace");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "sRGB");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "tangential");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "zDepth");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "Preliminary_GaussianSplatsAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "Preliminary_SphericalHarmonicsAPI");
  v3 = (this + 144);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v26 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v27 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v28 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v29 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v30 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v31 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v33 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v34 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v35 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v36 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v37 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v38 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v39 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v40 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v41 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v42 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  sub_29A12EF7C(v3, &v25, &v43, 0x12uLL);
  for (i = 136; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA594F0(_Unwind_Exception *a1)
{
  v3 = 136;
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
      v5 = v1[17];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[16];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[15];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[14];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[13];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[12];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[11];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[10];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[9];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[8];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[7];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[6];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[5];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[4];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[3];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[2];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[1];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AA59714(uint64_t a1)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/GeometryCompression.framework/GeometryCompression", 261);
  *(a1 + 256) = v2;
  if (!v2)
  {
    v35 = sub_29AABB028();
    sub_29A008E78(&v299, "DLOpen Error: ");
    v36 = dlerror();
    v37 = std::string::append(&v299, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v301 = v37->__r_.__value_.__r.__words[2];
    *__p = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v35, __p);
    if (SHIBYTE(v301) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to open compression library");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v3 = dlsym(v2, "GCLBufferData");
  *a1 = v3;
  if (!v3)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferData");
    if ((v298 & 0x80u) == 0)
    {
      v40 = &v296;
    }

    else
    {
      v40 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v41 = v298;
    }

    else
    {
      v41 = v297;
    }

    v42 = std::string::append(&v299, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v301 = v42->__r_.__value_.__r.__words[2];
    *__p = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v44 = sub_29AABB028();
    sub_29AA5B750(v44, __p);
    v45 = __cxa_allocate_exception(0x10uLL);
    v46 = v45;
    if (v301 >= 0)
    {
      v47 = __p;
    }

    else
    {
      v47 = __p[0];
    }

    std::runtime_error::runtime_error(v45, v47);
    __cxa_throw(v46, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = dlsym(*(a1 + 256), "GCLBufferElementType");
  *(a1 + 8) = v4;
  if (!v4)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferElementType");
    if ((v298 & 0x80u) == 0)
    {
      v48 = &v296;
    }

    else
    {
      v48 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v49 = v298;
    }

    else
    {
      v49 = v297;
    }

    v50 = std::string::append(&v299, v48, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v301 = v50->__r_.__value_.__r.__words[2];
    *__p = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v52 = sub_29AABB028();
    sub_29AA5B750(v52, __p);
    v53 = __cxa_allocate_exception(0x10uLL);
    v54 = v53;
    if (v301 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    std::runtime_error::runtime_error(v53, v55);
    __cxa_throw(v54, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = dlsym(*(a1 + 256), "GCLBufferForBufferListIter");
  *(a1 + 16) = v5;
  if (!v5)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferForBufferListIter");
    if ((v298 & 0x80u) == 0)
    {
      v56 = &v296;
    }

    else
    {
      v56 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v57 = v298;
    }

    else
    {
      v57 = v297;
    }

    v58 = std::string::append(&v299, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v301 = v58->__r_.__value_.__r.__words[2];
    *__p = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v60 = sub_29AABB028();
    sub_29AA5B750(v60, __p);
    v61 = __cxa_allocate_exception(0x10uLL);
    v62 = v61;
    if (v301 >= 0)
    {
      v63 = __p;
    }

    else
    {
      v63 = __p[0];
    }

    std::runtime_error::runtime_error(v61, v63);
    __cxa_throw(v62, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v6 = dlsym(*(a1 + 256), "GCLBufferId");
  *(a1 + 24) = v6;
  if (!v6)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferId");
    if ((v298 & 0x80u) == 0)
    {
      v64 = &v296;
    }

    else
    {
      v64 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v65 = v298;
    }

    else
    {
      v65 = v297;
    }

    v66 = std::string::append(&v299, v64, v65);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v301 = v66->__r_.__value_.__r.__words[2];
    *__p = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v68 = sub_29AABB028();
    sub_29AA5B750(v68, __p);
    v69 = __cxa_allocate_exception(0x10uLL);
    v70 = v69;
    if (v301 >= 0)
    {
      v71 = __p;
    }

    else
    {
      v71 = __p[0];
    }

    std::runtime_error::runtime_error(v69, v71);
    __cxa_throw(v70, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v7 = dlsym(*(a1 + 256), "GCLBufferListAppendNew");
  *(a1 + 32) = v7;
  if (!v7)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListAppendNew");
    if ((v298 & 0x80u) == 0)
    {
      v72 = &v296;
    }

    else
    {
      v72 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v73 = v298;
    }

    else
    {
      v73 = v297;
    }

    v74 = std::string::append(&v299, v72, v73);
    v75 = *&v74->__r_.__value_.__l.__data_;
    v301 = v74->__r_.__value_.__r.__words[2];
    *__p = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v76 = sub_29AABB028();
    sub_29AA5B750(v76, __p);
    v77 = __cxa_allocate_exception(0x10uLL);
    v78 = v77;
    if (v301 >= 0)
    {
      v79 = __p;
    }

    else
    {
      v79 = __p[0];
    }

    std::runtime_error::runtime_error(v77, v79);
    __cxa_throw(v78, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = dlsym(*(a1 + 256), "GCLBufferListBegin");
  *(a1 + 40) = v8;
  if (!v8)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListBegin");
    if ((v298 & 0x80u) == 0)
    {
      v80 = &v296;
    }

    else
    {
      v80 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v81 = v298;
    }

    else
    {
      v81 = v297;
    }

    v82 = std::string::append(&v299, v80, v81);
    v83 = *&v82->__r_.__value_.__l.__data_;
    v301 = v82->__r_.__value_.__r.__words[2];
    *__p = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v84 = sub_29AABB028();
    sub_29AA5B750(v84, __p);
    v85 = __cxa_allocate_exception(0x10uLL);
    v86 = v85;
    if (v301 >= 0)
    {
      v87 = __p;
    }

    else
    {
      v87 = __p[0];
    }

    std::runtime_error::runtime_error(v85, v87);
    __cxa_throw(v86, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = dlsym(*(a1 + 256), "GCLBufferListEnd");
  *(a1 + 48) = v9;
  if (!v9)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListEnd");
    if ((v298 & 0x80u) == 0)
    {
      v88 = &v296;
    }

    else
    {
      v88 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v89 = v298;
    }

    else
    {
      v89 = v297;
    }

    v90 = std::string::append(&v299, v88, v89);
    v91 = *&v90->__r_.__value_.__l.__data_;
    v301 = v90->__r_.__value_.__r.__words[2];
    *__p = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v92 = sub_29AABB028();
    sub_29AA5B750(v92, __p);
    v93 = __cxa_allocate_exception(0x10uLL);
    v94 = v93;
    if (v301 >= 0)
    {
      v95 = __p;
    }

    else
    {
      v95 = __p[0];
    }

    std::runtime_error::runtime_error(v93, v95);
    __cxa_throw(v94, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = dlsym(*(a1 + 256), "GCLBufferListFromSource");
  *(a1 + 56) = v10;
  if (!v10)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListFromSource");
    if ((v298 & 0x80u) == 0)
    {
      v96 = &v296;
    }

    else
    {
      v96 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v97 = v298;
    }

    else
    {
      v97 = v297;
    }

    v98 = std::string::append(&v299, v96, v97);
    v99 = *&v98->__r_.__value_.__l.__data_;
    v301 = v98->__r_.__value_.__r.__words[2];
    *__p = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v100 = sub_29AABB028();
    sub_29AA5B750(v100, __p);
    v101 = __cxa_allocate_exception(0x10uLL);
    v102 = v101;
    if (v301 >= 0)
    {
      v103 = __p;
    }

    else
    {
      v103 = __p[0];
    }

    std::runtime_error::runtime_error(v101, v103);
    __cxa_throw(v102, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v11 = dlsym(*(a1 + 256), "GCLBufferListGetBuffer");
  *(a1 + 64) = v11;
  if (!v11)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListGetBuffer");
    if ((v298 & 0x80u) == 0)
    {
      v104 = &v296;
    }

    else
    {
      v104 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v105 = v298;
    }

    else
    {
      v105 = v297;
    }

    v106 = std::string::append(&v299, v104, v105);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v301 = v106->__r_.__value_.__r.__words[2];
    *__p = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v108 = sub_29AABB028();
    sub_29AA5B750(v108, __p);
    v109 = __cxa_allocate_exception(0x10uLL);
    v110 = v109;
    if (v301 >= 0)
    {
      v111 = __p;
    }

    else
    {
      v111 = __p[0];
    }

    std::runtime_error::runtime_error(v109, v111);
    __cxa_throw(v110, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v12 = dlsym(*(a1 + 256), "GCLBufferListGetBufferById");
  *(a1 + 72) = v12;
  if (!v12)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListGetBufferById");
    if ((v298 & 0x80u) == 0)
    {
      v112 = &v296;
    }

    else
    {
      v112 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v113 = v298;
    }

    else
    {
      v113 = v297;
    }

    v114 = std::string::append(&v299, v112, v113);
    v115 = *&v114->__r_.__value_.__l.__data_;
    v301 = v114->__r_.__value_.__r.__words[2];
    *__p = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v116 = sub_29AABB028();
    sub_29AA5B750(v116, __p);
    v117 = __cxa_allocate_exception(0x10uLL);
    v118 = v117;
    if (v301 >= 0)
    {
      v119 = __p;
    }

    else
    {
      v119 = __p[0];
    }

    std::runtime_error::runtime_error(v117, v119);
    __cxa_throw(v118, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v13 = dlsym(*(a1 + 256), "GCLBufferListIterNext");
  *(a1 + 80) = v13;
  if (!v13)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListIterNext");
    if ((v298 & 0x80u) == 0)
    {
      v120 = &v296;
    }

    else
    {
      v120 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v121 = v298;
    }

    else
    {
      v121 = v297;
    }

    v122 = std::string::append(&v299, v120, v121);
    v123 = *&v122->__r_.__value_.__l.__data_;
    v301 = v122->__r_.__value_.__r.__words[2];
    *__p = v123;
    v122->__r_.__value_.__l.__size_ = 0;
    v122->__r_.__value_.__r.__words[2] = 0;
    v122->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v124 = sub_29AABB028();
    sub_29AA5B750(v124, __p);
    v125 = __cxa_allocate_exception(0x10uLL);
    v126 = v125;
    if (v301 >= 0)
    {
      v127 = __p;
    }

    else
    {
      v127 = __p[0];
    }

    std::runtime_error::runtime_error(v125, v127);
    __cxa_throw(v126, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v14 = dlsym(*(a1 + 256), "GCLBufferListNew");
  *(a1 + 88) = v14;
  if (!v14)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListNew");
    if ((v298 & 0x80u) == 0)
    {
      v128 = &v296;
    }

    else
    {
      v128 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v129 = v298;
    }

    else
    {
      v129 = v297;
    }

    v130 = std::string::append(&v299, v128, v129);
    v131 = *&v130->__r_.__value_.__l.__data_;
    v301 = v130->__r_.__value_.__r.__words[2];
    *__p = v131;
    v130->__r_.__value_.__l.__size_ = 0;
    v130->__r_.__value_.__r.__words[2] = 0;
    v130->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v132 = sub_29AABB028();
    sub_29AA5B750(v132, __p);
    v133 = __cxa_allocate_exception(0x10uLL);
    v134 = v133;
    if (v301 >= 0)
    {
      v135 = __p;
    }

    else
    {
      v135 = __p[0];
    }

    std::runtime_error::runtime_error(v133, v135);
    __cxa_throw(v134, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v15 = dlsym(*(a1 + 256), "GCLBufferListRelease");
  *(a1 + 96) = v15;
  if (!v15)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferListRelease");
    if ((v298 & 0x80u) == 0)
    {
      v136 = &v296;
    }

    else
    {
      v136 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v137 = v298;
    }

    else
    {
      v137 = v297;
    }

    v138 = std::string::append(&v299, v136, v137);
    v139 = *&v138->__r_.__value_.__l.__data_;
    v301 = v138->__r_.__value_.__r.__words[2];
    *__p = v139;
    v138->__r_.__value_.__l.__size_ = 0;
    v138->__r_.__value_.__r.__words[2] = 0;
    v138->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v140 = sub_29AABB028();
    sub_29AA5B750(v140, __p);
    v141 = __cxa_allocate_exception(0x10uLL);
    v142 = v141;
    if (v301 >= 0)
    {
      v143 = __p;
    }

    else
    {
      v143 = __p[0];
    }

    std::runtime_error::runtime_error(v141, v143);
    __cxa_throw(v142, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v16 = dlsym(*(a1 + 256), "GCLBufferNumRows");
  *(a1 + 104) = v16;
  if (!v16)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferNumRows");
    if ((v298 & 0x80u) == 0)
    {
      v144 = &v296;
    }

    else
    {
      v144 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v145 = v298;
    }

    else
    {
      v145 = v297;
    }

    v146 = std::string::append(&v299, v144, v145);
    v147 = *&v146->__r_.__value_.__l.__data_;
    v301 = v146->__r_.__value_.__r.__words[2];
    *__p = v147;
    v146->__r_.__value_.__l.__size_ = 0;
    v146->__r_.__value_.__r.__words[2] = 0;
    v146->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v148 = sub_29AABB028();
    sub_29AA5B750(v148, __p);
    v149 = __cxa_allocate_exception(0x10uLL);
    v150 = v149;
    if (v301 >= 0)
    {
      v151 = __p;
    }

    else
    {
      v151 = __p[0];
    }

    std::runtime_error::runtime_error(v149, v151);
    __cxa_throw(v150, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v17 = dlsym(*(a1 + 256), "GCLBufferProperty");
  *(a1 + 112) = v17;
  if (!v17)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferProperty");
    if ((v298 & 0x80u) == 0)
    {
      v152 = &v296;
    }

    else
    {
      v152 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v153 = v298;
    }

    else
    {
      v153 = v297;
    }

    v154 = std::string::append(&v299, v152, v153);
    v155 = *&v154->__r_.__value_.__l.__data_;
    v301 = v154->__r_.__value_.__r.__words[2];
    *__p = v155;
    v154->__r_.__value_.__l.__size_ = 0;
    v154->__r_.__value_.__r.__words[2] = 0;
    v154->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v156 = sub_29AABB028();
    sub_29AA5B750(v156, __p);
    v157 = __cxa_allocate_exception(0x10uLL);
    v158 = v157;
    if (v301 >= 0)
    {
      v159 = __p;
    }

    else
    {
      v159 = __p[0];
    }

    std::runtime_error::runtime_error(v157, v159);
    __cxa_throw(v158, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v18 = dlsym(*(a1 + 256), "GCLBufferPropertyString");
  *(a1 + 120) = v18;
  if (!v18)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferPropertyString");
    if ((v298 & 0x80u) == 0)
    {
      v160 = &v296;
    }

    else
    {
      v160 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v161 = v298;
    }

    else
    {
      v161 = v297;
    }

    v162 = std::string::append(&v299, v160, v161);
    v163 = *&v162->__r_.__value_.__l.__data_;
    v301 = v162->__r_.__value_.__r.__words[2];
    *__p = v163;
    v162->__r_.__value_.__l.__size_ = 0;
    v162->__r_.__value_.__r.__words[2] = 0;
    v162->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v164 = sub_29AABB028();
    sub_29AA5B750(v164, __p);
    v165 = __cxa_allocate_exception(0x10uLL);
    v166 = v165;
    if (v301 >= 0)
    {
      v167 = __p;
    }

    else
    {
      v167 = __p[0];
    }

    std::runtime_error::runtime_error(v165, v167);
    __cxa_throw(v166, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v19 = dlsym(*(a1 + 256), "GCLBufferSemanticName");
  *(a1 + 128) = v19;
  if (!v19)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferSemanticName");
    if ((v298 & 0x80u) == 0)
    {
      v168 = &v296;
    }

    else
    {
      v168 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v169 = v298;
    }

    else
    {
      v169 = v297;
    }

    v170 = std::string::append(&v299, v168, v169);
    v171 = *&v170->__r_.__value_.__l.__data_;
    v301 = v170->__r_.__value_.__r.__words[2];
    *__p = v171;
    v170->__r_.__value_.__l.__size_ = 0;
    v170->__r_.__value_.__r.__words[2] = 0;
    v170->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v172 = sub_29AABB028();
    sub_29AA5B750(v172, __p);
    v173 = __cxa_allocate_exception(0x10uLL);
    v174 = v173;
    if (v301 >= 0)
    {
      v175 = __p;
    }

    else
    {
      v175 = __p[0];
    }

    std::runtime_error::runtime_error(v173, v175);
    __cxa_throw(v174, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v20 = dlsym(*(a1 + 256), "GCLBufferSetBase");
  *(a1 + 136) = v20;
  if (!v20)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferSetBase");
    if ((v298 & 0x80u) == 0)
    {
      v176 = &v296;
    }

    else
    {
      v176 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v177 = v298;
    }

    else
    {
      v177 = v297;
    }

    v178 = std::string::append(&v299, v176, v177);
    v179 = *&v178->__r_.__value_.__l.__data_;
    v301 = v178->__r_.__value_.__r.__words[2];
    *__p = v179;
    v178->__r_.__value_.__l.__size_ = 0;
    v178->__r_.__value_.__r.__words[2] = 0;
    v178->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v180 = sub_29AABB028();
    sub_29AA5B750(v180, __p);
    v181 = __cxa_allocate_exception(0x10uLL);
    v182 = v181;
    if (v301 >= 0)
    {
      v183 = __p;
    }

    else
    {
      v183 = __p[0];
    }

    std::runtime_error::runtime_error(v181, v183);
    __cxa_throw(v182, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v21 = dlsym(*(a1 + 256), "GCLBufferSetElementType");
  *(a1 + 144) = v21;
  if (!v21)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferSetElementType");
    if ((v298 & 0x80u) == 0)
    {
      v184 = &v296;
    }

    else
    {
      v184 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v185 = v298;
    }

    else
    {
      v185 = v297;
    }

    v186 = std::string::append(&v299, v184, v185);
    v187 = *&v186->__r_.__value_.__l.__data_;
    v301 = v186->__r_.__value_.__r.__words[2];
    *__p = v187;
    v186->__r_.__value_.__l.__size_ = 0;
    v186->__r_.__value_.__r.__words[2] = 0;
    v186->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v188 = sub_29AABB028();
    sub_29AA5B750(v188, __p);
    v189 = __cxa_allocate_exception(0x10uLL);
    v190 = v189;
    if (v301 >= 0)
    {
      v191 = __p;
    }

    else
    {
      v191 = __p[0];
    }

    std::runtime_error::runtime_error(v189, v191);
    __cxa_throw(v190, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v22 = dlsym(*(a1 + 256), "GCLBufferSetProperty");
  *(a1 + 152) = v22;
  if (!v22)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferSetProperty");
    if ((v298 & 0x80u) == 0)
    {
      v192 = &v296;
    }

    else
    {
      v192 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v193 = v298;
    }

    else
    {
      v193 = v297;
    }

    v194 = std::string::append(&v299, v192, v193);
    v195 = *&v194->__r_.__value_.__l.__data_;
    v301 = v194->__r_.__value_.__r.__words[2];
    *__p = v195;
    v194->__r_.__value_.__l.__size_ = 0;
    v194->__r_.__value_.__r.__words[2] = 0;
    v194->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v196 = sub_29AABB028();
    sub_29AA5B750(v196, __p);
    v197 = __cxa_allocate_exception(0x10uLL);
    v198 = v197;
    if (v301 >= 0)
    {
      v199 = __p;
    }

    else
    {
      v199 = __p[0];
    }

    std::runtime_error::runtime_error(v197, v199);
    __cxa_throw(v198, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v23 = dlsym(*(a1 + 256), "GCLBufferSetPropertyString");
  *(a1 + 160) = v23;
  if (!v23)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferSetPropertyString");
    if ((v298 & 0x80u) == 0)
    {
      v200 = &v296;
    }

    else
    {
      v200 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v201 = v298;
    }

    else
    {
      v201 = v297;
    }

    v202 = std::string::append(&v299, v200, v201);
    v203 = *&v202->__r_.__value_.__l.__data_;
    v301 = v202->__r_.__value_.__r.__words[2];
    *__p = v203;
    v202->__r_.__value_.__l.__size_ = 0;
    v202->__r_.__value_.__r.__words[2] = 0;
    v202->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v204 = sub_29AABB028();
    sub_29AA5B750(v204, __p);
    v205 = __cxa_allocate_exception(0x10uLL);
    v206 = v205;
    if (v301 >= 0)
    {
      v207 = __p;
    }

    else
    {
      v207 = __p[0];
    }

    std::runtime_error::runtime_error(v205, v207);
    __cxa_throw(v206, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v24 = dlsym(*(a1 + 256), "GCLBufferStrideBytes");
  *(a1 + 168) = v24;
  if (!v24)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferStrideBytes");
    if ((v298 & 0x80u) == 0)
    {
      v208 = &v296;
    }

    else
    {
      v208 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v209 = v298;
    }

    else
    {
      v209 = v297;
    }

    v210 = std::string::append(&v299, v208, v209);
    v211 = *&v210->__r_.__value_.__l.__data_;
    v301 = v210->__r_.__value_.__r.__words[2];
    *__p = v211;
    v210->__r_.__value_.__l.__size_ = 0;
    v210->__r_.__value_.__r.__words[2] = 0;
    v210->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v212 = sub_29AABB028();
    sub_29AA5B750(v212, __p);
    v213 = __cxa_allocate_exception(0x10uLL);
    v214 = v213;
    if (v301 >= 0)
    {
      v215 = __p;
    }

    else
    {
      v215 = __p[0];
    }

    std::runtime_error::runtime_error(v213, v215);
    __cxa_throw(v214, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v25 = dlsym(*(a1 + 256), "GCLBufferTupleWidth");
  *(a1 + 176) = v25;
  if (!v25)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLBufferTupleWidth");
    if ((v298 & 0x80u) == 0)
    {
      v216 = &v296;
    }

    else
    {
      v216 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v217 = v298;
    }

    else
    {
      v217 = v297;
    }

    v218 = std::string::append(&v299, v216, v217);
    v219 = *&v218->__r_.__value_.__l.__data_;
    v301 = v218->__r_.__value_.__r.__words[2];
    *__p = v219;
    v218->__r_.__value_.__l.__size_ = 0;
    v218->__r_.__value_.__r.__words[2] = 0;
    v218->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v220 = sub_29AABB028();
    sub_29AA5B750(v220, __p);
    v221 = __cxa_allocate_exception(0x10uLL);
    v222 = v221;
    if (v301 >= 0)
    {
      v223 = __p;
    }

    else
    {
      v223 = __p[0];
    }

    std::runtime_error::runtime_error(v221, v223);
    __cxa_throw(v222, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v26 = dlsym(*(a1 + 256), "GCLDecodeMeshFromSource");
  *(a1 + 184) = v26;
  if (!v26)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLDecodeMeshFromSource");
    if ((v298 & 0x80u) == 0)
    {
      v224 = &v296;
    }

    else
    {
      v224 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v225 = v298;
    }

    else
    {
      v225 = v297;
    }

    v226 = std::string::append(&v299, v224, v225);
    v227 = *&v226->__r_.__value_.__l.__data_;
    v301 = v226->__r_.__value_.__r.__words[2];
    *__p = v227;
    v226->__r_.__value_.__l.__size_ = 0;
    v226->__r_.__value_.__r.__words[2] = 0;
    v226->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v228 = sub_29AABB028();
    sub_29AA5B750(v228, __p);
    v229 = __cxa_allocate_exception(0x10uLL);
    v230 = v229;
    if (v301 >= 0)
    {
      v231 = __p;
    }

    else
    {
      v231 = __p[0];
    }

    std::runtime_error::runtime_error(v229, v231);
    __cxa_throw(v230, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v27 = dlsym(*(a1 + 256), "GCLEncodeMeshFromBufferList");
  *(a1 + 192) = v27;
  if (!v27)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLEncodeMeshFromBufferList");
    if ((v298 & 0x80u) == 0)
    {
      v232 = &v296;
    }

    else
    {
      v232 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v233 = v298;
    }

    else
    {
      v233 = v297;
    }

    v234 = std::string::append(&v299, v232, v233);
    v235 = *&v234->__r_.__value_.__l.__data_;
    v301 = v234->__r_.__value_.__r.__words[2];
    *__p = v235;
    v234->__r_.__value_.__l.__size_ = 0;
    v234->__r_.__value_.__r.__words[2] = 0;
    v234->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v236 = sub_29AABB028();
    sub_29AA5B750(v236, __p);
    v237 = __cxa_allocate_exception(0x10uLL);
    v238 = v237;
    if (v301 >= 0)
    {
      v239 = __p;
    }

    else
    {
      v239 = __p[0];
    }

    std::runtime_error::runtime_error(v237, v239);
    __cxa_throw(v238, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v28 = dlsym(*(a1 + 256), "GCLOptionsNew");
  *(a1 + 200) = v28;
  if (!v28)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLOptionsNew");
    if ((v298 & 0x80u) == 0)
    {
      v240 = &v296;
    }

    else
    {
      v240 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v241 = v298;
    }

    else
    {
      v241 = v297;
    }

    v242 = std::string::append(&v299, v240, v241);
    v243 = *&v242->__r_.__value_.__l.__data_;
    v301 = v242->__r_.__value_.__r.__words[2];
    *__p = v243;
    v242->__r_.__value_.__l.__size_ = 0;
    v242->__r_.__value_.__r.__words[2] = 0;
    v242->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v244 = sub_29AABB028();
    sub_29AA5B750(v244, __p);
    v245 = __cxa_allocate_exception(0x10uLL);
    v246 = v245;
    if (v301 >= 0)
    {
      v247 = __p;
    }

    else
    {
      v247 = __p[0];
    }

    std::runtime_error::runtime_error(v245, v247);
    __cxa_throw(v246, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v29 = dlsym(*(a1 + 256), "GCLOptionsRelease");
  *(a1 + 208) = v29;
  if (!v29)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLOptionsRelease");
    if ((v298 & 0x80u) == 0)
    {
      v248 = &v296;
    }

    else
    {
      v248 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v249 = v298;
    }

    else
    {
      v249 = v297;
    }

    v250 = std::string::append(&v299, v248, v249);
    v251 = *&v250->__r_.__value_.__l.__data_;
    v301 = v250->__r_.__value_.__r.__words[2];
    *__p = v251;
    v250->__r_.__value_.__l.__size_ = 0;
    v250->__r_.__value_.__r.__words[2] = 0;
    v250->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v252 = sub_29AABB028();
    sub_29AA5B750(v252, __p);
    v253 = __cxa_allocate_exception(0x10uLL);
    v254 = v253;
    if (v301 >= 0)
    {
      v255 = __p;
    }

    else
    {
      v255 = __p[0];
    }

    std::runtime_error::runtime_error(v253, v255);
    __cxa_throw(v254, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v30 = dlsym(*(a1 + 256), "GCLOptionsSet");
  *(a1 + 216) = v30;
  if (!v30)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLOptionsSet");
    if ((v298 & 0x80u) == 0)
    {
      v256 = &v296;
    }

    else
    {
      v256 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v257 = v298;
    }

    else
    {
      v257 = v297;
    }

    v258 = std::string::append(&v299, v256, v257);
    v259 = *&v258->__r_.__value_.__l.__data_;
    v301 = v258->__r_.__value_.__r.__words[2];
    *__p = v259;
    v258->__r_.__value_.__l.__size_ = 0;
    v258->__r_.__value_.__r.__words[2] = 0;
    v258->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v260 = sub_29AABB028();
    sub_29AA5B750(v260, __p);
    v261 = __cxa_allocate_exception(0x10uLL);
    v262 = v261;
    if (v301 >= 0)
    {
      v263 = __p;
    }

    else
    {
      v263 = __p[0];
    }

    std::runtime_error::runtime_error(v261, v263);
    __cxa_throw(v262, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v31 = dlsym(*(a1 + 256), "GCLOptionsSetString");
  *(a1 + 224) = v31;
  if (!v31)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLOptionsSetString");
    if ((v298 & 0x80u) == 0)
    {
      v264 = &v296;
    }

    else
    {
      v264 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v265 = v298;
    }

    else
    {
      v265 = v297;
    }

    v266 = std::string::append(&v299, v264, v265);
    v267 = *&v266->__r_.__value_.__l.__data_;
    v301 = v266->__r_.__value_.__r.__words[2];
    *__p = v267;
    v266->__r_.__value_.__l.__size_ = 0;
    v266->__r_.__value_.__r.__words[2] = 0;
    v266->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v268 = sub_29AABB028();
    sub_29AA5B750(v268, __p);
    v269 = __cxa_allocate_exception(0x10uLL);
    v270 = v269;
    if (v301 >= 0)
    {
      v271 = __p;
    }

    else
    {
      v271 = __p[0];
    }

    std::runtime_error::runtime_error(v269, v271);
    __cxa_throw(v270, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v32 = dlsym(*(a1 + 256), "GCLSourceFromData");
  *(a1 + 232) = v32;
  if (!v32)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLSourceFromData");
    if ((v298 & 0x80u) == 0)
    {
      v272 = &v296;
    }

    else
    {
      v272 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v273 = v298;
    }

    else
    {
      v273 = v297;
    }

    v274 = std::string::append(&v299, v272, v273);
    v275 = *&v274->__r_.__value_.__l.__data_;
    v301 = v274->__r_.__value_.__r.__words[2];
    *__p = v275;
    v274->__r_.__value_.__l.__size_ = 0;
    v274->__r_.__value_.__r.__words[2] = 0;
    v274->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v276 = sub_29AABB028();
    sub_29AA5B750(v276, __p);
    v277 = __cxa_allocate_exception(0x10uLL);
    v278 = v277;
    if (v301 >= 0)
    {
      v279 = __p;
    }

    else
    {
      v279 = __p[0];
    }

    std::runtime_error::runtime_error(v277, v279);
    __cxa_throw(v278, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v33 = dlsym(*(a1 + 256), "GCLSourceOptionSet");
  *(a1 + 240) = v33;
  if (!v33)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLSourceOptionSet");
    if ((v298 & 0x80u) == 0)
    {
      v280 = &v296;
    }

    else
    {
      v280 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v281 = v298;
    }

    else
    {
      v281 = v297;
    }

    v282 = std::string::append(&v299, v280, v281);
    v283 = *&v282->__r_.__value_.__l.__data_;
    v301 = v282->__r_.__value_.__r.__words[2];
    *__p = v283;
    v282->__r_.__value_.__l.__size_ = 0;
    v282->__r_.__value_.__r.__words[2] = 0;
    v282->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v284 = sub_29AABB028();
    sub_29AA5B750(v284, __p);
    v285 = __cxa_allocate_exception(0x10uLL);
    v286 = v285;
    if (v301 >= 0)
    {
      v287 = __p;
    }

    else
    {
      v287 = __p[0];
    }

    std::runtime_error::runtime_error(v285, v287);
    __cxa_throw(v286, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = dlsym(*(a1 + 256), "GCLSourceRelease");
  *(a1 + 248) = result;
  if (!result)
  {
    sub_29A008E78(&v299, "Unable to load symbol: ");
    sub_29A008E78(&v296, "GCLSourceRelease");
    if ((v298 & 0x80u) == 0)
    {
      v288 = &v296;
    }

    else
    {
      v288 = v296;
    }

    if ((v298 & 0x80u) == 0)
    {
      v289 = v298;
    }

    else
    {
      v289 = v297;
    }

    v290 = std::string::append(&v299, v288, v289);
    v291 = *&v290->__r_.__value_.__l.__data_;
    v301 = v290->__r_.__value_.__r.__words[2];
    *__p = v291;
    v290->__r_.__value_.__l.__size_ = 0;
    v290->__r_.__value_.__r.__words[2] = 0;
    v290->__r_.__value_.__r.__words[0] = 0;
    if (v298 < 0)
    {
      operator delete(v296);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    v292 = sub_29AABB028();
    sub_29AA5B750(v292, __p);
    v293 = __cxa_allocate_exception(0x10uLL);
    v294 = v293;
    if (v301 >= 0)
    {
      v295 = __p;
    }

    else
    {
      v295 = __p[0];
    }

    std::runtime_error::runtime_error(v293, v295);
    __cxa_throw(v294, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

void sub_29AA5B4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29AA5B750(os_log_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_299FE7000, v2, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }
}

void sub_29AA5B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A580660(&v24, (a2 + 8), (a2 + 16));
  v5 = sub_29A5A6058(&v24);
  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  std::string::operator=((a1 + 8), EmptyString);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24.__r_.__value_.__r.__words[2] + 1);
  sub_29A1DE3A4(&v24.__r_.__value_.__r.__words[2]);
  if (v24.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24.__r_.__value_.__l.__size_, v7);
  }

  v32[0] = 0;
  v32[1] = 0;
  v31[1] = 0;
  v31[2] = v32;
  v30[3] = v31;
  v31[0] = 0;
  memset(v30, 0, 24);
  sub_29A008E78(v28, ":indices");
  sub_29A580660(&v24, (a2 + 8), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(&v24, v23);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24.__r_.__value_.__r.__words[2] + 1);
  sub_29A1DE3A4(&v24.__r_.__value_.__r.__words[2]);
  if (v24.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24.__r_.__value_.__l.__size_, v8);
  }

  v9 = v23[0];
  if (v23[0] == v23[1])
  {
    v24.__r_.__value_.__r.__words[0] = v23;
    sub_29A5BB908(&v24);
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetAllGeomSubsets(a2, &v27);
  }

  LODWORD(v24.__r_.__value_.__l.__data_) = *v23[0];
  v10 = *(v23[0] + 1);
  v24.__r_.__value_.__l.__size_ = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v24.__r_.__value_.__r.__words[2], v9 + 4);
  sub_29A1E2240(&v24.__r_.__value_.__r.__words[2] + 1, v9 + 5);
  v11 = *(v9 + 3);
  v25 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = sub_29A5A6058(&v24);
  if ((*v12 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v13 = ((*v12 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  }

  if (*(v13 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v13, v13[1]);
  }

  else
  {
    v14 = *v13;
    __dst.__r_.__value_.__r.__words[2] = v13[2];
    *&__dst.__r_.__value_.__l.__data_ = v14;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v28[1];
  }

  v17 = size >= v16;
  v18 = size - v16;
  if (!v17)
  {
LABEL_31:
    if (a3 + 8 != sub_29A01BCCC(a3, &__dst.__r_.__value_.__l.__data_))
    {
      sub_29AAAB9CC(&v24, a2);
    }

    sub_29AAAB9CC(&v24, a2);
  }

  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v16 != -1 && __dst.__r_.__value_.__l.__size_ >= v18)
    {
      if (__dst.__r_.__value_.__l.__size_ - v18 >= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = __dst.__r_.__value_.__l.__size_ - v18;
      }

      p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_47:
      if ((v29 & 0x80u) == 0)
      {
        v21 = v28;
      }

      else
      {
        v21 = v28[0];
      }

      if (!memcmp(p_dst + v18, v21, v19) && v19 == v16)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples(&v24, v30);
      }

      goto LABEL_31;
    }
  }

  else if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) >= v18 && v16 != -1)
  {
    if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) - v18 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]) - v18;
    }

    p_dst = &__dst;
    goto LABEL_47;
  }

  sub_29A0F26CC();
}

void sub_29AA5D514(os_log_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_299FE7000, v2, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }
}

void sub_29AA5D5C4(uint64_t a1, void **a2, void **a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdGeomMesh *this)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  __src = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(this, __p);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AA5D9CC(uint64_t a1, void **a2, void **a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdGeomMesh *this)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  __src = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetFaceVertexIndicesAttr(this, __p);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

uint64_t sub_29AA5DDD4(void *a1, __n128 a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v3)
    {
      v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v4 = *(v3 + 17);
    __p = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __p = (__p & 0xFFFFFFFFFFFFFFF8);
    }

    v21 = 1;
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v5)
    {
      v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v6 = *(v5 + 146);
    v22 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v23 = 2;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v7)
    {
      v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v8 = *(v7 + 152);
    v24 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 &= 0xFFFFFFFFFFFFFFF8;
    }

    v25 = 3;
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v9)
    {
      v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v10 = *(v9 + 154);
    v26 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 &= 0xFFFFFFFFFFFFFFF8;
    }

    v27 = 4;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v11)
    {
      v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v12 = *(v11 + 40);
    v28 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 &= 0xFFFFFFFFFFFFFFF8;
    }

    v29 = 5;
    sub_29AA7A4A0(v18, &__p, 5);
    for (i = 64; i != -16; i -= 16)
    {
      v14 = *(&__p + i);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __p = a1;
    v15 = *(sub_29AA7A620(v18, a1, &unk_29B4D6118, &__p, &v19) + 40);
    sub_29A1602D4(v18, v18[1]);
  }

  else
  {
    v16 = sub_29AABB028();
    sub_29A008E78(&__p, "getInterpolationFromToken: Empty token");
    sub_29AA5D514(v16, &__p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  return v15;
}

void sub_29AA5E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  while (1)
  {
    v16 = *(v14 - 2);
    v14 -= 16;
    v15 = v16;
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v14 == &a14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

BOOL sub_29AA5E118(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v6 = 65539;
  result = sub_29AA7A734(a2, &v6);
  if (result)
  {
    if (sub_29AA7A734(a2, (a1 + 312)))
    {
      v5 = (a1 + 312);
    }

    else
    {
      v5 = a2;
    }

    *(a1 + 312) = *v5;
    return 1;
  }

  return result;
}

void sub_29AA5E1A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

BOOL sub_29AA5E35C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_29A0F26CC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

void *sub_29AA5E3E0(uint64_t *a1, uint64_t a2)
{
  result = sub_29A1179F4(a1, 0, 0, a2);
  v4 = *a1;
  *result = *a1;
  result[1] = a1;
  *(v4 + 8) = result;
  *a1 = result;
  ++a1[2];
  return result;
}

uint64_t sub_29AA5E42C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    do
    {
      if (*(result + 16) == *(a3 + 16))
      {
        v3 = *(result + 8);
        if (v3 == result)
        {
          return result;
        }

        v4 = a3;
        while (1)
        {
          v4 = *(v4 + 8);
          if (*(v3 + 16) != *(v4 + 16))
          {
            break;
          }

          v3 = *(v3 + 8);
          if (v3 == result)
          {
            return result;
          }
        }
      }

      result += 24;
    }

    while (result != a2);
    return a2;
  }

  return result;
}

uint64_t sub_29AA5E490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AA7D14C(a1, a2);
  }

  else
  {
    sub_29AA7D0B0(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AA5E4E4(void *a1)
{
  v2 = a1[27];
  v3 = (a1 + 28);
  if (v2 != (a1 + 28))
  {
    while (1)
    {
      sub_29A151A98(&v142, v2 + 2);
      if (SHIBYTE(v143) < 0)
      {
        sub_29A008D14(&__dst, v142, *(&v142 + 1));
      }

      else
      {
        __dst = v142;
        v141 = v143;
      }

      v5 = *(v144 + 136);
      v6 = *(v144 + 140);
      v7 = a1[4];
      v8 = a1[5] - v7;
      if (v8)
      {
        LODWORD(v9) = 0;
        v10 = v8 >> 2;
        if ((v8 >> 2) <= 1)
        {
          v10 = 1;
        }

        do
        {
          v11 = *v7++;
          v9 = (v11 + v9);
          --v10;
        }

        while (v10);
        if (v9 != (a1[8] - a1[7]) >> 2)
        {
          v55 = 0;
          v1 = 215;
          goto LABEL_212;
        }
      }

      if ((v5 - 3) <= 1)
      {
        break;
      }

      if (v5 == 2)
      {
        v73 = *(v144 + 56) - *(v144 + 48);
        if (!v73)
        {
          if (*(v144 + 32) - *(v144 + 24) == v8)
          {
            goto LABEL_156;
          }

          v109 = sub_29AABB028();
          std::operator+<char>();
          v110 = std::string::append(&v134, ", data size: ");
          v111 = *&v110->__r_.__value_.__l.__data_;
          v135.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v135.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v133, (*(v144 + 32) - *(v144 + 24)) >> 2);
          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v112 = &v133;
          }

          else
          {
            v112 = v133.__r_.__value_.__r.__words[0];
          }

          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v133.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v133.__r_.__value_.__l.__size_;
          }

          v114 = std::string::append(&v135, v112, size);
          v115 = *&v114->__r_.__value_.__l.__data_;
          v136.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
          *&v136.__r_.__value_.__l.__data_ = v115;
          v114->__r_.__value_.__l.__size_ = 0;
          v114->__r_.__value_.__r.__words[2] = 0;
          v114->__r_.__value_.__r.__words[0] = 0;
          v116 = std::string::append(&v136, ", faceVertex size: ");
          v117 = *&v116->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v117;
          v116->__r_.__value_.__l.__size_ = 0;
          v116->__r_.__value_.__r.__words[2] = 0;
          v116->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v132, (a1[5] - a1[4]) >> 2);
          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v118 = &v132;
          }

          else
          {
            v118 = v132.__r_.__value_.__r.__words[0];
          }

          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v119 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v119 = v132.__r_.__value_.__l.__size_;
          }

          v120 = std::string::append(&v137, v118, v119);
          v121 = *&v120->__r_.__value_.__l.__data_;
          v139 = v120->__r_.__value_.__r.__words[2];
          v138 = v121;
          v120->__r_.__value_.__l.__size_ = 0;
          v120->__r_.__value_.__r.__words[2] = 0;
          v120->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v109, &v138);
          if (SHIBYTE(v139) < 0)
          {
            operator delete(v138);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            v98 = v134.__r_.__value_.__r.__words[0];
LABEL_210:
            operator delete(v98);
          }

LABEL_211:
          v55 = 0;
          v1 = 210;
          goto LABEL_212;
        }

        if (v73 == v8)
        {
          goto LABEL_156;
        }

        v13 = sub_29AABB028();
        std::operator+<char>();
        v74 = std::string::append(&v134, ", indices size: ");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v133, (*(v144 + 56) - *(v144 + 48)) >> 2);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = &v133;
        }

        else
        {
          v76 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v77 = v133.__r_.__value_.__l.__size_;
        }

        v78 = std::string::append(&v135, v76, v77);
        v79 = *&v78->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v136, ", faceVertex size: ");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v132, (a1[5] - a1[4]) >> 2);
        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v132;
        }

        else
        {
          v22 = v132.__r_.__value_.__r.__words[0];
        }

        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = v132.__r_.__value_.__l.__size_;
        }

        goto LABEL_169;
      }

      if (v5 != 5)
      {
        goto LABEL_156;
      }

      v24 = *(v144 + 48);
      v25 = *(v144 + 56);
      if (v25 == v24)
      {
        if (((*(v144 + 32) - *(v144 + 24)) >> 2) / v6 == (a1[8] - a1[7]) >> 2)
        {
          goto LABEL_156;
        }

        v56 = sub_29AABB028();
        std::operator+<char>();
        v82 = std::string::append(&v132, ", data size: ");
        v83 = *&v82->__r_.__value_.__l.__data_;
        v133.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
        *&v133.__r_.__value_.__l.__data_ = v83;
        v82->__r_.__value_.__l.__size_ = 0;
        v82->__r_.__value_.__r.__words[2] = 0;
        v82->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v131, (*(v144 + 32) - *(v144 + 24)) >> 2);
        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v131;
        }

        else
        {
          v84 = v131.__r_.__value_.__r.__words[0];
        }

        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = v131.__r_.__value_.__l.__size_;
        }

        v86 = std::string::append(&v133, v84, v85);
        v87 = *&v86->__r_.__value_.__l.__data_;
        v134.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v134.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        v88 = std::string::append(&v134, ", gclCPV: ");
        v89 = *&v88->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v89;
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v130, v6);
        if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v130;
        }

        else
        {
          v90 = v130.__r_.__value_.__r.__words[0];
        }

        if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v130.__r_.__value_.__l.__size_;
        }

        v92 = std::string::append(&v135, v90, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = std::string::append(&v136, ", faceVertexIndices size: ");
        v95 = *&v94->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v129, (a1[8] - a1[7]) >> 2);
        if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v129;
        }

        else
        {
          v71 = v129.__r_.__value_.__r.__words[0];
        }

        if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v72 = v129.__r_.__value_.__l.__size_;
        }

LABEL_135:
        v96 = std::string::append(&v137, v71, v72);
        v97 = *&v96->__r_.__value_.__l.__data_;
        v139 = v96->__r_.__value_.__r.__words[2];
        v138 = v97;
        v96->__r_.__value_.__l.__size_ = 0;
        v96->__r_.__value_.__r.__words[2] = 0;
        v96->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v56, &v138);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(v138);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          v98 = v132.__r_.__value_.__r.__words[0];
          goto LABEL_210;
        }

        goto LABEL_211;
      }

      v137.__r_.__value_.__s.__data_[0] = 0;
      v26 = sub_29AA7B008(v24, v25);
      if (*(v144 + 56) - *(v144 + 48) != a1[8] - a1[7])
      {
        v13 = sub_29AABB028();
        std::operator+<char>();
        v99 = std::string::append(&v134, ", indices size: ");
        v100 = *&v99->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v133, (*(v144 + 56) - *(v144 + 48)) >> 2);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = &v133;
        }

        else
        {
          v101 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v102 = v133.__r_.__value_.__l.__size_;
        }

        v103 = std::string::append(&v135, v101, v102);
        v104 = *&v103->__r_.__value_.__l.__data_;
        v136.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
        *&v136.__r_.__value_.__l.__data_ = v104;
        v103->__r_.__value_.__l.__size_ = 0;
        v103->__r_.__value_.__r.__words[2] = 0;
        v103->__r_.__value_.__r.__words[0] = 0;
        v105 = std::string::append(&v136, ", faceVertexIndices size: ");
        v106 = *&v105->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v106;
        v105->__r_.__value_.__l.__size_ = 0;
        v105->__r_.__value_.__r.__words[2] = 0;
        v105->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v132, (a1[8] - a1[7]) >> 2);
        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v132;
        }

        else
        {
          v22 = v132.__r_.__value_.__r.__words[0];
        }

        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = v132.__r_.__value_.__l.__size_;
        }

LABEL_169:
        v107 = std::string::append(&v137, v22, v23);
        v108 = *&v107->__r_.__value_.__l.__data_;
        v139 = v107->__r_.__value_.__r.__words[2];
        v138 = v108;
        v107->__r_.__value_.__l.__size_ = 0;
        v107->__r_.__value_.__r.__words[2] = 0;
        v107->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v13, &v138);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(v138);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        v55 = 0;
        v1 = 211;
        goto LABEL_212;
      }

      v28 = v26;
      v29 = v27;
      if ((*v26 & 0x80000000) == 0 && v6 + v6 * *v27 <= ((*(v144 + 32) - *(v144 + 24)) >> 2))
      {
LABEL_156:
        v55 = 1;
        goto LABEL_212;
      }

      v30 = sub_29AABB028();
      std::operator+<char>();
      v31 = std::string::append(&v130, ", min: ");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v131.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v131.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v129, *v28);
      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v129;
      }

      else
      {
        v33 = v129.__r_.__value_.__r.__words[0];
      }

      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v129.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v131, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v132.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v132.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v132, ", max: ");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v133.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v133.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v128, *v29);
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v128;
      }

      else
      {
        v39 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v128.__r_.__value_.__l.__size_;
      }

      v41 = std::string::append(&v133, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v134, ", gclCPV: ");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v127, v6);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v127;
      }

      else
      {
        v45 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v127.__r_.__value_.__l.__size_;
      }

      v47 = std::string::append(&v135, v45, v46);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = std::string::append(&v136, ", attr.second->data.size(): ");
      v50 = *&v49->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v126, (*(v144 + 32) - *(v144 + 24)) >> 2);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v126;
      }

      else
      {
        v51 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v126.__r_.__value_.__l.__size_;
      }

      v53 = std::string::append(&v137, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      v139 = v53->__r_.__value_.__r.__words[2];
      v138 = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      sub_29AA5B750(v30, &v138);
      if (SHIBYTE(v139) < 0)
      {
        operator delete(v138);
      }

      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v126.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v130.__r_.__value_.__l.__data_);
      }

      v55 = 0;
      v1 = 212;
LABEL_212:
      if (SHIBYTE(v141) < 0)
      {
        operator delete(__dst);
      }

      if (v145)
      {
        sub_29A014BEC(v145);
      }

      if (SHIBYTE(v143) < 0)
      {
        operator delete(v142);
      }

      if (!v55)
      {
        return v1;
      }

      v122 = *(v2 + 1);
      if (v122)
      {
        do
        {
          v123 = v122;
          v122 = *v122;
        }

        while (v122);
      }

      else
      {
        do
        {
          v123 = *(v2 + 2);
          v124 = *v123 == v2;
          v2 = v123;
        }

        while (!v124);
      }

      v2 = v123;
      if (v123 == v3)
      {
        return 0;
      }
    }

    v12 = *(v144 + 56) - *(v144 + 48);
    if (!v12)
    {
      if (((*(v144 + 32) - *(v144 + 24)) >> 2) / v6 == ((a1[11] - a1[10]) >> 2) / 3uLL)
      {
        goto LABEL_156;
      }

      v56 = sub_29AABB028();
      std::operator+<char>();
      v57 = std::string::append(&v132, ", data size: ");
      v58 = *&v57->__r_.__value_.__l.__data_;
      v133.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v133.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v131, (*(v144 + 32) - *(v144 + 24)) >> 2);
      if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v131;
      }

      else
      {
        v59 = v131.__r_.__value_.__r.__words[0];
      }

      if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v131.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v133, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(&v134, ", gclCPV: ");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v130, v6);
      if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v130;
      }

      else
      {
        v65 = v130.__r_.__value_.__r.__words[0];
      }

      if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v66 = v130.__r_.__value_.__l.__size_;
      }

      v67 = std::string::append(&v135, v65, v66);
      v68 = *&v67->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      v69 = std::string::append(&v136, ", points size: ");
      v70 = *&v69->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v129, (a1[11] - a1[10]) >> 2);
      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v129;
      }

      else
      {
        v71 = v129.__r_.__value_.__r.__words[0];
      }

      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v129.__r_.__value_.__l.__size_;
      }

      goto LABEL_135;
    }

    if (v12 >> 2 == ((a1[11] - a1[10]) >> 2) / 3uLL)
    {
      goto LABEL_156;
    }

    v13 = sub_29AABB028();
    std::operator+<char>();
    v14 = std::string::append(&v134, ", indices size: ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v135.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v135.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v133, (*(v144 + 56) - *(v144 + 48)) >> 2);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v133;
    }

    else
    {
      v16 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v133.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v135, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v136.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v136.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v136, ", points size: ");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v132, (a1[11] - a1[10]) >> 2);
    if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v132;
    }

    else
    {
      v22 = v132.__r_.__value_.__r.__words[0];
    }

    if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v132.__r_.__value_.__l.__size_;
    }

    goto LABEL_169;
  }

  return 0;
}

void sub_29AA5F2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if (*(v55 - 233) < 0)
  {
    operator delete(*(v55 - 256));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  sub_29A14DC3C(v55 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA5F608(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*a1)
  {
    v5 = sub_29A580660(&v17, (a2 + 8), (a2 + 16));
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(v5, &v14);
    v6 = v14;
    v13[0] = &v14;
    sub_29A5BB908(v13);
    if ((BYTE8(v18) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
    if (*(&v17 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v17 + 1), v7);
    }

    if (*(&v6 + 1) == v6)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      if (*(a1 + 104) == 1)
      {
        if (!sub_29AA5FD04((a1 + 80), &v17, a1 + 104, 3, 0))
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          if (v17)
          {
            v11 = 0;
            do
            {
              sub_29A18E624(&v17);
              LODWORD(v13[0]) = *(v19 + 4 * v11);
              sub_29A18E624(&v17);
              HIDWORD(v13[0]) = *(v19 + 4 * v11 + 4);
              sub_29A18E624(&v17);
              LODWORD(v13[1]) = *(v19 + 4 * v11 + 8);
              sub_29A8F3D60(&v14, v13);
              v11 += 3;
            }

            while (v17 > v11);
          }

          pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(v13, a2);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
        }
      }

      else
      {
        v12 = sub_29AABB028();
        sub_29A008E78(&v14, "toUsdMesh: Quantization for points should be UNIFORM");
        sub_29AA5B750(v12, &v14);
        if (SBYTE7(v15) < 0)
        {
          operator delete(v14);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    v8 = sub_29AABB028();
    v9 = "toUsdMesh: Invalid mesh, authored attributes present in output mesh";
  }

  else
  {
    v8 = sub_29AABB028();
    v9 = "toUsdMesh: Invalid mesh";
  }

  sub_29A008E78(&v17, v9);
  sub_29AA5B750(v8, &v17);
  if (SBYTE7(v18) < 0)
  {
    operator delete(v17);
  }

  return 201;
}

void sub_29AA5FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a14 = &a19;
  sub_29A8440C8(&a14);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29AA5FD04(void *a1, void *a2, uint64_t a3, int a4, int16x4_t a5)
{
  v9 = a1[1] - *a1;
  v10 = v9 >> 2;
  v19 = 0;
  v20 = &v19;
  sub_29A18E224(a2, (v9 >> 2), &v20, a5);
  if (!v10)
  {
    return 0;
  }

  result = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a3 + 4);
    v15 = 4 * a4;
    do
    {
      v16 = 0;
      v17 = v12;
      do
      {
        v18 = (v14 * *(*a1 + v17)) + *(*(a3 + 8) + v16);
        sub_29A18E624(a2);
        *(a2[4] + v17) = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v15 != v16);
      v13 += a4;
      v12 += v15;
    }

    while (v13 < v10);
    return 0;
  }

  return result;
}

BOOL sub_29AA5FE18(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = (a1 + 224);
  if (v1 == (a1 + 224))
  {
    return 0;
  }

  do
  {
    v3 = *(v1[7] + 136) - 5;
    result = v3 < 0xFFFFFFFE;
    if (v3 < 0xFFFFFFFE)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_29AA5FE84(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 216);
  if (v2 == (a1 + 224))
  {
    return 1;
  }

  while (*(v2[7] + 136) - 2 < 4)
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

    v2 = v4;
    if (v4 == (a1 + 224))
    {
      return 1;
    }
  }

  v7 = sub_29AABB028();
  std::operator+<char>();
  v8 = std::string::append(&v20, ": interpolation ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_29AA600AC(*(v2[7] + 136), &v19);
  if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v19 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  v12 = *(EmptyString + 23);
  if (v12 >= 0)
  {
    v13 = EmptyString;
  }

  else
  {
    v13 = *EmptyString;
  }

  if (v12 >= 0)
  {
    v14 = *(EmptyString + 23);
  }

  else
  {
    v14 = EmptyString[1];
  }

  v15 = std::string::append(&v21, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v22, " not supported");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  v23 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v7, &v23);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29AA60040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29AA600AC(char a1@<W0>, atomic_uint **a2@<X8>)
{
  v31 = *MEMORY[0x29EDCA608];
  v19 = a1;
  LOBYTE(v20[0]) = 0;
  v20[1] = 0;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v21 = 1;
  v4 = *(v3 + 17);
  v22 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v23 = 2;
  v6 = *(v5 + 146);
  v24 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v25 = 3;
  v8 = *(v7 + 152);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v27 = 4;
  v10 = *(v9 + 154);
  v28 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v29 = 5;
  v12 = *(v11 + 40);
  v30 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AA7A7AC(v17, v20, 6);
  for (i = 11; i != -1; i -= 2)
  {
    v14 = v20[i];
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20[0] = &v19;
  v15 = sub_29AA7A92C(v17, &v19, &unk_29B4D6118, v20)[5];
  *a2 = v15;
  if ((v15 & 7) != 0)
  {
    v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v16;
    }
  }

  sub_29A16DC74(v17, v18);
}

void sub_29AA60350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  while (1)
  {
    v15 = *(v14 - 1);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v14 -= 16;
    if (v14 == &a14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_29AA603D8(uint64_t a1)
{
  if (!sub_29AA5FE18(a1))
  {
    return 0;
  }

  v2 = (*(a1 + 88) - *(a1 + 80)) >> 2;
  if (0xAAAAAAAAAAAAAAABLL * v2 >= 0x5555555555555556)
  {
    v3 = sub_29AABB028();
    sub_29A008E78(__p, "unifyIndices: Size of points should be a multiple of 3");
    sub_29AA5B750(v3, __p);
    if (SBYTE7(v138) < 0)
    {
      operator delete(__p[0]);
    }

    return 110;
  }

  v6 = *(a1 + 232);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v153 = 0uLL;
  v154 = 0;
  sub_29A0A6994(&v153, v2);
  sub_29A011440(&v151, (*(a1 + 64) - *(a1 + 56)) >> 2);
  __p[0] = 0;
  sub_29AA7D394(v150, v6, __p);
  v9 = *(a1 + 216);
  if (v9 == (a1 + 224))
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      *(v150[0] + v10) = v9[7];
      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v49 = *v12 == v9;
          v9 = v12;
        }

        while (!v49);
      }

      ++v10;
      v9 = v12;
    }

    while (v12 != (a1 + 224));
  }

  if (v10 == v6)
  {
    sub_29AA7D46C(&v149, v6);
    v13 = (v8 - v7) >> 2;
    memset(&v148, 0, sizeof(v148));
    memset(&v147, 0, sizeof(v147));
    *(a1 + 1) = 0;
    v136 = v13 & 0x7FFFFFFF;
    v145 = 0;
    v134 = v6;
    if (v6 >= 1)
    {
      v14 = 0;
      v132 = v13;
      while (1)
      {
        v15 = *(v150[0] + v14);
        v16 = v149.__r_.__value_.__r.__words[0];
        v17 = operator new(0xA0uLL);
        v17[10] = 0;
        v17[11] = 0;
        v18 = (v16 + 16 * v14);
        v17[12] = 0;
        v17[15] = 0;
        v17[16] = 0;
        v17[14] = 0;
        *v17 = 0u;
        *(v17 + 1) = 0u;
        *(v17 + 2) = 0u;
        *(v17 + 3) = 0u;
        v17[8] = 0;
        sub_29AA61348(v18, v17);
        std::string::operator=(*v18, v15);
        v19 = *v18;
        v19[3].__r_.__value_.__r.__words[0] = *(v15 + 72);
        if (v19 != v15)
        {
          sub_29A36CF34(&v19[3].__r_.__value_.__l.__size_, *(v15 + 80), *(v15 + 88), (*(v15 + 88) - *(v15 + 80)) >> 2);
        }

        LODWORD(v19[4].__r_.__value_.__r.__words[1]) = *(v15 + 104);
        std::string::operator=((*v18 + 112), (v15 + 112));
        v20 = *(v15 + 136);
        v21 = *v18;
        v21[5].__r_.__value_.__s.__data_[16] = v20;
        *(&v21[5].__r_.__value_.__r.__words[2] + 4) = *(v15 + 140);
        v21[6].__r_.__value_.__s.__data_[4] = *(v15 + 148);
        if (v20 == 5)
        {
          v22 = *(v15 + 48);
          v23 = *(v15 + 56) - v22;
          v24 = *(a1 + 56);
          if (v23 != *(a1 + 64) - v24 || memcmp(v22, v24, v23))
          {
LABEL_32:
            v26 = *(v15 + 48);
            v25 = *(v15 + 56);
            v27 = (v15 + 48);
            if (v26 == v25)
            {
              v28 = *(v15 + 140);
              v29 = (*(a1 + 64) - *(a1 + 56)) >> 2;
              if (v29 * v28 != (*(v15 + 32) - *(v15 + 24)) >> 2)
              {
                v117 = sub_29AABB028();
                std::operator+<char>();
                v118 = std::string::append(&v142, " has incorrect size ");
                v119 = *&v118->__r_.__value_.__l.__data_;
                v143.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
                *&v143.__r_.__value_.__l.__data_ = v119;
                v118->__r_.__value_.__l.__size_ = 0;
                v118->__r_.__value_.__r.__words[2] = 0;
                v118->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v141, (*(v15 + 32) - *(v15 + 24)) >> 2);
                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v120 = &v141;
                }

                else
                {
                  v120 = v141.__r_.__value_.__r.__words[0];
                }

                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v141.__r_.__value_.__l.__size_;
                }

                v122 = std::string::append(&v143, v120, size);
                v123 = *&v122->__r_.__value_.__l.__data_;
                v144.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
                *&v144.__r_.__value_.__l.__data_ = v123;
                v122->__r_.__value_.__l.__size_ = 0;
                v122->__r_.__value_.__r.__words[2] = 0;
                v122->__r_.__value_.__r.__words[0] = 0;
                v124 = std::string::append(&v144, " vs ");
                v125 = *&v124->__r_.__value_.__l.__data_;
                v146.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
                *&v146.__r_.__value_.__l.__data_ = v125;
                v124->__r_.__value_.__l.__size_ = 0;
                v124->__r_.__value_.__r.__words[2] = 0;
                v124->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v140, ((*(a1 + 64) - *(a1 + 56)) >> 2) * v28);
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v126 = &v140;
                }

                else
                {
                  v126 = v140.__r_.__value_.__r.__words[0];
                }

                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v127 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v127 = v140.__r_.__value_.__l.__size_;
                }

                v128 = std::string::append(&v146, v126, v127);
                v129 = *&v128->__r_.__value_.__l.__data_;
                *&v138 = *(&v128->__r_.__value_.__l + 2);
                *__p = v129;
                v128->__r_.__value_.__l.__size_ = 0;
                v128->__r_.__value_.__r.__words[2] = 0;
                v128->__r_.__value_.__r.__words[0] = 0;
                v113 = v117;
LABEL_162:
                sub_29AA5B750(v113, __p);
                if (SBYTE7(v138) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v140.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v146.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v144.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v141.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v143.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                {
                  v130 = v142.__r_.__value_.__r.__words[0];
                  goto LABEL_176;
                }

                goto LABEL_178;
              }

              sub_29A0A171C((v15 + 48), v29);
              *__p = 0u;
              v138 = 0u;
              v139 = 1065353216;
              memset(&v146, 0, sizeof(v146));
              sub_29A011440(&v144, v28);
              sub_29A0A6994(&v146, (*(v15 + 32) - *(v15 + 24)) >> 2);
              if (v13 >= 1)
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
                do
                {
                  if (v28 >= 1)
                  {
                    v33 = v144.__r_.__value_.__r.__words[0];
                    v34 = (*(v15 + 24) + 4 * v32);
                    v32 += v28;
                    v35 = v28;
                    do
                    {
                      v36 = *v34++;
                      *v33++ = v36;
                      --v35;
                    }

                    while (v35);
                  }

                  v37 = sub_29AA61390(__p, &v144.__r_.__value_.__l.__data_);
                  if (v37)
                  {
                    *(*v27 + 4 * v30) = *(v37 + 10);
                  }

                  else
                  {
                    v38 = v31 + 1;
                    *sub_29AA614D0(__p, &v144.__r_.__value_.__l.__data_) = v31;
                    *(*v27 + 4 * v30) = v31;
                    if (v28 >= 1)
                    {
                      v39 = 0;
                      do
                      {
                        sub_29A00D250(&v146.__r_.__value_.__l.__data_, (v144.__r_.__value_.__r.__words[0] + v39));
                        v39 += 4;
                      }

                      while (4 * v28 != v39);
                    }

                    v31 = v38;
                  }

                  ++v30;
                }

                while (v30 != v136);
              }

              v40 = *(v15 + 24);
              v41 = *&v146.__r_.__value_.__l.__data_;
              *&v146.__r_.__value_.__l.__data_ = v40;
              *(v15 + 24) = v41;
              v42 = v146.__r_.__value_.__r.__words[2];
              v146.__r_.__value_.__r.__words[2] = *(v15 + 40);
              *(v15 + 40) = v42;
              if (v144.__r_.__value_.__r.__words[0])
              {
                v144.__r_.__value_.__l.__size_ = v144.__r_.__value_.__r.__words[0];
                operator delete(v144.__r_.__value_.__l.__data_);
                v43 = v146.__r_.__value_.__r.__words[0];
              }

              else
              {
                v43 = v40;
              }

              LODWORD(v6) = v134;
              LODWORD(v13) = v132;
              if (v43)
              {
                v146.__r_.__value_.__l.__size_ = v43;
                operator delete(v43);
              }

              sub_29A103F38(__p);
              v26 = *(v15 + 48);
              v25 = *(v15 + 56);
            }

            if (((v25 - v26) >> 2) != v13)
            {
              v100 = sub_29AABB028();
              std::operator+<char>();
              v101 = std::string::append(&v142, " has incorrect indices size ");
              v102 = *&v101->__r_.__value_.__l.__data_;
              v143.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
              *&v143.__r_.__value_.__l.__data_ = v102;
              v101->__r_.__value_.__l.__size_ = 0;
              v101->__r_.__value_.__r.__words[2] = 0;
              v101->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v141, (*(v15 + 56) - *(v15 + 48)) >> 2);
              if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v103 = &v141;
              }

              else
              {
                v103 = v141.__r_.__value_.__r.__words[0];
              }

              if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v104 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v104 = v141.__r_.__value_.__l.__size_;
              }

              v105 = std::string::append(&v143, v103, v104);
              v106 = *&v105->__r_.__value_.__l.__data_;
              v144.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
              *&v144.__r_.__value_.__l.__data_ = v106;
              v105->__r_.__value_.__l.__size_ = 0;
              v105->__r_.__value_.__r.__words[2] = 0;
              v105->__r_.__value_.__r.__words[0] = 0;
              v107 = std::string::append(&v144, " vs index count");
              v108 = *&v107->__r_.__value_.__l.__data_;
              v146.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
              *&v146.__r_.__value_.__l.__data_ = v108;
              v107->__r_.__value_.__l.__size_ = 0;
              v107->__r_.__value_.__r.__words[2] = 0;
              v107->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v140, v13);
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v109 = &v140;
              }

              else
              {
                v109 = v140.__r_.__value_.__r.__words[0];
              }

              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v110 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v110 = v140.__r_.__value_.__l.__size_;
              }

              v111 = std::string::append(&v146, v109, v110);
              v112 = *&v111->__r_.__value_.__l.__data_;
              *&v138 = *(&v111->__r_.__value_.__l + 2);
              *__p = v112;
              v111->__r_.__value_.__l.__size_ = 0;
              v111->__r_.__value_.__r.__words[2] = 0;
              v111->__r_.__value_.__r.__words[0] = 0;
              v113 = v100;
              goto LABEL_162;
            }

            (*v18)[5].__r_.__value_.__s.__data_[16] = 4;
            v45 = *(v15 + 23);
            if (v45 < 0)
            {
              if (*(v15 + 8) != 7)
              {
LABEL_67:
                v44 = &v148;
                goto LABEL_68;
              }

              v46 = *v15;
            }

            else
            {
              v46 = v15;
              if (v45 != 7)
              {
                goto LABEL_67;
              }
            }

            v47 = *v46;
            v48 = *(v46 + 3);
            v49 = v47 == 1836216174 && v48 == 1936482669;
            if (v49)
            {
              MEMORY[0x29C2C1A60]();
              (*v18)[6].__r_.__value_.__s.__data_[4] = 1;
              *(a1 + 1) = 1;
            }

            goto LABEL_67;
          }

          *(v15 + 136) = 4;
          sub_29A0A171C((v15 + 48), 0);
          v20 = *(v15 + 136);
        }

        if ((v20 - 3) > 1)
        {
          if (v20 == 5)
          {
            goto LABEL_32;
          }

          if (*(v15 + 48) != *(v15 + 56))
          {
            v131 = sub_29AABB028();
            std::operator+<char>();
            sub_29AA5B750(v131, __p);
            if ((SBYTE7(v138) & 0x80000000) == 0)
            {
              goto LABEL_178;
            }

            v130 = __p[0];
LABEL_176:
            operator delete(v130);
LABEL_178:
            v4 = 202;
            goto LABEL_179;
          }
        }

        else
        {
          if (*(v15 + 56) != *(v15 + 48))
          {
            v114 = sub_29AABB028();
            std::operator+<char>();
            v115 = std::string::append(&v146, " cannot both be Vertex/Varying Interpolation and have indices.");
            v116 = *&v115->__r_.__value_.__l.__data_;
            *&v138 = *(&v115->__r_.__value_.__l + 2);
            *__p = v116;
            v115->__r_.__value_.__l.__size_ = 0;
            v115->__r_.__value_.__r.__words[2] = 0;
            v115->__r_.__value_.__r.__words[0] = 0;
            sub_29AA5B750(v114, __p);
            if (SBYTE7(v138) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }

            v4 = 110;
            goto LABEL_179;
          }

          if (v20 == 3)
          {
            goto LABEL_50;
          }
        }

        LOBYTE(v20) = 4;
LABEL_50:
        (*v18)[5].__r_.__value_.__s.__data_[16] = v20;
        v44 = &v147;
LABEL_68:
        sub_29A00D250(&v44->__r_.__value_.__l.__data_, &v145);
        if (*(v15 + 136) == 2)
        {
          (*v18)[5].__r_.__value_.__s.__data_[16] = 2;
        }

        v14 = v145 + 1;
        v145 = v14;
        if (v14 >= v6)
        {
          v50 = v148.__r_.__value_.__l.__size_ - v148.__r_.__value_.__r.__words[0];
          goto LABEL_90;
        }
      }
    }

    v50 = 0;
LABEL_90:
    *__p = 0u;
    v138 = 0u;
    v139 = 1065353216;
    sub_29A011440(&v146, ((v50 << 30) + 0x100000000) >> 32);
    if (v13 >= 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = v50 >> 2;
      v135 = (v50 >> 2) & 0x7FFFFFFF;
      v133 = v50 >> 2;
      do
      {
        v63 = *(*(a1 + 56) + 4 * v60);
        v64 = v146.__r_.__value_.__r.__words[0];
        *v146.__r_.__value_.__l.__data_ = v63;
        if (v62 >= 1)
        {
          v65 = v148.__r_.__value_.__r.__words[0];
          v66 = v150[0];
          v67 = (v64 + 4);
          v68 = v135;
          do
          {
            v69 = *v65++;
            *v67++ = *(*(v66[v69] + 48) + 4 * v60);
            --v68;
          }

          while (v68);
        }

        v70 = sub_29AA61390(__p, &v146.__r_.__value_.__l.__data_);
        if (v70)
        {
          *(v151 + 4 * v60) = *(v70 + 10);
        }

        else
        {
          v71 = v61 + 1;
          *sub_29AA614D0(__p, &v146.__r_.__value_.__l.__data_) = v61;
          *(v151 + 4 * v60) = v61;
          v72 = 12 * v63;
          v73 = 3;
          do
          {
            sub_29A00D250(&v153, (*(a1 + 80) + v72));
            v72 += 4;
            --v73;
          }

          while (v73);
          v75 = v147.__r_.__value_.__l.__size_;
          for (i = v147.__r_.__value_.__r.__words[0]; i != v75; ++i)
          {
            v76 = *i;
            v77 = *(v150[0] + v76);
            v78 = *(v77 + 140);
            if (v78 >= 1)
            {
              v79 = v149.__r_.__value_.__r.__words[0] + 16 * v76;
              v80 = 4 * v78 * v63;
              do
              {
                sub_29A00D250((*v79 + 24), (*(v77 + 24) + v80));
                v80 += 4;
                --v78;
              }

              while (v78);
            }
          }

          v82 = v148.__r_.__value_.__l.__size_;
          for (j = v148.__r_.__value_.__r.__words[0]; j != v82; ++j)
          {
            v83 = *j;
            v84 = *(v150[0] + v83);
            v85 = *(v84 + 140);
            if (v85 >= 1)
            {
              v86 = v149.__r_.__value_.__r.__words[0] + 16 * v83;
              v87 = 4 * *(*(v84 + 48) + 4 * v60) * v85;
              do
              {
                sub_29A00D250((*v86 + 24), (*(v84 + 24) + v87));
                v87 += 4;
                --v85;
              }

              while (v85);
            }
          }

          v61 = v71;
          LODWORD(v62) = v133;
          LODWORD(v6) = v134;
        }

        ++v60;
      }

      while (v60 != v136);
    }

    v88 = *(a1 + 80);
    *(a1 + 80) = v153;
    v153 = v88;
    v89 = *(a1 + 96);
    *(a1 + 96) = v154;
    v154 = v89;
    v90 = *(a1 + 56);
    *(a1 + 56) = v151;
    v151 = v90;
    v91 = *(a1 + 72);
    *(a1 + 72) = v152;
    v152 = v91;
    if (v6 >= 1)
    {
      v92 = 0;
      v93 = v6 & 0x7FFFFFFF;
      do
      {
        v94 = v149.__r_.__value_.__r.__words[0];
        v144.__r_.__value_.__r.__words[0] = *(v149.__r_.__value_.__r.__words[0] + v92);
        v95 = sub_29AA7B448((a1 + 216), v144.__r_.__value_.__l.__data_, &unk_29B4D6118, &v144, &v143);
        v96 = *(v94 + v92);
        v97 = *(v94 + v92 + 8);
        if (v97)
        {
          atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
        }

        v98 = v95[8];
        *(v95 + 7) = v96;
        if (v98)
        {
          sub_29A014BEC(v98);
        }

        v92 += 16;
        --v93;
      }

      while (v93);
    }

    if (*(a1 + 1))
    {
      sub_29A008E78(&v144, "normals");
      sub_29A3E33E8((a1 + 216), &v144.__r_.__value_.__l.__data_);
      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }
    }

    if (*(a1 + 80) == *(a1 + 88))
    {
      v99 = sub_29AABB028();
      sub_29A008E78(&v144, "unifyIndices: points should not be empty");
      sub_29AA5B750(v99, &v144);
      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      v4 = 202;
    }

    else
    {
      v4 = 0;
    }

    if (v146.__r_.__value_.__r.__words[0])
    {
      v146.__r_.__value_.__l.__size_ = v146.__r_.__value_.__r.__words[0];
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    sub_29A103F38(__p);
LABEL_179:
    if (v147.__r_.__value_.__r.__words[0])
    {
      v147.__r_.__value_.__l.__size_ = v147.__r_.__value_.__r.__words[0];
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (v148.__r_.__value_.__r.__words[0])
    {
      v148.__r_.__value_.__l.__size_ = v148.__r_.__value_.__r.__words[0];
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    __p[0] = &v149;
    sub_29A0176E4(__p);
  }

  else
  {
    v51 = sub_29AABB028();
    std::to_string(&v147, v10);
    v52 = std::string::insert(&v147, 0, "unifyIndices: Invalid attribute counter/count ");
    v53 = *&v52->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v148, " and ");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v149.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v149.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v146, v6);
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v146;
    }

    else
    {
      v56 = v146.__r_.__value_.__r.__words[0];
    }

    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v146.__r_.__value_.__l.__size_;
    }

    v58 = std::string::append(&v149, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    *&v138 = *(&v58->__r_.__value_.__l + 2);
    *__p = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v51, __p);
    if (SBYTE7(v138) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    v4 = 202;
  }

  if (v150[0])
  {
    v150[1] = v150[0];
    operator delete(v150[0]);
  }

  if (v151)
  {
    *(&v151 + 1) = v151;
    operator delete(v151);
  }

  if (v153)
  {
    *(&v153 + 1) = v153;
    operator delete(v153);
  }

  return v4;
}

void sub_29AA61104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (__p)
  {
    a57 = __p;
    operator delete(__p);
  }

  v63 = *(v61 - 224);
  if (v63)
  {
    *(v61 - 216) = v63;
    operator delete(v63);
  }

  a13 = v61 - 192;
  sub_29A0176E4(&a13);
  v64 = *(v61 - 168);
  if (v64)
  {
    *(v61 - 160) = v64;
    operator delete(v64);
  }

  v65 = *(v61 - 144);
  if (v65)
  {
    *(v61 - 136) = v65;
    operator delete(v65);
  }

  v66 = *(v61 - 112);
  if (v66)
  {
    *(v61 - 104) = v66;
    operator delete(v66);
  }

  _Unwind_Resume(a1);
}

void sub_29AA61348(void *a1, uint64_t a2)
{
  sub_29AA7D4EC(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void *sub_29AA61390(void *a1, const void **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v6;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v10)
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

void *sub_29AA614D0(float *a1, const void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    do
    {
      v8 = *v7++;
      v6 ^= (v6 << 6) + (v6 >> 2) + 2654435769u + v8;
    }

    while (v7 != v5);
  }

  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v2 = v6;
      if (v6 >= v9)
      {
        v2 = v6 % v9;
      }
    }

    else
    {
      v2 = (v9 - 1) & v6;
    }

    v12 = *(*a1 + 8 * v2);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v6)
          {
            v15 = v13[2];
            if (v13[3] - v15 == v5 - v4 && !memcmp(v15, v4, v5 - v4))
            {
              return v13 + 5;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v2)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v39 = operator new(0x30uLL);
  *v39 = 0;
  v39[1] = v6;
  v39[3] = 0;
  v39[4] = 0;
  v39[2] = 0;
  sub_29A0BE2C8(v39 + 2, v4, v5, (v5 - v4) >> 2);
  *(v39 + 10) = 0;
  v16 = (*(a1 + 3) + 1);
  v17 = a1[8];
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      prime = v20;
    }

    else
    {
      prime = v19;
    }

    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & (*&prime - 1)) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v9 = *(a1 + 1);
    if (*&prime > v9)
    {
      goto LABEL_36;
    }

    if (*&prime < v9)
    {
      v28 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v9 < 3 || (v29 = vcnt_s8(v9), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        v28 = std::__next_prime(v28);
      }

      else
      {
        v30 = 1 << -__clz(v28 - 1);
        if (v28 >= 2)
        {
          v28 = v30;
        }
      }

      if (*&prime <= v28)
      {
        prime = v28;
      }

      if (*&prime >= v9)
      {
        v9 = *(a1 + 1);
      }

      else
      {
        if (prime)
        {
LABEL_36:
          if (*&prime >> 61)
          {
            sub_29A00C8B8();
          }

          v22 = operator new(8 * *&prime);
          v23 = *a1;
          *a1 = v22;
          if (v23)
          {
            operator delete(v23);
          }

          v24 = 0;
          *(a1 + 1) = prime;
          do
          {
            *(*a1 + 8 * v24++) = 0;
          }

          while (*&prime != v24);
          v25 = *(a1 + 2);
          if (v25)
          {
            v26 = v25[1];
            v27 = vcnt_s8(prime);
            v27.i16[0] = vaddlv_u8(v27);
            if (v27.u32[0] > 1uLL)
            {
              if (v26 >= *&prime)
              {
                v26 %= *&prime;
              }
            }

            else
            {
              v26 &= *&prime - 1;
            }

            *(*a1 + 8 * v26) = a1 + 4;
            v31 = *v25;
            if (*v25)
            {
              do
              {
                v32 = v31[1];
                if (v27.u32[0] > 1uLL)
                {
                  if (v32 >= *&prime)
                  {
                    v32 %= *&prime;
                  }
                }

                else
                {
                  v32 &= *&prime - 1;
                }

                if (v32 != v26)
                {
                  v33 = *a1;
                  if (!*(*a1 + 8 * v32))
                  {
                    *(v33 + 8 * v32) = v25;
                    goto LABEL_61;
                  }

                  *v25 = *v31;
                  *v31 = **(v33 + 8 * v32);
                  **(v33 + 8 * v32) = v31;
                  v31 = v25;
                }

                v32 = v26;
LABEL_61:
                v25 = v31;
                v31 = *v31;
                v26 = v32;
              }

              while (v31);
            }
          }

          v9 = prime;
          goto LABEL_65;
        }

        v38 = *a1;
        *a1 = 0;
        if (v38)
        {
          operator delete(v38);
        }

        v9 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_65:
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v6 >= v9)
      {
        v2 = v6 % v9;
      }

      else
      {
        v2 = v6;
      }
    }

    else
    {
      v2 = (v9 - 1) & v6;
    }
  }

  v34 = *a1;
  v35 = *(*a1 + 8 * v2);
  if (v35)
  {
    v13 = v39;
    *v39 = *v35;
    *v35 = v39;
  }

  else
  {
    *v39 = *(a1 + 2);
    *(a1 + 2) = v39;
    *(v34 + 8 * v2) = a1 + 4;
    v13 = v39;
    if (*v39)
    {
      v36 = *(*v39 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v36 >= v9)
        {
          v36 %= v9;
        }
      }

      else
      {
        v36 &= v9 - 1;
      }

      *(*a1 + 8 * v36) = v39;
      v13 = v39;
    }
  }

  ++*(a1 + 3);
  return v13 + 5;
}