void sub_29AFEFCA0(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
  v11 = 0;
  v9 = &unk_2A2060008;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A2060028(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::GetNonlinearSampleCountAttr(&v9, &v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  }
}

void sub_29AFEFD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFEFDC0(uint64_t a1)
{
  sub_29A5896C0(a1 + 32);
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

void sub_29AFEFE24(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29AFEFF5C(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 168);
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

void sub_29AFEFF5C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AFEFFF8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFEFFF8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFEFFF8(a1, v4);
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

  sub_29AFF00DC(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFF00DC@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xB0);
  *(result + 21) = a3;
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
      v10 = i[21];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA5880(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AFF01B0(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AFEFF5C(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 21) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 168);
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
            sub_29AFA5880(a1 + 16, a3);
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

        v17 = *(v16 + 168);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFF03EC(a1 + 16, v12, a2);
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

void *sub_29AFF03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB0);
  sub_29AFF0464((v5 + 1), a3);
  v5[21] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFF043C(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFF0464(uint64_t a1, uint64_t a2)
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
  v6 = atomic_load((a2 + 156));
  atomic_store(v6, (a1 + 156));
  return a1;
}

uint64_t sub_29AFF0514(uint64_t a1, uint64_t a2, unsigned int *a3)
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

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 32), a3);
  *(a1 + 152) = a3[30];
  v8 = atomic_load(a3 + 31);
  atomic_store(v8, (a1 + 156));
  return a1;
}

void sub_29AFF05E4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CE254();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29AFF078C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFF0B68(a1, a2, v10);
  if (v10[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v10[1] == a1 + 16;
  }

  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v7);
    v8 = 0;
    v9 = 0;
    sub_29AFF09E4(&v6, a2);
    sub_29A758894(v7, &v6);
  }

  return v10[0] + 40;
}

void sub_29AFF08C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  sub_29AFF0B04(&a10);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF08E8(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *this)
{
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(this))
  {
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<float>();
  }

  sub_29A5B9D18(a2, &v13);
  v5 = sub_29AFF05E4(a1, &v13);
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = *(v5 + 7);
  v9 = *(v5 + 5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  v10 = v9 | (v8 << 16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return (v7 << 32) | (v10 << 40) | v6;
}

void sub_29AFF09E4(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
  v11 = 0;
  v9 = &unk_2A2060008;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A2060028(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::GetMotionBlurScaleAttr(&v9, &v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  }
}

void sub_29AFF0ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF0B04(uint64_t a1)
{
  sub_29A5896C0(a1 + 32);
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

void sub_29AFF0B68(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29AFF0CA0(a1, v6, &v14);
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

void sub_29AFF0CA0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AFF0D3C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFF0D3C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFF0D3C(a1, v4);
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

  sub_29AFF0E20(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFF0E20@<X0>(uint64_t a1@<X0>, atomic_ullong ***a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
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
        result = sub_29AFA6014(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AFF0EF4(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AFF0CA0(a1, v8, &v24);
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
            sub_29AFA6014(a1 + 16, a3);
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
      a3 = sub_29AFF1130(a1 + 16, v12, a2);
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

void *sub_29AFF1130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  sub_29AFF11A8((v5 + 1), a3);
  v5[22] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFF1180(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFF11A8(uint64_t a1, uint64_t a2)
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
  v6 = atomic_load((a2 + 160));
  atomic_store(v6, (a1 + 160));
  return a1;
}

uint64_t sub_29AFF1258(uint64_t a1, uint64_t a2, uint64_t a3)
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

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 32), a3);
  *(a1 + 152) = *(a3 + 120);
  v8 = atomic_load((a3 + 128));
  atomic_store(v8, (a1 + 160));
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *sub_29AFF1328(void *a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a3, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        sub_29AFF1554(a1, a2, a1[1], a2 + 48 * a5);
        v22 = (v7 + 16 * v21);
        v23 = v5;
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v23, v7);
          v7 = (v7 + 48);
          v23 += 48;
        }

        while (v7 != v22);
      }

      else
      {
        v19 = (a3 + v18);
        a1[1] = sub_29A7A37C0(a1, (a3 + v18), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29AFF1554(a1, v5, v10, v5 + 48 * a5);
          v20 = v5;
          do
          {
            pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v20, v7);
            v7 = (v7 + 48);
            v20 += 48;
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
      v32 = a1;
      if (v15)
      {
        v17 = sub_29A08E058(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[48 * v16];
      v29[0] = v17;
      v29[1] = v24;
      v30 = v24;
      v31 = &v17[48 * v15];
      v25 = 3 * a5;
      v26 = &v24[48 * a5];
      v27 = 16 * v25;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v24, v7);
        v24 += 48;
        v7 = (v7 + 48);
        v27 -= 48;
      }

      while (v27);
      v30 = v26;
      v5 = sub_29AFF1614(a1, v29, v5);
      sub_29A7A333C(v29);
    }
  }

  return v5;
}

uint64_t sub_29AFF1554(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v10, v8);
      v8 = (v8 + 48);
      v10 = (v10 + 48);
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 48;
    v12 = a4 - v7;
    v13 = a2 + v7 - 48 - a4;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v11, v13);
      v11 -= 48;
      v13 -= 48;
      v12 += 48;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29AFF1614(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a3)
{
  v6 = *(a2 + 8);
  sub_29A7A3160(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A7A3160(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void *sub_29AFF16D0()
{
  v1 = nullsub_1777;
  return sub_29AFF1EBC(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::~UsdImagingHermiteCurvesAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFF18EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 28) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::GetTopology(void x0_0, pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  sub_29A0ECEEC(&v9, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v7)
  {
    v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AFD71F4(v8, a1, (v7 + 224));
}

void *sub_29AFF1EBC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ACA00;
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

void sub_29AFF1F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF1F6C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFF1F94@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFF1FD0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFF1FD0(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ACA40;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AC7A0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFF207C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ACA40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitSphereMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753240))
  {
    memcpy(__dst, &unk_29B739800, 0x190uLL);
    sub_29A9096F4(&unk_2A1753218, __dst, 100);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753218, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753240);
  }

  if ((atomic_load_explicit(&qword_2A1753270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753270))
  {
    memcpy(__dst, &unk_29B739990, sizeof(__dst));
    sub_29A9096F4(&unk_2A1753248, __dst, 380);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753248, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753270);
  }

  if ((atomic_load_explicit(&qword_2A17533F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17533F0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753278, v2 + 7, v3 + 14, &unk_2A1753218, &unk_2A1753248);
    __cxa_atexit(sub_29AD31450, &unk_2A1753278, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17533F0);
  }

  return &unk_2A1753278;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitSphereMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753420))
  {
    memcpy(__dst, &unk_29B739F80, sizeof(__dst));
    sub_29A901CD8(&unk_2A17533F8, __dst, 92);
    __cxa_atexit(sub_29AD80908, &unk_2A17533F8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753420);
  }

  return &unk_2A17533F8;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCubeMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753450))
  {
    *&v5 = 0x400000004;
    v4 = xmmword_29B73A3D0;
    sub_29A9096F4(&unk_2A1753428, &v4, 6);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753428, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753450);
  }

  if ((atomic_load_explicit(&qword_2A1753480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753480))
  {
    v6 = xmmword_29B73A408;
    v7 = unk_29B73A418;
    v8 = xmmword_29B73A428;
    v9 = unk_29B73A438;
    v4 = xmmword_29B73A3E8;
    v5 = unk_29B73A3F8;
    sub_29A9096F4(&unk_2A1753458, &v4, 24);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753458, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753480);
  }

  if ((atomic_load_explicit(&qword_2A1753600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753600))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753488, v2 + 6, v3 + 14, &unk_2A1753428, &unk_2A1753458);
    __cxa_atexit(sub_29AD31450, &unk_2A1753488, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753600);
  }

  return &unk_2A1753488;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCubeMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753630))
  {
    v2[2] = xmmword_29B73A468;
    v2[3] = unk_29B73A478;
    v2[4] = xmmword_29B73A488;
    v2[5] = unk_29B73A498;
    v2[0] = xmmword_29B73A448;
    v2[1] = unk_29B73A458;
    sub_29A901CD8(&unk_2A1753608, v2, 8);
    __cxa_atexit(sub_29AD80908, &unk_2A1753608, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753630);
  }

  return &unk_2A1753608;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitConeMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753660))
  {
    *&v4[32] = xmmword_29B73A4C8;
    *&v4[48] = unk_29B73A4D8;
    *&v4[64] = xmmword_29B73A4E8;
    *v4 = xmmword_29B73A4A8;
    *&v4[16] = unk_29B73A4B8;
    sub_29A9096F4(&unk_2A1753638, v4, 20);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753638, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753660);
  }

  if ((atomic_load_explicit(&qword_2A1753690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753690))
  {
    memcpy(v4, &unk_29B73A4F8, sizeof(v4));
    sub_29A9096F4(&unk_2A1753668, v4, 70);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753668, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753690);
  }

  if ((atomic_load_explicit(&qword_2A1753810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753810))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753698, v2 + 7, v3 + 14, &unk_2A1753638, &unk_2A1753668);
    __cxa_atexit(sub_29AD31450, &unk_2A1753698, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753810);
  }

  return &unk_2A1753698;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitConeMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753840))
  {
    memcpy(__dst, &unk_29B73A610, sizeof(__dst));
    sub_29A901CD8(&unk_2A1753818, __dst, 31);
    __cxa_atexit(sub_29AD80908, &unk_2A1753818, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753840);
  }

  return &unk_2A1753818;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCylinderMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753870))
  {
    *&v4[7] = 0x300000003;
    v4[4] = xmmword_29B73A7C4;
    v4[5] = unk_29B73A7D4;
    v4[6] = xmmword_29B73A7E4;
    v4[0] = xmmword_29B73A784;
    v4[1] = unk_29B73A794;
    v4[2] = xmmword_29B73A7A4;
    v4[3] = unk_29B73A7B4;
    sub_29A9096F4(&unk_2A1753848, v4, 30);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753848, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753870);
  }

  if ((atomic_load_explicit(&qword_2A17538A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17538A0))
  {
    memcpy(v4, &unk_29B73A7FC, sizeof(v4));
    sub_29A9096F4(&unk_2A1753878, v4, 100);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753878, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17538A0);
  }

  if ((atomic_load_explicit(&qword_2A1753A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753A20))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A17538A8, v2 + 7, v3 + 14, &unk_2A1753848, &unk_2A1753878);
    __cxa_atexit(sub_29AD31450, &unk_2A17538A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753A20);
  }

  return &unk_2A17538A8;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCylinderMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753A50))
  {
    memcpy(v2, &unk_29B73A98C, sizeof(v2));
    sub_29A901CD8(&unk_2A1753A28, v2, 42);
    __cxa_atexit(sub_29AD80908, &unk_2A1753A28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753A50);
  }

  return &unk_2A1753A28;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetCapsuleMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1753BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753BD0))
  {
    sub_29AFF2E88();
  }

  return &unk_2A1753A58;
}

