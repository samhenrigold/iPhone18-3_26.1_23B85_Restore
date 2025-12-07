pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *sub_29ACDF30C(atomic_ullong *a1)
{
  result = sub_29ACDF354();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::~HdSubdivisionTagsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *sub_29ACDF354()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::HdSubdivisionTagsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ACDF398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20780D8, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::~HdSystemMessageTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::HdSystemMessageTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "asyncAllow");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "asyncPoll");
  v3 = (this + 2);
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACDF5A4(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::~HdSystemSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::HdSystemSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "system");
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
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromPath@<X0>(atomic_uint **a1@<X2>, uint64_t *result@<X0>, _DWORD *a3@<X1>, int *a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v9 = result;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v10)
    {
      v10 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v18, v10, a1);
    sub_29A1E21F4(&v16, a3);
    sub_29A1E2240(&v17, a3 + 1);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v16))
    {
      v11 = sub_29AC1199C(v9);
      (*(*v11 + 16))(&v13);
      pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(a5, v18, &v14);
      if (!*a5)
      {
        v12 = a5[1];
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (v15)
        {
          sub_29A014BEC(v15);
        }

        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v13, &v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      if (a4)
      {
        sub_29A2258F0(a4, &v16);
        sub_29A225948(a4 + 1, &v17);
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
      *a5 = 0;
      a5[1] = 0;
    }

    return sub_29ABC3488(v18);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
  }

  return result;
}

void sub_29ACDF9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSystemSchema::Compose@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v7 = result;
    v21 = 0x400000000;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    sub_29A1E21F4(&v16, a2);
    sub_29A1E2240(&v17, a2 + 1);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v16))
    {
      v8 = sub_29AC1199C(v7);
      (*(*v8 + 16))(&v14);
      pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromParent(&v14 + 1, &v11);
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v13, &v11);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v13)
      {
        sub_29ACE0084(v20, &v13);
        sub_29A2258F0(&v18, &v16);
        sub_29A225948(&v19, &v17);
      }

      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v14, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    sub_29A1DE3A4(&v16);
    v9 = v21;
    if (v21)
    {
      if (a3)
      {
        sub_29A2258F0(a3, &v18);
        sub_29A225948(a3 + 1, &v19);
        v9 = v21;
      }

      *&v13 = v9;
      v10 = v20;
      if (HIDWORD(v21) >= 5)
      {
        v10 = v20[0];
      }

      v11 = v10;
      sub_29AC4DFFC(&v13, &v11, &v14);
      *a4 = v14;
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    sub_29A1DE3A4(&v18);
    return sub_29ACDFFE8(v20);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  return result;
}

void sub_29ACDFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29ACDFFE8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens))
    {
      sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchema::ComposeAsPrimDataSource(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSystemSchema::Compose(a1, a2, a3, &v11);
  v5 = v11;
  if (v11)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v6)
    {
      v6 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    v7 = v12;
    v8 = v11;
    v9 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v6, &v8, &v10);
    *a4 = v10;
    v10 = 0uLL;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v12;
    if (v12)
    {
LABEL_9:
      sub_29A014BEC(v7);
    }
  }

  if (!v5)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_29ACDFED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSystemSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  if (!result)
  {
    return sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSystemSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BB90))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BB58, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BB58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BB90);
  }

  return &unk_2A174BB58;
}

uint64_t sub_29ACDFFE8(uint64_t a1)
{
  sub_29ACE0028(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29ACE0028(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 17) >= 5u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = (v1 + 1);
    do
    {
      if (*v4)
      {
        sub_29A014BEC(*v4);
      }

      v4 += 2;
      v3 -= 16;
    }

    while (v3);
  }
}

void sub_29ACE0084(uint64_t result, __int128 *a2)
{
  v5 = *(result + 64);
  v4 = *(result + 68);
  if (v5 == v4)
  {
    sub_29ACE0104(result, v5 + (v5 >> 1) + 1);
    v4 = *(result + 68);
  }

  v6 = result;
  if (v4 >= 5)
  {
    v6 = *result;
  }

  v7 = *(result + 64);
  v8 = *a2;
  *(v6 + 16 * v7) = *a2;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    LODWORD(v7) = *(result + 64);
  }

  *(result + 64) = v7 + 1;
}

void sub_29ACE0104(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 68) >= 5u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = v4;
    do
    {
      *v9++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  sub_29ACE0028(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 68) = v2;
}

pxrInternal__aapl__pxrReserved__::HdTask *pxrInternal__aapl__pxrReserved__::HdTask::HdTask(pxrInternal__aapl__pxrReserved__::HdTask *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2085448;
  v4 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v4, a2 + 1);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(pxrInternal__aapl__pxrReserved__::HdTask *this)
{
  *this = &unk_2A2085448;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTask::GetRenderTags(pxrInternal__aapl__pxrReserved__::HdTask *this)
{
  if ((atomic_load_explicit(byte_2A174BB98, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C77B8();
  }

  return &qword_2A174BBA0;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::~HdTetMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
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

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::HdTetMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "tetMesh");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "topology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "doubleSided");
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
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
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

void sub_29ACE04B8(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopology(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v5 = *(v4 + 1);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = &v22;
  v24 = 0;
  v25[0] = 0;
  v6 = &v24;
  v22 = 0u;
  v23 = 0u;
  if (*a1)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8 + 1);
    v10 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v22 + 1);
    *&v22 = v10;
    *(&v22 + 1) = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*a2)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 2);
    ++v12;
    v15 = *a2;
    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v5 + 1);
    *v5 = v15;
    *(v5 + 1) = v14;
    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12, &v24, &v22, &v21);
  *a3 = v21;
  for (i = 24; i != -8; i -= 16)
  {
    v18 = *(&v22 + i);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  for (j = 1; j != -1; --j)
  {
    v20 = v25[j - 1];
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACE088C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = 24;
  while (1)
  {
    v18 = *(&a11 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      v19 = 8;
      while (1)
      {
        v20 = *(&a16 + v19);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 -= 8;
        if (v19 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::Builder::SetTopology(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::Builder::SetDoubleSided(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens))
    {
      sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!result)
  {
    return sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BBF0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BBB8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BBB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BBF0);
  }

  return &unk_2A174BBB8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopologyLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BC30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BC30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A174BBF8, &unk_2A174BBB8, v3 + 1);
      __cxa_atexit(sub_29ABC33B4, qword_2A174BBF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BC30);
    }
  }

  return qword_2A174BBF8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSidedLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BC70, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BC70);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A174BC38, &unk_2A174BBB8, v3 + 2);
      __cxa_atexit(sub_29ABC33B4, qword_2A174BC38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BC70);
    }
  }

  return qword_2A174BC38;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *sub_29ACE0D0C(atomic_ullong *a1)
{
  result = sub_29ACE0D54();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::~HdTetMeshSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType *sub_29ACE0D54()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens_StaticTokenType::HdTetMeshSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::~HdTetMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::HdTetMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "topology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "tetVertexIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "surfaceFaceVertexIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "orientation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "leftHanded");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "rightHanded");
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE1054(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndices(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ACE11DC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACE11DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ACE1D8C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndices(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ACE1308(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACE1308(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ACE1E1C(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetOrientation(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v10)
    {
      v10 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10 + 1);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v15)
    {
      v15 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 2);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v19)
    {
      v19 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 3);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACE1660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetTetVertexIndices(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetSurfaceFaceVertexIndices(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::Builder::SetOrientation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens))
    {
      sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!result)
  {
    return sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BCB0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BCB0);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v4)
      {
        v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A174BC78, DefaultLocator, v4);
      __cxa_atexit(sub_29ABC33B4, qword_2A174BC78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BCB0);
    }
  }

  return qword_2A174BC78;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndicesLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BCF0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BCF0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A174BCB8, qword_2A174BC78, v3 + 1);
      __cxa_atexit(sub_29ABC33B4, qword_2A174BCB8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BCF0);
    }
  }

  return qword_2A174BCB8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndicesLocator(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BD30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BD30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      if (!v3)
      {
        v3 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A174BCF8, qword_2A174BC78, v3 + 2);
      __cxa_atexit(sub_29ABC33B4, qword_2A174BCF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD30);
    }
  }

  return qword_2A174BCF8;
}

double pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::BuildOrientationDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v4 + 4) ^ *this) > 7)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    if (!v6)
    {
      v6 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
    }

    if ((*(v6 + 5) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v10);
      result = *&v10;
      *a2 = v10;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A174BD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD60))
    {
      sub_29ABCCFA4(this, &qword_2A174BD50);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174BD50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD60);
    }

    v5 = &qword_2A174BD50;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174BD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD48))
    {
      sub_29ABCCFA4(this, &qword_2A174BD38);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174BD38, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BD48);
    }

    v5 = &qword_2A174BD38;
  }

  v8 = *v5;
  v7 = v5[1];
  *a2 = v8;
  *(a2 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *sub_29ACE1D00(atomic_ullong *a1)
{
  result = sub_29ACE1D48();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::~HdTetMeshTopologySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *sub_29ACE1D48()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType::HdTetMeshTopologySchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ACE1D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207EB98, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_29ACE1E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207EC78, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__ *this@<X0>, float a3@<S0>, std::type_info *a4@<X1>)
{
  v178 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(this, a4);
  v153 = Type;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(&v170);
  if (*&v170.f64[0] == Type)
  {
    *&v170.f64[0] = "hd/timeSampleArray.cpp";
    *&v170.f64[1] = "HdResampleNeighbors";
    *&v171.f64[0] = 89;
    *&v171.f64[1] = "VtValue pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(float, const VtValue &, const VtValue &)";
    LOBYTE(v172) = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, &__p);
    if (v163.f64[0] >= 0.0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = *&__p.f64[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v170, 1, "Unknown sample value type '%s'", p_p);
    if (SHIBYTE(v163.f64[0]) < 0)
    {
      operator delete(*&__p.f64[0]);
    }

    sub_29A186EF4(a1, this);
  }

  else
  {
    if (Type == pxrInternal__aapl__pxrReserved__::VtValue::GetType(a4, v9))
    {
      a1[1] = 0;
      if ((atomic_load_explicit(&qword_2A174BD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD70))
      {
        qword_2A174BD68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94C0], v137);
        __cxa_guard_release(&qword_2A174BD70);
      }

      if (v153 == qword_2A174BD68)
      {
        v16 = sub_29A8D5794(this);
        v17 = (1.0 - a3) * *v16 + a3 * *sub_29A8D5794(a4);
        *&v170.f64[1] = &unk_2A2044C63;
        *v170.f64 = v17;
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A174BD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD80))
        {
          qword_2A174BD78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042500, v138);
          __cxa_guard_release(&qword_2A174BD80);
        }

        if (v153 == qword_2A174BD78)
        {
          v18 = sub_29A18ED70(this);
          v19 = sub_29A18ED70(a4);
          sub_29A18E048(&v170, *v18);
          if (*&v170.f64[0])
          {
            v20 = 0;
            v21 = a3;
            do
            {
              v22 = *(v18[4] + 4 * v20);
              v23 = *(v19[4] + v20);
              sub_29A18E624(&v170);
              v24 = (1.0 - v21) * v22 + v21 * v23;
              *(v172 + 4 * v20++) = v24;
            }

            while (v20 < *&v170.f64[0]);
          }

          *&__p.f64[1] = &off_2A2042F70;
          v25 = operator new(0x30uLL);
          v26 = v171;
          *v25 = v170;
          *(v25 + 1) = v26;
          v27 = v172;
          *(v25 + 4) = v172;
          if (v27)
          {
            v28 = (v27 - 16);
            if (*(v25 + 3))
            {
              v28 = *(v25 + 3);
            }

            atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
          }

          atomic_store(0, v25 + 10);
          *&__p.f64[0] = v25;
          atomic_fetch_add_explicit(v25 + 10, 1u, memory_order_relaxed);
          sub_29A18606C(a1, &__p);
          sub_29A186B14(&__p);
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }

        if ((atomic_load_explicit(&qword_2A174BD90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BD90))
        {
          qword_2A174BD88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94B8], v139);
          __cxa_guard_release(&qword_2A174BD90);
        }

        if (v153 == qword_2A174BD88)
        {
          v29 = sub_29A337248(this);
          v30 = (1.0 - a3) * *v29 + *sub_29A337248(a4) * a3;
          *&v170.f64[1] = &unk_2A2044D1B;
          v170.f64[0] = v30;
        }

        else
        {
          if ((atomic_load_explicit(&qword_2A174BDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDA0))
          {
            qword_2A174BD98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20424E8, v140);
            __cxa_guard_release(&qword_2A174BDA0);
          }

          if (v153 == qword_2A174BD98)
          {
            v31 = sub_29A190618(this);
            v32 = sub_29A190618(a4);
            sub_29A18FC40(&v170, *v31);
            if (*&v170.f64[0])
            {
              v33 = 0;
              v34 = a3;
              do
              {
                v35 = *(v31[4] + 8 * v33);
                v36 = *(v32[4] + v33);
                sub_29A190088(&v170);
                *(v172 + 8 * v33++) = (1.0 - v34) * v35 + v36 * v34;
              }

              while (v33 < *&v170.f64[0]);
            }

            *&__p.f64[1] = &off_2A20430E0;
            v37 = operator new(0x30uLL);
            v38 = v171;
            *v37 = v170;
            *(v37 + 1) = v38;
            v39 = v172;
            *(v37 + 4) = v172;
            if (v39)
            {
              v40 = (v39 - 16);
              if (*(v37 + 3))
              {
                v40 = *(v37 + 3);
              }

              atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
            }

            atomic_store(0, v37 + 10);
            *&__p.f64[0] = v37;
            atomic_fetch_add_explicit(v37 + 10, 1u, memory_order_relaxed);
            sub_29A18606C(a1, &__p);
            sub_29A186B14(&__p);
            pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
          }

          if ((atomic_load_explicit(&qword_2A174BDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDB0))
          {
            qword_2A174BDA8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040768, v141);
            __cxa_guard_release(&qword_2A174BDB0);
          }

          if (v153 == qword_2A174BDA8)
          {
            v41 = sub_29ACE30B4(this);
            v42 = (1.0 - a3) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*v41] + a3 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*sub_29ACE30B4(a4)];
            if (v42 == 0.0)
            {
              v43 = HIWORD(LODWORD(v42));
            }

            else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v42) >> 23])
            {
              v43 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v42) >> 23] + (((LODWORD(v42) & 0x7FFFFF) + ((LODWORD(v42) >> 13) & 1) + 4095) >> 13);
            }

            else
            {
              LOWORD(v43) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v42));
            }

            *&v170.f64[1] = &off_2A2044BA8 + 3;
            LOWORD(v170.f64[0]) = v43;
          }

          else
          {
            if ((atomic_load_explicit(&qword_2A174BDC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDC0))
            {
              qword_2A174BDB8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042518, v142);
              __cxa_guard_release(&qword_2A174BDC0);
            }

            if (v153 == qword_2A174BDB8)
            {
              v44 = sub_29A18DFB4(this);
              v45 = sub_29A18DFB4(a4);
              sub_29ACE319C(v44, v45, &v170, a3);
              *&__p.f64[1] = &off_2A2043028;
              v46 = operator new(0x30uLL);
              v47 = v171;
              *v46 = v170;
              *(v46 + 1) = v47;
              v48 = v172;
              *(v46 + 4) = v172;
              if (v48)
              {
                v49 = (v48 - 16);
                if (*(v46 + 3))
                {
                  v49 = *(v46 + 3);
                }

                atomic_fetch_add_explicit(v49, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v46 + 10);
              *&__p.f64[0] = v46;
              atomic_fetch_add_explicit(v46 + 10, 1u, memory_order_relaxed);
              sub_29A18606C(a1, &__p);
              sub_29A186B14(&__p);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
            }

            if ((atomic_load_explicit(&qword_2A174BDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDD0))
            {
              qword_2A174BDC8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20407C8, v143);
              __cxa_guard_release(&qword_2A174BDD0);
            }

            if (v153 != qword_2A174BDC8)
            {
              if ((atomic_load_explicit(&qword_2A174BDE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDE0))
              {
                qword_2A174BDD8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042290, v144);
                __cxa_guard_release(&qword_2A174BDE0);
              }

              if (v153 == qword_2A174BDD8)
              {
                v59 = sub_29ACE3358(this);
                v60 = sub_29ACE3358(a4);
                sub_29ACE33EC(v59, v60, v61, v62, &v170, a3);
                *&__p.f64[1] = &off_2A20483F0;
                v63 = operator new(0x30uLL);
                v64 = v171;
                *v63 = v170;
                *(v63 + 1) = v64;
                v65 = v172;
                *(v63 + 4) = v172;
                if (v65)
                {
                  v66 = (v65 - 16);
                  if (*(v63 + 3))
                  {
                    v66 = *(v63 + 3);
                  }

                  atomic_fetch_add_explicit(v66, 1uLL, memory_order_relaxed);
                }

                atomic_store(0, v63 + 10);
                *&__p.f64[0] = v63;
                atomic_fetch_add_explicit(v63 + 10, 1u, memory_order_relaxed);
                sub_29A18606C(a1, &__p);
                sub_29A186B14(&__p);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
              }

              if ((atomic_load_explicit(&qword_2A174BDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BDF0))
              {
                qword_2A174BDE8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20407F8, v145);
                __cxa_guard_release(&qword_2A174BDF0);
              }

              if (v153 == qword_2A174BDE8)
              {
                v67 = sub_29ACE359C(this);
                v68 = sub_29ACE359C(a4);
                v69 = a3;
                v170 = *v67;
                v70 = *(v67 + 1);
                v71 = *(v67 + 2);
                v72 = *(v67 + 3);
                *&v174 = v67[8];
                v172 = v71;
                v173 = v72;
                v171 = v70;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v170, 1.0 - v69);
                v163 = *(v73 + 16);
                v164 = *(v73 + 32);
                v165 = *(v73 + 48);
                *&v166 = *(v73 + 64);
                __p = *v73;
                v170 = *v68;
                v74 = *(v68 + 1);
                v75 = *(v68 + 2);
                v76 = *(v68 + 3);
                *&v174 = v68[8];
                v172 = v75;
                v173 = v76;
                v171 = v74;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v170, v69);
                *v154 = *v77;
                v78 = *(v77 + 16);
                v79 = *(v77 + 32);
                v80 = *(v77 + 48);
                *&v158 = *(v77 + 64);
                v156 = v79;
                v157 = v80;
                v155 = v78;
                v172 = v164;
                v173 = v165;
                *&v174 = v166;
                v170 = __p;
                v171 = v163;
                pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(v170.f64, v154);
                *&__p.f64[1] = &off_2A20484A8 + 2;
                v81 = operator new(0x50uLL);
                v82 = v173;
                *(v81 + 2) = v172;
                *(v81 + 3) = v82;
                *(v81 + 8) = v174;
                v83 = v171;
                *v81 = v170;
                *(v81 + 1) = v83;
                v84 = (v81 + 72);
              }

              else
              {
                if ((atomic_load_explicit(&qword_2A174BE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE00))
                {
                  qword_2A174BDF8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042278, v146);
                  __cxa_guard_release(&qword_2A174BE00);
                }

                if (v153 == qword_2A174BDF8)
                {
                  v86 = sub_29ACE3630(this);
                  v87 = sub_29ACE3630(a4);
                  sub_29ACE36C4(v86, v87, v88, v89, v90, v91, v92, v93, &v170, a3);
                  *&__p.f64[1] = &off_2A2048560;
                  v94 = operator new(0x30uLL);
                  v95 = v171;
                  *v94 = v170;
                  *(v94 + 1) = v95;
                  v96 = v172;
                  *(v94 + 4) = v172;
                  if (v96)
                  {
                    v97 = (v96 - 16);
                    if (*(v94 + 3))
                    {
                      v97 = *(v94 + 3);
                    }

                    atomic_fetch_add_explicit(v97, 1uLL, memory_order_relaxed);
                  }

                  atomic_store(0, v94 + 10);
                  *&__p.f64[0] = v94;
                  atomic_fetch_add_explicit(v94 + 10, 1u, memory_order_relaxed);
                  sub_29A18606C(a1, &__p);
                  sub_29A186B14(&__p);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
                }

                if ((atomic_load_explicit(&qword_2A174BE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE10))
                {
                  qword_2A174BE08 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040818, v147);
                  __cxa_guard_release(&qword_2A174BE10);
                }

                if (v153 != qword_2A174BE08)
                {
                  if ((atomic_load_explicit(&qword_2A174BE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE20))
                  {
                    qword_2A174BE18 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042260, v148);
                    __cxa_guard_release(&qword_2A174BE20);
                  }

                  if (v153 == qword_2A174BE18)
                  {
                    v125 = sub_29A1988F4(this);
                    v126 = sub_29A1988F4(a4);
                    sub_29ACE561C(v125, v126, v127, v128, v129, v130, v131, v132, &v170, a3);
                    *&__p.f64[1] = &off_2A2043810;
                    v133 = operator new(0x30uLL);
                    v134 = v171;
                    *v133 = v170;
                    *(v133 + 1) = v134;
                    v135 = v172;
                    *(v133 + 4) = v172;
                    if (v135)
                    {
                      v136 = (v135 - 16);
                      if (*(v133 + 3))
                      {
                        v136 = *(v133 + 3);
                      }

                      atomic_fetch_add_explicit(v136, 1uLL, memory_order_relaxed);
                    }

                    atomic_store(0, v133 + 10);
                    *&__p.f64[0] = v133;
                    atomic_fetch_add_explicit(v133 + 10, 1u, memory_order_relaxed);
                    sub_29A18606C(a1, &__p);
                    sub_29A186B14(&__p);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
                  }

                  v10.n128_f32[0] = a3;
                  sub_29ACE3934(this, a4, &v153, a1, v10);
                  return;
                }

                v98 = sub_29AB14D3C(this);
                v99 = sub_29AB14D3C(a4);
                v100 = a3;
                v101 = *v98;
                v102 = *(v98 + 1);
                v103 = *(v98 + 3);
                v172 = *(v98 + 2);
                v173 = v103;
                v170 = v101;
                v171 = v102;
                v104 = *(v98 + 4);
                v105 = *(v98 + 5);
                v106 = *(v98 + 7);
                v176 = *(v98 + 6);
                v177 = v106;
                v174 = v104;
                v175 = v105;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v170, 1.0 - v100);
                v166 = *(v107 + 64);
                v167 = *(v107 + 80);
                v168 = *(v107 + 96);
                v169 = *(v107 + 112);
                __p = *v107;
                v163 = *(v107 + 16);
                v164 = *(v107 + 32);
                v165 = *(v107 + 48);
                v108 = *v99;
                v109 = *(v99 + 1);
                v110 = *(v99 + 3);
                v172 = *(v99 + 2);
                v173 = v110;
                v170 = v108;
                v171 = v109;
                v111 = *(v99 + 4);
                v112 = *(v99 + 5);
                v113 = *(v99 + 7);
                v176 = *(v99 + 6);
                v177 = v113;
                v174 = v111;
                v175 = v112;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v170, v100);
                v115 = *v114;
                v116 = v114[1];
                v117 = v114[3];
                v156 = v114[2];
                v157 = v117;
                *v154 = v115;
                v155 = v116;
                v118 = v114[4];
                v119 = v114[5];
                v120 = v114[7];
                v160 = v114[6];
                v161 = v120;
                v158 = v118;
                v159 = v119;
                v174 = v166;
                v175 = v167;
                v176 = v168;
                v177 = v169;
                v170 = __p;
                v171 = v163;
                v172 = v164;
                v173 = v165;
                pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(v170.f64, v154);
                *&__p.f64[1] = &off_2A2042BD8 + 2;
                v81 = operator new(0x88uLL);
                v121 = v175;
                *(v81 + 4) = v174;
                *(v81 + 5) = v121;
                v122 = v177;
                *(v81 + 6) = v176;
                *(v81 + 7) = v122;
                v123 = v171;
                *v81 = v170;
                *(v81 + 1) = v123;
                v124 = v173;
                *(v81 + 2) = v172;
                *(v81 + 3) = v124;
                v84 = (v81 + 128);
              }

              atomic_store(0, v84);
              *&__p.f64[0] = v81;
              atomic_fetch_add_explicit(v84, 1u, memory_order_relaxed);
              sub_29A18606C(a1, &__p);
              v85 = &__p;
