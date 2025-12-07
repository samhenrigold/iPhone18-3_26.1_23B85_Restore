pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::GetPositionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::CreatePositionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 16), (v9 + 216), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::GetNormalAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, v3);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::CreateNormalAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, v8, (v9 + 240), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_InfiniteColliderPlane *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1746DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746DF8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v3)
    {
      v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v4 = *(v3 + 2);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v6)
    {
      v6 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v7 = *v6;
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A1746DE0 = 0;
    *algn_2A1746DE8 = 0;
    qword_2A1746DF0 = 0;
    sub_29A12EF7C(&qword_2A1746DE0, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1746DE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746DF8);
  }

  if ((atomic_load_explicit(&qword_2A1746E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746E18))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetSchemaAttributeNames(1);
    sub_29AA3C8D0(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1746E00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746E18);
  }

  if (v1)
  {
    return &qword_2A1746E00;
  }

  else
  {
    return &qword_2A1746DE0;
  }
}

void sub_29AA3C858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1746DF8);
  _Unwind_Resume(a1);
}

char *sub_29AA3C8D0(uint64_t **a1)
{
  qword_2A1746E08 = 0;
  unk_2A1746E10 = 0;
  qword_2A1746E00 = 0;
  sub_29A1D7F98(&qword_2A1746E00, ((*algn_2A1746DE8 - qword_2A1746DE0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1746E00, qword_2A1746E08, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1746E00, qword_2A1746E08, qword_2A1746DE0, *algn_2A1746DE8, (*algn_2A1746DE8 - qword_2A1746DE0) >> 3);
}

void sub_29AA3C968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *sub_29AA3C98C(atomic_ullong *a1)
{
  result = sub_29AA3C9D4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A76D850(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *sub_29AA3C9D4()
{
  v0 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType::AaplUsdPhysicsTokensType(v0);
  return v0;
}

unint64_t *sub_29AA3CA18()
{
  v1 = nullsub_1475;
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::~UsdPhysicsPreliminary_PhysicsColliderAPI(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_PhysicsColliderAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdPhysicsPreliminary_PhysicsColliderAPI pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A206FBE0;
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

void sub_29AA3CC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA3CC48(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746E20, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA3CE20(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A206FBE0;
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
    *a3 = &unk_2A206FBE0;
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

uint64_t sub_29AA3CE20(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746E20, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746E28))
  {
    __cxa_guard_release(&qword_2A1746E28);
  }

  return &qword_2A1746E20;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746E38, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746E38);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::_GetStaticTfType(v2);
      byte_2A1746E30 = sub_29A7343F0(&qword_2A1746E20, v3);
      __cxa_guard_release(&qword_2A1746E38);
    }
  }

  return byte_2A1746E30;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::GetPreliminaryPhysicsColliderConvexShapeRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, (v3 + 24), a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::CreatePreliminaryPhysicsColliderConvexShapeRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdRelationship *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v6, (v3 + 24), 0, a2);
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI *this)
{
  v1 = this;
  if ((atomic_load_explicit(byte_2A1746E60, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BC61C();
  }

  if ((atomic_load_explicit(&qword_2A1746E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746E58))
  {
    pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    qword_2A1746E40 = 0;
    *algn_2A1746E48 = 0;
    qword_2A1746E50 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (v1)
  {
    return &qword_2A1746E40;
  }

  else
  {
    return &qword_2A1746E68;
  }
}

unint64_t *sub_29AA3D274()
{
  v1 = nullsub_1476;
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::~UsdPhysicsPreliminary_PhysicsForce(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_PhysicsForce.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdPhysicsPreliminary_PhysicsForce pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FC38;
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

void sub_29AA3D474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce *this)
{
  if ((atomic_load_explicit(&qword_2A1746E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746E88))
  {
    __cxa_guard_release(&qword_2A1746E88);
  }

  return &qword_2A1746E80;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce *this)
{
  if ((atomic_load_explicit(&qword_2A1746E98, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746E98);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::_GetStaticTfType(v2);
      byte_2A1746E90 = sub_29A7343F0(&qword_2A1746E80, v3);
      __cxa_guard_release(&qword_2A1746E98);
    }
  }

  return byte_2A1746E90;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce *this)
{
  v1 = this;
  if ((atomic_load_explicit(byte_2A1746EC0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BC694();
  }

  if ((atomic_load_explicit(&qword_2A1746EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746EB8))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetSchemaAttributeNames(1);
    qword_2A1746EA0 = 0;
    *algn_2A1746EA8 = 0;
    qword_2A1746EB0 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (v1)
  {
    return &qword_2A1746EA0;
  }

  else
  {
    return &qword_2A1746EC8;
  }
}

void sub_29AA3D6A0()
{
  v2 = nullsub_1477;
  sub_29A008E78(&__p, "Preliminary_PhysicsGravitationalForce");
  sub_29AA3E060(&__p.__vftable);
  if (v1 < 0)
  {
    operator delete(__p.__vftable);
  }
}

void sub_29AA3D72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::~UsdPhysicsPreliminary_PhysicsGravitationalForce(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::~UsdPhysicsPreliminary_PhysicsForce(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_PhysicsGravitationalForce.cpp";
  v9 = "Get";
  v10 = 40;
  v11 = "static UsdPhysicsPreliminary_PhysicsGravitationalForce pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FC90;
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

void sub_29AA3D8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1746EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746EE8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1746EE0, "Preliminary_PhysicsGravitationalForce");
    __cxa_atexit(sub_29A424A8C, &unk_2A1746EE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746EE8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "aaplUsdPhysics/preliminary_PhysicsGravitationalForce.cpp";
  v10 = "Define";
  v11 = 53;
  v12 = "static UsdPhysicsPreliminary_PhysicsGravitationalForce pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A206FC90;
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this)
{
  if ((atomic_load_explicit(&qword_2A1746EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746EF8))
  {
    __cxa_guard_release(&qword_2A1746EF8);
  }

  return &qword_2A1746EF0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this)
{
  if ((atomic_load_explicit(&qword_2A1746F08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746F08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::_GetStaticTfType(v2);
      byte_2A1746F00 = sub_29A7343F0(&qword_2A1746EF0, v3);
      __cxa_guard_release(&qword_2A1746F08);
    }
  }

  return byte_2A1746F00;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::GetPhysicsGravitationalForceAccelerationAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::CreatePhysicsGravitationalForceAccelerationAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 8), (v9 + 240), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsGravitationalForce *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1746F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746F28))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v3)
    {
      v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v4 = *(v3 + 1);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1746F10 = 0;
    *algn_2A1746F18 = 0;
    qword_2A1746F20 = 0;
    sub_29A12EF7C(&qword_2A1746F10, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1746F10, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746F28);
  }

  if ((atomic_load_explicit(&qword_2A1746F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746F48))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsForce::GetSchemaAttributeNames(1);
    sub_29AA3DFA8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1746F30, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746F48);
  }

  if (v1)
  {
    return &qword_2A1746F30;
  }

  else
  {
    return &qword_2A1746F10;
  }
}

char *sub_29AA3DFA8(uint64_t **a1)
{
  qword_2A1746F38 = 0;
  unk_2A1746F40 = 0;
  qword_2A1746F30 = 0;
  sub_29A1D7F98(&qword_2A1746F30, ((*algn_2A1746F18 - qword_2A1746F10) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1746F30, qword_2A1746F38, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1746F30, qword_2A1746F38, qword_2A1746F10, *algn_2A1746F18, (*algn_2A1746F18 - qword_2A1746F10) >> 3);
}

void sub_29AA3E040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AA3E060(const void **a1)
{
  v2 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v3, v2, a1);
}

void sub_29AA3E0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29AA3E118()
{
  v1 = nullsub_1478;
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::~UsdPhysicsPreliminary_PhysicsMaterialAPI(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_PhysicsMaterialAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdPhysicsPreliminary_PhysicsMaterialAPI pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A206FCE8;
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

void sub_29AA3E320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA3E348(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746F50, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA3E520(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A206FCE8;
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
    *a3 = &unk_2A206FCE8;
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

uint64_t sub_29AA3E520(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746F50, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746F58))
  {
    __cxa_guard_release(&qword_2A1746F58);
  }

  return &qword_2A1746F50;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746F68, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746F68);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::_GetStaticTfType(v2);
      byte_2A1746F60 = sub_29A7343F0(&qword_2A1746F50, v3);
      __cxa_guard_release(&qword_2A1746F68);
    }
  }

  return byte_2A1746F60;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::GetPreliminaryPhysicsMaterialRestitutionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::CreatePreliminaryPhysicsMaterialRestitutionAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 48), (v9 + 64), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::GetPreliminaryPhysicsMaterialFrictionStaticAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::CreatePreliminaryPhysicsMaterialFrictionStaticAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 40), (v9 + 64), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::GetPreliminaryPhysicsMaterialFrictionDynamicAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 32));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::CreatePreliminaryPhysicsMaterialFrictionDynamicAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 32), (v9 + 64), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI *this)
{
  v1 = this;
  v15 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1746F88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746F88))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v3)
    {
      v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v4 = *(v3 + 6);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v5)
    {
      v5 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v6 = *(v5 + 5);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v7)
    {
      v7 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v8 = *(v7 + 4);
    v14 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1746F70 = 0;
    *algn_2A1746F78 = 0;
    qword_2A1746F80 = 0;
    sub_29A12EF7C(&qword_2A1746F70, &v12, &v15, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1746F70, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746F88);
  }

  if ((atomic_load_explicit(&qword_2A1746FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746FA8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA3EE34(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1746F90, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746FA8);
  }

  if (v1)
  {
    return &qword_2A1746F90;
  }

  else
  {
    return &qword_2A1746F70;
  }
}

char *sub_29AA3EE34(uint64_t **a1)
{
  qword_2A1746F98 = 0;
  unk_2A1746FA0 = 0;
  qword_2A1746F90 = 0;
  sub_29A1D7F98(&qword_2A1746F90, ((*algn_2A1746F78 - qword_2A1746F70) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1746F90, qword_2A1746F98, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1746F90, qword_2A1746F98, qword_2A1746F70, *algn_2A1746F78, (*algn_2A1746F78 - qword_2A1746F70) >> 3);
}

void sub_29AA3EECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA3EEF0()
{
  v1 = nullsub_1479;
}

void pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::~UsdPhysicsPreliminary_PhysicsRigidBodyAPI(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdPhysics/preliminary_PhysicsRigidBodyAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdPhysicsPreliminary_PhysicsRigidBodyAPI pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A206FD40;
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

void sub_29AA3F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA3F120(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746FB0, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA3F2F8(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A206FD40;
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
    *a3 = &unk_2A206FD40;
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

uint64_t sub_29AA3F2F8(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1746FB0, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746FB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746FB8))
  {
    __cxa_guard_release(&qword_2A1746FB8);
  }

  return &qword_2A1746FB0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1746FC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1746FC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::_GetStaticTfType(v2);
      byte_2A1746FC0 = sub_29A7343F0(&qword_2A1746FB0, v3);
      __cxa_guard_release(&qword_2A1746FC8);
    }
  }

  return byte_2A1746FC0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::GetPreliminaryPhysicsRigidBodyMassAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::CreatePreliminaryPhysicsRigidBodyMassAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 64), (v9 + 64), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::GetPreliminaryPhysicsRigidBodyInitiallyActiveAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v3)
  {
    v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::CreatePreliminaryPhysicsRigidBodyInitiallyActiveAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  if (!v8)
  {
    v8 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 56), v9, 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1746FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746FE8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v3)
    {
      v3 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v4 = *(v3 + 8);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    if (!v6)
    {
      v6 = sub_29AA3C98C(&pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokens);
    }

    v7 = *(v6 + 7);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A1746FD0 = 0;
    *algn_2A1746FD8 = 0;
    qword_2A1746FE0 = 0;
    sub_29A12EF7C(&qword_2A1746FD0, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1746FD0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746FE8);
  }

  if ((atomic_load_explicit(&qword_2A1747008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747008))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA3FA2C(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1746FF0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747008);
  }

  if (v1)
  {
    return &qword_2A1746FF0;
  }

  else
  {
    return &qword_2A1746FD0;
  }
}