void sub_29AFF2E88()
{
  v0 = sub_29A19D6E4(v31, 0x5AuLL);
  sub_29A19DBEC(v0);
  v1 = v32;
  sub_29A19D6E4(v29, 0x154uLL);
  sub_29A19DBEC(v29);
  v2 = 0;
  v3 = v30;
  v4 = (v30 + 8);
  do
  {
    *(v1 + 4 * v2) = 3;
    v5 = v2 + 1;
    if (v2 == 9)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 + 2;
    }

    *(v4 - 2) = v6;
    *(v4 - 1) = v5;
    *v4 = 0;
    v4 += 3;
    v2 = v5;
  }

  while (v5 != 10);
  v7 = 0;
  v8 = 1;
  v9 = 30;
  v10 = 10;
  do
  {
    v11 = 0;
    v12 = v10;
    v13 = v8;
    v14 = v8 + 10.0;
    v15 = (v3 + 8 + 4 * v9);
    do
    {
      v9 += 4;
      v16 = v11;
      v17 = v11 == 9;
      *(v1 + 4 * v12 + 4 * v11++) = 4;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11;
      }

      *(v15 - 2) = (v13 + v16);
      *(v15 - 1) = (v13 + v18);
      *v15 = (v14 + v18);
      v15[1] = (v14 + v16);
      v15 += 4;
    }

    while (v11 != 10);
    v10 = v12 + 10;
    v8 += 10;
    ++v7;
  }

  while (v7 != 7);
  v19 = 0;
  v20 = v9;
  v21 = (v3 + 4 * v9 + 8);
  v22 = v20 - 340;
  v23 = v12 + 10;
  while (1)
  {
    *(v1 + 4 * v23 + 4 * v19) = 3;
    v24 = v19 + 72;
    if (v19 == 9)
    {
      v24 = 71;
    }

    *(v21 - 2) = v19 + 71;
    *(v21 - 1) = v24;
    *v21 = 81;
    v21 += 3;
    ++v19;
    v22 += 3;
    if (v19 == 10)
    {
      if (90 - v23 != v19 || v22)
      {
        v27[0] = "usdImaging/implicitSurfaceMeshUtils.cpp";
        v27[1] = "operator()";
        v27[2] = 330;
        v27[3] = "auto pxrInternal__aapl__pxrReserved__::UsdImagingGetCapsuleMeshTopology()::(anonymous class)::operator()() const";
        v28 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v27, "face == numCounts && index == numIndices", 0);
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v25)
      {
        v25 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v26)
      {
        v26 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753A58, v25 + 7, v26 + 14, v31, v29);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGenerateCapsuleMeshPoints(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 167) ^ *this) >= 8)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v10)
    {
      v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v11 = vdup_n_s32((*(v10 + 169) ^ *this) < 8uLL);
    v12.i64[0] = v11.u32[0];
    v12.i64[1] = v11.u32[1];
    v67 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v12, 0x3FuLL)), xmmword_29B432B50, xmmword_29B432590);
    v9 = 0.0;
  }

  else
  {
    v67 = 0u;
    v9 = 1.0;
  }

  v66 = v9;
  v13 = a3;
  v65 = v13;
  v14 = a2;
  sub_29AFF3BF4(__p, 0xAuLL);
  v15 = 0;
  v16 = 0;
  v63 = vextq_s8(v67, v67, 8uLL);
  *&v17.f64[0] = v63.i64[0];
  v17.f64[1] = v66;
  v62 = v17;
  do
  {
    v18 = v16 * 6.28318531;
    v19 = __sincosf_stret(v18 / 10.0);
    v20 = v67.f64[0] * v19.__cosval;
    v21 = v66 * v19.__sinval;
    v22 = (__p[0] + v15);
    *v22 = vadd_f32(vcvt_f32_f64(vmulq_n_f64(v62, v19.__cosval)), vcvt_f32_f64(vmulq_n_f64(v67, v19.__sinval)));
    v22[1].f32[0] = v20 + v21;
    ++v16;
    v15 += 12;
  }

  while (v16 != 10);
  sub_29A193124(a4, 0x52uLL);
  sub_29A1935CC(a4);
  v23 = 0;
  v24 = *(a4 + 32);
  v25 = ((v14 * -0.5) - v65);
  v26 = vmuld_lane_f64(v25, v67, 1);
  *&v27.f64[1] = v63.i64[1];
  v27.f64[0] = v66;
  v64 = v27;
  *v24 = vcvt_f32_f64(vmulq_n_f64(v27, v25));
  v24[1].f32[0] = v26;
  v28 = &v24[1] + 1;
  do
  {
    v29 = __sincosf_stret(((++v23 * -0.25) + 1.0) * 1.5708);
    v30 = 0;
    v31 = v29.__cosval * v65;
    v32 = ((v14 * -0.5) - (v29.__sinval * v65));
    v33 = vcvt_f32_f64(vmulq_n_f64(v64, v32));
    v34 = v67.f64[1] * v32;
    do
    {
      v35 = &v28[v30];
      v36 = (v31 * *(__p[0] + v30 * 4 + 8)) + v34;
      *v35 = vadd_f32(vmul_n_f32(*(__p[0] + v30 * 4), v31), v33);
      v35[1].f32[0] = v36;
      v30 += 3;
    }

    while (v30 != 30);
    v28 += 30;
  }

  while (v23 != 3);
  v37 = -0.5;
  v38 = 1;
  do
  {
    v39 = 0;
    v40 = v38;
    v41 = (v37 * v14);
    v42 = v66 * v41;
    v43 = vcvt_f32_f64(vmulq_n_f64(v67, v41));
    do
    {
      v44 = &v28[v39];
      v45 = vadd_f32(vmul_n_f32(*(__p[0] + v39 * 4 + 4), v65), v43);
      *v44 = (*(__p[0] + v39 * 4) * v65) + v42;
      *(v44 + 1) = v45;
      v39 += 3;
    }

    while (v39 != 30);
    v38 = 0;
    v28 += 30;
    v37 = 0.5;
  }

  while ((v40 & 1) != 0);
  v46 = 0;
  v47 = v14 * 0.5;
  do
  {
    v48 = v28;
    v49 = __sincosf_stret(vcvts_n_f32_u32(++v46, 2uLL) * 1.5708);
    v50 = 0;
    v51 = v49.__cosval * v65;
    v52 = (v47 + (v49.__sinval * v65));
    v53 = v66 * v52;
    v54 = v67.f64[0] * v52;
    v55 = v67.f64[1] * v52;
    v56 = v28;
    do
    {
      v57 = (v51 * *(__p[0] + v50 + 4)) + v54;
      v58 = (v51 * *(__p[0] + v50 + 8)) + v55;
      v28 = v56 + 3;
      *v56 = (v51 * *(__p[0] + v50)) + v53;
      v56[1] = v57;
      v56[2] = v58;
      v50 += 12;
      v56 += 3;
    }

    while (v50 != 120);
  }

  while (v46 != 3);
  v59 = (v47 + v65);
  v60 = v66 * v59;
  v61 = v67.f64[0] * v59;
  *&v59 = v67.f64[1] * v59;
  *v28 = v60;
  v28[1] = v61;
  v28[2] = *&v59;
  sub_29A1935CC(a4);
  if (*(a4 + 32) - v48 != -852)
  {
    v68[0] = "usdImaging/implicitSurfaceMeshUtils.cpp";
    v68[1] = "UsdImagingGenerateCapsuleMeshPoints";
    v68[2] = 417;
    v68[3] = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdImagingGenerateCapsuleMeshPoints(const double, const double, const TfToken &)";
    v69 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v68, "p - pointsArray.data() == numPoints", 0);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetPlaneTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753C00))
  {
    LODWORD(v4) = 4;
    sub_29A9096F4(&unk_2A1753BD8, &v4, 1);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753BD8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753C00);
  }

  if ((atomic_load_explicit(&qword_2A1753C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753C30))
  {
    v4 = xmmword_29B434060;
    sub_29A9096F4(&unk_2A1753C08, &v4, 4);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753C30);
  }

  if ((atomic_load_explicit(&qword_2A1753DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753DB0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753C38, v2 + 6, v3 + 14, &unk_2A1753BD8, &unk_2A1753C08);
    __cxa_atexit(sub_29AD31450, &unk_2A1753C38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753DB0);
  }

  return &unk_2A1753C38;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeneratePlaneMeshPoints(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x29EDCA608];
  sub_29AFF3BF4(__p, 4uLL);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 167) ^ *this) > 7)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v13)
    {
      v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v13 + 169) ^ *this) > 7)
    {
      v16 = a2 * 0.5;
      *&__src = v16;
      *(&__src + 1) = a3 * 0.5;
      LODWORD(v24) = 0;
      v17 = a2 * -0.5;
      *(&v24 + 1) = v17;
      v25 = HIDWORD(__src);
      *&v26 = v17;
      *(&v26 + 1) = a3 * -0.5;
      v27 = 0.0;
      v28 = v16;
      v29 = *(&v26 + 1);
      v30 = 0.0;
    }

    else
    {
      *&v14 = a2 * -0.5;
      __src = v14;
      *&v15 = a2 * 0.5;
      *&v24 = a3 * 0.5;
      HIDWORD(v24) = v15;
      LODWORD(v25) = 0;
      *(&v25 + 1) = *&v24;
      v26 = v15;
      v27 = a3 * -0.5;
      v28 = *&v14;
      v29 = 0.0;
      v30 = v27;
    }

    sub_29AB908B8(__p, &__src, &v31, 4uLL);
  }

  else
  {
    v9 = a3 * 0.5;
    *&v10 = a2 * 0.5;
    LODWORD(__src) = 0;
    *(&__src + 1) = v9;
    v24 = v10;
    *&v11 = a3 * -0.5;
    v25 = __PAIR64__(v10, v11);
    v12 = a2 * -0.5;
    LODWORD(v26) = 0;
    HIDWORD(v26) = v11;
    v27 = v12;
    v28 = 0.0;
    v29 = v9;
    v30 = v12;
    sub_29AB908B8(__p, &__src, &v31, 4uLL);
  }

  sub_29A193124(a4, 4uLL);
  sub_29A1935CC(a4);
  v18 = 0;
  v19 = *(a4 + 32);
  do
  {
    v20 = v19 + v18;
    v21 = *(__p[0] + v18);
    *(v20 + 8) = *(__p[0] + v18 + 8);
    *v20 = v21;
    v18 += 12;
  }

  while (v18 != 48);
  sub_29A1935CC(a4);
  if (*(a4 + 32) != v19)
  {
    __src = "usdImaging/implicitSurfaceMeshUtils.cpp";
    v24 = "UsdImagingGeneratePlaneMeshPoints";
    v25 = 470;
    v26 = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdImagingGeneratePlaneMeshPoints(const double, const double, const TfToken &)";
    LOBYTE(v27) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__src, "p - pointsArray.data() == numPoints", 0);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGenerateSphereOrCubeTransform(double a1@<D0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = a1;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = a1;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *pxrInternal__aapl__pxrReserved__::UsdImagingGenerateConeOrCylinderTransform@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = a3 + a3;
  if ((*(result + 167) ^ *this) <= 7)
  {
    *a4 = 0;
    *(a4 + 8) = v9;
    v10 = 0uLL;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = v9;
    *(a4 + 56) = 0;
    *(a4 + 64) = a2;
    *(a4 + 72) = 0u;
LABEL_10:
    *(a4 + 88) = v10;
    *(a4 + 104) = v10;
    goto LABEL_11;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(result + 169) ^ *this) > 7)
  {
    *a4 = v9;
    v10 = 0uLL;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = v9;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = a2;
    goto LABEL_10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  *(a4 + 24) = 0;
  *(a4 + 32) = v9;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = a2;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
LABEL_11:
  *(a4 + 120) = 0x3FF0000000000000;
  return result;
}