LABEL_81:
              sub_29A186B14(v85);
              return;
            }

            v50 = sub_29ACE32C4(this);
            v51 = sub_29ACE32C4(a4);
            v52 = a3;
            v53 = *(v50 + 1);
            v170 = *v50;
            v171 = v53;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v170, 1.0 - v52);
            v149 = v54[1];
            v151 = *v54;
            v55 = *(v51 + 1);
            v170 = *v51;
            v171 = v55;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v170, v52);
            v57 = v56[1];
            __p = *v56;
            v163 = v57;
            v170 = v151;
            v171 = v149;
            pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v170.f64, __p.f64);
            v150 = v170;
            v152 = v171;
            *&v170.f64[1] = &off_2A2048338 + 2;
            v58 = operator new(0x28uLL);
            *v58 = v150;
            *(v58 + 1) = v152;
            atomic_store(0, v58 + 8);
            *&v170.f64[0] = v58;
            atomic_fetch_add_explicit(v58 + 8, 1u, memory_order_relaxed);
          }
        }
      }

      sub_29A18606C(a1, &v170);
      v85 = &v170;
      goto LABEL_81;
    }

    *&v170.f64[0] = "hd/timeSampleArray.cpp";
    *&v170.f64[1] = "HdResampleNeighbors";
    *&v171.f64[0] = 96;
    *&v171.f64[1] = "VtValue pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(float, const VtValue &, const VtValue &)";
    LOBYTE(v172) = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(this, &__p);
    v12 = SHIBYTE(v163.f64[0]);
    v13 = *&__p.f64[0];
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a4, v154);
    v14 = &__p;
    if (v12 < 0)
    {
      v14 = v13;
    }

    if ((SBYTE7(v155) & 0x80u) == 0)
    {
      v15 = v154;
    }

    else
    {
      v15 = v154[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v170, 1, "Mismatched sample value types '%s' and '%s'", v14, v15);
    if (SBYTE7(v155) < 0)
    {
      operator delete(v154[0]);
    }

    if (SHIBYTE(v163.f64[0]) < 0)
    {
      operator delete(*&__p.f64[0]);
    }

    sub_29A186EF4(a1, this);
  }
}

void sub_29ACE2DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_guard_abort(&qword_2A174BE20);
  sub_29A186B14(v41);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdGetContributingSampleTimesForInterval(_BOOL8 result, int *a2, char **a3, float a4, float a5)
{
  if (!result)
  {
    return result;
  }

  v9 = 0;
  v10 = 0;
  v11 = result - 1;
  v12 = a2 - 1;
  do
  {
    v13 = *(v12 + 1);
    v16 = v13;
    if (v10)
    {
      if (!a3)
      {
        return 1;
      }

      goto LABEL_5;
    }

    if (v9 && v13 > a4)
    {
      if (a3)
      {
        sub_29A0C2184(a3, v12);
        v10 = 1;
        if (v16 >= a4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v13 >= a4)
        {
          return 1;
        }

        v10 = 1;
      }
    }

    else
    {
      v10 = v13 >= a4;
      if (v13 >= a4 && a3 != 0)
      {
        v10 = 0;
LABEL_5:
        ++v10;
        sub_29A0C2184(a3, &v16);
      }
    }

    v14 = v16 >= a5 || v11 == v9++;
    ++v12;
  }

  while (!v14);
  if (v10)
  {
    return v10 != 1;
  }

  if (a3)
  {
    sub_29A0C2184(a3, a2);
  }

  return 0;
}

void **sub_29ACE30B4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F9C34(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3148, &stru_2A2040768);
  }
}

_WORD *sub_29ACE3148@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29ACE3190;
  a1[2] = &stru_2A2040768;
  return result;
}

void sub_29ACE3190(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29ACE319C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A18EE04(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = (1.0 - v10) * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a1[4] + 2 * v9)] + v10 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(*(a2 + 32) + 2 * v9)];
      if (v11 == 0.0)
      {
        v12 = HIWORD(LODWORD(v11));
      }

      else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
      {
        v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
      }

      result = sub_29A18F540(a3);
      *(a3[4] + 2 * v9++) = v12;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE32C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FB9E8(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::Invoke, &stru_2A20407C8);
  }
}

void **sub_29ACE3358(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FBB48(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3500, &stru_2A2042290);
  }
}

uint64_t sub_29ACE33EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>, float a6@<S0>)
{
  result = sub_29A220F88(a5, *a1, a3, a4);
  if (*a5)
  {
    v11 = 0;
    v12 = a6;
    do
    {
      v13 = a1[4] + 32 * v11;
      v14 = *(a2 + 32);
      v15 = *(v13 + 16);
      v27 = *v13;
      v28 = v15;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v27, 1.0 - v12);
      v16 = (v14 + 32 * v11);
      v22 = v17[1];
      v24 = *v17;
      v18 = v16[1];
      v27 = *v16;
      v28 = v18;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v27, v12);
      v20 = v19[1];
      v26[0] = *v19;
      v26[1] = v20;
      v27 = v24;
      v28 = v22;
      pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v27.f64, v26);
      v23 = v28;
      v25 = v27;
      result = sub_29A2216E8(a5);
      v21 = (a5[4] + 32 * v11);
      *v21 = v25;
      v21[1] = v23;
      ++v11;
    }

    while (v11 < *a5);
  }

  return result;
}

double sub_29ACE3500@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29ACE3550;
  a1[2] = &stru_2A2042290;
  return result;
}

void sub_29ACE3550(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }
}

void **sub_29ACE359C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FBEFC(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::Invoke, &stru_2A20407F8);
  }
}

void **sub_29ACE3630(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC06C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29ACE3898, &stru_2A2042278);
  }
}

uint64_t sub_29ACE36C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, float a10@<S0>)
{
  v54 = *MEMORY[0x29EDCA608];
  result = sub_29A221F2C(a9, *a1, a3, a4, a5, a6, a7, a8);
  if (*a9)
  {
    v15 = 0;
    v16 = 0;
    v17 = a10;
    do
    {
      v18 = a1[4] + v15;
      v19 = *(a2 + 32);
      v44 = *v18;
      v20 = *(v18 + 16);
      v21 = *(v18 + 32);
      v22 = *(v18 + 48);
      v48 = *(v18 + 64);
      v46 = v21;
      v47 = v22;
      v45 = v20;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v44, 1.0 - v17);
      v24 = v23[3];
      v51 = v23[2];
      v52 = v24;
      v53 = *(v23 + 8);
      v25 = v23[1];
      v49 = *v23;
      v50 = v25;
      v44 = *(v19 + v15);
      v26 = *(v19 + v15 + 16);
      v27 = *(v19 + v15 + 32);
      v28 = *(v19 + v15 + 48);
      v48 = *(v19 + v15 + 64);
      v46 = v27;
      v47 = v28;
      v45 = v26;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v44, v17);
      v42[0] = *v29;
      v30 = *(v29 + 16);
      v31 = *(v29 + 32);
      v32 = *(v29 + 48);
      v43 = *(v29 + 64);
      v42[2] = v31;
      v42[3] = v32;
      v42[1] = v30;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v37 = v49;
      v38 = v50;
      pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(&v37, v42);
      result = sub_29A222868(a9);
      v33 = a9[4] + v15;
      v34 = v38;
      v35 = v39;
      v36 = v40;
      *(v33 + 64) = v41;
      *(v33 + 32) = v35;
      *(v33 + 48) = v36;
      *v33 = v37;
      *(v33 + 16) = v34;
      ++v16;
      v15 += 72;
    }

    while (v16 < *a9);
  }

  return result;
}

