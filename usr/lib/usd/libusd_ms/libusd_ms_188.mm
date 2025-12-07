void sub_29B051B18(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29B0518C4(a1, v8, &v24);
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

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == *(v14 + 1) && *(v16 + 24) == *(v14 + 2) && (*(v14 + 3) ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA5060(a1 + 16, a3);
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
      a3 = sub_29B051D54(a1 + 16, v12, a2);
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

void *sub_29B051D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  sub_29B051DCC((v5 + 1), a3);
  v5[12] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B051DA4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B051DCC(uint64_t a1, uint64_t a2)
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

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v7 = atomic_load((a2 + 80));
  atomic_store(v7, (a1 + 80));
  return a1;
}

uint64_t sub_29B051E98(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + 32) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 40) = v8;
  v9 = *(a3 + 40);
  *(a1 + 72) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(a1 + 64))
    {
      v10 = *(a1 + 64);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  v11 = atomic_load((a3 + 48));
  atomic_store(v11, (a1 + 80));
  return a1;
}

uint64_t sub_29B051F7C(uint64_t a1, __int128 *a2)
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
      sub_29AFA1C7C(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29AFA1C7C(&v8);
  }

  return a1;
}

void sub_29B05223C(_Unwind_Exception *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  v24 = *(v23 - 72);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  v25 = v22[19];
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  sub_29AC113C4(v22, a2);
}

void *sub_29B0522F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20B0908;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29B052D10(a2, v4);
}

void *sub_29B05236C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20B09D0;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29B052F44(a2, v4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootTransform(double **this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(this[18], a2);
  if ((result & 1) == 0)
  {
    v5 = this[18];
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 3);
    *(v5 + 2) = *(a2 + 2);
    *(v5 + 3) = v8;
    *v5 = v6;
    *(v5 + 1) = v7;
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 7);
    *(v5 + 6) = *(a2 + 6);
    *(v5 + 7) = v11;
    *(v5 + 4) = v9;
    *(v5 + 5) = v10;
    if ((atomic_load_explicit(&qword_2A1755ED8, memory_order_acquire) & 1) == 0)
    {
      v12 = __cxa_guard_acquire(&qword_2A1755ED8);
      if (v12)
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v12);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v13);
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
        if (!v15)
        {
          v15 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, DefaultLocator, v15 + 1);
        v16[0] = v17;
        v16[1] = 1;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v18, v16);
        sub_29ABD2F24(v19, v13, v18);
        qword_2A1755ED0 = 0x1000000001;
        sub_29ABD3720(v19, &v20, &unk_2A17541D0);
        sub_29ABCFDB8(v19);
      }
    }

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(this, &unk_2A17541D0);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootVisibility(uint64_t *this, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = this[18];
  if (*(v2 + 128) != a2)
  {
    v3 = this;
    *(v2 + 128) = a2;
    if ((atomic_load_explicit(&qword_2A1757BE8, memory_order_acquire) & 1) == 0)
    {
      v4 = __cxa_guard_acquire(&qword_2A1757BE8);
      if (v4)
      {
        v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v5);
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
        if (!v7)
        {
          v7 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v9, DefaultLocator, v7);
        v8[0] = v9;
        v8[1] = 1;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v10, v8);
        sub_29ABD2F24(v11, v5, v10);
        qword_2A1757BE0 = 0x1000000001;
        sub_29ABD3720(v11, &v12, &unk_2A1755EE0);
        sub_29ABCFDB8(v11);
      }
    }

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v3, &unk_2A1755EE0);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  v7 = (*(*v6 + 16))(v6, a2);
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7))
  {
    sub_29AD373C8(this + 20, (a3 + 8), &v10);
    v8 = v10;
    v10 = 0uLL;
    v9 = *(a3 + 16);
    *(a3 + 8) = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29B05290C(void *a1, const void *a2)
{
  *a1 = &unk_2A20B0840;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC(a1 + 14);
}

void sub_29B0529A4(void *a1, const void *a2)
{
  *a1 = &unk_2A20B0840;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC(a1 + 14);
}

uint64_t sub_29B052A40@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  result = sub_29B052A8C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B052A8C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B08B8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 24) = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 24, 1.0);
  *(a1 + 152) = 1;
  return a1;
}

void sub_29B052B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B08B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B052B88(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B0908;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29B052BE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B0908;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29B052C44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v8);
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v4 = v8[5];
  *(result + 4) = v8[4];
  *(result + 5) = v4;
  v5 = v8[7];
  *(result + 6) = v8[6];
  *(result + 7) = v5;
  v6 = v8[1];
  *result = v8[0];
  *(result + 1) = v6;
  v7 = v8[3];
  *(result + 2) = v8[2];
  *(result + 3) = v7;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29B052CE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

void *sub_29B052D10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0958;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B052D68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B052D84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B052DAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B052DDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B09A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B052E1C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B09D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29B052E78(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B09D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

uint64_t sub_29B052ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = result;
  return result;
}

void *sub_29B052F44(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0A20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B052F9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B052FB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B052FE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B053010(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B0A70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::UsdImagingUnloadedDrawModeSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::~UsdImagingUnloadedDrawModeSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this, const void *a2)
{
  *this = &unk_2A207B330;
  v2 = (this + 112);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC(v2);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::~UsdImagingUnloadedDrawModeSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent((a3 + 8), v21);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsLoaded(&v24, v21);
  v7 = v24;
  if (v24)
  {
    v3 = (*(*v24 + 32))(v24, 0.0);
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v21[0] + 1))
  {
    sub_29A014BEC(*(&v21[0] + 1));
  }

  if (!((v7 == 0) | v3 & 1))
  {
    if ((atomic_load_explicit(&qword_2A1757C00, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&qword_2A1757C00);
      if (v10)
      {
        SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetSchemaToken(v10);
        memset(v21, 0, sizeof(v21));
        v18 = 1;
        pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v18, &v19);
        v20 = v19;
        v19 = 0uLL;
        v12 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetApplyDrawMode(v21, &v20);
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        if (!v13)
        {
          v13 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        }

        sub_29ABCCFA4(v13 + 13, &v16);
        v17 = v16;
        v16 = 0uLL;
        v14 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetDrawMode(v12, &v17);
        pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::Build(v14, &v22);
        v23 = v22;
        v22 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v23, &v24);
        xmmword_2A1757BF0 = v24;
        v24 = 0uLL;
        if (*(&v23 + 1))
        {
          sub_29A014BEC(*(&v23 + 1));
        }

        if (*(&v22 + 1))
        {
          sub_29A014BEC(*(&v22 + 1));
        }

        if (*(&v17 + 1))
        {
          sub_29A014BEC(*(&v17 + 1));
        }

        if (*(&v16 + 1))
        {
          sub_29A014BEC(*(&v16 + 1));
        }

        if (*(&v20 + 1))
        {
          sub_29A014BEC(*(&v20 + 1));
        }

        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }

        sub_29AFEA120(v21);
        __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1757BF0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757C00);
      }
    }

    sub_29AD373C8(&xmmword_2A1757BF0, (a3 + 8), &v15);
    v8 = v15;
    v15 = 0uLL;
    v9 = *(a3 + 16);
    *(a3 + 8) = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }
  }
}