uint64_t *sub_29AFF3BF4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A379A04(a1, a2);
    v4 = a1[1];
    v5 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v4, v5);
    a1[1] = v4 + v5;
  }

  return a1;
}

void sub_29AFF3C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29AFF3C90()
{
  v1 = nullsub_1778;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceablePrimAdapter::ResolveCachePath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  sub_29A1E21F4(a3, a1);
  result = sub_29A1E2240(a3 + 1, a1 + 1);
  if (a2)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2);
    if (result)
    {
      sub_29A2258F0(a3, a2);
      result = sub_29A225948(a3 + 1, a2 + 1);
    }

    if (*(a2 + 1))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v7, a3, (a2 + 2));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceablePrimAdapter::ResolveProxyPrimPath@<X0>(_DWORD *a1@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if (a2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(a2, a3);
  }

  else
  {
    sub_29A1E21F4(a3, a1);

    return sub_29A1E2240((a3 + 4), a1 + 1);
  }
}

void *sub_29AFF3E50()
{
  v1 = nullsub_1779;
  return sub_29B001BF8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Populate(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_Populate();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_Populate()
{
  if (sub_29AF49C14(4))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29AFF5A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, __int16 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_29A1DCEA8(&a27);
  sub_29A1DCEA8(&a29);
  sub_29B0020F0(&a31);
  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a39 & 7) != 0)
  {
    atomic_fetch_add_explicit((a39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a40);
  if ((a41 & 7) != 0)
  {
    atomic_fetch_add_explicit((a41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(&a42);
  sub_29A58BBB4(&a46);
  sub_29A58BD10(&a50);
  sub_29A57F434(&a59);
  sub_29B0020F0(v69 - 160);
  *(v69 - 160) = &a63;
  sub_29A65E064((v69 - 160));
  sub_29A1DCEA8(&a65);
  sub_29A1DCEA8(a16);
  a50 = &a66;
  sub_29A15EE8C(&a50);
  if ((a67 & 7) != 0)
  {
    atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a68 & 7) != 0)
  {
    atomic_fetch_add_explicit((a68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a50 = &a69;
  sub_29A1E234C(&a50);
  sub_29A1DCEA8(&STACK[0x200]);
  if (STACK[0x210])
  {
    sub_29A014BEC(STACK[0x210]);
  }

  sub_29A57F434(v69 - 248);
  sub_29A1DCEA8((v69 - 216));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InsertProtoPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator *a2, void *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5)
{
  sub_29A58BBEC(a2, &v21);
  sub_29A58BDD8(a2, &v16);
  v11 = sub_29A5B9DEC(&v16, v10);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29A1DE3A4(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v12);
  }

  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v16, a1, a4);
    v21 = v16;
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v13);
    }

    v22 = v17;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  (*(**a3 + 64))(*a3, &v21, a5, a4);
  if ((*(**a3 + 72))())
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::PruneChildren(a2);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  result = v22;
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v14);
  }

  return result;
}

void sub_29AFF6220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF6264(uint64_t a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (((*(*this + 352))(this, a3) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  return 1;
}

void sub_29AFF6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, _DWORD *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v20 + 1);
  v20[1] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v19, a3, v20);
  if (*(ProtoPrim + 1) || (v15 = "TrackVariability", v16 = 521, v17 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v18 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v11, v12, Text, "usdImaging/instanceAdapter.cpp"), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v14, "proto.adapter", v13) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v14, a1, ProtoPrim);
    (*(**(ProtoPrim + 1) + 104))(*(ProtoPrim + 1), &v14, a3, a4, v20);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16 + 1);
    sub_29A1DE3A4(&v16);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v8);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  sub_29A1DE3A4(&v19);
  return sub_29B0020F0(v20);
}

void sub_29AFF65F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2A1753E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753E18))
  {
    sub_29B000324(&unk_2A1753E00);
    __cxa_atexit(sub_29B000360, &unk_2A1753E00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753E18);
  }

  v8 = sub_29A328A44((a1 + 32), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v17 = 0;
  v18 = 0;
  if (!v8)
  {
    v14 = sub_29A328A44((a1 + 152), a3);
    if (v14)
    {
      v15 = sub_29A328A44((a1 + 32), v14 + 6);
      v8 = v15;
      if (v15)
      {
        v9 = sub_29A328A44(v15 + 17, a3);
        if (v9)
        {
          sub_29A2258F0(&v21, v14 + 6);
          v10 = v14 + 7;
          goto LABEL_5;
        }
      }
    }

LABEL_13:
    v11 = &unk_2A1753E00;
    goto LABEL_14;
  }

  v9 = sub_29A328A44(v8 + 17, a3);
  if (!v9)
  {
    goto LABEL_13;
  }

  sub_29A2258F0(&v21, a2);
  v10 = a2 + 1;
LABEL_5:
  sub_29A225948(&v22, v10);
  sub_29A2258F0(&v19, v8 + 8);
  sub_29A225948(&v20, v8 + 9);
  sub_29A166F2C(&v18, v8 + 5);
  sub_29A166F2C(&v17, v8 + 6);
  v11 = v9 + 3;
  sub_29A2258F0(a4, &v21);
  sub_29A225948(a4 + 1, &v22);
  sub_29A2258F0(a4 + 4, &v19);
  sub_29A225948(a4 + 5, &v20);
  sub_29A166F2C(a4 + 3, &v18);
  sub_29A166F2C(a4 + 4, &v17);
  v12 = *(a4 + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a4 + 1) = 0;
  v13 = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

LABEL_14:
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  sub_29A1DE3A4(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  return v11;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_CountAllInstancesToDraw(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_CountAllInstancesToDrawImpl(this, a2, v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsInstanceTransformVarying(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v4 = this;
  v5 = 0;
  sub_29B002198(&v6, 0, 0.0, 0.5);
  sub_29AFF76C0(this, a2, &v4);
}

void sub_29AFF6A2C(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 24;
  sub_29B0023C8((v2 - 40));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsInstanceInheritedPrimvarVarying(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = this;
  v3 = 0;
  sub_29AFFB234(this, a2, &v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapVariability(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  v5 = a3 + 88;
  sub_29B002198(v6, 0, 0.0, 0.5);
  v6[10] = a1;
  v6[11] = v5;
  sub_29B0003AC(a1, a2, v6);
}

void sub_29AFF6B3C(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 8;
  sub_29B0023C8((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29AFF6FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceTransforms(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, __int128 *a3, double a4)
{
  v4[0] = a1;
  *&v4[1] = a4;
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  sub_29AFF7118(a1, a2, v4);
}

void sub_29AFF7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstanceTransformsTimeSamples(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, __int128 *a3, uint64_t a4)
{
  v5 = a1;
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  v9 = 0;
  v8 = 0uLL;
  sub_29AFF7324(a1, a2, &v5);
}

void sub_29AFF7308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstancePrimvarTimeSamples(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, __int128 *a4, __int128 *a5)
{
  v8 = a1;
  v5 = a4[1];
  v9 = *a4;
  v10 = v5;
  v6 = *a3;
  v11 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v7;
    }
  }

  v12 = 0uLL;
  v13 = 0;
  sub_29AFF7560(a1, a2, &v8);
}

void sub_29AFF753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29B294B14((v17 + 40));
  _Unwind_Resume(a1);
}

void sub_29AFF7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFF77E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvar(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a4, void *a5, double a6)
{
  v22[2] = *MEMORY[0x29EDCA608];
  v20[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(a4);
  DefaultValue = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(v20);
  sub_29A186EF4(v22, DefaultValue);
  if (sub_29A3F9C34(v22))
  {
    sub_29AFF7E24(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FBEFC(v22))
  {
    sub_29AFF8000(a1, a2, a3, a5, a6);
  }

  if (sub_29AD8F100(v22))
  {
    sub_29AFF81DC(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FC38C(v22))
  {
    sub_29AFF83B8(a1, a2, a3, a5, a6);
  }

  if (sub_29A76D024(v22))
  {
    sub_29AFF8594(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FD4E0(v22))
  {
    sub_29AFF8770(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FD314(v22))
  {
    sub_29AFF894C(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FD158(v22))
  {
    sub_29AFF8B28(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FCE54(v22))
  {
    sub_29AFF8D04(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FE138(v22))
  {
    sub_29AFF8EE0(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FDE60(v22))
  {
    sub_29AFF90BC(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FDC80(v22))
  {
    sub_29AFF9298(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FD868(v22))
  {
    sub_29AFF9474(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FED30(v22))
  {
    sub_29AFF9650(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FEA70(v22))
  {
    sub_29AFF982C(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FE8A4(v22))
  {
    sub_29AFF9A08(a1, a2, a3, a5, a6);
  }

  if (sub_29A3FE4B4(v22))
  {
    sub_29AFF9BE4(a1, a2, a3, a5, a6);
  }

  if (sub_29A1EFCDC(v22))
  {
    sub_29AFF9DC0(a1, a2, a3, a5, a6);
  }

  if (sub_29A1F8DE8(v22))
  {
    sub_29AFF9F9C(a1, a2, a3, a5, a6);
  }

  if (sub_29A346994(v22))
  {
    sub_29AFFA178(a1, a2, a3, a5, a6);
  }

  if (sub_29A3F9DF4(v22))
  {
    sub_29AFFA354(a1, a2, a3, a5, a6);
  }

  if (sub_29AD81948(v22))
  {
    sub_29AFFA530(a1, a2, a3, a5, a6);
  }

  if (sub_29A293A9C(v22))
  {
    sub_29AFFA70C(a1, a2, a3, a5, a6);
  }

  if (sub_29AD81C64(v22))
  {
    sub_29AFFA8E8(a1, a2, a3, a5, a6);
  }

  if (sub_29A3F94B8(v22))
  {
    sub_29AFFAAC4(a1, a2, a3, a5, a6);
  }

  if (sub_29A1F9040(v22))
  {
    sub_29AFFACA0(a1, a2, a3, a5, a6);
  }

  if (sub_29A1EFC10(v22))
  {
    sub_29AFFAE7C(a1, a2, a3, a5, a6);
  }

  if (sub_29A1FA780(v22))
  {
    sub_29AFFB058(a1, a2, a3, a5, a6);
  }

  v20[0] = "usdImaging/instanceAdapter.cpp";
  v20[1] = "_ComputeInheritedPrimvar";
  v20[2] = 1113;
  v20[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvar(const UsdPrim &, const TfToken &, const SdfValueTypeName &, VtValue *, UsdTimeCode) const";
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v19, a4);
  v15 = v19 & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v16 = (v15 + 16);
    if (*(v15 + 39) < 0)
    {
      v16 = *v16;
    }
  }

  else
  {
    v16 = "";
  }

  v17 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v17)
  {
    v18 = (v17 + 16);
    if (*(v17 + 39) < 0)
    {
      v18 = *v18;
    }
  }

  else
  {
    v18 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v20, "Native instancing: unrecognized inherited primvar type '%s' for primvar '%s'", v14, v16, v18);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v22);
  return 0;
}

void sub_29AFF7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AFF7E24(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B006970(a1, a2, &v7);
}

void sub_29AFF7FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8000(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00753C(a1, a2, &v7);
}

void sub_29AFF81B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF81DC(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B008158(a1, a2, &v7);
}

void sub_29AFF838C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF83B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B008F10(a1, a2, &v7);
}

void sub_29AFF8568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8594(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B009B34(a1, a2, &v7);
}

void sub_29AFF8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8770(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00A728(a1, a2, &v7);
}

void sub_29AFF8920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF894C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00B2F4(a1, a2, &v7);
}

void sub_29AFF8AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8B28(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00BEC0(a1, a2, &v7);
}

void sub_29AFF8CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8D04(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00CA8C(a1, a2, &v7);
}

void sub_29AFF8EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8EE0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00D658(a1, a2, &v7);
}

void sub_29AFF9090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF90BC(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00E244(a1, a2, &v7);
}

void sub_29AFF926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9298(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00EE30(a1, a2, &v7);
}

void sub_29AFF9448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9474(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B00FA1C(a1, a2, &v7);
}

void sub_29AFF9624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9650(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B01069C(a1, a2, &v7);
}

void sub_29AFF9800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF982C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B011278(a1, a2, &v7);
}

void sub_29AFF99DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9A08(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B011E44(a1, a2, &v7);
}

void sub_29AFF9BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9BE4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B012A10(a1, a2, &v7);
}

void sub_29AFF9D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9DC0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B013670(a1, a2, &v7);
}

void sub_29AFF9F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9F9C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B014368(a1, a2, &v7);
}

void sub_29AFFA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA178(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B015060(a1, a2, &v7);
}

void sub_29AFFA328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA354(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B015C30(a1, a2, &v7);
}

void sub_29AFFA504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA530(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B016800(a1, a2, &v7);
}

void sub_29AFFA6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA70C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B0174B0(a1, a2, &v7);
}

void sub_29AFFA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA8E8(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B018078(a1, a2, &v7);
}

void sub_29AFFAA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFAAC4(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B018D28(a1, a2, &v7);
}

void sub_29AFFAC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFACA0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B0198F0(a1, a2, &v7);
}

void sub_29AFFAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFAE7C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B01A4B8(a1, a2, &v7);
}

void sub_29AFFB02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFB058(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3, void *a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v7 = a1;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  v9 = a5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_29B01B030(a1, a2, &v7);
}

void sub_29AFFB208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFB35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v4 != v5)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 == v11)
    {
      v15 = *(v9 + 16);
      v13 = v9 + 16;
      v14 = v15;
      v16 = *(v13 + 23);
      v19 = *(v8 + 16);
      v17 = v8 + 16;
      v18 = v19;
      v20 = *(v17 + 23);
      if (v20 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = *(v17 + 8);
      }

      if (v20 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = v18;
      }

      if (v16 >= 0)
      {
        v23 = *(v13 + 23);
      }

      else
      {
        v23 = *(v13 + 8);
      }

      if (v16 >= 0)
      {
        v24 = v13;
      }

      else
      {
        v24 = v14;
      }

      if (v23 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      v26 = memcmp(v22, v24, v25);
      v27 = v21 < v23;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (v27)
      {
        return 1;
      }
    }
  }

LABEL_34:
  if (v4)
  {
    v28 = v5 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    if (!v4 || v5)
    {
      goto LABEL_64;
    }

    return 0;
  }

  if (v5 != v4)
  {
    v29 = v5 & 0xFFFFFFFFFFFFFFF8;
    v30 = v4 & 0xFFFFFFFFFFFFFFF8;
    v31 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    v32 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v31 < v32)
    {
      return 0;
    }

    if (v31 == v32)
    {
      v35 = *(v30 + 16);
      v33 = v30 + 16;
      v34 = v35;
      v36 = *(v33 + 23);
      v39 = *(v29 + 16);
      v37 = v29 + 16;
      v38 = v39;
      v40 = *(v37 + 23);
      if (v40 >= 0)
      {
        v41 = *(v37 + 23);
      }

      else
      {
        v41 = *(v37 + 8);
      }

      if (v40 >= 0)
      {
        v42 = v37;
      }

      else
      {
        v42 = v38;
      }

      if (v36 >= 0)
      {
        v43 = *(v33 + 23);
      }

      else
      {
        v43 = *(v33 + 8);
      }

      if (v36 >= 0)
      {
        v44 = v33;
      }

      else
      {
        v44 = v34;
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (v47)
      {
        return 0;
      }
    }
  }

LABEL_64:
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v70, a1 + 1);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v69, a2 + 1);
  v49 = v69;
  v48 = v70;
  if (v70 && v69)
  {
    if (v70 == v69)
    {
      goto LABEL_94;
    }

    v50 = v70 & 0xFFFFFFFFFFFFFFF8;
    v51 = v69 & 0xFFFFFFFFFFFFFFF8;
    v52 = *((v70 & 0xFFFFFFFFFFFFFFF8) + 8);
    v53 = *((v69 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v52 < v53)
    {
      result = 1;
      goto LABEL_95;
    }

    if (v52 != v53)
    {
LABEL_94:
      result = 0;
      goto LABEL_95;
    }

    v57 = *(v51 + 16);
    v55 = v51 + 16;
    v56 = v57;
    v58 = *(v55 + 23);
    v61 = *(v50 + 16);
    v59 = v50 + 16;
    v60 = v61;
    v62 = *(v59 + 23);
    if (v62 >= 0)
    {
      v63 = *(v59 + 23);
    }

    else
    {
      v63 = *(v59 + 8);
    }

    if (v62 >= 0)
    {
      v64 = v59;
    }

    else
    {
      v64 = v60;
    }

    if (v58 >= 0)
    {
      v65 = *(v55 + 23);
    }

    else
    {
      v65 = *(v55 + 8);
    }

    if (v58 >= 0)
    {
      v66 = v55;
    }

    else
    {
      v66 = v56;
    }

    if (v65 >= v63)
    {
      v67 = v63;
    }

    else
    {
      v67 = v65;
    }

    v68 = memcmp(v64, v66, v67);
    if (v68)
    {
      result = v68 < 0;
    }

    else
    {
      result = v63 < v65;
    }
  }

  else
  {
    if (v70)
    {
      v54 = 1;
    }

    else
    {
      v54 = v69 == 0;
    }

    result = !v54;
  }

LABEL_95:
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v48 = v70;
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, double a5)
{
  v30 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v24 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v17, a3, &v18);
  if (*(ProtoPrim + 1) || (v25 = "usdImaging/instanceAdapter.cpp", v26 = "UpdateForTime", v27 = 1212, v28 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", v29 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "proto.adapter", v16) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v25, a1, ProtoPrim);
    (*(**(ProtoPrim + 1) + 112))(*(ProtoPrim + 1), &v25, a3, a4, &v18, a5);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
    sub_29A1DE3A4(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v11);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
  }

  else
  {
    sub_29A1DCEA8(&v17);
  }

  return sub_29B0020F0(&v18);
}

void sub_29AFFB9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v25);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v26);
    v27 = 0u;
    v28 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v21, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v21, a3, &v22);
    if (*(ProtoPrim + 1))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v16, this, ProtoPrim);
      v10 = (*(**(ProtoPrim + 1) + 128))(*(ProtoPrim + 1), &v16, a3, a4);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v11);
      }
    }

    else
    {
      v10 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    sub_29A1DE3A4(&v21);
    sub_29B0020F0(&v22);
  }

  else
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v12)
    {
      v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v12 + 114) ^ *a4) >= 8)
    {
      if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v8))
      {
        return 64;
      }

      else
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v15)
        {
          v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v15 + 158) ^ *a4) >= 8)
        {
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, v13))
          {

            pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 64, 1);
          }

          return 0;
        }

        else
        {
          return 0x20000;
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return v10;
}