double sub_29ACE3898@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29ACE38E8;
  a1[2] = &stru_2A2042278;
  return result;
}

void sub_29ACE38E8(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }
}

void sub_29ACE3934(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, void *a3, void *a4, __n128 a5)
{
  v226 = a5.n128_f32[0];
  v239 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174BE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE30))
  {
    qword_2A174BE28 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040948, v184);
    __cxa_guard_release(&qword_2A174BE30);
  }

  if (*a3 == qword_2A174BE28)
  {
    v10 = sub_29ACE5804(a1);
    v227 = vaddq_f64(vmulq_n_f64(*v10, 1.0 - v226), vmulq_n_f64(*sub_29ACE5804(a2), v226));
    *(&v234 + 1) = &off_2A20426D0 + 2;
    v11 = 24;
LABEL_56:
    v12 = operator new(v11);
    *v12 = v227;
LABEL_57:
    v13 = (v12 + 16);
LABEL_58:
    atomic_store(0, v13);
    *&v234 = v12;
    atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
LABEL_77:
    sub_29A18606C(a4, &v234);
    sub_29A186B14(&v234);
    return;
  }

  if ((atomic_load_explicit(&qword_2A174BE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE40))
  {
    qword_2A174BE38 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042200, v185);
    __cxa_guard_release(&qword_2A174BE40);
  }

  if (*a3 == qword_2A174BE38)
  {
    v14 = sub_29A192BB8(a1);
    v15 = sub_29A192BB8(a2);
    sub_29A1921FC(&v234, *v14);
    if (v234)
    {
      v16 = 0;
      v212 = 1.0 - v226;
      v216 = v226;
      do
      {
        v220 = *(v15[4] + v16);
        v228 = *(v14[4] + 16 * v16);
        sub_29A19255C(&v234);
        *(v236 + 16 * v16++) = vaddq_f64(vmulq_n_f64(v228, v212), vmulq_n_f64(v220, v216));
      }

      while (v16 < v234);
    }

    v238 = &off_2A2043308;
    v17 = operator new(0x30uLL);
    v18 = v235;
    *v17 = v234;
    *(v17 + 1) = v18;
    v19 = v236;
    *(v17 + 4) = v236;
    if (v19)
    {
      v20 = (v19 - 16);
      if (*(v17 + 3))
      {
        v20 = *(v17 + 3);
      }

      atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v17 + 10);
    v237 = v17;
    atomic_fetch_add_explicit(v17 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE50))
  {
    qword_2A174BE48 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040958, v186);
    __cxa_guard_release(&qword_2A174BE50);
  }

  if (*a3 == qword_2A174BE48)
  {
    v21 = sub_29ABC9830(a1);
    v22 = vadd_f32(vmul_n_f32(*sub_29ABC9830(a2), v226), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v21), 1.0 - v226)));
    *(&v234 + 1) = &off_2A2042618 + 3;
    *&v234 = v22;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE60))
  {
    qword_2A174BE58 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421B8, v187);
    __cxa_guard_release(&qword_2A174BE60);
  }

  if (*a3 == qword_2A174BE58)
  {
    v23 = sub_29A1915AC(a1);
    v24 = sub_29A1915AC(a2);
    sub_29A190B18(&v234, *v23);
    if (v234)
    {
      v25 = 0;
      do
      {
        v26 = *(v23[4] + 8 * v25);
        v27 = *(v24[4] + 8 * v25);
        sub_29A190F50(&v234);
        *(v236 + 8 * v25++) = vadd_f32(vmul_n_f32(v27, v226), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v26), 1.0 - v226)));
      }

      while (v25 < v234);
    }

    v238 = &off_2A2043198;
    v28 = operator new(0x30uLL);
    v29 = v235;
    *v28 = v234;
    *(v28 + 1) = v29;
    v30 = v236;
    *(v28 + 4) = v236;
    if (v30)
    {
      v31 = (v30 - 16);
      if (*(v28 + 3))
      {
        v31 = *(v28 + 3);
      }

      atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v28 + 10);
    v237 = v28;
    atomic_fetch_add_explicit(v28 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE70))
  {
    qword_2A174BE68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040968, v188);
    __cxa_guard_release(&qword_2A174BE70);
  }

  if (*a3 == qword_2A174BE68)
  {
    v32 = sub_29ACE5898(a1);
    v33 = sub_29ACE5898(a2);
    LODWORD(v234) = *v32;
    LODWORD(v32) = *sub_29A56E160(&v234, 1.0 - v226);
    LODWORD(v234) = *v33;
    LODWORD(v237) = *sub_29A56E160(&v234, v226);
    LODWORD(v234) = v32;
    v34 = *sub_29A56E070(&v234, &v237);
    *(&v234 + 1) = &off_2A2042560 + 3;
    LODWORD(v234) = v34;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE80))
  {
    qword_2A174BE78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042170, v189);
    __cxa_guard_release(&qword_2A174BE80);
  }

  if (*a3 == qword_2A174BE78)
  {
    v35 = sub_29A190A84(a1);
    v36 = sub_29A190A84(a2);
    sub_29ACE592C(v35, v36, &v234, v226);
    v238 = &off_2A2043250;
    v37 = operator new(0x30uLL);
    v38 = v235;
    *v37 = v234;
    *(v37 + 1) = v38;
    v39 = v236;
    *(v37 + 4) = v236;
    if (v39)
    {
      v40 = (v39 - 16);
      if (*(v37 + 3))
      {
        v40 = *(v37 + 3);
      }

      atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v37 + 10);
    v237 = v37;
    atomic_fetch_add_explicit(v37 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BE90))
  {
    qword_2A174BE88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040988, v190);
    __cxa_guard_release(&qword_2A174BE90);
  }

  if (*a3 == qword_2A174BE88)
  {
    v41 = sub_29ACE5A20(a1);
    v42 = sub_29ACE5A20(a2);
    v43 = 1.0 - v226;
    v44 = v43 * v41[1].f64[0] + v42[1].f64[0] * v226;
    *(&v234 + 1) = &off_2A20428F8 + 2;
    v229 = vaddq_f64(vmulq_n_f64(*v41, v43), vmulq_n_f64(*v42, v226));
    v12 = operator new(0x20uLL);
    *v12 = v229;
    *(v12 + 2) = v44;
    v13 = (v12 + 24);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEA0))
  {
    qword_2A174BE98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421E8, v191);
    __cxa_guard_release(&qword_2A174BEA0);
  }

  if (*a3 == qword_2A174BE98)
  {
    v45 = sub_29A1952C8(a1);
    v46 = sub_29A1952C8(a2);
    sub_29A1948F8(&v234, *v45, v47);
    if (v234)
    {
      v48 = 0;
      v49 = 0;
      v213 = 1.0 - v226;
      v217 = v226;
      do
      {
        v50 = (v45[4] + v48);
        v51 = (v46[4] + v48);
        v52 = v50[1].f64[0];
        v221 = *v51;
        v230 = *v50;
        v53 = v51[1].f64[0];
        sub_29A194CC8(&v234);
        v54 = (v236 + v48);
        *v54 = vaddq_f64(vmulq_n_f64(v230, v213), vmulq_n_f64(v221, v217));
        v54[1].f64[0] = v213 * v52 + v53 * v217;
        ++v49;
        v48 += 24;
      }

      while (v49 < v234);
    }

    v238 = &off_2A2043530;
    v55 = operator new(0x30uLL);
    v56 = v235;
    *v55 = v234;
    *(v55 + 1) = v56;
    v57 = v236;
    *(v55 + 4) = v236;
    if (v57)
    {
      v58 = (v57 - 16);
      if (*(v55 + 3))
      {
        v58 = *(v55 + 3);
      }

      atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v55 + 10);
    v237 = v55;
    atomic_fetch_add_explicit(v55 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEB0))
  {
    qword_2A174BEA8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040998, v192);
    __cxa_guard_release(&qword_2A174BEB0);
  }

  if (*a3 == qword_2A174BEA8)
  {
    v59 = sub_29A912E78(a1);
    v60 = sub_29A912E78(a2);
    v61 = 1.0 - v226;
    v62 = v61 * v59[1].f32[0];
    v63 = (v60[1].f32[0] * v226) + v62;
    v64 = vadd_f32(vmul_n_f32(*v60, v226), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v59), v61)));
    *(&v234 + 1) = &off_2A2042840 + 2;
    v12 = operator new(0x10uLL);
    *v12 = v64;
    *(v12 + 2) = v63;
    v13 = (v12 + 12);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEC0))
  {
    qword_2A174BEB8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421A0, v193);
    __cxa_guard_release(&qword_2A174BEC0);
  }

  if (*a3 == qword_2A174BEB8)
  {
    v65 = sub_29A193BCC(a1);
    v66 = sub_29A193BCC(a2);
    sub_29A193124(&v234, *v65);
    if (v234)
    {
      v67 = 0;
      v68 = 0;
      v222 = 1.0 - v226;
      do
      {
        v69 = (v65[4] + v67);
        v70 = (v66[4] + v67);
        v71 = v69[1].f32[0];
        v72 = *v69;
        v73 = *v70;
        v74 = v70[1].f32[0];
        sub_29A1935CC(&v234);
        v75 = v222 * v71;
        v76 = (v236 + v67);
        *v76 = vadd_f32(vmul_n_f32(v73, v226), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v72), v222)));
        v76[1].f32[0] = (v74 * v226) + v75;
        ++v68;
        v67 += 12;
      }

      while (v68 < v234);
    }

    v238 = &off_2A20433C0;
    v77 = operator new(0x30uLL);
    v78 = v235;
    *v77 = v234;
    *(v77 + 1) = v78;
    v79 = v236;
    *(v77 + 4) = v236;
    if (v79)
    {
      v80 = (v79 - 16);
      if (*(v77 + 3))
      {
        v80 = *(v77 + 3);
      }

      atomic_fetch_add_explicit(v80, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v77 + 10);
    v237 = v77;
    atomic_fetch_add_explicit(v77 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BED0))
  {
    qword_2A174BEC8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409A8, v194);
    __cxa_guard_release(&qword_2A174BED0);
  }

  if (*a3 == qword_2A174BEC8)
  {
    v81 = sub_29ACE5AB4(a1);
    v82 = sub_29ACE5AB4(a2);
    v83 = *v81;
    WORD2(v234) = *(v81 + 2);
    LODWORD(v234) = v83;
    v85 = sub_29A130AC8(&v234, v84, 1.0 - v226);
    v86 = v85[2];
    v87 = *v85;
    v88 = *v82;
    WORD2(v234) = *(v82 + 2);
    LODWORD(v234) = v88;
    v90 = sub_29A130AC8(&v234, v89, v226);
    v91 = *v90;
    WORD2(v237) = v90[2];
    LODWORD(v237) = v91;
    WORD2(v234) = (v87 | (v86 << 32)) >> 32;
    LODWORD(v234) = v87;
    v92 = sub_29A130DE0(&v234, &v237);
    v93 = *v92;
    v94 = v92[2];
    *(&v234 + 1) = &off_2A2042788 + 3;
    WORD2(v234) = v94;
    LODWORD(v234) = v93;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEE0))
  {
    qword_2A174BED8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042158, v195);
    __cxa_guard_release(&qword_2A174BEE0);
  }

  if (*a3 == qword_2A174BED8)
  {
    v95 = sub_29A193090(a1);
    v96 = sub_29A193090(a2);
    sub_29ACE5B48(v95, v96, &v234, v226);
    v238 = &off_2A2043478;
    v97 = operator new(0x30uLL);
    v98 = v235;
    *v97 = v234;
    *(v97 + 1) = v98;
    v99 = v236;
    *(v97 + 4) = v236;
    if (v99)
    {
      v100 = (v99 - 16);
      if (*(v97 + 3))
      {
        v100 = *(v97 + 3);
      }

      atomic_fetch_add_explicit(v100, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v97 + 10);
    v237 = v97;
    atomic_fetch_add_explicit(v97 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BEF0))
  {
    qword_2A174BEE8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409C8, v196);
    __cxa_guard_release(&qword_2A174BEF0);
  }

  if (*a3 == qword_2A174BEE8)
  {
    v101 = sub_29ACE5C94(a1);
    v102 = sub_29ACE5C94(a2);
    v103 = v226;
    v104 = 1.0 - v226;
    v105 = &off_2A2042B20 + 2;
LABEL_108:
    *(&v234 + 1) = v105;
    v223 = vaddq_f64(vmulq_n_f64(v101[1], v104), vmulq_n_f64(v102[1], v103));
    v231 = vaddq_f64(vmulq_n_f64(*v101, v104), vmulq_n_f64(*v102, v103));
    v12 = operator new(0x28uLL);
    *v12 = v231;
    *(v12 + 1) = v223;
    v13 = (v12 + 32);
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A174BF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF00))
  {
    qword_2A174BEF8 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20421D0, v197);
    __cxa_guard_release(&qword_2A174BF00);
  }

  if (*a3 == qword_2A174BEF8)
  {
    v106 = sub_29A1978C0(a1);
    v107 = sub_29A1978C0(a2);
    sub_29A196EB8(&v234, *v106, v108, v109);
    if (v234)
    {
      v110 = 0;
      v111 = 0;
      v208 = 1.0 - v226;
      v210 = v226;
      do
      {
        v112 = (v106[4] + v110);
        v113 = (v107[4] + v110);
        v224 = v112[1];
        v232 = *v112;
        v214 = *v113;
        v218 = v113[1];
        sub_29A19722C(&v234);
        v114 = (v236 + v110);
        *v114 = vaddq_f64(vmulq_n_f64(v232, v208), vmulq_n_f64(v214, v210));
        v114[1] = vaddq_f64(vmulq_n_f64(v224, v208), vmulq_n_f64(v218, v210));
        ++v111;
        v110 += 32;
      }

      while (v111 < v234);
    }

    v238 = &off_2A2043758;
    v115 = operator new(0x30uLL);
    v116 = v235;
    *v115 = v234;
    *(v115 + 1) = v116;
    v117 = v236;
    *(v115 + 4) = v236;
    if (v117)
    {
      v118 = (v117 - 16);
      if (*(v115 + 3))
      {
        v118 = *(v115 + 3);
      }

      atomic_fetch_add_explicit(v118, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v115 + 10);
    v237 = v115;
    atomic_fetch_add_explicit(v115 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF10))
  {
    qword_2A174BF08 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409D8, v198);
    __cxa_guard_release(&qword_2A174BF10);
  }

  if (*a3 == qword_2A174BF08)
  {
    v119 = sub_29A9FF92C(a1);
    v227 = vaddq_f32(vmulq_n_f32(*sub_29A9FF92C(a2), v226), vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v119), 1.0 - v226)), vmulq_n_f64(vcvt_hight_f64_f32(*v119->f32), 1.0 - v226)));
    *(&v234 + 1) = &off_2A2042A68 + 2;
    v11 = 20;
    goto LABEL_56;
  }

  if ((atomic_load_explicit(&qword_2A174BF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF20))
  {
    qword_2A174BF18 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042188, v199);
    __cxa_guard_release(&qword_2A174BF20);
  }

  if (*a3 == qword_2A174BF18)
  {
    v120 = sub_29A196258(a1);
    v121 = sub_29A196258(a2);
    sub_29ACE5D28(v120, v121, &v234, v226);
    v238 = &off_2A20435E8;
    v122 = operator new(0x30uLL);
    v123 = v235;
    *v122 = v234;
    *(v122 + 1) = v123;
    v124 = v236;
    *(v122 + 4) = v236;
    if (v124)
    {
      v125 = (v124 - 16);
      if (*(v122 + 3))
      {
        v125 = *(v122 + 3);
      }

      atomic_fetch_add_explicit(v125, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v122 + 10);
    v237 = v122;
    atomic_fetch_add_explicit(v122 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF30))
  {
    qword_2A174BF28 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20409E8, v200);
    __cxa_guard_release(&qword_2A174BF30);
  }

  if (*a3 == qword_2A174BF28)
  {
    v126 = sub_29ACE5E08(a1);
    v127 = sub_29ACE5E08(a2);
    *&v234 = *v126;
    v128 = *sub_29A573358(&v234, 1.0 - v226);
    *&v234 = *v127;
    v237 = *sub_29A573358(&v234, v226);
    *&v234 = v128;
    *&v234 = *sub_29A5731B0(&v234, &v237);
    *(&v234 + 1) = &off_2A20429B0 + 3;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF40))
  {
    qword_2A174BF38 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042140, v201);
    __cxa_guard_release(&qword_2A174BF40);
  }

  if (*a3 == qword_2A174BF38)
  {
    v129 = sub_29A1956FC(a1);
    v130 = sub_29A1956FC(a2);
    sub_29ACE5E9C(v129, v130, &v234, v226);
    v238 = &off_2A20436A0;
    v131 = operator new(0x30uLL);
    v132 = v235;
    *v131 = v234;
    *(v131 + 1) = v132;
    v133 = v236;
    *(v131 + 4) = v236;
    if (v133)
    {
      v134 = (v133 - 16);
      if (*(v131 + 3))
      {
        v134 = *(v131 + 3);
      }

      atomic_fetch_add_explicit(v134, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v131 + 10);
    v237 = v131;
    atomic_fetch_add_explicit(v131 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF50))
  {
    qword_2A174BF48 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040848, v202);
    __cxa_guard_release(&qword_2A174BF50);
  }

  if (*a3 == qword_2A174BF48)
  {
    v101 = sub_29ACE5F90(a1);
    v102 = sub_29ACE5F90(a2);
    v103 = v226;
    v105 = &off_2A2042EB8;
    v104 = 1.0 - v226;
    goto LABEL_108;
  }

  if ((atomic_load_explicit(&qword_2A174BF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF60))
  {
    qword_2A174BF58 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042398, v203);
    __cxa_guard_release(&qword_2A174BF60);
  }

  if (*a3 == qword_2A174BF58)
  {
    v135 = sub_29A19B764(a1);
    v136 = sub_29A19B764(a2);
    sub_29A19AD54(&v234, *v135);
    if (v234)
    {
      v137 = 0;
      v138 = 0;
      v209 = 1.0 - v226;
      v211 = v226;
      do
      {
        v139 = (v135[4] + v137);
        v140 = (v136[4] + v137);
        v225 = v139[1];
        v233 = *v139;
        v215 = *v140;
        v219 = v140[1];
        sub_29A19B0C4(&v234);
        v141 = (v236 + v137);
        *v141 = vaddq_f64(vmulq_n_f64(v233, v209), vmulq_n_f64(v215, v211));
        v141[1] = vaddq_f64(vmulq_n_f64(v225, v209), vmulq_n_f64(v219, v211));
        ++v138;
        v137 += 32;
      }

      while (v138 < v234);
    }

    v238 = &off_2A2043AF0;
    v142 = operator new(0x30uLL);
    v143 = v235;
    *v142 = v234;
    *(v142 + 1) = v143;
    v144 = v236;
    *(v142 + 4) = v236;
    if (v144)
    {
      v145 = (v144 - 16);
      if (*(v142 + 3))
      {
        v145 = *(v142 + 3);
      }

      atomic_fetch_add_explicit(v145, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v142 + 10);
    v237 = v142;
    atomic_fetch_add_explicit(v142 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF70))
  {
    qword_2A174BF68 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040858, v204);
    __cxa_guard_release(&qword_2A174BF70);
  }

  if (*a3 == qword_2A174BF68)
  {
    v146 = sub_29ACE6024(a1);
    v147 = sub_29ACE6024(a2);
    v149 = pxrInternal__aapl__pxrReserved__::GfSlerp(v146, v226, v147, v148);
    v151 = v150;
    v153 = v152;
    v155 = v154;
    *(&v234 + 1) = &off_2A2042D48;
    v12 = operator new(0x14uLL);
    *v12 = v149;
    *(v12 + 1) = v151;
    *(v12 + 2) = v153;
    *(v12 + 3) = v155;
    goto LABEL_57;
  }

  if ((atomic_load_explicit(&qword_2A174BF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF80))
  {
    qword_2A174BF78 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042380, v205);
    __cxa_guard_release(&qword_2A174BF80);
  }

  if (*a3 == qword_2A174BF78)
  {
    v156 = sub_29A19A110(a1);
    v157 = sub_29A19A110(a2);
    sub_29A199640(&v234, *v156);
    if (v234)
    {
      v159 = 0;
      v160 = 0;
      do
      {
        v161 = pxrInternal__aapl__pxrReserved__::GfSlerp((v156[4] + v159), v226, (v157[4] + v159), v158);
        v163 = v162;
        v165 = v164;
        v167 = v166;
        sub_29A199A70(&v234);
        v168 = (v236 + v159);
        *v168 = v161;
        *(v168 + 1) = v163;
        *(v168 + 2) = v165;
        *(v168 + 3) = v167;
        ++v160;
        v159 += 16;
      }

      while (v160 < v234);
    }

    v238 = &off_2A2043980;
    v169 = operator new(0x30uLL);
    v170 = v235;
    *v169 = v234;
    *(v169 + 1) = v170;
    v171 = v236;
    *(v169 + 4) = v236;
    if (v171)
    {
      v172 = (v171 - 16);
      if (*(v169 + 3))
      {
        v172 = *(v169 + 3);
      }

      atomic_fetch_add_explicit(v172, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v169 + 10);
    v237 = v169;
    atomic_fetch_add_explicit(v169 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  if ((atomic_load_explicit(&qword_2A174BF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BF90))
  {
    qword_2A174BF88 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040868, v206);
    __cxa_guard_release(&qword_2A174BF90);
  }

  if (*a3 == qword_2A174BF88)
  {
    v173 = sub_29ACE60B8(a1);
    v174 = sub_29ACE60B8(a2);
    *&v234 = sub_29ACE614C(v173, v174, v226);
    *(&v234 + 1) = &off_2A2042E00 + 1;
    goto LABEL_77;
  }

  if ((atomic_load_explicit(&qword_2A174BFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BFA0))
  {
    qword_2A174BF98 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2042368, v207);
    __cxa_guard_release(&qword_2A174BFA0);
  }

  if (*a3 == qword_2A174BF98)
  {
    v175 = sub_29A1995AC(a1);
    v176 = sub_29A1995AC(a2);
    sub_29A19A1A4(&v234, *v175);
    if (v234)
    {
      v177 = 0;
      v178 = 0;
      do
      {
        v179 = sub_29ACE614C((v175[4] + v177), (v176[4] + v177), v226);
        sub_29A19A5A0(&v234);
        *(v236 + 8 * v178++) = v179;
        v177 += 8;
      }

      while (v178 < v234);
    }

    v238 = &off_2A2043A38;
    v180 = operator new(0x30uLL);
    v181 = v235;
    *v180 = v234;
    *(v180 + 1) = v181;
    v182 = v236;
    *(v180 + 4) = v236;
    if (v182)
    {
      v183 = (v182 - 16);
      if (*(v180 + 3))
      {
        v183 = *(v180 + 3);
      }

      atomic_fetch_add_explicit(v183, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v180 + 10);
    v237 = v180;
    atomic_fetch_add_explicit(v180 + 10, 1u, memory_order_relaxed);
    sub_29A18606C(a4, &v237);
    sub_29A186B14(&v237);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  if (v226 >= 1.0)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  sub_29A1854E8(a4, v9);
}

uint64_t sub_29ACE561C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, float a10@<S0>)
{
  v76 = *MEMORY[0x29EDCA608];
  result = sub_29A197D6C(a9, *a1, a3, a4, a5, a6, a7, a8);
  if (*a9)
  {
    v15 = 0;
    v16 = 0;
    v17 = a10;
    do
    {
      v18 = (a1[4] + v15);
      v19 = *(a2 + 32);
      v20 = *v18;
      v21 = v18[1];
      v22 = v18[3];
      v62 = v18[2];
      v63 = v22;
      v60 = v20;
      v61 = v21;
      v23 = v18[4];
      v24 = v18[5];
      v25 = v18[7];
      v66 = v18[6];
      v67 = v25;
      v64 = v23;
      v65 = v24;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v60, 1.0 - v17);
      v27 = v26[5];
      v72 = v26[4];
      v73 = v27;
      v28 = v26[7];
      v74 = v26[6];
      v75 = v28;
      v29 = v26[1];
      v68 = *v26;
      v69 = v29;
      v30 = v26[3];
      v70 = v26[2];
      v71 = v30;
      v31 = *(v19 + v15);
      v32 = *(v19 + v15 + 16);
      v33 = *(v19 + v15 + 48);
      v62 = *(v19 + v15 + 32);
      v63 = v33;
      v60 = v31;
      v61 = v32;
      v34 = *(v19 + v15 + 64);
      v35 = *(v19 + v15 + 80);
      v36 = *(v19 + v15 + 112);
      v66 = *(v19 + v15 + 96);
      v67 = v36;
      v64 = v34;
      v65 = v35;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v60, v17);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[3];
      v59[2] = v37[2];
      v59[3] = v40;
      v59[0] = v38;
      v59[1] = v39;
      v41 = v37[4];
      v42 = v37[5];
      v43 = v37[7];
      v59[6] = v37[6];
      v59[7] = v43;
      v59[4] = v41;
      v59[5] = v42;
      v55 = v72;
      v56 = v73;
      v57 = v74;
      v58 = v75;
      v51 = v68;
      v52 = v69;
      v53 = v70;
      v54 = v71;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(&v51, v59);
      result = sub_29A198240(a9);
      v44 = (a9[4] + v15);
      v45 = v51;
      v46 = v52;
      v47 = v54;
      v44[2] = v53;
      v44[3] = v47;
      v48 = v58;
      v50 = v55;
      v49 = v56;
      v44[6] = v57;
      v44[7] = v48;
      v44[4] = v50;
      v44[5] = v49;
      *v44 = v45;
      v44[1] = v46;
      ++v16;
      v15 += 128;
    }

    while (v16 < *a9);
  }

  return result;
}

void **sub_29ACE5804(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD4E0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2d>::Invoke, &stru_2A2040948);
  }
}