void sub_29B053444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, ...)
{
  va_start(va, a20);
  v23 = *(v21 - 56);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v21 - 72);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29AFEA120(va);
  __cxa_guard_abort(&qword_2A1757C00);
  sub_29AC2B620(v20);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::~UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  sub_29A124AB0(&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdPrimInfo");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "specifier");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "typeName");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "isLoaded");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "apiSchemas");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "kind");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "niPrototypePath");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "isNiPrototype");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "piPropagatedPrototypes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "def");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "over");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "class");
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  sub_29A12EF7C(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B053A84(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSpecifier(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABC4C48(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetTypeName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsLoaded(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABCB628(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetApiSchemas(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetKind(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 5);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePath(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsNiPrototype(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetPiPropagatedPrototypes(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v15 = &v70;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v16 = v72;
  if (*a1)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v18)
    {
      v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    v15 = v71;
    v16 = v72 + 1;
    sub_29A166F2C(v72, v18 + 1);
    v20 = *a1;
    v19 = a1[1];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(&v70 + 1);
    *&v70 = v20;
    *(&v70 + 1) = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (*a2)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v16, v23 + 2);
    ++v22;
    v25 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(v15 + 1);
    *v15 = v25;
    *(v15 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  if (*a3)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v22, v27 + 3);
    v28 = v22 + 1;
    v29 = &v71[v22 - 1];
    v31 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  if (*a4)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v33)
    {
      v33 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v28, v33 + 4);
    v34 = v28 + 1;
    v35 = &v71[v28 - 1];
    v37 = *a4;
    v36 = a4[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a5)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v39)
    {
      v39 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v34, v39 + 5);
    v40 = v34 + 1;
    v41 = &v71[v34 - 1];
    v43 = *a5;
    v42 = a5[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a6)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v45)
    {
      v45 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v40, v45 + 6);
    v46 = v40 + 1;
    v47 = &v71[v40 - 1];
    v49 = *a6;
    v48 = a6[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a7)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v51)
    {
      v51 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v46, v51 + 7);
    v52 = v46 + 1;
    v53 = &v71[v46 - 1];
    v55 = *a7;
    v54 = a7[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a8)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v57)
    {
      v57 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v52, v57 + 8);
    v58 = v52 + 1;
    v59 = &v71[v52 - 1];
    v61 = *a8;
    v60 = a8[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v58, v72, &v70, &v69);
  *a9 = v69;
  for (i = 120; i != -8; i -= 16)
  {
    v64 = *(&v71[-1] + i);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
    v66 = *(v72 + j);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B054614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 120;
  while (1)
  {
    v31 = *(&a13 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      v32 = 56;
      while (1)
      {
        v33 = *(&a29 + v32);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 -= 8;
        if (v32 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetSpecifier(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetTypeName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetIsLoaded(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetApiSchemas(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetKind(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetNiPrototypePath(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetIsNiPrototype(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetPiPropagatedPrototypes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens))
    {
      sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!result)
  {
    return sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757C40))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757C08, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757C40);
  }

  return &unk_2A1757C08;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePathLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757C80, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757C80);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757C48, &unk_2A1757C08, v3 + 6);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757C48, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757C80);
    }
  }

  return qword_2A1757C48;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::BuildSpecifierDataSource@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  if ((*(v4 + 9) ^ *this) > 7)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v6)
    {
      v6 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    if ((*(v6 + 10) ^ *this) > 7)
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v7)
      {
        v7 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      if ((*(v7 + 11) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v11);
        result = *&v11;
        *a2 = v11;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1757CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757CC8))
      {
        sub_29ABCCFA4(this, &qword_2A1757CB8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1757CB8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757CC8);
      }

      v5 = &qword_2A1757CB8;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1757CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757CB0))
      {
        sub_29ABCCFA4(this, &qword_2A1757CA0);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1757CA0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757CB0);
      }

      v5 = &qword_2A1757CA0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1757C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757C98))
    {
      sub_29ABCCFA4(this, &qword_2A1757C88);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1757C88, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757C98);
    }

    v5 = &qword_2A1757C88;
  }

  v9 = *v5;
  v8 = v5[1];
  *a2 = v9;
  *(a2 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::~UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  sub_29A124AB0(&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderProduct");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "resolution");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "pixelAspectRatio");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "aspectRatioConformPolicy");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "dataWindowNDC");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "disableMotionBlur");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "disableDepthOfField");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "camera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "productType");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "productName");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "orderedVars");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "namespacedSettings");
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  sub_29A12EF7C(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B0552FC(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetResolution(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29AC954CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetPixelAspectRatio(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetAspectRatioConformPolicy(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDataWindowNDC(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC959A0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableMotionBlur(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 5);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableDepthOfField(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 6);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetCamera(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 9);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 10);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 11);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v95 = *MEMORY[0x29EDCA608];
  v94 = 0;
  v19 = &v91;
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  v91 = 0u;
  v20 = v93;
  if (*a1)
  {
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v22)
    {
      v22 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v19 = v92;
    v20 = v93 + 1;
    sub_29A166F2C(v93, v22 + 1);
    v24 = *a1;
    v23 = a1[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(&v91 + 1);
    *&v91 = v24;
    *(&v91 + 1) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  if (*a2)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v20, v27 + 2);
    ++v26;
    v29 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(v19 + 1);
    *v19 = v29;
    *(v19 + 1) = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }
  }

  if (*a3)
  {
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v31)
    {
      v31 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v26, v31 + 3);
    v32 = v26 + 1;
    v33 = &v92[v26 - 1];
    v35 = *a3;
    v34 = a3[1];
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v36 = v33[1];
    *v33 = v35;
    v33[1] = v34;
    if (v36)
    {
      sub_29A014BEC(v36);
    }
  }

  else
  {
    v32 = v26;
  }

  if (*a4)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v37)
    {
      v37 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v32, v37 + 4);
    v38 = v32 + 1;
    v39 = &v92[v32 - 1];
    v41 = *a4;
    v40 = a4[1];
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v42 = v39[1];
    *v39 = v41;
    v39[1] = v40;
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  else
  {
    v38 = v32;
  }

  if (*a5)
  {
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v43)
    {
      v43 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v38, v43 + 5);
    v44 = v38 + 1;
    v45 = &v92[v38 - 1];
    v47 = *a5;
    v46 = a5[1];
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = v45[1];
    *v45 = v47;
    v45[1] = v46;
    if (v48)
    {
      sub_29A014BEC(v48);
    }
  }

  else
  {
    v44 = v38;
  }

  if (*a6)
  {
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v49)
    {
      v49 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v44, v49 + 6);
    v50 = v44 + 1;
    v51 = &v92[v44 - 1];
    v53 = *a6;
    v52 = a6[1];
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    v54 = v51[1];
    *v51 = v53;
    v51[1] = v52;
    if (v54)
    {
      sub_29A014BEC(v54);
    }
  }

  else
  {
    v50 = v44;
  }

  if (*a7)
  {
    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v55)
    {
      v55 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v50, v55 + 7);
    v56 = v50 + 1;
    v57 = &v92[v50 - 1];
    v59 = *a7;
    v58 = a7[1];
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    v60 = v57[1];
    *v57 = v59;
    v57[1] = v58;
    if (v60)
    {
      sub_29A014BEC(v60);
    }
  }

  else
  {
    v56 = v50;
  }

  if (*a8)
  {
    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v61)
    {
      v61 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v56, v61 + 8);
    v62 = v56 + 1;
    v63 = &v92[v56 - 1];
    v65 = *a8;
    v64 = a8[1];
    if (v64)
    {
      atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
    }

    v66 = v63[1];
    *v63 = v65;
    v63[1] = v64;
    if (v66)
    {
      sub_29A014BEC(v66);
    }
  }

  else
  {
    v62 = v56;
  }

  if (*a10)
  {
    v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v67)
    {
      v67 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v62, v67 + 9);
    v68 = v62 + 1;
    v69 = &v92[v62 - 1];
    v71 = *a10;
    v70 = a10[1];
    if (v70)
    {
      atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
    }

    v72 = v69[1];
    *v69 = v71;
    v69[1] = v70;
    if (v72)
    {
      sub_29A014BEC(v72);
    }
  }

  else
  {
    v68 = v62;
  }

  if (*a11)
  {
    v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v73)
    {
      v73 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v68, v73 + 10);
    v74 = v68 + 1;
    v75 = &v92[v68 - 1];
    v77 = *a11;
    v76 = a11[1];
    if (v76)
    {
      atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
    }

    v78 = v75[1];
    *v75 = v77;
    v75[1] = v76;
    if (v78)
    {
      sub_29A014BEC(v78);
    }
  }

  else
  {
    v74 = v68;
  }

  if (*a12)
  {
    v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v79)
    {
      v79 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v74, v79 + 11);
    v80 = v74 + 1;
    v81 = &v92[v74 - 1];
    v83 = *a12;
    v82 = a12[1];
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    v84 = v81[1];
    *v81 = v83;
    v81[1] = v82;
    if (v84)
    {
      sub_29A014BEC(v84);
    }
  }

  else
  {
    v80 = v74;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v80, v93, &v91, &v90);
  *a9 = v90;
  for (i = 168; i != -8; i -= 16)
  {
    v86 = *(&v92[-1] + i);
    if (v86)
    {
      sub_29A014BEC(v86);
    }
  }

  for (j = 80; j != -8; j -= 8)
  {
    v88 = *(v93 + j);
    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B056254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 168;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 80;
      while (1)
      {
        v18 = *(v13 - 192 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetResolution(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetPixelAspectRatio(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetAspectRatioConformPolicy(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDataWindowNDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDisableMotionBlur(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetDisableDepthOfField(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetCamera(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetProductType(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetProductName(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetOrderedVars(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens))
    {
      sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!result)
  {
    return sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757D08))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757CD0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757CD0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757D08);
  }

  return &unk_2A1757CD0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757D48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757D10, &unk_2A1757CD0, v3 + 11);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757D10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757D48);
    }
  }

  return qword_2A1757D10;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::~UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v14 = (this + 104);
  sub_29A124AB0(&v14);
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 11);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 10);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 9);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 8);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 7);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 6);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 5);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 4);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 3);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 2);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 1);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderSettings");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "resolution");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "pixelAspectRatio");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "aspectRatioConformPolicy");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "dataWindowNDC");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "disableMotionBlur");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 6, "disableDepthOfField");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 7, "camera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 8, "includedPurposes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 9, "materialBindingPurposes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 10, "renderingColorSpace");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 11, "products");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 12, "namespacedSettings");
  v3 = (this + 104);
  v4 = *this;
  v20 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v22 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v23 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v25 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v26 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v27 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v28 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v29 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v30 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v31 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v32 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  sub_29A12EF7C(v3, &v20, &v33, 0xDuLL);
  for (i = 96; i != -8; i -= 8)
  {
    v18 = *(&v20 + i);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B056E28(_Unwind_Exception *a1)
{
  v3 = 96;
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
      v5 = v1[12];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolution(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

  sub_29AC954CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatio(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicy(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDC(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC959A0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlur(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 5);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfField(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 6);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCamera(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposes(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 9);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpace(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 10);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 11);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  v5 = *(v4 + 12);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v101 = *MEMORY[0x29EDCA608];
  v20 = &v98;
  memset(v100, 0, sizeof(v100));
  v98 = 0u;
  memset(v99, 0, sizeof(v99));
  v21 = v100;
  if (*a1)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    v20 = v99;
    v21 = v100 + 1;
    sub_29A166F2C(v100, v23 + 1);
    v25 = *a1;
    v24 = a1[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(&v98 + 1);
    *&v98 = v25;
    *(&v98 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (*a2)
  {
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v28)
    {
      v28 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v21, v28 + 2);
    ++v27;
    v30 = *a2;
    v29 = a2[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(v20 + 1);
    *v20 = v30;
    *(v20 + 1) = v29;
    if (v31)
    {
      sub_29A014BEC(v31);
    }
  }

  if (*a3)
  {
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v32)
    {
      v32 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v27, v32 + 3);
    v33 = v27 + 1;
    v34 = &v99[v27 - 1];
    v36 = *a3;
    v35 = a3[1];
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = v34[1];
    *v34 = v36;
    v34[1] = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }
  }

  else
  {
    v33 = v27;
  }

  if (*a4)
  {
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v38)
    {
      v38 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v33, v38 + 4);
    v39 = v33 + 1;
    v40 = &v99[v33 - 1];
    v42 = *a4;
    v41 = a4[1];
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = v40[1];
    *v40 = v42;
    v40[1] = v41;
    if (v43)
    {
      sub_29A014BEC(v43);
    }
  }

  else
  {
    v39 = v33;
  }

  if (*a5)
  {
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v44)
    {
      v44 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v39, v44 + 5);
    v45 = v39 + 1;
    v46 = &v99[v39 - 1];
    v48 = *a5;
    v47 = a5[1];
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v46[1];
    *v46 = v48;
    v46[1] = v47;
    if (v49)
    {
      sub_29A014BEC(v49);
    }
  }

  else
  {
    v45 = v39;
  }

  if (*a6)
  {
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v50)
    {
      v50 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v45, v50 + 6);
    v51 = v45 + 1;
    v52 = &v99[v45 - 1];
    v54 = *a6;
    v53 = a6[1];
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = v52[1];
    *v52 = v54;
    v52[1] = v53;
    if (v55)
    {
      sub_29A014BEC(v55);
    }
  }

  else
  {
    v51 = v45;
  }

  if (*a7)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v56)
    {
      v56 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v51, v56 + 7);
    v57 = v51 + 1;
    v58 = &v99[v51 - 1];
    v60 = *a7;
    v59 = a7[1];
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = v58[1];
    *v58 = v60;
    v58[1] = v59;
    if (v61)
    {
      sub_29A014BEC(v61);
    }
  }

  else
  {
    v57 = v51;
  }

  if (*a8)
  {
    v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v62)
    {
      v62 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v57, v62 + 8);
    v63 = v57 + 1;
    v64 = &v99[v57 - 1];
    v66 = *a8;
    v65 = a8[1];
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = v64[1];
    *v64 = v66;
    v64[1] = v65;
    if (v67)
    {
      sub_29A014BEC(v67);
    }
  }

  else
  {
    v63 = v57;
  }

  if (*a10)
  {
    v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v68)
    {
      v68 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v63, v68 + 9);
    v69 = v63 + 1;
    v70 = &v99[v63 - 1];
    v72 = *a10;
    v71 = a10[1];
    if (v71)
    {
      atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
    }

    v73 = v70[1];
    *v70 = v72;
    v70[1] = v71;
    if (v73)
    {
      sub_29A014BEC(v73);
    }
  }

  else
  {
    v69 = v63;
  }

  if (*a11)
  {
    v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v74)
    {
      v74 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v69, v74 + 10);
    v75 = v69 + 1;
    v76 = &v99[v69 - 1];
    v78 = *a11;
    v77 = a11[1];
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = v76[1];
    *v76 = v78;
    v76[1] = v77;
    if (v79)
    {
      sub_29A014BEC(v79);
    }
  }

  else
  {
    v75 = v69;
  }

  if (*a12)
  {
    v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v80)
    {
      v80 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v75, v80 + 11);
    v81 = v75 + 1;
    v82 = &v99[v75 - 1];
    v84 = *a12;
    v83 = a12[1];
    if (v83)
    {
      atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
    }

    v85 = v82[1];
    *v82 = v84;
    v82[1] = v83;
    if (v85)
    {
      sub_29A014BEC(v85);
    }
  }

  else
  {
    v81 = v75;
  }

  if (*a13)
  {
    v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v86)
    {
      v86 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    sub_29A166F2C(v100 + v81, v86 + 12);
    v87 = v81 + 1;
    v88 = &v99[v81 - 1];
    v90 = *a13;
    v89 = a13[1];
    if (v89)
    {
      atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
    }

    v91 = v88[1];
    *v88 = v90;
    v88[1] = v89;
    if (v91)
    {
      sub_29A014BEC(v91);
    }
  }

  else
  {
    v87 = v81;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v87, v100, &v98, &v97);
  *a9 = v97;
  for (i = 184; i != -8; i -= 16)
  {
    v93 = *(&v99[-1] + i);
    if (v93)
    {
      sub_29A014BEC(v93);
    }
  }

  for (j = 88; j != -8; j -= 8)
  {
    v95 = *(v100 + j);
    if ((v95 & 7) != 0)
    {
      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B057EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 184;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 88;
      while (1)
      {
        v18 = *(v13 - 192 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetResolution(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetPixelAspectRatio(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetAspectRatioConformPolicy(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDataWindowNDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDisableMotionBlur(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetDisableDepthOfField(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetCamera(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetIncludedPurposes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetMaterialBindingPurposes(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetRenderingColorSpace(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetProducts(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = v4;
  *(a1 + 168) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens))
    {
      sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!result)
  {
    return sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757D88))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757D50, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757D50, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757D88);
  }

  return &unk_2A1757D50;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolutionLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757DC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757DC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757D90, &unk_2A1757D50, v3 + 1);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757D90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757DC8);
    }
  }

  return qword_2A1757D90;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatioLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757DD0, &unk_2A1757D50, v3 + 2);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757DD0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E08);
    }
  }

  return qword_2A1757DD0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicyLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757E10, &unk_2A1757D50, v3 + 3);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757E10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E48);
    }
  }

  return qword_2A1757E10;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDCLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757E88, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757E88);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757E50, &unk_2A1757D50, v3 + 4);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757E50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757E88);
    }
  }

  return qword_2A1757E50;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlurLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757EC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757EC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757E90, &unk_2A1757D50, v3 + 5);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757E90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757EC8);
    }
  }

  return qword_2A1757E90;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfFieldLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F08, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F08);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757ED0, &unk_2A1757D50, v3 + 6);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757ED0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F08);
    }
  }

  return qword_2A1757ED0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCameraLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F48, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F48);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757F10, &unk_2A1757D50, v3 + 7);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757F10, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F48);
    }
  }

  return qword_2A1757F10;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposesLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757F88, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757F88);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757F50, &unk_2A1757D50, v3 + 8);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757F50, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757F88);
    }
  }

  return qword_2A1757F50;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposesLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757FC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757FC8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757F90, &unk_2A1757D50, v3 + 9);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757F90, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757FC8);
    }
  }

  return qword_2A1757F90;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpaceLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758008, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758008);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1757FD0, &unk_2A1757D50, v3 + 10);
      __cxa_atexit(sub_29ABC33B4, qword_2A1757FD0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758008);
    }
  }

  return qword_2A1757FD0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProductsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758048, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758048);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1758010, &unk_2A1757D50, v3 + 11);
      __cxa_atexit(sub_29ABC33B4, qword_2A1758010, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758048);
    }
  }

  return qword_2A1758010;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758088, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758088);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A1758050, &unk_2A1757D50, v3 + 12);
      __cxa_atexit(sub_29ABC33B4, qword_2A1758050, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758088);
    }
  }

  return qword_2A1758050;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::~UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
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

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderVar");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "dataType");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "sourceName");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "sourceType");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "namespacedSettings");
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B0590EC(_Unwind_Exception *a1)
{
  v3 = 32;
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
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDataType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

  sub_29AC22098(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v17)
    {
      v17 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v21)
    {
      v21 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B05970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetDataType(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetSourceName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetSourceType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::Builder::SetNamespacedSettings(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens))
    {
      sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!result)
  {
    return sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A17580C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17580C8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1758090, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1758090, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17580C8);
  }

  return &unk_2A1758090;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettingsLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1758108, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1758108);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(qword_2A17580D0, &unk_2A1758090, v3 + 4);
      __cxa_atexit(sub_29ABC33B4, qword_2A17580D0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758108);
    }
  }

  return qword_2A17580D0;
}