void sub_29AFFBCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, char a15)
{
  sub_29A57F434(&a9);
  sub_29A1DCEA8(&a13);
  sub_29B0020F0(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, char a4)
{
  v23[0] = 0;
  v23[1] = 0;
  v21 = 0;
  v22 = v23;
  v19 = 0;
  v20 = 0;
  sub_29A1E28B4(&v19, a2);
  for (i = v20; v19 != v20; i = v20)
  {
    sub_29A1E21F4(&v17, (i - 8));
    sub_29A1E2240(&v18, (i - 4));
    v8 = v20 - 8;
    sub_29A1E230C(&v19, (v20 - 8));
    v20 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v16);
    v9 = sub_29A2F4F50(this + 9, &v17);
    if (v9)
    {
      sub_29A2258F0(&v15, v9 + 6);
      sub_29A225948(&v16, v9 + 7);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
  }

  v10 = v22;
  if (v22 != v23)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncInstancer(this, (v10 + 28), a3, a4);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v23);
  }

  v14 = &v19;
  sub_29A1E234C(&v14);
  sub_29A1E2AEC(&v22, v23[0]);
}

void sub_29AFFBF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_29A1DCEA8(&a15);
  sub_29A1DCEA8(&a17);
  a10 = &a19;
  sub_29A1E234C(&a10);
  sub_29A1E2AEC(&a22, a23);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncInstancer(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, char a4)
{
  v8 = sub_29A2F4F50(this + 4, a2);
  if (v8 || (sub_29B2CE300(v26) & 1) != 0)
  {
    for (i = *(v8 + 19); i; i = *i)
    {
      (*(**(i + 4) + 144))(*(i + 4), i + 2, a3);
      v10 = sub_29A2F4F50(this + 19, i + 4);
      if (v10)
      {
        sub_29AFC6A38(this + 19, v10);
      }
    }

    v11 = sub_29B0038C4(this + 14, v8 + 6);
    if (v11 != v12)
    {
      v13 = v11;
      while (v13[3] != *a2)
      {
        v13 = *v13;
        if (v13 == v12)
        {
          goto LABEL_12;
        }
      }

      sub_29AFC6A38(this + 14, v13);
    }

LABEL_12:
    if (pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsPopulated(a3, a2))
    {
      sub_29B000258(a3, a2);
    }

    v14 = &v24;
    v15 = *(v8 + 11);
    v24 = *(v8 + 10);
    v25[0] = v15;
    v16 = *(v8 + 12);
    *(v8 + 12) = 0;
    *(v8 + 11) = 0;
    v25[1] = v16;
    v17 = (v15 + 2);
    if (v16)
    {
      v14 = v17;
    }

    *v14 = v25;
    *(v8 + 10) = v8 + 22;
    sub_29B01CC5C(this + 4, v8);
    v18 = v24;
    if (v24 != v25)
    {
      do
      {
        v19 = sub_29A2F4F50(this + 9, v18 + 7);
        sub_29AFC6A38(this + 9, v19);
        v20 = *(v18 + 1);
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
            v21 = *(v18 + 2);
            v22 = *v21 == v18;
            v18 = v21;
          }

          while (!v22);
        }

        v18 = v21;
      }

      while (v21 != v25);
    }

    if ((a4 & 1) != 0 && v24 != v25)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v23, this, (v24 + 7));
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v23);
    }

    sub_29A1E2AEC(&v24, v25[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if ((*(*this + 352))(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, &v6, a3, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, a2, a3, 1);
  }
}

void sub_29AFFC360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPrimRemoval(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if ((*(*this + 352))(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v6, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, &v6, a3, 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, a2, a3, 0);
  }
}

void sub_29AFFC448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
  v25 = 0u;
  v26 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v19, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v19, a3, &v20);
  v11 = ProtoPrim[1];
  if (!v11)
  {
    LOBYTE(v18) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, Text, "usdImaging/instanceAdapter.cpp", "MarkDirty", 1383, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkDirty(const UsdPrim &, const SdfPath &, HdDirtyBits, UsdImagingIndexProxy *)", v18);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "proto.adapter", v16))
    {
      goto LABEL_4;
    }

    v11 = ProtoPrim[1];
  }

  (*(*v11 + 152))(v11, a2, a3, a4, a5);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  sub_29A1DE3A4(&v19);
  return sub_29B0020F0(&v20);
}