void sub_29AA3F9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1746FE8);
  _Unwind_Resume(a1);
}

char *sub_29AA3FA2C(uint64_t **a1)
{
  qword_2A1746FF8 = 0;
  unk_2A1747000 = 0;
  qword_2A1746FF0 = 0;
  sub_29A1D7F98(&qword_2A1746FF0, ((*algn_2A1746FD8 - qword_2A1746FD0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1746FF0, qword_2A1746FF8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1746FF0, qword_2A1746FF8, qword_2A1746FD0, *algn_2A1746FD8, (*algn_2A1746FD8 - qword_2A1746FD0) >> 3);
}

void sub_29AA3FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType::AaplUsdPhysicsTokensType(pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "normal");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "physics:gravitationalForce:acceleration");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "position");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "preliminary:physics:collider:convexShape");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "preliminary:physics:material:friction:dynamic");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "preliminary:physics:material:friction:static");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "preliminary:physics:material:restitution");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "preliminary:physics:rigidBody:initiallyActive");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "preliminary:physics:rigidBody:mass");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "Preliminary_InfiniteColliderPlane");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "Preliminary_PhysicsColliderAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "Preliminary_PhysicsForce");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "Preliminary_PhysicsGravitationalForce");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "Preliminary_PhysicsMaterialAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "Preliminary_PhysicsRigidBodyAPI");
  v3 = (this + 120);
  v4 = *this;
  v22 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v23 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v24 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v25 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v27 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v28 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v29 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v30 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v31 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v32 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v33 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v34 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v35 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v36 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  sub_29A12EF7C(v3, &v22, &v37, 0xFuLL);
  for (i = 112; i != -8; i -= 8)
  {
    v20 = *(&v22 + i);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA3FF44(_Unwind_Exception *a1)
{
  v3 = 112;
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
      v5 = v1[14];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[13];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[12];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[11];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[10];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[9];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[8];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[7];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[6];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[5];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[4];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[3];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[2];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[1];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

unint64_t *sub_29AA40114()
{
  v1 = nullsub_1480;
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::~UsdInteractivePreliminary_Action(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_Action.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdInteractivePreliminary_Action pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FD98;
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

void sub_29AA40314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this)
{
  if ((atomic_load_explicit(&qword_2A1747018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747018))
  {
    __cxa_guard_release(&qword_2A1747018);
  }

  return &qword_2A1747010;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this)
{
  if ((atomic_load_explicit(&qword_2A1747028, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747028);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::_GetStaticTfType(v2);
      byte_2A1747020 = sub_29A7343F0(&qword_2A1747010, v3);
      __cxa_guard_release(&qword_2A1747028);
    }
  }

  return byte_2A1747020;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::GetInfoIdAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 144));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::CreateInfoIdAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 144), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::GetMultiplePerformOperationAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::CreateMultiplePerformOperationAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 184), (v9 + 88), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Action *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747048))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 18);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v6)
    {
      v6 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v7 = *(v6 + 23);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A1747030 = 0;
    *algn_2A1747038 = 0;
    qword_2A1747040 = 0;
    sub_29A12EF7C(&qword_2A1747030, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747030, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747048);
  }

  if ((atomic_load_explicit(&qword_2A1747068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747068))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA409A4(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747050, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747068);
  }

  if (v1)
  {
    return &qword_2A1747050;
  }

  else
  {
    return &qword_2A1747030;
  }
}