void *sub_29B059B54()
{
  v1 = nullsub_1801;
  return sub_29B059ED4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::~UsdImagingRectLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 34);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 34);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::Populate()
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingRectLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, v6 + 34, a2, a3);
}

void *sub_29B059ED4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B0D50;
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

void sub_29B059F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B059F84(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B059FAC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B059FE8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B059FE8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B0D90;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B0B10;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05A094(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B0D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05A100()
{
  v1 = nullsub_1802;
  return sub_29B05A594(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::~UsdImagingRenderPassAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 41);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B05A3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05A3BC@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::UsdImagingDataSourceRenderPassPrim(v8, a1, &v13, a3);
  sub_29B05A7C0(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::InvalidateImagingSubprim(void *a1@<X2>, uint64_t **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderPassPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderPassAdapter::Populate@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

void *sub_29B05A594(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1020;
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

void sub_29B05A620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05A644(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05A66C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05A6A8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05A6A8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B1060;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B0DE0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05A754(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B1060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05A7C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B10B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05A818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05A834(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05A85C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05A88C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1100))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B05A8CC()
{
  v1 = nullsub_1803;
  return sub_29B05AD64(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::~UsdImagingRenderProductAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  }

  v5 = *v4;
  *a2 = *v4;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B05AB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05AB88@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::UsdImagingDataSourceRenderProductPrim(v8, a1, &v13, a3);
  sub_29B05AF90(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::InvalidateImagingSubprim(void *a1@<X2>, uint64_t **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderProductPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderProductAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

void *sub_29B05AD64(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1368;
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

void sub_29B05ADF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05AE14(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05AE3C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05AE78(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05AE78(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B13A8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1128;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05AF24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B13A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05AF90(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B13F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05AFE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05B004(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05B02C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05B05C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1448))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B05B09C()
{
  v1 = nullsub_1804;
  return sub_29B05C9A4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::~UsdImagingRenderSettingsAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v5 = *(v4 + 40);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B05B344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B05B358@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::UsdImagingDataSourceRenderSettingsPrim(v8, a1, &v13, a3);
  sub_29B05CBD0(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::InvalidateImagingSubprim(void *a1@<X2>, uint64_t **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderSettingsPrim::Invalidate(a2, a3);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsBprimTypeSupported(a2, v3 + 40);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFE7290(a3, v5 + 40, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::TrackVariability(int a1, pxrInternal__aapl__pxrReserved__::UsdPrim *this, uint64_t a3, _DWORD *a4)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(this, &v9);
  v8[0] = v9;
  v8[1] = v10;
  if (v9 != v10)
  {
    v6 = sub_29A7885F8(v8, v4, v5);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(v6, v7);
  }

  v8[0] = &v9;
  sub_29A5BB908(v8);
}

void sub_29B05BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  sub_29A5BB908(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v5)
  {
    v5 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v5 + 18) ^ *a4) < 8)
  {
    return 16;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v7)
  {
    v7 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v7 + 23) ^ *a4) < 8)
  {
    return 32;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v8)
  {
    v8 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v8 + 34) ^ *a4) >= 8)
  {
    return 12;
  }

  else
  {
    return 64;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  if (!v10)
  {
    v10 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
  }

  if ((*(v10 + 1) ^ *a4) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v11)
    {
      v11 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v11 + 2) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v34, a2);
      v34 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(this);
      pxrInternal__aapl__pxrReserved__::UsdRenderComputeSpec(&v34, v26);
      v25[0] = &v30;
      sub_29A124AB0(v25);
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings(&v34);
      memset(v25, 0, sizeof(v25));
      sub_29ACCA484(v25, 0x6DB6DB6DB6DB6DB7 * ((v26[1] - v26[0]) >> 4));
      v12 = v26[0];
      for (i = v26[1]; v12 != i; v12 = (v12 + 112))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v34);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v34 + 1);
        memset(v35, 0, sizeof(v35));
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v36);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v37);
        v38 = 0;
        v39 = 0;
        v40 = xmmword_29B480F70;
        v42 = 0;
        sub_29A2258F0(&v34, v12);
        sub_29A225948(&v34 + 1, v12 + 1);
        sub_29A166F2C(v35, v12 + 1);
        sub_29A166F2C(v35 + 1, v12 + 2);
        *&v35[1] = *(v12 + 36);
        sub_29ACCA870(&v35[1] + 1, (*(v12 + 11) - *(v12 + 10)) >> 3);
        v14 = *(v12 + 10);
        v15 = *(v12 + 11);
        while (v14 != v15)
        {
          v16 = *(&v27 + 1) + 56 * *v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30 + 1);
          v33 = 0u;
          v32 = 0u;
          v31 = 0u;
          sub_29A2258F0(&v30, v16);
          sub_29A225948(&v30 + 1, (v16 + 4));
          sub_29A166F2C(&v31, (v16 + 8));
          std::string::operator=((&v31 + 8), (v16 + 16));
          sub_29A166F2C(&v33, (v16 + 40));
          pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v33 + 1, (v16 + 48));
          sub_29ACCA958(&v35[1] + 8, &v30);
          sub_29A184A10(&v33 + 1, 0);
          if ((v33 & 7) != 0)
          {
            atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(*(&v31 + 1));
          }

          if ((v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
          sub_29A1DE3A4(&v30);
          ++v14;
        }

        sub_29A2258F0(&v36, v12 + 6);
        sub_29A225948(v37, v12 + 7);
        v37[1] = *(v12 + 11);
        sub_29A166F2C(&v38, v12 + 6);
        v39 = *(v12 + 7);
        v40 = *(v12 + 4);
        v41 = *(v12 + 16);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v42, v12 + 13);
        sub_29ACCA560(v25, &v34);
        sub_29AC97A08(&v34);
      }

      *(a5 + 8) = &off_2A2084A30;
      sub_29ACCB0C8(a5, v25);
      v34 = v25;
      sub_29AC97984(&v34);
      sub_29A184A10(&v29, 0);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v17)
    {
      v17 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v17 + 3) ^ *a4) <= 7)
    {
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v30, a2);
      v30 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetIncludedPurposesAttr(&v34, &v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v18)
    {
      v18 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    if ((*(v18 + 4) ^ *a4) <= 7)
    {
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v30, a2);
      v30 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetMaterialBindingPurposesAttr(&v34, &v30);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v19)
    {
      v19 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    v20 = *a4;
    if ((*(v19 + 5) ^ *a4) <= 7)
    {
      v30 = 0;
      v21 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v34, a2);
      v34 = &unk_2A2062088;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetRenderingColorSpaceAttr(v21, v26);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v26[0] = "usdImaging/renderSettingsAdapter.cpp";
    v26[1] = "Get";
    *&v27 = 342;
    *(&v27 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
    LOBYTE(v28) = 0;
    v22 = v20 & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v23 = "";
    }

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v26, 1, "Property %s not supported for RenderSettings by UsdImaging, path: %s", v23, Text);
    *(a5 + 8) = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(this);
    pxrInternal__aapl__pxrReserved__::UsdRenderComputeNamespacedSettings(a2, v26, &v30);
    *(a5 + 8) = &off_2A2042030;
    sub_29A187864(a5, &v30);
    sub_29A184A10(&v30, 0);
    v34 = v26;
    sub_29A124AB0(&v34);
  }
}