void **sub_29ACE5898(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD158(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec2h>::Invoke, &stru_2A2040968);
  }
}

uint64_t sub_29ACE592C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A191640(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = *(a2 + 32);
      v14 = *(a1[4] + 4 * v9);
      v12 = *sub_29A56E160(&v14, 1.0 - v10);
      v14 = *(v11 + 4 * v9);
      v13 = *sub_29A56E160(&v14, v10);
      v14 = v12;
      LODWORD(v11) = *sub_29A56E070(&v14, &v13);
      result = sub_29A191A40(a3);
      *(a3[4] + 4 * v9++) = v11;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE5A20(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE138(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3d>::Invoke, &stru_2A2040988);
  }
}

void **sub_29ACE5AB4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FDC80(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3h>::Invoke, &stru_2A20409A8);
  }
}

uint64_t sub_29ACE5B48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A193C60(a3, *a1);
  if (*a3)
  {
    v10 = 0;
    v11 = 0;
    v12 = a4;
    do
    {
      v13 = (a1[4] + v10);
      v14 = *(a2 + 32);
      v15 = *v13;
      v31 = *(v13 + 2);
      v30 = v15;
      v16 = sub_29A130AC8(&v30, v9, 1.0 - v12);
      v17 = (v14 + v10);
      v18 = v16[2];
      v19 = *v16;
      v20 = *v17;
      v31 = *(v17 + 2);
      v30 = v20;
      v22 = sub_29A130AC8(&v30, v21, v12);
      v23 = *v22;
      v29 = v22[2];
      v28 = v23;
      v31 = (v19 | (v18 << 32)) >> 32;
      v30 = v19;
      v24 = sub_29A130DE0(&v30, &v28);
      v25 = v24[2];
      v26 = *v24;
      result = sub_29A1940CC(a3);
      v27 = a3[4] + v10;
      *(v27 + 4) = (v26 | (v25 << 32)) >> 32;
      *v27 = v26;
      ++v11;
      v10 += 6;
    }

    while (v11 < *a3);
  }

  return result;
}