void sub_29AA4092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1747048);
  _Unwind_Resume(a1);
}

char *sub_29AA409A4(uint64_t **a1)
{
  qword_2A1747058 = 0;
  unk_2A1747060 = 0;
  qword_2A1747050 = 0;
  sub_29A1D7F98(&qword_2A1747050, ((*algn_2A1747038 - qword_2A1747030) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747050, qword_2A1747058, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747050, qword_2A1747058, qword_2A1747030, *algn_2A1747038, (*algn_2A1747038 - qword_2A1747030) >> 3);
}

void sub_29AA40A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType *sub_29AA40A60(atomic_ullong *a1)
{
  result = sub_29AA40AA8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A816F68(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType *sub_29AA40AA8()
{
  v0 = operator new(0x188uLL);
  pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType::AaplUsdInteractiveTokensType(v0);
  return v0;
}

unint64_t *sub_29AA40AEC()
{
  v1 = nullsub_1481;
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::~UsdInteractivePreliminary_AnchoringAPI(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_AnchoringAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdInteractivePreliminary_AnchoringAPI pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A206FDF0;
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

void sub_29AA40CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA40D1C(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747070, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA40EF4(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A206FDF0;
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
    *a3 = &unk_2A206FDF0;
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

uint64_t sub_29AA40EF4(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747070, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747078))
  {
    __cxa_guard_release(&qword_2A1747078);
  }

  return &qword_2A1747070;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747088, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747088);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::_GetStaticTfType(v2);
      byte_2A1747080 = sub_29A7343F0(&qword_2A1747070, v3);
      __cxa_guard_release(&qword_2A1747088);
    }
  }

  return byte_2A1747080;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::GetPreliminaryAnchoringTypeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 224));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::CreatePreliminaryAnchoringTypeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 224), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::GetPreliminaryPlaneAnchoringAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 240));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::CreatePreliminaryPlaneAnchoringAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 240), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::GetPreliminaryImageAnchoringReferenceImageRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, (v3 + 232), a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::CreatePreliminaryImageAnchoringReferenceImageRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdRelationship *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v6, (v3 + 232), 0, a2);
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17470A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17470A8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 28);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v6)
    {
      v6 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v7 = *(v6 + 30);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A1747090 = 0;
    *algn_2A1747098 = 0;
    qword_2A17470A0 = 0;
    sub_29A12EF7C(&qword_2A1747090, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747090, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17470A8);
  }

  if ((atomic_load_explicit(&qword_2A17470C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17470C8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA417AC(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17470B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17470C8);
  }

  if (v1)
  {
    return &qword_2A17470B0;
  }

  else
  {
    return &qword_2A1747090;
  }
}

void sub_29AA41734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A17470A8);
  _Unwind_Resume(a1);
}

char *sub_29AA417AC(uint64_t **a1)
{
  qword_2A17470B8 = 0;
  unk_2A17470C0 = 0;
  qword_2A17470B0 = 0;
  sub_29A1D7F98(&qword_2A17470B0, ((*algn_2A1747098 - qword_2A1747090) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17470B0, qword_2A17470B8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17470B0, qword_2A17470B8, qword_2A1747090, *algn_2A1747098, (*algn_2A1747098 - qword_2A1747090) >> 3);
}

void sub_29AA41844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AA41868()
{
  v2 = nullsub_1482;
  sub_29A008E78(&__p, "Preliminary_Behavior");
  sub_29AA42528(&__p.__vftable);
  if (v1 < 0)
  {
    operator delete(__p.__vftable);
  }
}

void sub_29AA418F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::~UsdInteractivePreliminary_Behavior(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_Behavior.cpp";
  v9 = "Get";
  v10 = 40;
  v11 = "static UsdInteractivePreliminary_Behavior pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FE48;
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

void sub_29AA41AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17470D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17470D8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17470D0, "Preliminary_Behavior");
    __cxa_atexit(sub_29A424A8C, &unk_2A17470D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17470D8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "aaplUsdInteractive/preliminary_Behavior.cpp";
  v10 = "Define";
  v11 = 53;
  v12 = "static UsdInteractivePreliminary_Behavior pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A206FE48;
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this)
{
  if ((atomic_load_explicit(&qword_2A17470E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17470E8))
  {
    __cxa_guard_release(&qword_2A17470E8);
  }

  return &qword_2A17470E0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this)
{
  if ((atomic_load_explicit(&qword_2A17470F8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17470F8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::_GetStaticTfType(v2);
      byte_2A17470F0 = sub_29A7343F0(&qword_2A17470E0, v3);
      __cxa_guard_release(&qword_2A17470F8);
    }
  }

  return byte_2A17470F0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::GetExclusiveAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::CreateExclusiveAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 64), v9, 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::GetTriggersRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, (v3 + 280), a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::CreateTriggersRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdRelationship *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v6, (v3 + 280), 0, a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::GetActionsRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, v3, a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::CreateActionsRel@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdRelationship *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v6, v3, 0, a2);
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Behavior *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747118))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 8);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747100 = 0;
    *algn_2A1747108 = 0;
    qword_2A1747110 = 0;
    sub_29A12EF7C(&qword_2A1747100, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747100, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747118);
  }

  if ((atomic_load_explicit(&qword_2A1747138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747138))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA42470(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747120, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747138);
  }

  if (v1)
  {
    return &qword_2A1747120;
  }

  else
  {
    return &qword_2A1747100;
  }
}

char *sub_29AA42470(uint64_t **a1)
{
  qword_2A1747128 = 0;
  unk_2A1747130 = 0;
  qword_2A1747120 = 0;
  sub_29A1D7F98(&qword_2A1747120, ((*algn_2A1747108 - qword_2A1747100) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747120, qword_2A1747128, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747120, qword_2A1747128, qword_2A1747100, *algn_2A1747108, (*algn_2A1747108 - qword_2A1747100) >> 3);
}

void sub_29AA42508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AA42528(const void **a1)
{
  v2 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v3, v2, a1);
}

void sub_29AA425BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA425E0()
{
  v2 = nullsub_1483;
  sub_29A008E78(&__p, "Preliminary_ReferenceImage");
  sub_29AA43194(&__p.__vftable);
  if (v1 < 0)
  {
    operator delete(__p.__vftable);
  }
}

void sub_29AA4266C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::~UsdInteractivePreliminary_ReferenceImage(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_ReferenceImage.cpp";
  v9 = "Get";
  v10 = 40;
  v11 = "static UsdInteractivePreliminary_ReferenceImage pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FEA0;
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

void sub_29AA42830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747148))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747140, "Preliminary_ReferenceImage");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747140, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747148);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "aaplUsdInteractive/preliminary_ReferenceImage.cpp";
  v10 = "Define";
  v11 = 53;
  v12 = "static UsdInteractivePreliminary_ReferenceImage pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A206FEA0;
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this)
{
  if ((atomic_load_explicit(&qword_2A1747158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747158))
  {
    __cxa_guard_release(&qword_2A1747158);
  }

  return &qword_2A1747150;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this)
{
  if ((atomic_load_explicit(&qword_2A1747168, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747168);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::_GetStaticTfType(v2);
      byte_2A1747160 = sub_29A7343F0(&qword_2A1747150, v3);
      __cxa_guard_release(&qword_2A1747168);
    }
  }

  return byte_2A1747160;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::GetImageAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 136));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::CreateImageAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 136), (v9 + 96), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::GetPhysicalWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::CreatePhysicalWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 200), (v9 + 64), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_ReferenceImage *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747188))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 17);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v6)
    {
      v6 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

    qword_2A1747170 = 0;
    *algn_2A1747178 = 0;
    qword_2A1747180 = 0;
    sub_29A12EF7C(&qword_2A1747170, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747170, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747188);
  }

  if ((atomic_load_explicit(&qword_2A17471A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17471A8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA430DC(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747190, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17471A8);
  }

  if (v1)
  {
    return &qword_2A1747190;
  }

  else
  {
    return &qword_2A1747170;
  }
}

void sub_29AA43064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1747188);
  _Unwind_Resume(a1);
}