void sub_29B05C838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_29A5888DC(&a17);
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((v34 - 208));
  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29B05C9A4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B16B0;
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

void sub_29B05CA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05CA54(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B05CA7C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B05CAB8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B05CAB8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B16F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1470;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B05CB64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B16F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B05CBD0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B1740;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B05CC28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B05CC44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05CC6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05CC9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1790))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29B05CCDC()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "outputs:ri:integrator");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "outputs:ri:sampleFilters");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "outputs:ri:displayFilters");
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1758110, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1758110);
  }

  return v0;
}

void sub_29B05CE58(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::UsdImagingRenderSettingsFlatteningSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v7 + 40) ^ *a3) <= 7)
  {
    v8 = operator new(0x28uLL);
    v10 = a3[1];
    v9 = a3[2];
    *v8 = &unk_2A20B1830;
    v8[1] = v10;
    v8[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v8[3] = *(this + 14);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingRenderSettingsFlatteningSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29B05D25C(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  v2 = a1 + 14;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC(v2);
}

void sub_29B05D2C0(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  v2 = a1 + 14;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC(v2);
}

void *sub_29B05D328@<X0>(void *a1@<X8>)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1878;
  *a1 = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A20B18C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

void sub_29B05D3A0(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29B05D3B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void sub_29B05D414(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC((a1 + 24));
}

void *sub_29B05D474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetSchemaToken(v3);
  v5 = sub_29A1D8028(a2, SchemaToken);
  v6 = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(v5);
  return sub_29A1D8028(a2, v6);
}

void sub_29B05D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B05D4FC(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetSchemaToken(a1);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    v7 = operator new(0x20uLL);
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    *v7 = &unk_2A20B1938;
    v7[1] = v9;
    v7[2] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v7[3] = *(a1 + 24);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(SchemaToken) ^ *a2) > 7)
  {
    v53 = *(**(a1 + 8) + 24);

    v53();
  }

  else
  {
    if (*(a1 + 8))
    {
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v125 = 0;
      v126 = 0;
      v127 = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), __p);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(__p, &v117);
      if (v117.__r_.__value_.__r.__words[0])
      {
        (*(*v117.__r_.__value_.__l.__data_ + 32))(v123, 0.0);
        v139 = 0;
        v140 = 0;
        v138 = &v139;
        if (*v123)
        {
          v10 = v124;
          v11 = (v124 + 8 * *v123);
          do
          {
            v12 = sub_29AC1199C((a1 + 24));
            (*(*v12 + 16))(&v136);
            if (*(&v136 + 1))
            {
              pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(&v136 + 1, &v135);
              if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v135))
              {
                sub_29A1E28B4(&v128, v10);
                pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(&v135, &v134);
                if (v134)
                {
                  (*(*v134 + 32))(&v131, 0.0);
                  if (v131)
                  {
                    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
                  }

                  sub_29ABED558(&v131);
                }

                if (*(&v134 + 1))
                {
                  sub_29A014BEC(*(&v134 + 1));
                }
              }

              if (*(&v135 + 1))
              {
                sub_29A014BEC(*(&v135 + 1));
              }
            }

            if (v137)
            {
              sub_29A014BEC(v137);
            }

            if ((v136 & 7) != 0)
            {
              atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v10 += 2;
          }

          while (v10 != v11);
          v13 = v138;
          if (v138 != &v139)
          {
            do
            {
              v14 = sub_29AC1199C((a1 + 24));
              (*(*v14 + 16))(&v131);
              if (v132)
              {
                pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(&v132, &v136);
                if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v136))
                {
                  sub_29A1E28B4(&v125, v13 + 7);
                }

                if (*(&v136 + 1))
                {
                  sub_29A014BEC(*(&v136 + 1));
                }
              }

              if (v133)
              {
                sub_29A014BEC(v133);
              }

              if ((v131 & 7) != 0)
              {
                atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v15 = v13[1];
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
                  v16 = v13[2];
                  v17 = *v16 == v13;
                  v13 = v16;
                }

                while (!v17);
              }

              v13 = v16;
            }

            while (v16 != &v139);
          }
        }

        sub_29A1E2AEC(&v138, v139);
        sub_29ABED558(v123);
      }

      if (v117.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v117.__r_.__value_.__l.__size_);
      }

      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      if ((atomic_load_explicit(&qword_2A17586D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17586D8))
      {
        v54 = atomic_load(qword_2A17586E0);
        if (!v54)
        {
          v54 = sub_29B0600FC();
        }

        v55 = *v54;
        qword_2A1758138 = v55;
        if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758138 &= 0xFFFFFFFFFFFFFFF8;
        }

        IncludedPurposesLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposesLocator(v54);
        v57 = sub_29ABD30AC(dword_2A1758140, IncludedPurposesLocator);
        v58 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetIncludedPurposesLocator(v57);
        sub_29ABD30AC(dword_2A1758178, v58);
        v59 = atomic_load(qword_2A17586E0);
        if (!v59)
        {
          v59 = sub_29B0600FC();
        }

        v60 = v59[1];
        qword_2A17581B0 = v60;
        if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17581B0 &= 0xFFFFFFFFFFFFFFF8;
        }

        MaterialBindingPurposesLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposesLocator(v59);
        v62 = sub_29ABD30AC(dword_2A17581B8, MaterialBindingPurposesLocator);
        v63 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetMaterialBindingPurposesLocator(v62);
        sub_29ABD30AC(dword_2A17581F0, v63);
        v64 = atomic_load(qword_2A17586E0);
        if (!v64)
        {
          v64 = sub_29B0600FC();
        }

        v65 = v64[2];
        qword_2A1758228 = v65;
        if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758228 &= 0xFFFFFFFFFFFFFFF8;
        }

        NamespacedSettingsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettingsLocator(v64);
        v67 = sub_29ABD30AC(dword_2A1758230, NamespacedSettingsLocator);
        v68 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetNamespacedSettingsLocator(v67);
        sub_29ABD30AC(dword_2A1758268, v68);
        v69 = atomic_load(qword_2A17586E0);
        if (!v69)
        {
          v69 = sub_29B0600FC();
        }

        v70 = v69[3];
        qword_2A17582A0 = v70;
        if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17582A0 &= 0xFFFFFFFFFFFFFFF8;
        }

        RenderingColorSpaceLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpaceLocator(v69);
        v72 = sub_29ABD30AC(dword_2A17582A8, RenderingColorSpaceLocator);
        v73 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderingColorSpaceLocator(v72);
        sub_29ABD30AC(dword_2A17582E0, v73);
        v74 = atomic_load(qword_2A17586E0);
        if (!v74)
        {
          v74 = sub_29B0600FC();
        }

        v75 = v74[4];
        qword_2A1758318 = v75;
        if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758318 &= 0xFFFFFFFFFFFFFFF8;
        }

        ResolutionLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolutionLocator(v74);
        v77 = sub_29ABD30AC(dword_2A1758320, ResolutionLocator);
        RenderProductsLocator = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v77);
        sub_29ABD30AC(dword_2A1758358, RenderProductsLocator);
        v79 = atomic_load(qword_2A17586E0);
        if (!v79)
        {
          v79 = sub_29B0600FC();
        }

        v80 = v79[5];
        qword_2A1758390 = v80;
        if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758390 &= 0xFFFFFFFFFFFFFFF8;
        }

        PixelAspectRatioLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatioLocator(v79);
        v82 = sub_29ABD30AC(dword_2A1758398, PixelAspectRatioLocator);
        v83 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v82);
        sub_29ABD30AC(dword_2A17583D0, v83);
        v84 = atomic_load(qword_2A17586E0);
        if (!v84)
        {
          v84 = sub_29B0600FC();
        }

        v85 = v84[6];
        qword_2A1758408 = v85;
        if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758408 &= 0xFFFFFFFFFFFFFFF8;
        }

        AspectRatioConformPolicyLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicyLocator(v84);
        v87 = sub_29ABD30AC(dword_2A1758410, AspectRatioConformPolicyLocator);
        v88 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v87);
        sub_29ABD30AC(dword_2A1758448, v88);
        v89 = atomic_load(qword_2A17586E0);
        if (!v89)
        {
          v89 = sub_29B0600FC();
        }

        v90 = v89[7];
        qword_2A1758480 = v90;
        if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758480 &= 0xFFFFFFFFFFFFFFF8;
        }

        DataWindowNDCLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDCLocator(v89);
        v92 = sub_29ABD30AC(dword_2A1758488, DataWindowNDCLocator);
        v93 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v92);
        sub_29ABD30AC(dword_2A17584C0, v93);
        v94 = atomic_load(qword_2A17586E0);
        if (!v94)
        {
          v94 = sub_29B0600FC();
        }

        v95 = v94[8];
        qword_2A17584F8 = v95;
        if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17584F8 &= 0xFFFFFFFFFFFFFFF8;
        }

        DisableMotionBlurLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlurLocator(v94);
        v97 = sub_29ABD30AC(dword_2A1758500, DisableMotionBlurLocator);
        v98 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v97);
        sub_29ABD30AC(dword_2A1758538, v98);
        v99 = atomic_load(qword_2A17586E0);
        if (!v99)
        {
          v99 = sub_29B0600FC();
        }

        v100 = v99[9];
        qword_2A1758570 = v100;
        if ((v100 & 7) != 0 && (atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758570 &= 0xFFFFFFFFFFFFFFF8;
        }

        DisableDepthOfFieldLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfFieldLocator(v99);
        v102 = sub_29ABD30AC(dword_2A1758578, DisableDepthOfFieldLocator);
        v103 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v102);
        sub_29ABD30AC(dword_2A17585B0, v103);
        v104 = atomic_load(qword_2A17586E0);
        if (!v104)
        {
          v104 = sub_29B0600FC();
        }

        v105 = v104[10];
        qword_2A17585E8 = v105;
        if ((v105 & 7) != 0 && (atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A17585E8 &= 0xFFFFFFFFFFFFFFF8;
        }

        CameraLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCameraLocator(v104);
        v107 = sub_29ABD30AC(dword_2A17585F0, CameraLocator);
        v108 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v107);
        sub_29ABD30AC(dword_2A1758628, v108);
        v109 = atomic_load(qword_2A17586E0);
        if (!v109)
        {
          v109 = sub_29B0600FC();
        }

        v110 = v109[11];
        qword_2A1758660 = v110;
        if ((v110 & 7) != 0 && (atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          qword_2A1758660 &= 0xFFFFFFFFFFFFFFF8;
        }

        ProductsLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProductsLocator(v109);
        v112 = sub_29ABD30AC(dword_2A1758668, ProductsLocator);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v112);
        sub_29ABD30AC(dword_2A17586A0, DefaultLocator);
        __cxa_atexit(sub_29B060770, 0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17586D8);
      }

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v18 = ((v129 - v128) >> 3) + ((v126 - v125) >> 3);
      sub_29A1D7F98(&v131, v18 + 12);
      sub_29A039314(&v138, v18 + 12);
      v19 = &qword_2A1758138;
      v20 = 1440;
      do
      {
        sub_29A1D8028(&v131, v19);
        v124 = 0u;
        memset(v123, 0, sizeof(v123));
        sub_29ABE8360((a1 + 32), &v135);
        *&v117.__r_.__value_.__l.__data_ = v135;
        v135 = 0uLL;
        v21 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v117);
        sub_29AD24300((v19 + 1), &v122);
        v134 = v122;
        v122 = 0uLL;
        v22 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v21, &v134);
        sub_29AD24300((v19 + 8), &v120);
        v121 = v120;
        v120 = 0uLL;
        v23 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v22, &v121);
        pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v23, __p);
        v136 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        sub_29A01729C(&v138, &v136);
        if (*(&v136 + 1))
        {
          sub_29A014BEC(*(&v136 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v134 + 1))
        {
          sub_29A014BEC(*(&v134 + 1));
        }

        if (*(&v122 + 1))
        {
          sub_29A014BEC(*(&v122 + 1));
        }

        if (v117.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v117.__r_.__value_.__l.__size_);
        }

        if (*(&v135 + 1))
        {
          sub_29A014BEC(*(&v135 + 1));
        }

        if (*(&v124 + 1))
        {
          sub_29A014BEC(*(&v124 + 1));
        }

        if (*&v123[24])
        {
          sub_29A014BEC(*&v123[24]);
        }

        if (*&v123[8])
        {
          sub_29A014BEC(*&v123[8]);
        }

        v19 += 15;
        v20 -= 120;
      }

      while (v20);
      sub_29A008E78(&v136, "renderSettings_depOn_");
      if (v129 != v128)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if (SHIBYTE(v137) >= 0)
          {
            v26 = HIBYTE(v137);
          }

          else
          {
            v26 = *(&v136 + 1);
          }

          sub_29A022DE0(v123, v26 + 8);
          if (v123[23] >= 0)
          {
            v27 = v123;
          }

          else
          {
            v27 = *v123;
          }

          if (v26)
          {
            if (SHIBYTE(v137) >= 0)
            {
              v28 = &v136;
            }

            else
            {
              v28 = v136;
            }

            memmove(v27, v28, v26);
          }

          strcpy(&v27[v26], "product_");
          std::to_string(&v117, v25);
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v117;
          }

          else
          {
            v29 = v117.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v117.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(v123, v29, size);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v119 = v31->__r_.__value_.__r.__words[2];
          *__p = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          if ((v123[23] & 0x80000000) != 0)
          {
            operator delete(*v123);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v123, __p);
          sub_29A153214(&v131, v123);
          if ((v123[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v124 = 0u;
          memset(v123, 0, sizeof(v123));
          sub_29ABE8360((v128 + v24), &v122);
          v134 = v122;
          v122 = 0uLL;
          v33 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v134);
          v34 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDefaultLocator(v33);
          sub_29AD24300(v34, &v120);
          v121 = v120;
          v120 = 0uLL;
          v35 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v33, &v121);
          v36 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v35);
          sub_29AD24300(v36, &v115);
          v116 = v115;
          v115 = 0uLL;
          v37 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v35, &v116);
          pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v37, &v135);
          *&v117.__r_.__value_.__l.__data_ = v135;
          v135 = 0uLL;
          sub_29A01729C(&v138, &v117);
          if (v117.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v117.__r_.__value_.__l.__size_);
          }

          if (*(&v135 + 1))
          {
            sub_29A014BEC(*(&v135 + 1));
          }

          if (*(&v116 + 1))
          {
            sub_29A014BEC(*(&v116 + 1));
          }

          if (*(&v115 + 1))
          {
            sub_29A014BEC(*(&v115 + 1));
          }

          if (*(&v121 + 1))
          {
            sub_29A014BEC(*(&v121 + 1));
          }

          if (*(&v120 + 1))
          {
            sub_29A014BEC(*(&v120 + 1));
          }

          if (*(&v134 + 1))
          {
            sub_29A014BEC(*(&v134 + 1));
          }

          if (*(&v122 + 1))
          {
            sub_29A014BEC(*(&v122 + 1));
          }

          if (*(&v124 + 1))
          {
            sub_29A014BEC(*(&v124 + 1));
          }

          if (*&v123[24])
          {
            sub_29A014BEC(*&v123[24]);
          }

          if (*&v123[8])
          {
            sub_29A014BEC(*&v123[8]);
          }

          if (SHIBYTE(v119) < 0)
          {
            operator delete(__p[0]);
          }

          ++v25;
          v24 += 8;
        }

        while (v25 < (v129 - v128) >> 3);
      }

      if (v126 != v125)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          if (SHIBYTE(v137) >= 0)
          {
            v40 = HIBYTE(v137);
          }

          else
          {
            v40 = *(&v136 + 1);
          }

          sub_29A022DE0(v123, v40 + 4);
          if (v123[23] >= 0)
          {
            v41 = v123;
          }

          else
          {
            v41 = *v123;
          }

          if (v40)
          {
            if (SHIBYTE(v137) >= 0)
            {
              v42 = &v136;
            }

            else
            {
              v42 = v136;
            }

            memmove(v41, v42, v40);
          }

          strcpy(&v41[v40], "var_");
          std::to_string(&v117, v39);
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v117;
          }

          else
          {
            v43 = v117.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v117.__r_.__value_.__l.__size_;
          }

          v45 = std::string::append(v123, v43, v44);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v119 = v45->__r_.__value_.__r.__words[2];
          *__p = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          if ((v123[23] & 0x80000000) != 0)
          {
            operator delete(*v123);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v123, __p);
          sub_29A153214(&v131, v123);
          if ((v123[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v124 = 0u;
          memset(v123, 0, sizeof(v123));
          sub_29ABE8360((v125 + v38), &v122);
          v134 = v122;
          v122 = 0uLL;
          v47 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnPrimPath(v123, &v134);
          v48 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDefaultLocator(v47);
          sub_29AD24300(v48, &v120);
          v121 = v120;
          v120 = 0uLL;
          v49 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetDependedOnDataSourceLocator(v47, &v121);
          v50 = pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchema::GetRenderProductsLocator(v49);
          sub_29AD24300(v50, &v115);
          v116 = v115;
          v115 = 0uLL;
          v51 = pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::SetAffectedDataSourceLocator(v49, &v116);
          pxrInternal__aapl__pxrReserved__::HdDependencySchema::Builder::Build(v51, &v135);
          *&v117.__r_.__value_.__l.__data_ = v135;
          v135 = 0uLL;
          sub_29A01729C(&v138, &v117);
          if (v117.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v117.__r_.__value_.__l.__size_);
          }

          if (*(&v135 + 1))
          {
            sub_29A014BEC(*(&v135 + 1));
          }

          if (*(&v116 + 1))
          {
            sub_29A014BEC(*(&v116 + 1));
          }

          if (*(&v115 + 1))
          {
            sub_29A014BEC(*(&v115 + 1));
          }

          if (*(&v121 + 1))
          {
            sub_29A014BEC(*(&v121 + 1));
          }

          if (*(&v120 + 1))
          {
            sub_29A014BEC(*(&v120 + 1));
          }

          if (*(&v134 + 1))
          {
            sub_29A014BEC(*(&v134 + 1));
          }

          if (*(&v122 + 1))
          {
            sub_29A014BEC(*(&v122 + 1));
          }

          if (*(&v124 + 1))
          {
            sub_29A014BEC(*(&v124 + 1));
          }

          if (*&v123[24])
          {
            sub_29A014BEC(*&v123[24]);
          }

          if (*&v123[8])
          {
            sub_29A014BEC(*&v123[8]);
          }

          if (SHIBYTE(v119) < 0)
          {
            operator delete(__p[0]);
          }

          ++v39;
          v38 += 8;
        }

        while (v39 < (v126 - v125) >> 3);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v132 - v131) >> 3, v131, v138, v123);
      v114 = *v123;
      if (SHIBYTE(v137) < 0)
      {
        operator delete(v136);
      }

      *v123 = &v138;
      sub_29A0176E4(v123);
      *v123 = &v131;
      sub_29A124AB0(v123);
      *v123 = &v125;
      sub_29A1E234C(v123);
      *v123 = &v128;
      sub_29A1E234C(v123);
      v52 = v114;
    }

    else
    {
      v52 = 0uLL;
    }

    *a3 = v52;
  }
}