void **sub_29ACE5C94(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FED30(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4d>::Invoke, &stru_2A20409C8);
  }
}

float32x4_t sub_29ACE5D28@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  sub_29A195790(a3, *a1);
  if (*a3)
  {
    v8 = 0;
    do
    {
      v10 = *(*(a2 + 32) + 16 * v8);
      v11 = *(a1[4] + 16 * v8);
      sub_29A195BC4(a3);
      result = vaddq_f32(vmulq_n_f32(v10, a4), vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v11.f32), 1.0 - a4)), vmulq_n_f64(vcvt_hight_f64_f32(v11), 1.0 - a4)));
      *(a3[4] + 16 * v8++) = result;
    }

    while (v8 < *a3);
  }

  return result;
}

void **sub_29ACE5E08(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE8A4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4h>::Invoke, &stru_2A20409E8);
  }
}

uint64_t sub_29ACE5E9C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>, float a4@<S0>)
{
  result = sub_29A1962EC(a3, *a1);
  if (*a3)
  {
    v9 = 0;
    v10 = a4;
    do
    {
      v11 = *(a2 + 32);
      v15 = *(a1[4] + 8 * v9);
      v12 = *sub_29A573358(&v15, 1.0 - v10);
      v15 = *(v11 + 8 * v9);
      v14 = *sub_29A573358(&v15, v10);
      v15 = v12;
      v13 = *sub_29A5731B0(&v15, &v14);
      result = sub_29A1966EC(a3);
      *(a3[4] + 8 * v9++) = v13;
    }

    while (v9 < *a3);
  }

  return result;
}

void **sub_29ACE5F90(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FCAF4(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatd>::Invoke, &stru_2A2040848);
  }
}

void **sub_29ACE6024(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC86C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuatf>::Invoke, &stru_2A2040858);
  }
}

void **sub_29ACE60B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC630(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfQuath>::Invoke, &stru_2A2040868);
  }
}

uint64_t sub_29ACE614C(uint64_t *a1, uint64_t *a2, double a3)
{
  v6 = 1.0 - a3;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  v13 = *a1;
  v8 = *sub_29A130000(&v13, v7);
  v9 = a3;
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  v13 = *a2;
  v12 = *sub_29A130000(&v13, v10);
  v13 = v8;
  return *sub_29A130D48(&v13, &v12);
}

void pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::~HdTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *this)
{
  v88 = (this + 696);
  sub_29A124AB0(&v88);
  v2 = *(this + 86);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 85);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 84);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 83);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 82);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 81);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 80);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 79);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 78);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 77);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 76);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 75);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 74);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 73);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 72);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 71);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 70);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 69);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 68);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 67);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 66);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 65);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 64);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 63);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 62);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 61);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 60);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 59);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 58);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 57);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 55);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 54);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 53);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 52);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 51);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 50);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 49);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 48);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 47);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 46);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 45);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 44);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 43);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 42);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 41);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 40);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(this + 39);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(this + 38);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(this + 37);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(this + 36);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(this + 35);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(this + 34);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(this + 33);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(this + 32);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(this + 31);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(this + 30);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(this + 29);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(this + 28);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(this + 27);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(this + 26);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(this + 25);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(this + 24);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(this + 23);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(this + 22);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(this + 21);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(this + 20);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(this + 19);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(this + 18);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(this + 17);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(this + 16);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(this + 15);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(this + 14);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(this + 13);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(this + 12);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(this + 11);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(this + 10);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(this + 9);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(this + 8);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(this + 7);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(this + 6);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(this + 5);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(this + 4);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(this + 3);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(this + 2);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(this + 1);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::HdTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *this)
{
  v181 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "accelerations");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "adjacency");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "angularVelocities");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "bboxLocalMin");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "bboxLocalMax");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "bbox");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "bezier");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "bspline");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "blurScale");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "camera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "catmullRom");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "centripetalCatmullRom");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "collection");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "computeShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "coordSysBindings");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "cubic");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "cullStyle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "doubleSided");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "dispatchCount");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "displayColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "displayOpacity");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "displayStyle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "drawDispatch");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "drawingShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "drawingCoord0");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "drawingCoord1");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "drawingCoord2");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "drawingCoordI");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "drivers");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "edgeIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "elementCount");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "elementsVisibility");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "extent");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "faceColors");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 34, "filters");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 35, "full");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 36, "geometry");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 37, "hermite");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 38, "hullIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 39, "indices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "isFlipped");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 41, "itemsDrawn");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 42, "layout");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 43, "leftHanded");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 44, "linear");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 45, "lightLink");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 46, "filterLink");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 47, "lightFilterLink");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "lightFilterType");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 49, "meshLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 50, "materialParams");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 51, "materialSyncMode");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 52, "nonlinearSampleCount");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 53, "nonperiodic");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 54, "normals");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 55, "params");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "patchParam");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 57, "periodic");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 58, "pinned");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 59, "points");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 60, "pointsIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 61, "portals");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 62, "power");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 63, "preview");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "pointsVisibility");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 65, "primvar");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 66, "primID");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 67, "primitiveParam");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 68, "tessFactors");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 69, "quadInfo");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 70, "renderTags");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 71, "rightHanded");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "segmented");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 73, "shadowLink");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 74, "subdivTags");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 75, "taskState");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 76, "taskParams");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 77, "topology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 78, "topologyVisibility");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 79, "totalItemCount");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "transform");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 81, "transformInverse");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 82, "velocities");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 83, "visibility");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 84, "widths");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 85, "isLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 86, "bspline");
  v3 = *this;
  v94 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v95 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v96 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v97 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v98 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v99 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v100 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v101 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v102 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v103 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v104 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v105 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v106 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v107 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v108 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v109 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v110 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v111 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v112 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v113 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v114 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v115 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v115 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v116 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v116 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v117 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v117 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v118 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v118 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v119 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v119 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v120 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v120 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v121 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v121 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v122 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v123 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v123 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v124 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v124 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v125 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v125 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v126 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v126 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v127 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v127 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v128 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v128 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v129 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v129 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v130 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v130 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v131 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v131 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v132 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v132 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v133 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v133 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v134 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v135 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v135 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v136 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v136 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v137 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v137 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v138 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v138 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v139 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v139 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v140 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v140 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v141 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v141 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = *(this + 48);
  v142 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v142 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = *(this + 49);
  v143 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v143 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = *(this + 50);
  v144 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v144 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = *(this + 51);
  v145 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v145 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = *(this + 52);
  v146 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v146 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = *(this + 53);
  v147 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v147 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = *(this + 54);
  v148 = v57;
  if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v148 &= 0xFFFFFFFFFFFFFFF8;
  }

  v58 = *(this + 55);
  v149 = v58;
  if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v149 &= 0xFFFFFFFFFFFFFFF8;
  }

  v59 = *(this + 56);
  v150 = v59;
  if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v150 &= 0xFFFFFFFFFFFFFFF8;
  }

  v60 = *(this + 57);
  v151 = v60;
  if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v151 &= 0xFFFFFFFFFFFFFFF8;
  }

  v61 = *(this + 58);
  v152 = v61;
  if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v152 &= 0xFFFFFFFFFFFFFFF8;
  }

  v62 = *(this + 59);
  v153 = v62;
  if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v153 &= 0xFFFFFFFFFFFFFFF8;
  }

  v63 = *(this + 60);
  v154 = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v154 &= 0xFFFFFFFFFFFFFFF8;
  }

  v64 = *(this + 61);
  v155 = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v155 &= 0xFFFFFFFFFFFFFFF8;
  }

  v65 = *(this + 62);
  v156 = v65;
  if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v156 &= 0xFFFFFFFFFFFFFFF8;
  }

  v66 = *(this + 63);
  v157 = v66;
  if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v157 &= 0xFFFFFFFFFFFFFFF8;
  }

  v67 = *(this + 64);
  v158 = v67;
  if ((v67 & 7) != 0 && (atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v158 &= 0xFFFFFFFFFFFFFFF8;
  }

  v68 = *(this + 65);
  v159 = v68;
  if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v159 &= 0xFFFFFFFFFFFFFFF8;
  }

  v69 = *(this + 66);
  v160 = v69;
  if ((v69 & 7) != 0 && (atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v160 &= 0xFFFFFFFFFFFFFFF8;
  }

  v70 = *(this + 67);
  v161 = v70;
  if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v161 &= 0xFFFFFFFFFFFFFFF8;
  }

  v71 = *(this + 68);
  v162 = v71;
  if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v162 &= 0xFFFFFFFFFFFFFFF8;
  }

  v72 = *(this + 69);
  v163 = v72;
  if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v163 &= 0xFFFFFFFFFFFFFFF8;
  }

  v73 = *(this + 70);
  v164 = v73;
  if ((v73 & 7) != 0 && (atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v164 &= 0xFFFFFFFFFFFFFFF8;
  }

  v74 = *(this + 71);
  v165 = v74;
  if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v165 &= 0xFFFFFFFFFFFFFFF8;
  }

  v75 = *(this + 72);
  v166 = v75;
  if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v166 &= 0xFFFFFFFFFFFFFFF8;
  }

  v76 = *(this + 73);
  v167 = v76;
  if ((v76 & 7) != 0 && (atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v167 &= 0xFFFFFFFFFFFFFFF8;
  }

  v77 = *(this + 74);
  v168 = v77;
  if ((v77 & 7) != 0 && (atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v168 &= 0xFFFFFFFFFFFFFFF8;
  }

  v78 = *(this + 75);
  v169 = v78;
  if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v169 &= 0xFFFFFFFFFFFFFFF8;
  }

  v79 = *(this + 76);
  v170 = v79;
  if ((v79 & 7) != 0 && (atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v170 &= 0xFFFFFFFFFFFFFFF8;
  }

  v80 = *(this + 77);
  v171 = v80;
  if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v171 &= 0xFFFFFFFFFFFFFFF8;
  }

  v81 = *(this + 78);
  v172 = v81;
  if ((v81 & 7) != 0 && (atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v172 &= 0xFFFFFFFFFFFFFFF8;
  }

  v82 = *(this + 79);
  v173 = v82;
  if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v173 &= 0xFFFFFFFFFFFFFFF8;
  }

  v83 = *(this + 80);
  v174 = v83;
  if ((v83 & 7) != 0 && (atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v174 &= 0xFFFFFFFFFFFFFFF8;
  }

  v84 = *(this + 81);
  v175 = v84;
  if ((v84 & 7) != 0 && (atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v175 &= 0xFFFFFFFFFFFFFFF8;
  }

  v85 = *(this + 82);
  v176 = v85;
  if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v176 &= 0xFFFFFFFFFFFFFFF8;
  }

  v86 = *(this + 83);
  v177 = v86;
  if ((v86 & 7) != 0 && (atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v177 &= 0xFFFFFFFFFFFFFFF8;
  }

  v87 = *(this + 84);
  v178 = v87;
  if ((v87 & 7) != 0 && (atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v178 &= 0xFFFFFFFFFFFFFFF8;
  }

  v88 = *(this + 85);
  v179 = v88;
  if ((v88 & 7) != 0 && (atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v179 &= 0xFFFFFFFFFFFFFFF8;
  }

  v89 = (this + 696);
  v90 = *(this + 86);
  v180 = v90;
  if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v180 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v89 = 0;
  *(this + 88) = 0;
  *(this + 89) = 0;
  sub_29A12EF7C(v89, &v94, &v181, 0x57uLL);
  for (i = 688; i != -8; i -= 8)
  {
    v92 = *(&v94 + i);
    if ((v92 & 7) != 0)
    {
      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23)
{
  v33 = 688;
  while (1)
  {
    v34 = *(v29 + v33);
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v33 -= 8;
    if (v33 == -8)
    {
      if ((*v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a9 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v23[63];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v23[62];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v23[61];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v23[60];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v23[59];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v23[58];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v23[57];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v23[56];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v23[55];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v23[54];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v23[53];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v23[52];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v23[51];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v23[50];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v23[49];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v23[48];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v23[47];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v23[46];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v23[45];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v23[44];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v23[43];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v23[42];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v23[41];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v58 = v23[40];
      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v59 = v23[39];
      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 = v23[38];
      if ((v60 & 7) != 0)
      {
        atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v61 = v23[37];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v23[36];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v63 = v23[35];
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v64 = v23[34];
      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v65 = v23[33];
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v66 = v23[32];
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v67 = v23[31];
      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v68 = v23[30];
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v69 = v23[29];
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v70 = v23[28];
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v71 = v23[27];
      if ((v71 & 7) != 0)
      {
        atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v72 = v23[26];
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v73 = v23[25];
      if ((v73 & 7) != 0)
      {
        atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v74 = v23[24];
      if ((v74 & 7) != 0)
      {
        atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v75 = v23[23];
      if ((v75 & 7) != 0)
      {
        atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v76 = v23[22];
      if ((v76 & 7) != 0)
      {
        atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v77 = v23[21];
      if ((v77 & 7) != 0)
      {
        atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v78 = v23[20];
      if ((v78 & 7) != 0)
      {
        atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v79 = v23[19];
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v80 = v23[18];
      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v81 = v23[17];
      if ((v81 & 7) != 0)
      {
        atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v82 = v23[16];
      if ((v82 & 7) != 0)
      {
        atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v83 = v23[15];
      if ((v83 & 7) != 0)
      {
        atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v23[14];
      if ((v84 & 7) != 0)
      {
        atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v85 = v23[13];
      if ((v85 & 7) != 0)
      {
        atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v86 = v23[12];
      if ((v86 & 7) != 0)
      {
        atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v87 = v23[11];
      if ((v87 & 7) != 0)
      {
        atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v88 = v23[10];
      if ((v88 & 7) != 0)
      {
        atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v89 = v23[9];
      if ((v89 & 7) != 0)
      {
        atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v90 = v23[8];
      if ((v90 & 7) != 0)
      {
        atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v91 = v23[7];
      if ((v91 & 7) != 0)
      {
        atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v92 = v23[6];
      if ((v92 & 7) != 0)
      {
        atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v93 = v23[5];
      if ((v93 & 7) != 0)
      {
        atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v94 = v23[4];
      if ((v94 & 7) != 0)
      {
        atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v95 = v23[3];
      if ((v95 & 7) != 0)
      {
        atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v96 = v23[2];
      if ((v96 & 7) != 0)
      {
        atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v97 = v23[1];
      if ((v97 & 7) != 0)
      {
        atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::~HdInstancerTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *this)
{
  v11 = (this + 80);
  sub_29A124AB0(&v11);
  v2 = *(this + 9);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 7);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 5);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 3);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 2);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 1);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType::HdInstancerTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdInstancerTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "culledInstanceIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "instancer");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "instancerTransform");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "instancerTransformInverse");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "instanceIndices");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "instanceIndexBase");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "hydra:instanceTransforms");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "hydra:instanceRotations");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "hydra:instanceScales");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "hydra:instanceTranslations");
  v3 = (this + 80);
  v4 = *this;
  v27 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v5;
    }
  }

  v6 = *(this + 1);
  v28 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v7;
    }
  }

  v8 = *(this + 2);
  v29 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v9;
    }
  }

  v10 = *(this + 3);
  v30 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v11;
    }
  }

  v12 = *(this + 4);
  v31 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v13;
    }
  }

  v14 = *(this + 5);
  v32 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v15;
    }
  }

  v16 = *(this + 6);
  v33 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v17;
    }
  }

  v18 = *(this + 7);
  v34 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 = v19;
    }
  }

  v20 = *(this + 8);
  v35 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 = v21;
    }
  }

  v22 = *(this + 9);
  v36 = v22;
  if ((v22 & 7) != 0)
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 = v23;
    }
  }

  *v3 = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  sub_29A12EF7C(v3, &v27, &v37, 0xAuLL);
  for (i = 72; i != -8; i -= 8)
  {
    v25 = *(&v27 + i);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE8FCC(_Unwind_Exception *a1)
{
  v3 = 72;
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
      v5 = v1[9];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[8];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[7];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[6];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[5];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[4];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[3];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[2];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::~HdReprTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::HdReprTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "disabled");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "hull");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "points");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "smoothHull");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "refined");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "refinedWire");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "refinedWireOnSurf");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "wire");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "wireOnSurf");
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE94BC(_Unwind_Exception *a1)
{
  v3 = 64;
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
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::~HdCullStyleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::HdCullStyleTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "dontCare");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "nothing");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "back");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "front");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "backUnlessDoubleSided");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "frontUnlessDoubleSided");
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACE98A0(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::~HdPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *this)
{
  v40 = (this + 312);
  sub_29A124AB0(&v40);
  v2 = *(this + 38);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 37);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 36);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 35);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 34);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 33);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 32);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 31);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 30);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 29);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 28);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 27);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 26);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 25);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 24);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 23);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 22);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 21);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 20);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 19);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 18);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 17);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 16);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 15);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 14);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 13);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 12);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 11);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 10);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 9);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 8);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 7);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 6);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 5);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 4);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 3);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 2);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 1);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType::HdPerfTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPerfTokens_StaticTokenType *this)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "adjacencyBufSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "basisCurvesTopology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "bufferSourcesResolved");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "bufferArrayRangeMigrated");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "bufferArrayRangeContainerResized");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "computationsCommited");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "drawBatches");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "drawCalls");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "dirtyLists");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "dirtyListsRebuilt");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "garbageCollected");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "garbageCollectedSsbo");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "garbageCollectedUbo");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "garbageCollectedVbo");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "gpuMemoryUsed");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "instBasisCurvesTopology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "instBasisCurvesTopologyRange");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "instExtComputationDataRange");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "instMeshTopology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "instMeshTopologyRange");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "instPrimvarRange");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "instVertexAdjacency");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "meshTopology");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "nonUniformSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "numCompletedSamples");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "quadrangulateCPU");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "quadrangulateGPU");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "quadrangulateFaceVarying");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "quadrangulatedVerts");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "rebuildBatches");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "singleBufferSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "ssboSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "skipInvisibleRprimSync");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "subdivisionRefineCPU");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 34, "subdivisionRefineGPU");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 35, "textureMemory");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 36, "triangulateFaceVarying");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 37, "uboSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 38, "vboRelocated");
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