char *sub_29AA430DC(uint64_t **a1)
{
  qword_2A1747198 = 0;
  unk_2A17471A0 = 0;
  qword_2A1747190 = 0;
  sub_29A1D7F98(&qword_2A1747190, ((*algn_2A1747178 - qword_2A1747170) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747190, qword_2A1747198, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747190, qword_2A1747198, qword_2A1747170, *algn_2A1747178, (*algn_2A1747178 - qword_2A1747170) >> 3);
}

void sub_29AA43174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AA43194(const void **a1)
{
  v2 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v3, v2, a1);
}

void sub_29AA43228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA4324C()
{
  v2 = nullsub_1484;
  sub_29A008E78(&__p, "Preliminary_Text");
  sub_29AA44A48(&__p.__vftable);
  if (v1 < 0)
  {
    operator delete(__p.__vftable);
  }
}

void sub_29AA432D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::~UsdInteractivePreliminary_Text(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_Text.cpp";
  v9 = "Get";
  v10 = 40;
  v11 = "static UsdInteractivePreliminary_Text pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FEF8;
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

void sub_29AA4349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17471B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17471B8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17471B0, "Preliminary_Text");
    __cxa_atexit(sub_29A424A8C, &unk_2A17471B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17471B8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "aaplUsdInteractive/preliminary_Text.cpp";
  v10 = "Define";
  v11 = 53;
  v12 = "static UsdInteractivePreliminary_Text pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A206FEF8;
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this)
{
  if ((atomic_load_explicit(&qword_2A17471C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17471C8))
  {
    __cxa_guard_release(&qword_2A17471C8);
  }

  return &qword_2A17471C0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this)
{
  if ((atomic_load_explicit(&qword_2A17471D8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17471D8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::_GetStaticTfType(v2);
      byte_2A17471D0 = sub_29A7343F0(&qword_2A17471C0, v3);
      __cxa_guard_release(&qword_2A17471D8);
    }
  }

  return byte_2A17471D0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetContentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateContentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 48), (v9 + 80), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetFontAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateFontAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 88), (v9 + 536), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetPointSizeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreatePointSizeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 216), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 304));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateWidthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 304), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetHeightAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 104));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateHeightAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 104), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetDepthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateDepthAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 56), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetWrapModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 312));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateWrapModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 312), (v9 + 88), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetHorizontalAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateHorizontalAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 120), (v9 + 88), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetVerticalAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 296));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::CreateVerticalAlignmentAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 296), (v9 + 88), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Text *this)
{
  v1 = this;
  v33 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17471F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17471F8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 6);
    v24 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v5)
    {
      v5 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v6 = *(v5 + 11);
    v25 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v7)
    {
      v7 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v8 = *(v7 + 27);
    v26 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v9)
    {
      v9 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v10 = *(v9 + 38);
    v27 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v11)
    {
      v11 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v12 = *(v11 + 13);
    v28 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v13)
    {
      v13 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v14 = *(v13 + 7);
    v29 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v15)
    {
      v15 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v16 = *(v15 + 39);
    v30 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 &= 0xFFFFFFFFFFFFFFF8;
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v17)
    {
      v17 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v18 = *(v17 + 15);
    v31 = v18;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 &= 0xFFFFFFFFFFFFFFF8;
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v19)
    {
      v19 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v20 = *(v19 + 37);
    v32 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A17471E0 = 0;
    *algn_2A17471E8 = 0;
    qword_2A17471F0 = 0;
    sub_29A12EF7C(&qword_2A17471E0, &v24, &v33, 9uLL);
    for (i = 64; i != -8; i -= 8)
    {
      v22 = *(&v24 + i);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17471E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17471F8);
  }

  if ((atomic_load_explicit(&qword_2A1747218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747218))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetSchemaAttributeNames(1);
    sub_29AA44990(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747200, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747218);
  }

  if (v1)
  {
    return &qword_2A1747200;
  }

  else
  {
    return &qword_2A17471E0;
  }
}

char *sub_29AA44990(uint64_t **a1)
{
  qword_2A1747208 = 0;
  unk_2A1747210 = 0;
  qword_2A1747200 = 0;
  sub_29A1D7F98(&qword_2A1747200, ((*algn_2A17471E8 - qword_2A17471E0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747200, qword_2A1747208, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747200, qword_2A1747208, qword_2A17471E0, *algn_2A17471E8, (*algn_2A17471E8 - qword_2A17471E0) >> 3);
}

void sub_29AA44A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AA44A48(const void **a1)
{
  v2 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *pxrInternal__aapl__pxrReserved__::TfType::Declare(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(&v3, v2, a1);
}

void sub_29AA44ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29AA44B00()
{
  v1 = nullsub_1485;
}

void pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::~UsdInteractivePreliminary_Trigger(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "aaplUsdInteractive/preliminary_Trigger.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static UsdInteractivePreliminary_Trigger pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A206FF50;
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

void sub_29AA44D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this)
{
  if ((atomic_load_explicit(&qword_2A1747228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747228))
  {
    __cxa_guard_release(&qword_2A1747228);
  }

  return &qword_2A1747220;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this)
{
  if ((atomic_load_explicit(&qword_2A1747238, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747238);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::_GetStaticTfType(v2);
      byte_2A1747230 = sub_29A7343F0(&qword_2A1747220, v3);
      __cxa_guard_release(&qword_2A1747238);
    }
  }

  return byte_2A1747230;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::GetInfoIdAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v3)
  {
    v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 144));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::CreateInfoIdAttr@<X0>(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  if (!v8)
  {
    v8 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 144), (v9 + 88), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_Trigger *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747258))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    if (!v3)
    {
      v3 = sub_29AA40A60(&pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokens);
    }

    v4 = *(v3 + 18);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747240 = 0;
    *algn_2A1747248 = 0;
    qword_2A1747250 = 0;
    sub_29A12EF7C(&qword_2A1747240, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747240, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747258);
  }

  if ((atomic_load_explicit(&qword_2A1747278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747278))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    sub_29AA4519C(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747260, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747278);
  }

  if (v1)
  {
    return &qword_2A1747260;
  }

  else
  {
    return &qword_2A1747240;
  }
}