void sub_29AFFC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRefineLevelDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkRefineLevelDirty", 1411, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRefineLevelDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 160))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v18);
  }

  return result;
}

void sub_29AFFC7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkReprDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkReprDirty", 1431, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkReprDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 168))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v18);
  }

  return result;
}

void sub_29AFFC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkCullStyleDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkCullStyleDirty", 1451, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkCullStyleDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 176))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v18);
  }

  return result;
}

void sub_29AFFCAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRenderTagDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkRenderTagDirty", 1471, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRenderTagDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 184))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v18);
  }

  return result;
}

void sub_29AFFCC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
  v9 = ProtoPrim[1];
  if (!v9)
  {
    LOBYTE(v16) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkTransformDirty", 1488, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkTransformDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
    {
      goto LABEL_4;
    }

    v9 = ProtoPrim[1];
  }

  (*(*v9 + 192))(v9, a2, a3, a4);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  sub_29A1DE3A4(&v17);
  return sub_29B0020F0(&v18);
}

void sub_29AFFCE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v18);
  v9 = ProtoPrim[1];
  if (!v9)
  {
    LOBYTE(v16) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkVisibilityDirty", 1515, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkVisibilityDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
    {
      goto LABEL_4;
    }

    v9 = ProtoPrim[1];
  }

  (*(*v9 + 200))(v9, a2, a3, a4);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  sub_29A1DE3A4(&v17);
  return sub_29B0020F0(&v18);
}

void sub_29AFFD030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstanceCategories(void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29AFFD10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABF5B1C(va);
  _Unwind_Resume(a1);
}

void sub_29AFFD280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, double a4@<D0>, uint64_t *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(*v10 + 256))(v10, &v13, a3, a4);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(a5, a1);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFD410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, int *a5)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v18, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v18, a3, a5);
  *a4 = ProtoPrim;
  if (ProtoPrim[1])
  {
    v10 = 1;
  }

  else
  {
    v16[0] = "usdImaging/instanceAdapter.cpp";
    v16[1] = "_GetProtoPrimForChild";
    v16[2] = 2318;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(const UsdPrim &, const SdfPath &, const _ProtoPrim **, UsdImagingInstancerContext *) const";
    v17 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, Text);
    v10 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v16, "(*proto)->adapter", v15);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
  sub_29A1DE3A4(&v18);
  return v10;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0u;
  v20 = 0u;
  ProtoPrimForChild = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(this, a2, a3, &v13, &v14);
  if (ProtoPrimForChild)
  {
    sub_29A1E21F4(a4, &v14);
    v9 = a4 + 1;
    v10 = &v15;
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(ProtoPrimForChild);
    sub_29A1E21F4(a4, v11);
    v9 = a4 + 1;
    v10 = v11 + 1;
  }

  sub_29A1E2240(v9, v10);
  return sub_29B0020F0(&v14);
}

void sub_29AFFD624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v20, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v20, a3, &v21);
  v8 = *(ProtoPrim + 1);
  if (!v8)
  {
    v16 = "GetInstancerPrototypes";
    v17 = 1637;
    v18 = "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerPrototypes(const UsdPrim &, const SdfPath &) const";
    v19 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp");
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      goto LABEL_7;
    }

    v8 = *(ProtoPrim + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v15, this, ProtoPrim);
  (*(*v8 + 280))(v8, &v15, a3);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  sub_29A1DE3A4(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v9);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
  sub_29A1DE3A4(&v20);
  return sub_29B0020F0(&v21);
}

void sub_29AFFD858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  *a5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(v12, a1);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, unint64_t a4, _DWORD *a5, _OWORD *a6, double a7)
{
  if (!a4)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v31);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v32);
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v34);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v35);
    v36 = 0u;
    v37 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v30, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v30, a3, &v31);
    v15 = ProtoPrim;
    v16 = *(ProtoPrim + 1);
    if (!v16)
    {
      v20 = ProtoPrim;
      v26 = "SampleTransform";
      v27 = 1697;
      v28 = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, size_t, float *, GfMatrix4d *)";
      v29 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v24 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v22, v23, Text, "usdImaging/instanceAdapter.cpp");
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "proto.adapter", v24))
      {
        v17 = 0;
LABEL_8:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v30 + 1);
        sub_29A1DE3A4(&v30);
        sub_29B0020F0(&v31);
        return v17;
      }

      v15 = v20;
      v16 = *(v20 + 1);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v25, a1, v15);
    v17 = (*(*v16 + 384))(v16, &v25, a3, a4, a5, a6, a7);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
    sub_29A1DE3A4(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v18);
    }

    goto LABEL_8;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleTransform(a1, a2, a7, a3, a4, a5, a6);
}

void sub_29AFFDB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SamplePrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9)
{
  v38 = *MEMORY[0x29EDCA608];
  v34 = a9;
  if (!a5)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCurrentTimeSamplingInterval(v31, a1);
    memset(__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v29);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v22)
    {
      v22 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v22 + 6) ^ *a4) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v23)
    {
      v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v23 + 6) ^ *a4) <= 7)
    {
      v35 = *v31;
      *v36 = v32;
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstanceTransformsTimeSamples(a1, a2, &v35, __p);
    }

    v35 = *v31;
    *v36 = v32;
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstancePrimvarTimeSamples(a1, a2, a4, &v35, __p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v35 + 1);
  *(&v35 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v36[4]);
  v37 = 0u;
  *&v36[8] = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(__p, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, __p, a3, &v35);
  v19 = *(ProtoPrim + 1);
  if (v19)
  {
    goto LABEL_4;
  }

  v31[0] = "usdImaging/instanceAdapter.cpp";
  v31[1] = "SamplePrimvar";
  *&v32 = 1735;
  *(&v32 + 1) = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SamplePrimvar(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, size_t, float *, VtValue *, VtIntArray *)";
  v33 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
  v28 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v26, v27, Text);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v31, "proto.adapter", v28))
  {
    v19 = *(ProtoPrim + 1);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v31, a1, ProtoPrim);
    v20 = (*(*v19 + 288))(v19, v31, a3, a4, a5, a6, a7, a8, a9);
    if ((BYTE8(v32) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v32 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
    sub_29A1DE3A4(&v32);
    if (v31[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31[1], v21);
    }

    goto LABEL_8;
  }

  v20 = 0;
LABEL_8:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
  sub_29A1DE3A4(__p);
  sub_29B0020F0(&v35);
  return v20;
}

void sub_29AFFE0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_29A1DCEA8(&__p);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetPurpose@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *x8_0@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v22);
  memset(&v22[1], 0, 32);
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(this, a2, a3, &v17, &v18))
  {
    v9 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, this, v17);
    (*(*v9 + 368))(v9, &v12, a3, &v22[3]);
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
  }

  else
  {
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(a2, &v12, x8_0);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return sub_29B0020F0(&v18);
}

void sub_29AFFE2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(*v10 + 296))(v10, &v13, a3, a4);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(*v10 + 408))(v10, &v13, a3, a4);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTopology(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    v8 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, a1, v17);
    CullStyle = (*(*v8 + 400))(v8, &v12, a3, a4);
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
  }

  else
  {
    CullStyle = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetCullStyle();
  }

  sub_29B0020F0(&v18);
  return CullStyle;
}

void sub_29AFFE7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtent@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(*v10 + 416))(v10, &v13, a3, a4);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::IsChildPath(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1753DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753DF8))
  {
    sub_29A0CD6B0(&unk_2A1753DB8, "^proto_[^.\\/\\s]+_id\\d+$", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A1753DB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753DF8);
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
  v6 = sub_29A17BEA8(Name, Name + v4, __p, &unk_2A1753DB8, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVisible(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a1, a2, a4);
  }

  v8 = *(v17 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, a1, v17);
  v9 = (*(*v8 + 360))(v8, &v12, a3, a4);
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

  sub_29B0020F0(&v18);
  return v9;
}

void sub_29AFFEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    v8 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, a1, v17);
    DoubleSided = (*(*v8 + 424))(v8, &v12, a3, a4);
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
  }

  else
  {
    DoubleSided = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetDoubleSided();
  }

  sub_29B0020F0(&v18);
  return DoubleSided;
}

void sub_29AFFED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, a2, a3, a5);
  }

  v10 = *(v18 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
  (*(*v10 + 376))(v10, &v13, a3, a4, a5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFEF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetMaterialId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  v10 = &v25;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v11 = *(v20 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v14, a1, v20);
    (*(*v11 + 432))(&v19, v11, &v14, a3, a5);
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

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v19))
    {
      sub_29A1E21F4(a4, &v19);
      v10 = &v19 + 1;
    }

    else
    {
      sub_29A1E21F4(a4, &v24);
    }

    sub_29A1E2240(a4 + 1, v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
    sub_29A1DE3A4(&v19);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId(a4);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFF0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetLightParamValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, double a5@<D0>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a6@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v12 = v20;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v15, a1, v20);
    (*(**(v12 + 1) + 344))(*(v12 + 1), &v15, a3, a4, a5);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v13);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(a1, a2, a3, a4, a6, a5);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFF294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = v18;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(**(v10 + 1) + 440))(*(v10 + 1), &v13, a3, a4);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialResource(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFF420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationInputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v11, a1, v16);
    (*(*v8 + 456))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFF5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationOutputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v11, a1, v16);
    (*(*v8 + 464))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFF720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationPrimvars@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v13, a1, v18);
    (*(*v10 + 472))(v10, &v13, a3, a4, &v19);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFF8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationInput@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, double a5@<D0>, uint64_t a6@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v12 = *(v20 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v15, a1, v20);
    (*(*v12 + 480))(v12, &v15, a3, a4, &v21, a5);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v13);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInput(a6);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFFA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationKernel@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v11, a1, v16);
    (*(*v8 + 496))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFFBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
    v26 = 0u;
    v27 = 0u;
    v20 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
    {
      v12 = *(v20 + 1);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v15, a1, v20);
      (*(*v12 + 504))(v12, &v15, a3, a4, a6);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
      sub_29A1DE3A4(&v17);
      if (v16)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v13);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceIndices(a5);
    }

    sub_29B0020F0(&v21);
  }

  else
  {
    v14 = sub_29A328A44(a1 + 4, a3);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a1, a2, &v21, (v14 + 3), a6);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceIndices(a5);
  }
}

void sub_29AFFFDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(&a9);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, double a5@<D0>)
{
  sub_29A19D6E4(a3, 0);
  v10[0] = a1;
  *&v10[1] = a5;
  v10[2] = a4 + 88;
  v10[3] = a3;
  sub_29B000530(a1, a2, v10);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v28);
  v29 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v30);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v31);
  v33 = 0u;
  v32 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v26, a3);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v26, a3, &v27);
  v14 = *(ProtoPrim + 1);
  if (!v14)
  {
    v21 = "usdImaging/instanceAdapter.cpp";
    v22 = "Get";
    v23 = 2135;
    v24 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
    v25 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v20 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v18, v19, Text);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "proto.adapter", v20))
    {
      a6[1] = 0;
      goto LABEL_7;
    }

    v14 = *(ProtoPrim + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v21, a1, ProtoPrim);
  (*(*v14 + 392))(v14, &v21, a3, a4, a5, a7);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  sub_29A1DE3A4(&v23);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v15);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
  sub_29A1DE3A4(&v26);
  return sub_29B0020F0(&v27);
}