void sub_29ACEA7C0(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::~HdShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *this)
{
  v35 = (this + 272);
  sub_29A124AB0(&v35);
  v2 = *(this + 33);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 31);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 30);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 29);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 28);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 27);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 26);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 25);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 24);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 23);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 22);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 21);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 20);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 19);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 18);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 17);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 16);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 15);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 14);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 13);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 12);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 11);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 10);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 9);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 8);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 7);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 6);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 5);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 4);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 3);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 2);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 1);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType::HdShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdShaderTokens_StaticTokenType *this)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "alphaThreshold");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "clipPlanes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "commonShaderSource");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "computeShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "cullStyle");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "drawRange");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "environmentMap");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "displacementShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "fragmentShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "geometryShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "imageToWorldMatrix");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "imageToHorizontallyNormalizedFilmback");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "indicatorColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "lightingBlendAmount");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "overrideColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "maskColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "projectionMatrix");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 17, "pointColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 18, "pointSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 19, "pointSelectedSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 20, "materialTag");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 21, "numClipPlanes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 22, "tessControlShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 23, "tessEvalShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "postTessControlShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 25, "postTessVertexShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 26, "tessLevel");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 27, "viewport");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 28, "vertexShader");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 29, "wireframeColor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 30, "worldToViewMatrix");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 31, "worldToViewInverseMatrix");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "stepSize");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 33, "stepSizeLighting");
  v3 = *this;
  v40 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v41 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v42 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v43 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v44 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v45 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v46 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v47 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v48 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v49 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v50 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v51 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v52 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v53 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v54 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v55 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v56 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v57 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v58 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v59 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v60 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v61 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v62 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v63 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v64 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v65 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v66 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v67 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v68 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v69 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v70 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v71 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v72 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v73 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  sub_29A12EF7C(this + 34, &v40, &v74, 0x22uLL);
  for (i = 264; i != -8; i -= 8)
  {
    v38 = *(&v40 + i);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEB8C4(_Unwind_Exception *a1)
{
  v3 = 264;
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
      v5 = v1[33];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[32];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[31];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[30];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[29];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[28];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[27];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[26];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[25];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[24];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[23];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[22];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[21];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[20];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[19];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[18];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[17];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[16];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[15];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[14];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[13];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[12];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[11];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[10];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[9];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[8];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[7];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[6];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[5];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[4];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[3];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[2];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[1];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::~HdRenderTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::HdRenderTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "geometry");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "guide");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "hidden");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "proxy");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "render");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "widget");
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEBF64(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType::~HdRenderContextTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType::HdRenderContextTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderContextTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "");
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
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::~HdMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType::HdMaterialTagTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTagTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "defaultMaterialTag");
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
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType::~HdMaterialTerminalTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType::HdMaterialTerminalTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "surface");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "displacement");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "volume");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "light");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "lightFilter");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "imageShader");
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEC634(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::~HdModelDrawModeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *this)
{
  v9 = (this + 64);
  sub_29A124AB0(&v9);
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 1);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType::HdModelDrawModeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdModelDrawModeTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "inherited");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "origin");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "bounds");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "cards");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "default");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "cross");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "box");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "fromTexture");
  v3 = (this + 64);
  v4 = *this;
  v23 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v5;
    }
  }

  v6 = *(this + 1);
  v24 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v7;
    }
  }

  v8 = *(this + 2);
  v25 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v9;
    }
  }

  v10 = *(this + 3);
  v26 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v11;
    }
  }

  v12 = *(this + 4);
  v27 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v13;
    }
  }

  v14 = *(this + 5);
  v28 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v15;
    }
  }

  v16 = *(this + 6);
  v29 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v17;
    }
  }

  v18 = *(this + 7);
  v30 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v19;
    }
  }

  *v3 = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  sub_29A12EF7C(v3, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v21 = *(&v23 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACECA64(_Unwind_Exception *a1)
{
  v3 = 56;
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
      v5 = v1[7];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::~HdOptionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::HdOptionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "parallelRprimSync");
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
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::~HdLightTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *this)
{
  v11 = (this + 80);
  sub_29A124AB0(&v11);
  v2 = *(this + 9);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 7);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 5);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 3);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 2);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 1);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType::HdLightTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightTypeTokens_StaticTokenType *this)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cylinderLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "diskLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "distantLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "domeLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "light");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "meshLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "pluginLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "rectLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "simpleLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "sphereLight");
  v3 = (this + 80);
  v4 = *this;
  v27 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v5;
    }
  }

  v6 = *(this + 1);
  v28 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v7;
    }
  }

  v8 = *(this + 2);
  v29 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v9;
    }
  }

  v10 = *(this + 3);
  v30 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v11;
    }
  }

  v12 = *(this + 4);
  v31 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v13;
    }
  }

  v14 = *(this + 5);
  v32 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v15;
    }
  }

  v16 = *(this + 6);
  v33 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v17;
    }
  }

  v18 = *(this + 7);
  v34 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 = v19;
    }
  }

  v20 = *(this + 8);
  v35 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 = v21;
    }
  }

  v22 = *(this + 9);
  v36 = v22;
  if ((v22 & 7) != 0)
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 = v23;
    }
  }

  *v3 = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  sub_29A12EF7C(v3, &v27, &v37, 0xAuLL);
  for (i = 72; i != -8; i -= 8)
  {
    v25 = *(&v27 + i);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACED10C(_Unwind_Exception *a1)
{
  v3 = 72;
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
      v5 = v1[9];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[8];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[7];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[6];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[5];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[4];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[3];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[2];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType::~HdLightFilterTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType::HdLightFilterTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLightFilterTypeTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lightFilter");
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
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType::~HdRprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *this)
{
  v18 = (this + 136);
  sub_29A124AB0(&v18);
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 15);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 14);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 13);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 12);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 11);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 10);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 9);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 8);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 7);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 5);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 4);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 3);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 2);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 1);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType::HdRprimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRprimTypeTokens_StaticTokenType *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "capsule");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "capsule_1");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "cone");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "cube");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "cylinder");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "cylinder_1");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "geomSubset");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "mesh");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "tetMesh");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "nurbsPatch");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "basisCurves");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "nurbsCurves");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "plane");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 13, "points");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 14, "sphere");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 15, "volume");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "model");
  v3 = (this + 136);
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v37 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v38 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v39 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v40 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  sub_29A12EF7C(v3, &v24, &v41, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v22 = *(&v24 + i);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACEDAA4(_Unwind_Exception *a1)
{
  v3 = 128;
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
      v5 = v1[16];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[15];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[14];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[13];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[12];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[11];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[10];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[9];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[8];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[7];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[6];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[5];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[4];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[3];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[2];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}