char *sub_29AA4519C(uint64_t **a1)
{
  qword_2A1747268 = 0;
  unk_2A1747270 = 0;
  qword_2A1747260 = 0;
  sub_29A1D7F98(&qword_2A1747260, ((*algn_2A1747248 - qword_2A1747240) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747260, qword_2A1747268, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747260, qword_2A1747268, qword_2A1747240, *algn_2A1747248, (*algn_2A1747248 - qword_2A1747240) >> 3);
}

void sub_29AA45234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType *pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType::AaplUsdInteractiveTokensType(pxrInternal__aapl__pxrReserved__::AaplUsdInteractiveTokensType *this)
{
  v98 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "actions");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "allow");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "any");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "baseline");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "bottom");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "center");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "content");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "depth");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "exclusive");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "face");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "flowing");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "font");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "hardBreaks");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "height");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "horizontal");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "horizontalAlignment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "ignore");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "image");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "info:id");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "justified");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "left");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "lowerMiddle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "middle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "multiplePerformOperation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "none");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "physicalWidth");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "plane");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "pointSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "preliminary:anchoring:type");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "preliminary:imageAnchoring:referenceImage");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "preliminary:planeAnchoring:alignment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "right");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "singleLine");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "stop");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 34, "top");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 35, "triggers");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 36, "vertical");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 37, "verticalAlignment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 38, "width");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 39, "wrapMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "Preliminary_Action");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 41, "Preliminary_AnchoringAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 42, "Preliminary_Behavior");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 43, "Preliminary_ReferenceImage");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 44, "Preliminary_Text");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 45, "Preliminary_Trigger");
  v3 = *this;
  v52 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v53 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v54 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v55 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v56 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v57 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v58 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v59 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v60 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v61 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v62 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v63 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v64 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v65 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v66 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v67 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v68 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v69 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v70 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v71 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v72 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v73 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v74 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v75 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v76 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v77 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v78 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v79 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v80 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v81 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v82 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v83 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v84 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v85 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v86 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v87 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v88 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v89 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v90 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v91 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v92 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v93 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v94 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v95 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v96 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v97 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  sub_29A12EF7C(this + 46, &v52, &v98, 0x2EuLL);
  for (i = 360; i != -8; i -= 8)
  {
    v50 = *(&v52 + i);
    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA45E7C(_Unwind_Exception *a1)
{
  v3 = 360;
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
      v5 = v1[45];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[44];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[43];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[42];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[41];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[40];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[39];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[38];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[37];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[36];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[35];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[34];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[33];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[32];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[31];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[30];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[29];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[28];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[27];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[26];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[25];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[24];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[23];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[22];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[21];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[20];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[19];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[18];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[17];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[16];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[15];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[14];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[13];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[12];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[11];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[10];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[9];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[8];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[7];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[6];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[5];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[4];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v1[3];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v1[2];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v1[1];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

unint64_t *sub_29AA463B0()
{
  v1 = nullsub_1486;
}

void pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::~AppleCameraRenderingAPI(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/cameraRenderingAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static AppleCameraRenderingAPI pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A206FFA8;
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

void sub_29AA465B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA465E0(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747280, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA467B8(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A206FFA8;
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
    *a3 = &unk_2A206FFA8;
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

uint64_t sub_29AA467B8(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747280, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747288))
  {
    __cxa_guard_release(&qword_2A1747288);
  }

  return &qword_2A1747280;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747298, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747298);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::_GetStaticTfType(v2);
      byte_2A1747290 = sub_29A7343F0(&qword_2A1747280, v3);
      __cxa_guard_release(&qword_2A1747298);
    }
  }

  return byte_2A1747290;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::GetDistanceModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::CreateDistanceModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 72), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::GetEnableSpatialAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::CreateEnableSpatialAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 112), v9, 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::GetSpatialModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 304));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::CreateSpatialModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 304), (v9 + 88), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleCameraRenderingAPI *this)
{
  v1 = this;
  v15 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17472B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17472B8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 9);
    v12 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v5)
    {
      v5 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v6 = *(v5 + 14);
    v13 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v7)
    {
      v7 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v8 = *(v7 + 38);
    v14 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A17472A0 = 0;
    *algn_2A17472A8 = 0;
    qword_2A17472B0 = 0;
    sub_29A12EF7C(&qword_2A17472A0, &v12, &v15, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17472A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17472B8);
  }

  if ((atomic_load_explicit(&qword_2A17472D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17472D8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA470CC(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17472C0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17472D8);
  }

  if (v1)
  {
    return &qword_2A17472C0;
  }

  else
  {
    return &qword_2A17472A0;
  }
}

char *sub_29AA470CC(uint64_t **a1)
{
  qword_2A17472C8 = 0;
  unk_2A17472D0 = 0;
  qword_2A17472C0 = 0;
  sub_29A1D7F98(&qword_2A17472C0, ((*algn_2A17472A8 - qword_2A17472A0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17472C0, qword_2A17472C8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17472C0, qword_2A17472C8, qword_2A17472A0, *algn_2A17472A8, (*algn_2A17472A8 - qword_2A17472A0) >> 3);
}

void sub_29AA47164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AppleCameraTokensType *sub_29AA47188(atomic_ullong *a1)
{
  result = sub_29AA471D0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29AA47214(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::AppleCameraTokensType *sub_29AA471D0()
{
  v0 = operator new(0x1D8uLL);
  pxrInternal__aapl__pxrReserved__::AppleCameraTokensType::AppleCameraTokensType(v0);
  return v0;
}

uint64_t sub_29AA47214(uint64_t a1)
{
  v58 = (a1 + 448);
  sub_29A124AB0(&v58);
  v2 = *(a1 + 440);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 432);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 424);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 416);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 408);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 400);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 392);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 384);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 376);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 368);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 360);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 352);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 344);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 336);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 328);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 320);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 312);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 304);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 296);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 288);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 280);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 272);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 264);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 256);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 248);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 240);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 232);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 224);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 216);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 208);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 200);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 192);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 184);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 176);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 168);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 160);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 152);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 144);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 136);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 128);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 120);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 112);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 104);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 96);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 88);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 80);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 72);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 64);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 56);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 48);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 40);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 32);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 24);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 16);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 8);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

unint64_t *sub_29AA47790()
{
  v1 = nullsub_1487;
}

void pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::~AppleFisheyeCamera(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/fisheyeCamera.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleFisheyeCamera pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070000;
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

void sub_29AA47990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17472E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17472E8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17472E0, "AppleFisheyeCamera");
    __cxa_atexit(sub_29A424A8C, &unk_2A17472E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17472E8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleCamera/fisheyeCamera.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleFisheyeCamera pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070000;
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this)
{
  if ((atomic_load_explicit(&qword_2A17472F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17472F8))
  {
    __cxa_guard_release(&qword_2A17472F8);
  }

  return &qword_2A17472F0;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this)
{
  if ((atomic_load_explicit(&qword_2A1747308, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747308);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::_GetStaticTfType(v2);
      byte_2A1747300 = sub_29A7343F0(&qword_2A17472F0, v3);
      __cxa_guard_release(&qword_2A1747308);
    }
  }

  return byte_2A1747300;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::GetVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 128));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::CreateVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 128), (v9 + 56), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleFisheyeCamera *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747328))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 16);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747310 = 0;
    *algn_2A1747318 = 0;
    qword_2A1747320 = 0;
    sub_29A12EF7C(&qword_2A1747310, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747310, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747328);
  }

  if ((atomic_load_explicit(&qword_2A1747348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747348))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetSchemaAttributeNames(1);
    sub_29AA48048(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747330, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747348);
  }

  if (v1)
  {
    return &qword_2A1747330;
  }

  else
  {
    return &qword_2A1747310;
  }
}