void sub_29B0001D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B000258(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A1E28B4(a1 + 112, a2);
  sub_29A1E28B4(a1 + 136, a2);

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_RemoveDependencies(a1, a2);
}

void sub_29B000310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B000324(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

_DWORD *sub_29B000360(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29B0004F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B000658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetScenePrimPath(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v8 = a3;
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_29A058D90(&__p, &v8, &__p, 1uLL);
  (*(*a1 + 320))(v12, a1, a2, &__p, 0);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v7 = v12[0];
  if (v12[1] == v12[0])
  {
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  }

  else
  {
    sub_29A1E21F4(a4, v12[0]);
    sub_29A1E2240(a4 + 1, v7 + 1);
  }

  __p = v12;
  sub_29A1E234C(&__p);
}

void sub_29B0007A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetScenePrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a2@<X0>, int **a3@<X2>, uint64_t *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(this, &v39);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v44, a2, &v39);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39 + 1);
  sub_29A1DE3A4(&v39);
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a2, &v44, this))
  {
    if (sub_29AF49C14(9))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPaths: instance proto = %s\n", v9, v10, Text);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v39);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v39 + 1);
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v41);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v41 + 1);
    v43 = 0u;
    v42 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v38, this);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a2, &v38, this, &v39) + 1))
    {
      v11 = sub_29A328A44(a2 + 4, &v39);
      if (v11)
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v37, a2, &v39);
        TimeWithOffset = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a2, 0.0);
        pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a2, &v37, &v36, (v11 + 3), TimeWithOffset);
      }
    }

    sub_29A2254B4(a4, a3[1] - *a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
    sub_29A1DE3A4(&v38);
    sub_29B0020F0(&v39);
  }

  else
  {
    if (sub_29AF49C14(9))
    {
      v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPaths: instance = %s\n", v14, v15, v13);
    }

    v16 = sub_29A328A44(a2 + 9, this);
    if (v16)
    {
      v17 = (v16 + 6);
    }

    else
    {
      v17 = 0;
    }

    if (v16 && sub_29A328A44(a2 + 4, v16 + 6))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v18 = *a3;
      v19 = a3[1];
      if (*a3 != v19)
      {
        v20 = 0;
        v21 = (v19 - v18) >> 2;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        v22 = 0x7FFFFFFF;
        while (1)
        {
          v24 = *v18;
          v18 += 4;
          v23 = v24;
          if (v24 < v22)
          {
            v22 = v23;
          }

          if (v20 <= v23)
          {
            v20 = v23;
          }

          if (!--v21)
          {
            LODWORD(v39) = 0x7FFFFFFF;
            sub_29B01DC2C(&v35, v20 - v22 + 1, &v39);
            v25 = *a3;
            v26 = a3[1] - *a3;
            v27 = v26 >> 2;
            if (v26)
            {
              v28 = 0;
              v29 = v35;
              if (v27 <= 1)
              {
                v30 = 1;
              }

              else
              {
                v30 = v27;
              }

              do
              {
                v29[*&v25[4 * v28] - v22] = v28;
                ++v28;
              }

              while (v30 != v28);
            }

            v31 = sub_29A38B6A4(a4, v27);
            v32 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v31);
            v39 = a2;
            v40 = v32;
            v41 = &v35;
            LODWORD(v42) = v22;
            *(&v42 + 1) = a4;
            pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v36, a2, v17);
            sub_29B000DCC(a2, &v36, &v39);
          }
        }
      }
    }

    else
    {
      sub_29A2254B4(a4, a3[1] - *a3);
    }
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v47);
  sub_29A1DE3A4(&v46);
  result = v45;
  if (v45)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45, v33);
  }

  return result;
}

void sub_29B000CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_29A1E234C(&a10);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B000EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::PopulateSelection(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(this, v30);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v25, a1, v30);
  IsChildPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, &v25, this);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
  sub_29A1DE3A4(&v27);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v10);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v30 + 1);
  sub_29A1DE3A4(v30);
  if (IsChildPrim)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v25);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25 + 1);
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v27);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v27 + 1);
    v28 = 0u;
    v29 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v35, this);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, v35, this, &v25) + 1) && sub_29A328A44(a1 + 4, &v25))
    {
      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
        v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v25);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: proto = %s instancer = %s\n", v13, v14, Text, v12);
      }

      LODWORD(v31[0]) = 1;
      v31[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v32);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33);
      v34 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v35 + 1);
    sub_29A1DE3A4(v35);
    sub_29B0020F0(&v25);
  }

  else
  {
    v15 = sub_29A328A44(a1 + 9, this);
    if (v15)
    {
      v16 = v15;
      v17 = sub_29A328A44(a1 + 4, v15 + 6);
      if (v17)
      {
        v18 = v17;
        if (sub_29AF49C14(9))
        {
          v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
          v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v16 + 6));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: instance = %s instancer = %s\n", v21, v22, v19, v20);
        }

        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v31, a1, (v16 + 6));
        TimeWithOffset = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a1, 0.0);
        pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a1, v31, v30, (v18 + 3), TimeWithOffset);
      }
    }
  }

  return 0;
}

void sub_29B001480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_29A1DCEA8(va);
  sub_29A57F434(v26 - 128);
  sub_29A1DCEA8((v26 - 96));
  sub_29B0020F0(&a12);
  _Unwind_Resume(a1);
}

void sub_29B0016A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v17, a3);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v17, a3, &v18);
    v10 = *(ProtoPrim + 1);
    if (!v10)
    {
      v12 = "usdImaging/instanceAdapter.cpp";
      v13 = "GetVolumeFieldDescriptors";
      v14 = 3026;
      v15 = "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVolumeFieldDescriptors(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
      v16 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v12, a1, ProtoPrim);
    (*(*v10 + 336))(v10, &v12, a3, a5);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
    sub_29A1DE3A4(&v14);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v11);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    sub_29B0020F0(&v18);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(a4);
  }
}

void sub_29B001948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/instanceAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 3042;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Should use overidden ProcessPrimResync/ProcessPrimRemoval");
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetRelativeInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, double a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v5, a4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v6, a1, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  sub_29A1DE3A4(&v5);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
}

void sub_29B001AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A57F434(va1);
  _Unwind_Resume(a1);
}

void *sub_29B001B18(void *a1)
{
  *a1 = &unk_2A20ACCD0;
  sub_29A55B678((a1 + 19));
  sub_29A55B678((a1 + 14));
  sub_29A55B678((a1 + 9));
  sub_29B001E68((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B001B80(void *a1)
{
  *a1 = &unk_2A20ACCD0;
  sub_29A55B678((a1 + 19));
  sub_29A55B678((a1 + 14));
  sub_29A55B678((a1 + 9));
  sub_29B001E68((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void *sub_29B001BF8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ACF10;
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

void sub_29B001C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B001CA8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B001CD0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B001D0C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B001D0C(void *a1@<X8>)
{
  v2 = operator new(0xD8uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_2A20ACF50;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 26) = 0;
  *(v2 + 3) = &unk_2A20ACCD0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 22) = 1065353216;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 32) = 1065353216;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 42) = 1065353216;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 52) = 1065353216;
  *a1 = v2 + 24;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 24));
}