void sub_29B05E5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  do
  {
    v48 -= 15;
    sub_29AC13BD0(v48);
  }

  while (v48 != &qword_2A1758138);
  __cxa_guard_abort(&qword_2A17586D8);
  a35 = &a45;
  sub_29A1E234C(&a35);
  a35 = &a48;
  sub_29A1E234C(&a35);
  _Unwind_Resume(a1);
}

void sub_29B05EB74(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void sub_29B05EB9C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29B05EBB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B05EBDC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B05EC0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1910))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B05ECE0(void *a1@<X8>)
{
  v1 = a1;
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1758130, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1758130);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v5 = *(v4 + 1);
      v16 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v7 = *(v6 + 3);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v9 = *(v8 + 4);
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v10)
      {
        v10 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v11 = *(v10 + 5);
      v19 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v13 = *(v12 + 6);
      v20 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1758118 = 0;
      unk_2A1758120 = 0;
      qword_2A1758128 = 0;
      sub_29A12EF7C(&qword_2A1758118, &v16, &v21, 5uLL);
      for (i = 32; i != -8; i -= 8)
      {
        v15 = *(&v16 + i);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1758118, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1758130);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29B05F018(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetNamespacedSettings(&v106, v77);
    goto LABEL_5;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) > 7)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v56)
    {
      v56 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    if ((*(v56 + 4) ^ *a2) > 7)
    {
      v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v57)
      {
        v57 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      if ((*(v57 + 5) ^ *a2) > 7)
      {
        v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
        if (!v58)
        {
          v58 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
        }

        if ((*(v58 + 6) ^ *a2) > 7)
        {
          v59 = *(**(a1 + 8) + 24);

          v59();
          return;
        }

        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetRenderingColorSpace(&v106, v77);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
        pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetMaterialBindingPurposes(&v106, v77);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent((a1 + 8), &v106);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetIncludedPurposes(&v106, v77);
    }

LABEL_5:
    *a3 = *v77;
    v7 = *(&v106 + 1);
    if (!*(&v106 + 1))
    {
      return;
    }

    goto LABEL_6;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (!v10)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetFromParent(v9, &v81);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetProducts(&v81, &v79);
  if (v79)
  {
    (*(*v79 + 32))(v77, 0.0);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    sub_29A039314(&v74, v77[0]);
    if (v77[0])
    {
      v11 = v78;
      v12 = &v78[2 * v77[0]];
      do
      {
        v13 = sub_29AC1199C(v9 + 2);
        (*(*v13 + 16))(&v71);
        if (v72)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetFromParent(&v72, &v69);
          if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v69))
          {
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(&v69, &v67);
            (*(*v67 + 32))(v66, 0.0);
            v63 = 0;
            v64 = 0;
            v65 = 0;
            sub_29A039314(&v63, v66[0]);
            if (v66[0])
            {
              v14 = v66[4];
              v15 = 8 * v66[0];
              do
              {
                v16 = sub_29AC1199C(v9 + 2);
                (*(*v16 + 16))(&v61);
                if (v61.i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetFromParent(&v61.i64[1], &v103);
                  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v103))
                  {
                    v109 = 0u;
                    v110 = 0u;
                    v107 = 0u;
                    v108 = 0u;
                    v106 = 0u;
                    sub_29ABE8360(v14, &v127);
                    v128 = v127;
                    v127 = 0uLL;
                    v17 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetPath(&v106, &v128);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetDataType(&v103, &v126);
                    v18 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetDataType(v17, v126.i64);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceName(&v103, &v121);
                    (*(*v121 + 32))(&v122, 0.0);
                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v101, &v122);
                    sub_29ABCCFA4(v101.i64, &v124);
                    v125 = v124;
                    v124 = 0uLL;
                    v19 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceName(v18, v125.i64);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetSourceType(&v103, &v120);
                    v20 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceType(v19, &v120);
                    pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchema::GetNamespacedSettings(&v103, &v119);
                    v21 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetNamespacedSettings(v20, v119.i64);
                    pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::Build(v129.i64, v21);
                    v102 = v129;
                    v129 = 0uLL;
                    if (v119.i64[1])
                    {
                      sub_29A014BEC(v119.i64[1]);
                    }

                    if (*(&v120 + 1))
                    {
                      sub_29A014BEC(*(&v120 + 1));
                    }

                    if (v125.i64[1])
                    {
                      sub_29A014BEC(v125.i64[1]);
                    }

                    if (v124.i64[1])
                    {
                      sub_29A014BEC(v124.i64[1]);
                    }

                    if ((v101.i8[0] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v101.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    if (v123 < 0)
                    {
                      operator delete(v122);
                    }

                    if (*(&v121 + 1))
                    {
                      sub_29A014BEC(*(&v121 + 1));
                    }

                    if (v126.i64[1])
                    {
                      sub_29A014BEC(v126.i64[1]);
                    }

                    if (*(&v128 + 1))
                    {
                      sub_29A014BEC(*(&v128 + 1));
                    }

                    if (*(&v127 + 1))
                    {
                      sub_29A014BEC(*(&v127 + 1));
                    }

                    if (*(&v110 + 1))
                    {
                      sub_29A014BEC(*(&v110 + 1));
                    }

                    if (*(&v109 + 1))
                    {
                      sub_29A014BEC(*(&v109 + 1));
                    }

                    if (*(&v108 + 1))
                    {
                      sub_29A014BEC(*(&v108 + 1));
                    }

                    if (*(&v107 + 1))
                    {
                      sub_29A014BEC(*(&v107 + 1));
                    }

                    if (*(&v106 + 1))
                    {
                      sub_29A014BEC(*(&v106 + 1));
                    }

                    sub_29A01729C(&v63, &v102);
                    if (v102.i64[1])
                    {
                      sub_29A014BEC(v102.i64[1]);
                    }
                  }

                  if (v103.i64[1])
                  {
                    sub_29A014BEC(v103.i64[1]);
                  }
                }

                if (v62)
                {
                  sub_29A014BEC(v62);
                }

                if ((v61.i8[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((v61.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v14 += 2;
                v15 -= 8;
              }

              while (v15);
            }

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v106 = 0u;
            sub_29ABE8360(v11, &v129);
            v61 = v129;
            v129 = 0uLL;
            v22 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPath(&v106, v61.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductType(&v69, &v128);
            v23 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetType(v22, &v128);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductName(&v69, &v127);
            v24 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetName(v23, &v127);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetResolution(&v69, &v125);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetResolution(&v81, &v124);
            v25 = vdup_n_s32(v125.i64[0] == 0);
            v26.i64[0] = v25.u32[0];
            v26.i64[1] = v25.u32[1];
            v27 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v26, 0x3FuLL)), v124, v125);
            v126 = v27;
            if (v27.i64[1])
            {
              atomic_fetch_add_explicit((v27.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v28 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetResolution(v24, v126.i64);
            v105 = (v64 - v63) >> 4;
            v104 = v63;
            sub_29AC00FD8(&v105, &v104, &v120);
            v121 = v120;
            v120 = 0uLL;
            v29 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetRenderVars(v28, &v121);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetCamera(&v69, &v103);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetCamera(&v81, &v102);
            v30 = vdup_n_s32(v103.i64[0] == 0);
            v31.i64[0] = v30.u32[0];
            v31.i64[1] = v30.u32[1];
            v32 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL)), v102, v103);
            v119 = v32;
            if (v32.i64[1])
            {
              atomic_fetch_add_explicit((v32.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v33 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetCameraPrim(v29, v119.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetPixelAspectRatio(&v69, &v100);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetPixelAspectRatio(&v81, &v99);
            v34 = vdup_n_s32(v100.i64[0] == 0);
            v35.i64[0] = v34.u32[0];
            v35.i64[1] = v34.u32[1];
            v36 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v35, 0x3FuLL)), v99, v100);
            v101 = v36;
            if (v36.i64[1])
            {
              atomic_fetch_add_explicit((v36.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v37 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPixelAspectRatio(v33, v101.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetAspectRatioConformPolicy(&v69, &v97);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetAspectRatioConformPolicy(&v81, &v96);
            v38 = vdup_n_s32(v97.i64[0] == 0);
            v39.i64[0] = v38.u32[0];
            v39.i64[1] = v38.u32[1];
            v40 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v39, 0x3FuLL)), v96, v97);
            v98 = v40;
            if (v40.i64[1])
            {
              atomic_fetch_add_explicit((v40.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v41 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetAspectRatioConformPolicy(v37, v98.i64);
            v94 = 0;
            v95 = 0;
            v42 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetApertureSize(v41, &v94);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDataWindowNDC(&v69, &v92);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDataWindowNDC(&v81, &v91);
            v43 = vdup_n_s32(v92.i64[0] == 0);
            v44.i64[0] = v43.u32[0];
            v44.i64[1] = v43.u32[1];
            v45 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v44, 0x3FuLL)), v91, v92);
            v93 = v45;
            if (v45.i64[1])
            {
              atomic_fetch_add_explicit((v45.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v46 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDataWindowNDC(v42, v93.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableMotionBlur(&v69, &v89);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableMotionBlur(&v81, &v88);
            v47 = vdup_n_s32(v89.i64[0] == 0);
            v48.i64[0] = v47.u32[0];
            v48.i64[1] = v47.u32[1];
            v49 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v48, 0x3FuLL)), v88, v89);
            v90 = v49;
            if (v49.i64[1])
            {
              atomic_fetch_add_explicit((v49.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v50 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableMotionBlur(v46, v90.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableDepthOfField(&v69, &v86);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchema::GetDisableDepthOfField(&v81, &v85);
            v51 = vdup_n_s32(v86.i64[0] == 0);
            v52.i64[0] = v51.u32[0];
            v52.i64[1] = v51.u32[1];
            v53 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v52, 0x3FuLL)), v85, v86);
            v87 = v53;
            if (v53.i64[1])
            {
              atomic_fetch_add_explicit((v53.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v54 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableDepthOfField(v50, v87.i64);
            pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettings(&v69, &v83);
            v55 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetNamespacedSettings(v54, &v83);
            pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::Build(&v122, v55);
            v60 = v122;
            v122 = 0uLL;
            if (v84)
            {
              sub_29A014BEC(v84);
            }

            if (v87.i64[1])
            {
              sub_29A014BEC(v87.i64[1]);
            }

            if (v85.i64[1])
            {
              sub_29A014BEC(v85.i64[1]);
            }

            if (v86.i64[1])
            {
              sub_29A014BEC(v86.i64[1]);
            }

            if (v90.i64[1])
            {
              sub_29A014BEC(v90.i64[1]);
            }

            if (v88.i64[1])
            {
              sub_29A014BEC(v88.i64[1]);
            }

            if (v89.i64[1])
            {
              sub_29A014BEC(v89.i64[1]);
            }

            if (v93.i64[1])
            {
              sub_29A014BEC(v93.i64[1]);
            }

            if (v91.i64[1])
            {
              sub_29A014BEC(v91.i64[1]);
            }

            if (v92.i64[1])
            {
              sub_29A014BEC(v92.i64[1]);
            }

            if (v95)
            {
              sub_29A014BEC(v95);
            }

            if (v98.i64[1])
            {
              sub_29A014BEC(v98.i64[1]);
            }

            if (v96.i64[1])
            {
              sub_29A014BEC(v96.i64[1]);
            }

            if (v97.i64[1])
            {
              sub_29A014BEC(v97.i64[1]);
            }

            if (v101.i64[1])
            {
              sub_29A014BEC(v101.i64[1]);
            }

            if (v99.i64[1])
            {
              sub_29A014BEC(v99.i64[1]);
            }

            if (v100.i64[1])
            {
              sub_29A014BEC(v100.i64[1]);
            }

            if (v119.i64[1])
            {
              sub_29A014BEC(v119.i64[1]);
            }

            if (v102.i64[1])
            {
              sub_29A014BEC(v102.i64[1]);
            }

            if (v103.i64[1])
            {
              sub_29A014BEC(v103.i64[1]);
            }

            if (*(&v121 + 1))
            {
              sub_29A014BEC(*(&v121 + 1));
            }

            if (*(&v120 + 1))
            {
              sub_29A014BEC(*(&v120 + 1));
            }

            if (v126.i64[1])
            {
              sub_29A014BEC(v126.i64[1]);
            }

            if (v124.i64[1])
            {
              sub_29A014BEC(v124.i64[1]);
            }

            if (v125.i64[1])
            {
              sub_29A014BEC(v125.i64[1]);
            }

            if (*(&v127 + 1))
            {
              sub_29A014BEC(*(&v127 + 1));
            }

            if (*(&v128 + 1))
            {
              sub_29A014BEC(*(&v128 + 1));
            }

            if (v61.i64[1])
            {
              sub_29A014BEC(v61.i64[1]);
            }

            if (v129.i64[1])
            {
              sub_29A014BEC(v129.i64[1]);
            }

            sub_29AC015C0(&v106);
            sub_29A01729C(&v74, &v60);
            if (*(&v60 + 1))
            {
              sub_29A014BEC(*(&v60 + 1));
            }

            *&v106 = &v63;
            sub_29A0176E4(&v106);
            sub_29ABED558(v66);
            if (v68)
            {
              sub_29A014BEC(v68);
            }
          }

          if (v70)
          {
            sub_29A014BEC(v70);
          }
        }

        if (v73)
        {
          sub_29A014BEC(v73);
        }

        if ((v71 & 7) != 0)
        {
          atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v66[0] = (v75 - v74) >> 4;
    *&v122 = v74;
    sub_29AC00FD8(v66, &v122, &v106);
    *a3 = v106;
    *&v106 = &v74;
    sub_29A0176E4(&v106);
    sub_29ABED558(v77);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v80)
  {
    sub_29A014BEC(v80);
  }

  v7 = v82;
  if (v82)
  {
LABEL_6:
    sub_29A014BEC(v7);
  }
}

void sub_29B05FBB0(_Unwind_Exception *a1)
{
  if (STACK[0x258])
  {
    sub_29A014BEC(STACK[0x258]);
  }

  _Unwind_Resume(a1);
}

void sub_29B060038(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B060068(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B19D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0600A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  if (a1)
  {
    sub_29ABD4DDC(a1 + 3);
  }
}

uint64_t *sub_29B0600FC()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "renderSettings_depOn_usdRenderSettings_includedPurposes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "renderSettings_depOn_usdRenderSettings_materialBindingPurposes");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "renderSettings_depOn_usdRenderSettings_namespacedSettings");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "renderSettings_depOn_usdRenderSettings_renderingColorSpace");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "renderSettings_depOn_usdRenderSettings_resolution");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "renderSettings_depOn_usdRenderSettings_pixelAspectRatio");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "renderSettings_depOn_usdRenderSettings_aspectRatioConformPolicy");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "renderSettings_depOn_usdRenderSettings_dataWindowNDC");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "renderSettings_depOn_usdRenderSettings_disableMotionBlur");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "renderSettings_depOn_usdRenderSettings_disableDepthOfField");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "renderSettings_depOn_usdRenderSettings_camera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "__dependencies_depOn_usdRenderSettings_products");
  v1 = v0 + 12;
  v2 = *v0;
  v19 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v20 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[13] = 0;
  v0[14] = 0;
  sub_29A12EF7C(v1, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v15 = *(&v19 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = 0;
  atomic_compare_exchange_strong(qword_2A17586E0, &v16, v0);
  if (v16)
  {
    v17 = sub_29AB67BC8(v0);
    operator delete(v17);
    return atomic_load(qword_2A17586E0);
  }

  return v0;
}

void sub_29B0604D0(_Unwind_Exception *a1)
{
  v4 = 88;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29B060690(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0606C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1A48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B060700(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
    sub_29A1DE3A4((a1 + 32));
    sub_29ABD4DDC((a1 + 24));
  }
}

uint64_t sub_29B060770()
{
  v0 = dword_2A17586A0;
  v1 = -1440;
  do
  {
    sub_29ABC3488(v0);
    result = sub_29ABC3488((v0 - 14));
    v3 = *(v0 - 8);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v0 -= 30;
    v1 += 120;
  }

  while (v1);
  return result;
}

void *sub_29B0607D4()
{
  v1 = nullsub_1805;
  return sub_29B060C6C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::~UsdImagingRenderVarAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter *this)
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

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprims@<X0>(uint64_t *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v3 = 0;
LABEL_3:
    *a2 = v3;
    return;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC9AEB0(&pxrInternal__aapl__pxrReserved__::HdRenderVarSchemaTokens);
  }

  v5 = *v4;
  *a2 = *v4;
  if ((v5 & 7) != 0)
  {
    v3 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a4@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B060A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B060A90@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::UsdImagingDataSourceRenderVarPrim(v8, a1, &v13, a3);
  sub_29B060E98(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::InvalidateImagingSubprim(void *a1@<X2>, uint64_t **a2@<X3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  if (*a1)
  {
    *(a3 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceRenderVarPrim::Invalidate(a2, a3);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRenderVarAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

void *sub_29B060C6C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B1CB0;
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

void sub_29B060CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B060D1C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B060D44@<D0>(_OWORD *a1@<X8>)
{
  sub_29B060D80(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B060D80(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B1CF0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B1A70;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B060E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B1CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B060E98(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B1D40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B060EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B060F0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B060F34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B060F64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B1D90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_29B060FA4()
{
  v1 = nullsub_1806;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRepresentedByAncestorPrimAdapter::GetImagingSubprims(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingRepresentedByAncestorPrimAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

uint64_t sub_29B061064(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B061094(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_29B061194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E234C(va);
  sub_29A1DCEA8((v3 + 152));
  sub_29A1DCEA8((v3 + 144));
  sub_29AC113C4(v3, v4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::~UsdImagingRerootingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this)
{
  v3 = (this + 160);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 39);
  sub_29A1DE3A4(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29A1DE3A4(this + 36);
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), v2);
  sub_29ABD4DDC(this + 14);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::~UsdImagingRerootingSceneIndex(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 152));
  if (result)
  {
    if (*(this + 184) == 1)
    {
      sub_29A1E21F4(&v16, a2);
      sub_29A1E2240(&v16 + 1, a2 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v16, a2, (this + 152), (this + 144), 1);
    }

    v7 = sub_29AC1199C(this + 14);
    (*(*v7 + 16))(v7, &v16);
    if (a3[1])
    {
      if ((*(this + 184) & 1) == 0)
      {
        v8 = operator new(0x28uLL);
        sub_29B061E64(v8, this + 36, this + 38, a3 + 1);
        sub_29B061EF8(&v15, v8);
        v9 = v15;
        v15 = 0uLL;
        v10 = a3[2];
        *(a3 + 1) = v9;
        if (v10)
        {
          sub_29A014BEC(v10);
          if (*(&v15 + 1))
          {
            sub_29A014BEC(*(&v15 + 1));
          }
        }
      }

      if (*a2 == *(this + 19))
      {
        pxrInternal__aapl__pxrReserved__::HdSystemSchema::ComposeAsPrimDataSource(this + 14, &v16, 0, &v13);
        sub_29AC68F54(&v13, a3 + 1, &v15);
        v11 = v15;
        v15 = 0uLL;
        v12 = a3[2];
        *(a3 + 1) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
          if (*(&v15 + 1))
          {
            sub_29A014BEC(*(&v15 + 1));
          }
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
    return sub_29A1DE3A4(&v16);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_29B061440(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  sub_29AC2B620(v11);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 152)))
  {
    v6 = *(this + 184);
    v7 = sub_29AC1199C(this + 14);
    v8 = v7;
    if (v6 == 1)
    {
      v9 = *(*v7 + 24);

      return v9();
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, a2, (this + 152), (this + 144), 1);
      (*(*v8 + 24))(v8, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      result = sub_29A1DE3A4(&v12);
      if (*a3 != a3[1])
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v12, *a3, (this + 144), (this + 152), 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((this + 152), a2);
    if (result)
    {
      v11 = (*(this + 20) + 8 * pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2));
      sub_29A1E21F4(&v12, v11);
      sub_29A1E2240(&v12 + 1, v11 + 1);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      sub_29A65B758(a3, &v12, &v13, 1uLL);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
      return sub_29A1DE3A4(&v12);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

void sub_29B0616AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsAdded(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16[33] = *MEMORY[0x29EDCA608];
  v16[32] = 0x1000000000;
  v5 = *(a3 + 256);
  if (v5 >= 0x11)
  {
    sub_29AC3D6F0(v16, v5);
  }

  if (*(a1 + 184) == 1)
  {
    if (*(a3 + 260) >= 0x11u)
    {
      v6 = *a3;
    }

    else
    {
      v6 = a3;
    }

    v7 = *(a3 + 256);
    if (v7)
    {
      v8 = 16 * v7;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v6, (a1 + 18)))
        {
          sub_29AC50374(v16, v6);
        }

        v6 = (v6 + 16);
        v8 -= 16;
      }

      while (v8);
    }
  }

  else
  {
    if (*(a3 + 260) >= 0x11u)
    {
      v9 = *a3;
    }

    else
    {
      v9 = a3;
    }

    v10 = *(a3 + 256);
    if (*(a1 + 185) == 1)
    {
      if (v10)
      {
        v11 = &v9[2 * v10];
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (a1 + 18), (a1 + 19), 1);
          v12 = v9 + 1;
          sub_29AC4CE80(v16, &v15, v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
          v9 = v12 + 1;
        }

        while (v9 != v11);
      }
    }

    else if (v10)
    {
      v13 = 16 * v10;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v9, (a1 + 18)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v15, v9, (a1 + 18), (a1 + 19), 1);
          sub_29AC4CE80(v16, &v15, v9 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
          sub_29A1DE3A4(&v15);
        }

        v9 += 2;
        v13 -= 16;
      }

      while (v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(a1, v16);
  return sub_29AC263E4(v16);
}

void sub_29B0618C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AC263E4(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = a3;
  v15[17] = *MEMORY[0x29EDCA608];
  v15[16] = 0x1000000000;
  v5 = *(a3 + 32);
  if (v5 >= 0x11)
  {
    sub_29AC3D990(v15, v5);
  }

  if (*(a1 + 184) == 1)
  {
    v6 = *(v3 + 32);
    if (*(v3 + 33) >= 0x11u)
    {
      v3 = *v3;
    }

    if (v6)
    {
      v7 = 8 * v6;
      while (1)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v3, (a1 + 144)))
        {
          sub_29AC4DAF8(v15, v3);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 144), v3))
        {
          break;
        }

        v3 = (v3 + 8);
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      sub_29A1E21F4(&v12, (a1 + 152));
      sub_29A1E2240(&v13, (a1 + 156));
      v14[16] = 0x1000000001;
      sub_29A1E21F4(v14, &v12);
      sub_29A1E2240(v14 + 1, &v13);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v14);
      sub_29AC26348(v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      return sub_29AC26348(v15);
    }
  }

  else
  {
    v8 = *(v3 + 32);
    if (*(v3 + 33) >= 0x11u)
    {
      v3 = *v3;
    }

    if (*(a1 + 185) == 1)
    {
      if (v8)
      {
        v9 = 8 * v8;
        do
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v14, v3, (a1 + 144), (a1 + 152), 1);
          sub_29AC4DAF8(v15, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14 + 1);
          sub_29A1DE3A4(v14);
          v3 = (v3 + 8);
          v9 -= 8;
        }

        while (v9);
      }
    }

    else if (v8)
    {
      v10 = 8 * v8;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v3, (a1 + 144)))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(v14, v3, (a1 + 144), (a1 + 152), 1);
          sub_29AC4DAF8(v15, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14 + 1);
          sub_29A1DE3A4(v14);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 144), v3))
        {
          goto LABEL_27;
        }

        v3 = (v3 + 8);
        v10 -= 8;
      }

      while (v10);
    }
  }

LABEL_26:
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, v15);
  return sub_29AC26348(v15);
}