char *sub_29AA48048(uint64_t **a1)
{
  qword_2A1747338 = 0;
  unk_2A1747340 = 0;
  qword_2A1747330 = 0;
  sub_29A1D7F98(&qword_2A1747330, ((*algn_2A1747318 - qword_2A1747310) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747330, qword_2A1747338, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747330, qword_2A1747338, qword_2A1747310, *algn_2A1747318, (*algn_2A1747318 - qword_2A1747310) >> 3);
}

void sub_29AA480E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA48104()
{
  v1 = nullsub_1488;
}

void pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::~AppleImmersiveCamera(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/immersiveCamera.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleImmersiveCamera pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A2070058;
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

void sub_29AA48304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1747358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747358))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1747350, "AppleImmersiveCamera");
    __cxa_atexit(sub_29A424A8C, &unk_2A1747350, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747358);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleCamera/immersiveCamera.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleImmersiveCamera pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A2070058;
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this)
{
  if ((atomic_load_explicit(&qword_2A1747368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747368))
  {
    __cxa_guard_release(&qword_2A1747368);
  }

  return &qword_2A1747360;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this)
{
  if ((atomic_load_explicit(&qword_2A1747378, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747378);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::_GetStaticTfType(v2);
      byte_2A1747370 = sub_29A7343F0(&qword_2A1747360, v3);
      __cxa_guard_release(&qword_2A1747378);
    }
  }

  return byte_2A1747370;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetHorizontalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 136));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateHorizontalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 136), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 344));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 344), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetProjectionModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 256));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateProjectionModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 256), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetCubemapDistributionAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateCubemapDistributionAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 40), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetCubemapPlanesAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateCubemapPlanesAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 56), (v9 + 544), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetCubemapDirectionsAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 32));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateCubemapDirectionsAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 32), (v9 + 544), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetCubemapFlipAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreateCubemapFlipAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 48), (v9 + 448), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingTopModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 248));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingTopModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 248), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingBottomModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 224));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingBottomModeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 224), (v9 + 88), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingTopAngleAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 232));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingTopAngleAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 232), (v9 + 56), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingBottomAngleAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 208));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingBottomAngleAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 208), (v9 + 56), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingTopExponentAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 240));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingTopExponentAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 240), (v9 + 56), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetPoleMergingBottomExponentAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::CreatePoleMergingBottomExponentAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 216), (v9 + 56), 0, 1, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleImmersiveCamera *this)
{
  v1 = this;
  v45 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747398))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 17);
    v32 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v5)
    {
      v5 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v6 = *(v5 + 43);
    v33 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v7)
    {
      v7 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v8 = *(v7 + 32);
    v34 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v9)
    {
      v9 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v10 = *(v9 + 5);
    v35 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v11)
    {
      v11 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v12 = *(v11 + 7);
    v36 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v13)
    {
      v13 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v14 = *(v13 + 4);
    v37 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v15)
    {
      v15 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v16 = *(v15 + 6);
    v38 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v38 &= 0xFFFFFFFFFFFFFFF8;
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v17)
    {
      v17 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v18 = *(v17 + 31);
    v39 = v18;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v19)
    {
      v19 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v20 = *(v19 + 28);
    v40 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v40 &= 0xFFFFFFFFFFFFFFF8;
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v21)
    {
      v21 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v22 = *(v21 + 29);
    v41 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v41 &= 0xFFFFFFFFFFFFFFF8;
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v23)
    {
      v23 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v24 = *(v23 + 26);
    v42 = v24;
    if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v42 &= 0xFFFFFFFFFFFFFFF8;
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v25)
    {
      v25 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v26 = *(v25 + 30);
    v43 = v26;
    if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v43 &= 0xFFFFFFFFFFFFFFF8;
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v27)
    {
      v27 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v28 = *(v27 + 27);
    v44 = v28;
    if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v44 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747380 = 0;
    *algn_2A1747388 = 0;
    qword_2A1747390 = 0;
    sub_29A12EF7C(&qword_2A1747380, &v32, &v45, 0xDuLL);
    for (i = 96; i != -8; i -= 8)
    {
      v30 = *(&v32 + i);
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747380, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747398);
  }

  if ((atomic_load_explicit(&qword_2A17473B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17473B8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetSchemaAttributeNames(1);
    sub_29AA49EE8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17473A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17473B8);
  }

  if (v1)
  {
    return &qword_2A17473A0;
  }

  else
  {
    return &qword_2A1747380;
  }
}

char *sub_29AA49EE8(uint64_t **a1)
{
  qword_2A17473A8 = 0;
  unk_2A17473B0 = 0;
  qword_2A17473A0 = 0;
  sub_29A1D7F98(&qword_2A17473A0, ((*algn_2A1747388 - qword_2A1747380) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17473A0, qword_2A17473A8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17473A0, qword_2A17473A8, qword_2A1747380, *algn_2A1747388, (*algn_2A1747388 - qword_2A1747380) >> 3);
}

void sub_29AA49F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA49FA4()
{
  v1 = nullsub_1489;
}

void pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::~ApplePanoramicCamera(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/panoramicCamera.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static ApplePanoramicCamera pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A20700B0;
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

void sub_29AA4A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17473C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17473C8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17473C0, "ApplePanoramicCamera");
    __cxa_atexit(sub_29A424A8C, &unk_2A17473C0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17473C8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleCamera/panoramicCamera.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static ApplePanoramicCamera pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A20700B0;
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

uint64_t *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this)
{
  if ((atomic_load_explicit(&qword_2A17473D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17473D8))
  {
    __cxa_guard_release(&qword_2A17473D8);
  }

  return &qword_2A17473D0;
}

uint64_t pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this)
{
  if ((atomic_load_explicit(&qword_2A17473E8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17473E8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::_GetStaticTfType(v2);
      byte_2A17473E0 = sub_29A7343F0(&qword_2A17473D0, v3);
      __cxa_guard_release(&qword_2A17473E8);
    }
  }

  return byte_2A17473E0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::GetHorizontalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 136));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::CreateHorizontalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 136), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::GetVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 344));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::CreateVerticalFOVAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 344), (v9 + 56), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::ApplePanoramicCamera *this)
{
  v1 = this;
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747408))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 17);
    v12 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v5;
      }
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v6)
    {
      v6 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v7 = *(v6 + 43);
    v13 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 = v8;
      }
    }

    qword_2A17473F0 = 0;
    *algn_2A17473F8 = 0;
    qword_2A1747400 = 0;
    sub_29A12EF7C(&qword_2A17473F0, &v12, &v14, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v10 = *(&v12 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17473F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747408);
  }

  if ((atomic_load_explicit(&qword_2A1747428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747428))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetSchemaAttributeNames(1);
    sub_29AA4AA50(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747410, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747428);
  }

  if (v1)
  {
    return &qword_2A1747410;
  }

  else
  {
    return &qword_2A17473F0;
  }
}

void sub_29AA4A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1747408);
  _Unwind_Resume(a1);
}

char *sub_29AA4AA50(uint64_t **a1)
{
  qword_2A1747418 = 0;
  unk_2A1747420 = 0;
  qword_2A1747410 = 0;
  sub_29A1D7F98(&qword_2A1747410, ((*algn_2A17473F8 - qword_2A17473F0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747410, qword_2A1747418, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747410, qword_2A1747418, qword_2A17473F0, *algn_2A17473F8, (*algn_2A17473F8 - qword_2A17473F0) >> 3);
}

void sub_29AA4AAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA4AB0C()
{
  v1 = nullsub_1490;
}

void pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::~ApplePhysicalCameraAPI(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/physicalCameraAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static ApplePhysicalCameraAPI pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A2070108;
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

void sub_29AA4AD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA4AD3C(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747430, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA4AF14(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070108;
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
    *a3 = &unk_2A2070108;
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

uint64_t sub_29AA4AF14(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747430, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747438))
  {
    __cxa_guard_release(&qword_2A1747438);
  }

  return &qword_2A1747430;
}

uint64_t pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747448, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747448);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::_GetStaticTfType(v2);
      byte_2A1747440 = sub_29A7343F0(&qword_2A1747430, v3);
      __cxa_guard_release(&qword_2A1747448);
    }
  }

  return byte_2A1747440;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::GetParametricDataFileAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::CreateParametricDataFileAttr@<X0>(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 184), (v9 + 96), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::ApplePhysicalCameraAPI *this)
{
  v1 = this;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747468))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 23);
    v7 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v5;
      }
    }

    qword_2A1747450 = 0;
    *algn_2A1747458 = 0;
    qword_2A1747460 = 0;
    sub_29A12EF7C(&qword_2A1747450, &v7, &v8, 1uLL);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747450, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747468);
  }

  if ((atomic_load_explicit(&qword_2A1747488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747488))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA4B454(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1747470, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747488);
  }

  if (v1)
  {
    return &qword_2A1747470;
  }

  else
  {
    return &qword_2A1747450;
  }
}