void sub_29B001DFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ACF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B001E68(uint64_t a1)
{
  sub_29B001EA4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B001EA4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B001EE8(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B001EE8(_DWORD *a1)
{
  sub_29B001F30((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29B001F30(uint64_t a1)
{
  v6 = (a1 + 200);
  sub_29A1E234C(&v6);
  v6 = (a1 + 176);
  sub_29A1E234C(&v6);
  sub_29A1E2AEC(a1 + 152, *(a1 + 160));
  sub_29B002010(a1 + 112);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_29A1E2AEC(a1 + 56, *(a1 + 64));
  v6 = (a1 + 32);
  sub_29A15EE8C(&v6);
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29B002010(uint64_t a1)
{
  sub_29B00204C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B00204C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B002090((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B002090(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29B0020F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29B002198(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v14 = a2;
  v7 = sub_29A10A6B8(a1, &v14);
  sub_29B00233C(v7 + 1, v14);
  v9 = *(a1 + 8);
  if (v9 == *(a1 + 16))
  {
    v9 = sub_29B002304(a1, v8);
  }

  v10 = v14;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v10 >= 0x555555555555556)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v10)
  {
    *(*(a1 + 16) - 42) = 1;
  }

  v11 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v11;
  *(a1 + 56) = (v11 * v10);
  return a1;
}

void sub_29B0022DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B0023C8(va);
  _Unwind_Resume(a1);
}

int *sub_29B002304(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2A14FA1E8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CE348();
  }

  return &dword_2A14FA1B8;
}

void *sub_29B00233C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1C11FC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 48 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 48;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29B0023C8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29B00241C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29B00241C(pxrInternal__aapl__pxrReserved__ *result)
{
  v1 = result;
  v3 = *result;
  v2 = *(result + 1);
  if (v2 != *result)
  {
    v4 = v2 - 48;
    do
    {
      if (*(v4 + 4) != -1)
      {
        result = sub_29B0024C4(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 48;
    }

    while (!v5);
  }

  *(v1 + 1) = v3;
  return result;
}

uint64_t sub_29B002484(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29B0024C4(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__ *sub_29B0024C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  result = *(a1 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

uint64_t sub_29B002534(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v20 = a2;
  v21 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v20 = v7 - 1;
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 - 2, v8);
      if (result)
      {
        v18 = &v21;
        v19 = &v20;
        return sub_29B002860(v18, v19);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return sub_29B002A90(v8, v7);
      }

      else
      {
        return sub_29B002BE4(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_29B003348(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = v7 - 1;
    if (v10 < 0x81)
    {
      sub_29B0028AC(&v8[v10 >> 1], v8, v12);
      if (a5)
      {
LABEL_17:
        v7 = v20;
        goto LABEL_18;
      }
    }

    else
    {
      sub_29B0028AC(v8, &v8[v10 >> 1], v12);
      v13 = 16 * v11 - 16;
      sub_29B0028AC(v21 + 1, (v21 + v13), v20 - 2);
      v14 = 16 * v11 + 16;
      sub_29B0028AC(v21 + 2, (v21 + v14), v20 - 3);
      sub_29B0028AC((v21 + v13), &v21[v11], (v21 + v14));
      v25 = &v21[v11];
      sub_29B002860(&v21, &v25);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v20;
    if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v21 - 2, v21))
    {
      result = sub_29B002D14(v21, v20);
      v8 = result;
LABEL_26:
      a5 = 0;
      v21 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_29B002EE4(v21, v7);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_29B0030AC(v21, v15);
    v8 = v15 + 1;
    result = sub_29B0030AC(v15 + 1, v7);
    if (result)
    {
      if (v17)
      {
        return result;
      }

      v20 = v15;
      v8 = v21;
      v7 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        result = sub_29B002534(v21, v15, a3, -i, a5 & 1);
        v8 = v15 + 1;
        goto LABEL_26;
      }

      v21 = v15 + 1;
    }
  }

  if (v10 == 3)
  {
    v20 = v7 - 1;
    return sub_29B0028AC(v8, v8 + 1, v7 - 1);
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v20 = v7 - 1;
      return sub_29B002964(v8, v8 + 1, v8 + 2, v8 + 3, v7 - 1);
    }

    goto LABEL_10;
  }

  v20 = v7 - 1;
  v24 = v8 + 1;
  v25 = v8;
  v22 = v7 - 1;
  v23 = v8 + 2;
  sub_29B0028AC(v8, v8 + 1, v8 + 2);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 - 2, v8 + 4);
  if (result)
  {
    sub_29B002860(&v23, &v22);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v23, v8 + 2);
    if (result)
    {
      sub_29B002860(&v24, &v23);
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v24, v8);
      if (result)
      {
        v18 = &v25;
        v19 = &v24;
        return sub_29B002860(v18, v19);
      }
    }
  }

  return result;
}

__int128 **sub_29B002860(__int128 **result, __int128 **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = **result;
  *v2 = 0;
  if (v3 != v2)
  {
    *v2 = *v3;
    *v3 = 0;
  }

  *(v2 + 1) = *(v3 + 1);
  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v3 = v4;
  return result;
}

BOOL sub_29B0028AC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_29B002860(&v11, &v10);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29B002860(&v10, &v9);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29B002860(v7, v8);
    }
  }

  return 1;
}

__int128 **sub_29B002964(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_29B0028AC(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a4, a3))
  {
    sub_29B002860(&v17, &v16);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v17, a2))
    {
      sub_29B002860(&v18, &v17);
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v18, a1))
      {
        sub_29B002860(&v19, &v18);
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a5, a4);
  if (result)
  {
    sub_29B002860(&v12, &v11);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, a3);
    if (result)
    {
      sub_29B002860(&v13, &v12);
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, a2);
      if (result)
      {
        sub_29B002860(&v14, &v13);
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v14, a1);
        if (result)
        {
          return sub_29B002860(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t *sub_29B002A90(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v4, v6);
        if (result)
        {
          v8 = *v7;
          *v7 = 0;
          v9 = v6[3];
          v19 = v8;
          v20 = v9;
          v10 = v5;
          while (1)
          {
            v11 = (v3 + v10);
            v12 = *(v3 + v10 + 16);
            if ((v12 & 7) != 0)
            {
              atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v13 = *v11;
            v14 = v11[1];
            *v11 = 0;
            v11[2] = v13;
            v11[3] = v14;
            if (!v10)
            {
              break;
            }

            result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v19, (v3 + v10 - 16));
            v10 -= 16;
            if ((result & 1) == 0)
            {
              v15 = (v3 + v10 + 16);
              goto LABEL_12;
            }
          }

          v15 = v3;
LABEL_12:
          if (&v19 == v15)
          {
            v18 = v19;
            v15[1] = v20;
            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            if ((*v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v16 = v19;
            v17 = v20;
            v19 = 0;
            *v15 = v16;
            v15[1] = v17;
          }
        }

        v4 = v7 + 2;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

uint64_t *sub_29B002BE4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = result - 2;
      do
      {
        v6 = v4;
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v4, v3);
        if (result)
        {
          v7 = *v6;
          *v6 = 0;
          v8 = v3[3];
          v17 = v7;
          v18 = v8;
          v9 = v5;
          do
          {
            v10 = v9[4];
            if ((v10 & 7) != 0)
            {
              atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v11 = v9[2];
            v12 = v9[3];
            v9[2] = 0;
            v9[4] = v11;
            v9[5] = v12;
            result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v17, v9);
            v9 -= 2;
          }

          while ((result & 1) != 0);
          if (v9 + 4 == &v17)
          {
            v16 = v17;
            v9[5] = v18;
            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v13 = v9[4];
            if ((v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v14 = v17;
            v15 = v18;
            v17 = 0;
            v9[4] = v14;
            v9[5] = v15;
          }
        }

        v4 = v6 + 2;
        v5 += 2;
        v3 = v6;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

__int128 *sub_29B002D14(uint64_t a1, __int128 *a2)
{
  v11 = a2;
  v12 = a1;
  v3 = *a1;
  *a1 = 0;
  v10 = v3;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, a2 - 2))
  {
    v4 = a1;
    do
    {
      v12 = ++v4;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v4));
  }

  else
  {
    v5 = (a1 + 16);
    do
    {
      v4 = v5;
      v12 = v5;
      if (v5 >= v11)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v5);
      v5 = v4 + 1;
    }

    while (!v6);
  }

  v7 = v11;
  if (v4 < v11)
  {
    do
    {
      v11 = --v7;
    }

    while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v7));
    v4 = v12;
  }

  if (v4 < v7)
  {
    do
    {
      sub_29B002860(&v12, &v11);
      do
      {
        ++v12;
      }

      while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v12));
      do
      {
        --v11;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v11));
      v4 = v12;
    }

    while (v12 < v11);
  }

  v8 = v4 - 1;
  if (v4 - 1 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v4 - 2);
    *(v4 - 2) = 0;
    *(a1 + 8) = *(v4 - 1);
  }

  if (&v10 != v8)
  {
    if ((*v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v8 = v10;
    *&v10 = 0;
  }

  *(v4 - 1) = *(&v10 + 1);
  result = v12;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B002EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_29B002EE4(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v12 = a2;
  v4 = *a1;
  *a1 = 0;
  v11 = v4;
  do
  {
    v13 = (a1 + v3 + 16);
    v3 += 16;
  }

  while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, &v11));
  v5 = v12;
  if (v3 == 16)
  {
    v8 = (a1 + 16);
    do
    {
      if (v8 >= v5)
      {
        break;
      }

      v12 = --v5;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v5, &v11));
  }

  else
  {
    v6 = v12 - 1;
    do
    {
      v12 = v6;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v6--, &v11));
    v8 = v13;
  }

  v9 = v8;
  if (v8 < v12)
  {
    do
    {
      sub_29B002860(&v13, &v12);
      do
      {
        ++v13;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, &v11));
      do
      {
        --v12;
      }

      while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, &v11));
      v9 = v13;
    }

    while (v13 < v12);
  }

  result = v9 - 1;
  if (v9 - 1 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v9 - 2);
    *(v9 - 2) = 0;
    *(a1 + 8) = *(v9 - 1);
  }

  if (&v11 != result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = v11;
    *&v11 = 0;
  }

  *(v9 - 1) = *(&v11 + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B003080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29B0030AC(__int128 *a1, char *a2)
{
  v18 = a2;
  v19 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29B0028AC(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v17[0] = a1;
        v15 = (a2 - 16);
        v21 = a1 + 2;
        v22 = a1 + 1;
        v20 = a2 - 16;
        sub_29B0028AC(a1, a1 + 1, a1 + 2);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v15, a1 + 4))
        {
          return 1;
        }

        sub_29B002860(&v21, &v20);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v21, a1 + 2))
        {
          return 1;
        }

        sub_29B002860(&v22, &v21);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v22, a1))
        {
          return 1;
        }

        v5 = v17;
        v6 = &v22;
        goto LABEL_6;
      case 5:
        sub_29B002964(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v18 = (a2 - 16);
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a2 - 2, a1))
      {
        v5 = &v19;
        v6 = &v18;
LABEL_6:
        sub_29B002860(v5, v6);
      }

      return 1;
    }
  }

  v7 = (a1 + 2);
  sub_29B0028AC(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  if (v8 == a2)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v8, v7))
    {
      v10 = *v8;
      *v8 = 0;
      *v17 = v10;
      do
      {
        v11 = v7;
        v12 = v7[2];
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v7[2] = *v7;
        *v7 = 0;
        v7[3] = v7[1];
        if (v7 == v19)
        {
          break;
        }

        v7 -= 2;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v17, v11 - 2));
      if (v11 == v17)
      {
        v13 = v17[0];
      }

      else
      {
        if ((*v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v13 = 0;
        *v11 = v17[0];
        v17[0] = 0;
      }

      v11[1] = v17[1];
      v14 = v18;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (++v9 == 8)
      {
        break;
      }
    }

    v7 = v8;
    v8 += 2;
    if (v8 == v18)
    {
      return 1;
    }
  }

  return v8 + 2 == v14;
}

__int128 *sub_29B003348(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v22 = a1;
  if (a1 != a2)
  {
    v7 = a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29B00350C(v7, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v21 = a2;
    v12 = a2;
    if (a2 != a3)
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, v22))
        {
          sub_29B002860(&v21, &v22);
          sub_29B00350C(v22, a4, v8, v22);
        }

        v12 = v21 + 1;
        v21 = v12;
      }

      while (v12 != a3);
      v7 = v22;
      v8 = a2 - v22;
    }

    if (v8 >= 2)
    {
      v13 = a2 - 1;
      do
      {
        v14 = *v7;
        v15 = *(v7 + 1);
        *v7 = 0;
        v16 = sub_29B0036C8(v7, a4, v8);
        v17 = *v16;
        v18 = *v16 & 7;
        if (v13 == v16)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v14;
          *(v16 + 1) = v15;
        }

        else
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = *v13;
          *v13 = 0;
          *(v16 + 1) = *(v13 + 1);
          if ((*v13 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v13 = v14;
          *(v13 + 1) = v15;
          sub_29B003798(v7, (v16 + 1), a4, v16 + 1 - v7);
        }

        --v13;
      }

      while (v8-- > 2);
      return v21;
    }

    return v12;
  }

  return a3;
}

BOOL sub_29B00350C(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<((result + 16 * (v9 + 1)), v11 + 2))
      {
        v11 += 2;
        v10 = v12;
      }

      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v11, v5);
      if (!result)
      {
        v13 = *v5;
        *v5 = 0;
        v17 = v13;
        do
        {
          v14 = v11;
          if (v11 != v5)
          {
            if ((*v5 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v5 = *v11;
            *v11 = 0;
          }

          v5[1] = v11[1];
          if (v7 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = (v6 + 16 * v15);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v15;
          }

          else if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<((v6 + 16 * v15), v11 + 2))
          {
            v11 += 2;
          }

          else
          {
            v10 = v15;
          }

          result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v11, &v17);
          v5 = v14;
        }

        while (!result);
        if (&v17 == v14)
        {
          v16 = v17;
          v14[1] = *(&v17 + 1);
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v14 = v17;
        }
      }
    }
  }

  return result;
}

void *sub_29B0036C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = v7 + 4;
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 + 2, v7 + 4))
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (v8 != a1)
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = *v8;
      *v8 = 0;
    }

    a1[1] = v8[1];
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

BOOL sub_29B003798(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7, (a2 - 16));
    if (result)
    {
      v9 = *v8;
      *v8 = 0;
      v12 = v9;
      do
      {
        v10 = v7;
        if (v7 != v8)
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v8 = *v7;
          *v7 = 0;
        }

        v8[1] = v7[1];
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 16 * v6);
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7, &v12);
        v8 = v10;
      }

      while (result);
      if (&v12 == v10)
      {
        v11 = v12;
        v10[1] = *(&v12 + 1);
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v10 = v12;
      }
    }
  }

  return result;
}

void *sub_29B0038C4(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

void *sub_29B003910(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
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

  sub_29B003B58(a1, v6, a4, &v22);
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

void sub_29B003B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B003CC8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B003B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x100uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B003BDC(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B003BDC(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29B003C34((a1 + 2));
  return a1;
}

uint64_t sub_29B003C34(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return a1;
}

void sub_29B003CC8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B001EE8(v2 + 4);
    }

    operator delete(v2);
  }
}

void sub_29B003D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A55CDA0(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B003D78@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  result = sub_29A23F744(v6 + 4, a2);
  *(a3 + 16) = 1;
  v6[1] = bswap64(0x9E3779B97F4A7C55 * (*(v6 + 5) + ((*(v6 + 5) + *(v6 + 4) + (*(v6 + 5) + *(v6 + 4)) * (*(v6 + 5) + *(v6 + 4))) >> 1)));
  return result;
}

char **sub_29B003DFC(char **result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (result[2] - *result) >> 4)
  {
    sub_29B003F78(result);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(v7, v11);
    result = sub_29B003FE8(v7, v6, a3, v7[1]);
LABEL_14:
    v7[1] = result;
    return result;
  }

  v12 = result[1];
  if (a4 > (v12 - v8) >> 4)
  {
    v13 = (a2 + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        sub_29A166F2C(v8, v6);
        *(v8 + 1) = v6[1];
        v6 += 2;
        v8 += 16;
      }

      while (v6 != v13);
      v12 = v7[1];
    }

    result = sub_29B003FE8(v7, v13, a3, v12);
    goto LABEL_14;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A166F2C(v8, v6);
      *(v8 + 1) = v6[1];
      v6 += 2;
      v8 += 16;
    }

    while (v6 != a3);
    v12 = v7[1];
  }

  while (v12 != v8)
  {
    v15 = *(v12 - 2);
    v12 -= 2;
    v14 = v15;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v7[1] = v8;
  return result;
}

void sub_29B003F78(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_29B003FE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = *a2;
    *result = *a2;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *result &= 0xFFFFFFFFFFFFFFF8;
    }

    result[1] = a2[1];
    a2 += 2;
  }

  return result;
}

void *sub_29B00403C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
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

  sub_29B004284(a1, v6, a4, &v22);
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

void sub_29B00426C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B004360(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B004284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B004308((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B004308(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void sub_29B004360(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B002090(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29B0043BC(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B0043F4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B0043F4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B002090(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_29B004450(void *a1, unsigned int *a2)
{
  result = sub_29A328A44(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

double sub_29B00449C(uint64_t a1, unint64_t a2)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = &v9;
  sub_29A197F54((a1 + 16), a2, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(v8, *a1);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v9, v8, 0, 0.0);
  v3 = v14;
  *(a1 + 120) = v13;
  *(a1 + 136) = v3;
  v4 = v16;
  *(a1 + 152) = v15;
  *(a1 + 168) = v4;
  v5 = v10;
  *(a1 + 56) = v9;
  *(a1 + 72) = v5;
  result = *&v11;
  v7 = v12;
  *(a1 + 88) = v11;
  *(a1 + 104) = v7;
  return result;
}

void sub_29B0049B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B004A38(uint64_t *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v6 = (a1 + 2);
  if (a1[2] <= a3)
  {
    *&v27 = "usdImaging/instanceAdapter.cpp";
    *(&v27 + 1) = "operator()";
    *&v28 = 730;
    *(&v28 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceTransformFn::operator()(const std::vector<UsdPrim> &, size_t)";
    LOBYTE(v29) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v27, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *&v19 = &v27;
      sub_29A197F54(v6, a3 + 1, &v19);
    }
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v27, 1.0);
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  v7 = *(a1 + 17);
  v23 = *(a1 + 15);
  v24 = v7;
  v8 = *(a1 + 21);
  v25 = *(a1 + 19);
  v26 = v8;
  v9 = *(a1 + 9);
  v19 = *(a1 + 7);
  v20 = v9;
  v10 = *(a1 + 13);
  v21 = *(a1 + 11);
  v22 = v10;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v19, &v27);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  sub_29A198240(v6);
  v11 = (a1[6] + (a3 << 7));
  v12 = v27;
  v13 = v28;
  v14 = v30;
  v11[2] = v29;
  v11[3] = v14;
  *v11 = v12;
  v11[1] = v13;
  v15 = v31;
  v16 = v32;
  v17 = v34;
  v11[6] = v33;
  v11[7] = v17;
  v11[4] = v15;
  v11[5] = v16;
  return 1;
}

void sub_29B004C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B005110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B005194(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = off_2A20608C8;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v8, v2);
      v8 = &unk_2A20608A8;
      if (v9 && (*(v9 + 57) & 8) == 0 && v5(&v8))
      {
        memset(__p, 0, sizeof(__p));
        pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamplesInInterval(&v8, a1 + 8, __p);
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(&v8);
      v2 = (v2 + 32);
    }

    while (v2 != v3);
  }

  return 1;
}

void sub_29B005290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(va);
  _Unwind_Resume(a1);
}

void sub_29B005738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B0057BC(uint64_t *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2)
{
  memset(v5, 0, sizeof(v5));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v5, &v4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v3, *a1, &v4);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
}

void sub_29B005974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_29A57F434(&a15);
  sub_29A1DCEA8((v15 - 64));
  a15 = v15 - 56;
  sub_29A1E234C(&a15);
  _Unwind_Resume(a1);
}

void sub_29B005EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B005F38(uint64_t *a1, unsigned int *a2)
{
  v4 = sub_29B0060B0(a1 + 2, a2);
  if (a1[6] + 48 * a1[7] == v4)
  {
    v6 = *a1;
    LODWORD(v12) = *a2;
    v7 = *(a2 + 1);
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
    }

    v17 = 0;
    sub_29A1E21F4(&v14, a2 + 4);
    sub_29A1E2240(&v15, a2 + 5);
    v8 = *(a2 + 3);
    v16 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v9)
    {
      v9 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    IsTransformVarying = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(v6, &v12, 512, (v9 + 8), &v17);
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

    v19 = a2;
    *(sub_29B0061B8(a1 + 2, a2, &unk_29B4D6118, &v19, &v18) + 40) = IsTransformVarying;
  }

  else
  {
    IsTransformVarying = *(v4 + 40);
  }

  return IsTransformVarying & 1;
}

uint64_t sub_29B0060B0(void *a1, unsigned int *a2)
{
  v5 = 0;
  v6 = 0;
  sub_29A5BD47C(&v5, a2, a2 + 1, a2 + 4, a2 + 3);
  return sub_29B006120(a1, a2, bswap64(0x9E3779B97F4A7C55 * v5));
}

uint64_t sub_29B006120(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *a1 & a3;
  v5 = v3 + 48 * v4;
  if (*(v5 + 4) < 0)
  {
    return v3 + 48 * a1[5];
  }

  LOWORD(v6) = 0;
  while (*(v5 + 8) != *a2 || *(v5 + 16) != *(a2 + 8) || *(v5 + 24) != *(a2 + 16) || (*(a2 + 24) ^ *(v5 + 32)) >= 8)
  {
    v6 = (v6 + 1);
    v4 = (v4 + 1) & *a1;
    v5 = v3 + 48 * v4;
    if (v6 > *(v5 + 4))
    {
      return v3 + 48 * a1[5];
    }
  }

  return v5;
}

uint64_t sub_29B0061B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v16 = 0;
  v17 = 0;
  sub_29A5BD47C(&v16, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v9 = bswap64(0x9E3779B97F4A7C55 * v16);
  v10 = a1[4];
  v11 = v9 & *a1;
  result = v10 + 48 * v11;
  if (*(result + 4) < 0)
  {
    v13 = 0;
LABEL_10:
    while (sub_29B0063B4(a1, v13))
    {
      v14 = a1[4];
      v11 = v9 & *a1;
      if (*(v14 + 48 * v11 + 4) < 0)
      {
        v13 = 0;
      }

      else
      {
        LOWORD(v13) = 0;
        do
        {
          v13 = (v13 + 1);
          v11 = (v11 + 1) & *a1;
        }

        while (v13 <= *(v14 + 48 * v11 + 4));
      }
    }

    v15 = a1[4] + 48 * v11;
    if (*(v15 + 4) != -1)
    {
      sub_29B006488(a1, v11, v13, v9, a3, a4);
    }

    v16 = *a4;
    sub_29B00679C(v15 + 8, &v16);
    *v15 = v9;
    *(v15 + 4) = v13;
    ++a1[6];
    return a1[4] + 48 * v11;
  }

  else
  {
    LOWORD(v13) = 0;
    while (*(result + 8) != *a2 || *(result + 16) != *(a2 + 8) || *(result + 24) != *(a2 + 16) || (*(a2 + 24) ^ *(result + 32)) >= 8)
    {
      v13 = (v13 + 1);
      v11 = (v11 + 1) & *a1;
      result = v10 + 48 * v11;
      if (v13 > *(result + 4))
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_29B0063B4(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29B00653C(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29B00653C(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29B006488(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a4;
  v7 = a3;
  v11 = *a6;
  sub_29B00679C(v10, &v11);
  sub_29B00682C(a1, a2, v7, v6, v10);
}

void sub_29B00653C(uint64_t a1, unint64_t a2)
{
  sub_29B002198(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v9 = 0;
          v10 = 0;
          sub_29A5BD47C(&v9, v3 + 2, v3 + 2, v3 + 6, v3 + 4);
          v6 = bswap64(0x9E3779B97F4A7C55 * v9);
        }

        else
        {
          v6 = *v3;
        }

        sub_29B006670(&v7, v7 & v6, 0, v6, v3 + 2);
      }

      v3 += 12;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29B0023C8(&v9);
}

void sub_29B00664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29B0023C8((v11 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29B006670(void *a1, uint64_t a2, __int16 a3, int a4, int *a5)
{
  while (1)
  {
    v8 = a1[4] + 48 * a2;
    v9 = *(v8 + 4);
    if (v9 < a3)
    {
      break;
    }

    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  if (v9 != -1)
  {
    sub_29A742A58(a5, (v8 + 8));
  }

  result = sub_29B006734(v8 + 8, a5);
  *v8 = a4;
  *(v8 + 4) = a3;
  return result;
}

uint64_t sub_29B006734(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_29B00679C(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  *a1 = **a2;
  v4 = *(v3 + 1);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), v3 + 4);
  sub_29A1E2240((a1 + 20), v3 + 5);
  v5 = *(v3 + 3);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  return a1;
}

void sub_29B006AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B006AF8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29B006FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B007054(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::pxr_half::half>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LOWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A18EFA8(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0076D0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29B007BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B007C2C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A222544(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0082B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0082E8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

void sub_29B0087C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B008844(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3f]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v12) = 0;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A85C1D4(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B008D4C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD8F100(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::Invoke, &stru_2A20407E8);
  }
}

void **sub_29B008DE0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD57258(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B008E74, &stru_2A2042230);
  }
}

double sub_29B008E74@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B008EC4;
  a1[2] = &stru_2A2042230;
  return result;
}

void sub_29B008EC4(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
  }
}

void sub_29B0090A8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29B009580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B009604(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A197F54(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B009CC4(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void sub_29B00A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00A220(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A198B30(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00A878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00A8B0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29B00AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00AE0C(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A192304(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00B444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00B47C(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29B00B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00B9D8(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A190CF4(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00C048(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29B00C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00C5A4(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v7) = 0;
      v10[0] = &v7;
      sub_29A1917E4(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00CC14(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29B00D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void sub_29B00D170(double *a1, pxrInternal__aapl__pxrReserved__::UsdObject **a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (*(a1 + 3) <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A21A48C(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != a2[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(&v7, *a1, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00D7E4(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}