char *sub_29AA4B454(uint64_t **a1)
{
  qword_2A1747478 = 0;
  unk_2A1747480 = 0;
  qword_2A1747470 = 0;
  sub_29A1D7F98(&qword_2A1747470, ((*algn_2A1747458 - qword_2A1747450) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A1747470, qword_2A1747478, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A1747470, qword_2A1747478, qword_2A1747450, *algn_2A1747458, (*algn_2A1747458 - qword_2A1747450) >> 3);
}

void sub_29AA4B4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_29AA4B510()
{
  v1 = nullsub_1491;
}

void pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::~AppleSpatialCameraAPI(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleCamera/spatialCameraAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static AppleSpatialCameraAPI pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A2070160;
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

void sub_29AA4B718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA4B740(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747490, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA4B918(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070160;
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
    *a3 = &unk_2A2070160;
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

uint64_t sub_29AA4B918(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747490, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747498))
  {
    __cxa_guard_release(&qword_2A1747498);
  }

  return &qword_2A1747490;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this)
{
  if ((atomic_load_explicit(&qword_2A17474A8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A17474A8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::_GetStaticTfType(v2);
      byte_2A17474A0 = sub_29A7343F0(&qword_2A1747490, v3);
      __cxa_guard_release(&qword_2A17474A8);
    }
  }

  return byte_2A17474A0;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::GetInterpupillaryDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 144));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::CreateInterpupillaryDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 144), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::GetPivotDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::CreatePivotDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 192), (v9 + 56), 0, 0, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::GetEnableConvergenceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 104));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::CreateEnableConvergenceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 104), v9, 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::GetConvergenceDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v3)
  {
    v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::CreateConvergenceDistanceAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  if (!v8)
  {
    v8 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 8), (v9 + 56), 0, 0, a2, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleSpatialCameraAPI *this)
{
  v1 = this;
  v18 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17474C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17474C8))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v3)
    {
      v3 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v4 = *(v3 + 18);
    v14 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v5)
    {
      v5 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v6 = *(v5 + 24);
    v15 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v7)
    {
      v7 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v8 = *(v7 + 13);
    v16 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    if (!v9)
    {
      v9 = sub_29AA47188(&pxrInternal__aapl__pxrReserved__::AppleCameraTokens);
    }

    v10 = *(v9 + 1);
    v17 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A17474B0 = 0;
    *algn_2A17474B8 = 0;
    qword_2A17474C0 = 0;
    sub_29A12EF7C(&qword_2A17474B0, &v14, &v18, 4uLL);
    for (i = 24; i != -8; i -= 8)
    {
      v12 = *(&v14 + i);
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A17474B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17474C8);
  }

  if ((atomic_load_explicit(&qword_2A17474E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17474E8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA4C3E8(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17474D0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17474E8);
  }

  if (v1)
  {
    return &qword_2A17474D0;
  }

  else
  {
    return &qword_2A17474B0;
  }
}

char *sub_29AA4C3E8(uint64_t **a1)
{
  qword_2A17474D8 = 0;
  unk_2A17474E0 = 0;
  qword_2A17474D0 = 0;
  sub_29A1D7F98(&qword_2A17474D0, ((*algn_2A17474B8 - qword_2A17474B0) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17474D0, qword_2A17474D8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17474D0, qword_2A17474D8, qword_2A17474B0, *algn_2A17474B8, (*algn_2A17474B8 - qword_2A17474B0) >> 3);
}

void sub_29AA4C480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AppleCameraTokensType *pxrInternal__aapl__pxrReserved__::AppleCameraTokensType::AppleCameraTokensType(pxrInternal__aapl__pxrReserved__::AppleCameraTokensType *this)
{
  v118 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "center");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "convergenceDistance");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "cos");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "cubemap");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "cubemap:directions");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "cubemap:distribution");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "cubemap:flip");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "cubemap:planes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "cylindrical");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "distanceMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "doubleColumn");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "doubleRow");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "down");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "enableConvergence");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "enableSpatial");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "equiangularCubemap");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "fov");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "horizontalFOV");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "interpupillaryDistance");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "latlong");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "left");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "linear");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "off");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "parametricData:file");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "pivotDistance");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "planar");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "poleMerging:bottom:angle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "poleMerging:bottom:exponent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "poleMerging:bottom:mode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "poleMerging:top:angle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "poleMerging:top:exponent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "poleMerging:top:mode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "projectionMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "right");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 34, "sideBySide");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 35, "singleColumn");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 36, "singleFace");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 37, "singleRow");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 38, "spatialMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 39, "spherical");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "stacked_leftTop");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 41, "stacked_rightTop");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 42, "up");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 43, "verticalFOV");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 44, "x_neg");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 45, "x_pos");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 46, "y_neg");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 47, "y_pos");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "z_neg");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 49, "z_pos");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 50, "AppleCameraRenderingAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 51, "AppleFisheyeCamera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 52, "AppleImmersiveCamera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 53, "ApplePanoramicCamera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 54, "ApplePhysicalCameraAPI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 55, "AppleSpatialCameraAPI");
  v3 = *this;
  v62 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v63 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v64 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v65 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v66 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v67 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v68 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v69 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v70 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v71 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v72 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v73 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v74 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v75 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v76 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v77 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v78 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v79 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v80 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v81 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v82 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v83 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v84 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v85 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v86 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v87 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v88 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v89 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v90 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v91 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v92 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v93 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v94 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v95 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v96 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v97 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v98 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v99 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v100 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v101 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v102 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v103 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v104 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v105 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v106 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v107 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v108 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v109 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = *(this + 48);
  v110 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = *(this + 49);
  v111 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = *(this + 50);
  v112 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = *(this + 51);
  v113 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = *(this + 52);
  v114 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = *(this + 53);
  v115 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = *(this + 54);
  v116 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = *(this + 55);
  v117 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  sub_29A12EF7C(this + 56, &v62, &v118, 0x38uLL);
  for (i = 440; i != -8; i -= 8)
  {
    v60 = *(&v62 + i);
    if ((v60 & 7) != 0)
    {
      atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA4D348(_Unwind_Exception *a1)
{
  v3 = 440;
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
      v5 = v1[55];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[54];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[53];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[52];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[51];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[50];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[49];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[48];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[47];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[46];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[45];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[44];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[43];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[42];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[41];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[40];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[39];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[38];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[37];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[36];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[35];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[34];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[33];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[32];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[31];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[30];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[29];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[28];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[27];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[26];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[25];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[24];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[23];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[22];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[21];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[20];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[19];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[18];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[17];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[16];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[15];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[14];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v1[13];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v1[12];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v1[11];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v1[10];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v1[9];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v1[8];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v1[7];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v1[6];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v1[5];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v1[4];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v1[3];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v1[2];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v1[1];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

unint64_t *sub_29AA4D994()
{
  v1 = nullsub_1492;
}

void pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::~AppleAnnotationGroup(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTyped::~UsdTyped(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/annotationGroup.cpp";
  v9 = "Get";
  v10 = 35;
  v11 = "static AppleAnnotationGroup pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *a3 = &unk_2A20701B8;
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

void sub_29AA4DB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::Define@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17474F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17474F8))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A17474F0, "AppleAnnotationGroup");
    __cxa_atexit(sub_29A424A8C, &unk_2A17474F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17474F8);
  }

  v5 = sub_29B2ACEC8(a1);
  if (v6 & 1 | v5)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v9 = "appleAnnotation/annotationGroup.cpp";
  v10 = "Define";
  v11 = 48;
  v12 = "static AppleAnnotationGroup pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::Define(const UsdStagePtr &, const SdfPath &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Invalid stage");
  LODWORD(v9) = 1;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11 + 1);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v9);
  *a3 = &unk_2A20701B8;
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup *this)
{
  if ((atomic_load_explicit(&qword_2A1747508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747508))
  {
    __cxa_guard_release(&qword_2A1747508);
  }

  return &qword_2A1747500;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup *this)
{
  if ((atomic_load_explicit(&qword_2A1747518, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747518);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::_GetStaticTfType(v2);
      byte_2A1747510 = sub_29A7343F0(&qword_2A1747500, v3);
      __cxa_guard_release(&qword_2A1747518);
    }
  }

  return byte_2A1747510;
}

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroup *this)
{
  v1 = this;
  if ((atomic_load_explicit(byte_2A1747540, memory_order_acquire) & 1) == 0)
  {
    sub_29B2BC70C();
  }

  if ((atomic_load_explicit(&qword_2A1747538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747538))
  {
    pxrInternal__aapl__pxrReserved__::UsdTyped::GetSchemaAttributeNames(1);
    qword_2A1747520 = 0;
    *algn_2A1747528 = 0;
    qword_2A1747530 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  if (v1)
  {
    return &qword_2A1747520;
  }

  else
  {
    return &qword_2A1747548;
  }
}

unint64_t *sub_29AA4DFDC()
{
  v1 = nullsub_1493;
}

void pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::~AppleAnnotationGroupAPI(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this)
{
  pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::~UsdAPISchemaBase(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::Get@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  v4 = sub_29B2ACEC8(a1);
  if (v5 & 1 | v4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v8 = "appleAnnotation/annotationGroupAPI.cpp";
  v9 = "Get";
  v10 = 34;
  v11 = "static AppleAnnotationGroupAPI pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::Get(const UsdStagePtr &, const SdfPath &)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Invalid stage");
  LODWORD(v8) = 1;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, &v8);
  *(a3 + 3) = 0;
  *a3 = &unk_2A2070210;
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

void sub_29AA4E1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AA4E20C(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747560, v4);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_CanApplySingleApplyAPI(a1, SchemaInfo, a2);
  }

  else
  {
    v11[0] = "usd/prim.h";
    v11[1] = "CanApplyAPI";
    v11[2] = 1010;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::CanApplyAPI(std::string *) const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI]";
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

pxrInternal__aapl__pxrReserved__::UsdSchemaBase *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::Apply@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3@<X8>)
{
  if (sub_29AA4E3E4(this))
  {
    result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a3, this);
    *(a3 + 3) = 0;
    *a3 = &unk_2A2070210;
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
    *a3 = &unk_2A2070210;
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

uint64_t sub_29AA4E3E4(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *a1)
{
  pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(&qword_2A1747560, v2);
  if (SchemaInfo)
  {

    return pxrInternal__aapl__pxrReserved__::UsdPrim::_ApplySingleApplyAPI(a1, SchemaInfo);
  }

  else
  {
    v9[0] = "usd/prim.h";
    v9[1] = "ApplyAPI";
    v9[2] = 1133;
    v9[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdPrim::ApplyAPI() const [SchemaType = pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI]";
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::_GetStaticTfType(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747568))
  {
    __cxa_guard_release(&qword_2A1747568);
  }

  return &qword_2A1747560;
}

uint64_t pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::_IsTypedSchema(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this)
{
  if ((atomic_load_explicit(&qword_2A1747578, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1747578);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::_GetStaticTfType(v2);
      byte_2A1747570 = sub_29A7343F0(&qword_2A1747560, v3);
      __cxa_guard_release(&qword_2A1747578);
    }
  }

  return byte_2A1747570;
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetAuthorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, v3);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateAuthorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, v8, (v9 + 80), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetEditorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateEditorAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 56), (v9 + 80), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetCreatedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 32));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateCreatedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 32), (v9 + 80), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetModifiedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 104));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateModifiedAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 104), (v9 + 80), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetIdentifierAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateIdentifierAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 96), (v9 + 80), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetStartTimeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, &v6, (v3 + 152));
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateStartTimeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 152), (v9 + 72), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetEndTimeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateEndTimeAttr@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::UsdObject *a4@<X8>)
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

  return pxrInternal__aapl__pxrReserved__::UsdSchemaBase::_CreateAttr(this, (v8 + 64), (v9 + 72), 0, 1, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetRelatedObjectsRel@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, (v3 + 136), a2);
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

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::CreateRelatedObjectsRel@<X0>(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdRelationship *a2@<X8>)
{
  sub_29A580660(&v6, this + 1, this + 4);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  if (!v3)
  {
    v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v6, (v3 + 136), 0, a2);
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

uint64_t *pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI::GetSchemaAttributeNames(pxrInternal__aapl__pxrReserved__::AppleAnnotationGroupAPI *this)
{
  v1 = this;
  v27 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747598))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v3)
    {
      v3 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v4 = *v3;
    v20 = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v5)
    {
      v5 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v6 = *(v5 + 7);
    v21 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v7)
    {
      v7 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v8 = *(v7 + 4);
    v22 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v9)
    {
      v9 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v10 = *(v9 + 13);
    v23 = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v11)
    {
      v11 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v12 = *(v11 + 12);
    v24 = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v13)
    {
      v13 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v14 = *(v13 + 19);
    v25 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    if (!v15)
    {
      v15 = sub_29AA4F624(&pxrInternal__aapl__pxrReserved__::AppleAnnotationTokens);
    }

    v16 = *(v15 + 8);
    v26 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1747580 = 0;
    *algn_2A1747588 = 0;
    qword_2A1747590 = 0;
    sub_29A12EF7C(&qword_2A1747580, &v20, &v27, 7uLL);
    for (i = 48; i != -8; i -= 8)
    {
      v18 = *(&v20 + i);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1747580, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747598);
  }

  if ((atomic_load_explicit(&qword_2A17475B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17475B8))
  {
    SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::GetSchemaAttributeNames(1);
    sub_29AA4F568(SchemaAttributeNames);
    __cxa_atexit(sub_29A3C73E0, &qword_2A17475A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17475B8);
  }

  if (v1)
  {
    return &qword_2A17475A0;
  }

  else
  {
    return &qword_2A1747580;
  }
}

char *sub_29AA4F568(uint64_t **a1)
{
  qword_2A17475A8 = 0;
  unk_2A17475B0 = 0;
  qword_2A17475A0 = 0;
  sub_29A1D7F98(&qword_2A17475A0, ((*algn_2A1747588 - qword_2A1747580) >> 3) + a1[1] - *a1);
  sub_29A372808(&qword_2A17475A0, qword_2A17475A8, *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(&qword_2A17475A0, qword_2A17475A8, qword_2A1747580, *algn_2A1747588, (*algn_2A1747588 - qword_2A1747580) >> 3);
}

void sub_29AA4F600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType *sub_29AA4F624(atomic_ullong *a1)
{
  result = sub_29AA4F66C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29AA4F6B0(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType *sub_29AA4F66C()
{
  v0 = operator new(0x150uLL);
  pxrInternal__aapl__pxrReserved__::AppleAnnotationTokensType::AppleAnnotationTokensType(v0);
  return v0;
}

uint64_t sub_29AA4F6B0(uint64_t a1)
{
  v41 = (a1 + 312);
  sub_29A124AB0(&v41);
  v2 = *(a1 + 304);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 296);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 288);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 280);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 272);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 264);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 256);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 248);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 240);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 232);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 224);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 216);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 208);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 200);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 192);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 184);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 176);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 168);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 160);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 152);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 144);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 136);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 128);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 120);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 112);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 104);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 96);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 88);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 80);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 72);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 64);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 56);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 48);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 40);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 32);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 24);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 16);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 8);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}