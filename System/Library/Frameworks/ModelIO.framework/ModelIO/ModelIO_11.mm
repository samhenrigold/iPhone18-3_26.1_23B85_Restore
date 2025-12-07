uint64_t sub_239F50CD8(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &unk_284D154A3;
  *a2 = v3;
  return 1;
}

uint64_t sub_239F50D3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  if (!*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    goto LABEL_8;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82798]);
  if (result)
  {
    v2 = *(v3 + 1);
LABEL_8:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

_BYTE *sub_239F50EF0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_284D154A3;
  *a2 = *result;
  return result;
}

uint64_t sub_239F50F0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

void sub_239F50F68(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_239F51008(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &off_284D16BA0 + 3;
  *a2 = v3;
  return 1;
}

uint64_t sub_239F5106C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfSpecifierE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    goto LABEL_7;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v3, &stru_284D17D38);
  if (result)
  {
    v2 = *(v3 + 1);
LABEL_7:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

_DWORD *sub_239F51230@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16BA0 + 3;
  *a2 = *result;
  return result;
}

void *sub_239F5124C(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_239E98B94(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_239F512C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F512E0(uint64_t a1)
{
  sub_239F51380(a1 + 224);
  sub_239F51400(a1 + 200, *(a1 + 208));
  sub_239F178F8((a1 + 160));
  sub_239F178F8((a1 + 120));
  sub_239F178C8((a1 + 112));
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_239F51380(uint64_t a1)
{
  sub_239F513BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239F513BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_239E91D3C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_239F51400(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239F51400(a1, *a2);
    sub_239F51400(a1, *(a2 + 1));
    MEMORY[0x23EE7E910](a2 + 40);
    v4 = *(a2 + 4);
    *(a2 + 4) = 0;

    operator delete(a2);
  }
}

void sub_239F5152C(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_239F515F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

LABEL_10:
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    return (**(a1 + 8) ^ *v3) < 8uLL;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17C00);
  if (result)
  {
    v2 = *(v3 + 1);
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t *sub_239F5169C(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  sub_239E5B3EC(&v6, a1);
  a1[1] = &off_284D16248 + 1;
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v7)
  {
    (*(v7 + 32))(&v6);
  }

  return a1;
}

void sub_239F51758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_239F51764(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_239F51794(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_239F517B0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_239F518D4@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_284D16248 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

void *sub_239F51908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_239F519CC();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = v5[4];
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

void sub_239F51A58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239F51B64(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_239F51A74(void *a1, id **a2)
{
  *a1 = **a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  a1[1] = MEMORY[0x277D86758] + 16;
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v4);
  return a1;
}

void sub_239F51B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239ED1984(&a9);
  sub_239F172DC(v9);
  _Unwind_Resume(a1);
}

void sub_239F51B64(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    MEMORY[0x23EE7E910](a2 + 5);
    v3 = a2[4];
    a2[4] = 0;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_239F51BD4(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *sub_239F51E04(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
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
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_239F52038(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

const void **sub_239F520EC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_239E68B60(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_239F5236C();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EF2FF8(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_239F52358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239F52420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F52420(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E91D3C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_239F5249C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_239E56E70((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_239F74EB8(v4, &v6);
    }
  }

  return a1;
}

void sub_239F524FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_239F74E70(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F52514(uint64_t a1, char **a2)
{
  sub_239E552A0(__p, *a2);
  *(a1 + 8) = &off_284D15558;
  sub_239F52924(a1, __p);
}

void sub_239F52570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F5258C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F525AC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F5272C(a1);
}

unint64_t sub_239F525C4(uint64_t *a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  if (*(v1 + 23) >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = *v1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v4, v2);
  return bswap64(0x9E3779B97F4A7C55 * v4[0]);
}

void *sub_239F52648(void **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_239E98B94(a2, v4, v5);
}

void sub_239F52714(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15558;
  sub_239F52924(a2, v2);
}

uint64_t *sub_239F5272C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F527A8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_239F5281C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_239F52884();
  }

  return *a1;
}

id sub_239F52A80(void *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v706 = *MEMORY[0x277D85DE8];
  v670 = a1;
  v676 = a3;
  v11 = a4;
  v664 = a5;
  v662 = a6;
  v675 = v11;
  v669 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_autoreleasePoolPush();
  v697 = 0u;
  v698 = 0u;
  v699 = 0u;
  v700 = 0u;
  v23 = objc_msgSend_layouts(v11, v13, v14, v15, 0, v20, v21, v22, v16, v17, v18, v19);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v697, v705, v28, v29, v30, v31, 16, v25, v26, v27);
  context = v12;
  if (!v39)
  {

LABEL_50:
    v344 = v669;
    v345 = 1;
    v346 = context;
    goto LABEL_81;
  }

  v44 = 0;
  v45 = *v698;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v698 != v45)
      {
        objc_enumerationMutation(v23);
      }

      if (objc_msgSend_stride(*(*(&v697 + 1) + 8 * i), v32, v33, v34, v40, v41, v42, v43, v35, v36, v37, v38))
      {
        ++v44;
      }
    }

    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v32, &v697, v705, v40, v41, v42, v43, 16, v36, v37, v38);
  }

  while (v39);

  if (!v44)
  {
    goto LABEL_50;
  }

  v58 = 0;
  v59 = 0;
  while (1)
  {
    v60 = objc_msgSend_layouts(v675, v47, v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v72 = objc_msgSend_count(v60, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67) > v58;

    if (!v72)
    {
      break;
    }

    v84 = objc_msgSend_layouts(v675, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    v95 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, v58, v86, v91, v92, v93, v94, v87, v88, v89, v90);
    v107 = objc_msgSend_stride(v95, v96, v97, v98, v103, v104, v105, v106, v99, v100, v101, v102) == 0;

    ++v58;
    if (!v107)
    {
      v59 = v58;
    }
  }

  v695 = 0u;
  v696 = 0u;
  v693 = 0u;
  v694 = 0u;
  v108 = objc_msgSend_attributes(v675, v73, v74, v75, 0, v81, v82, v83, v76, v77, v78, v79);
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v693, v704, v113, v114, v115, v116, 16, v110, v111, v112);
  if (v124)
  {
    v129 = *v694;
    do
    {
      for (j = 0; j != v124; ++j)
      {
        if (*v694 != v129)
        {
          objc_enumerationMutation(v108);
        }

        v131 = *(*(&v693 + 1) + 8 * j);
        if (objc_msgSend_format(v131, v117, v118, v119, v125, v126, v127, v128, v120, v121, v122, v123))
        {
          v132 = objc_msgSend_bufferIndex(v131, v117, v118, v119, v125, v126, v127, v128, v120, v121, v122, v123);
          if (v59 <= v132 + 1)
          {
            v59 = v132 + 1;
          }
        }
      }

      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v117, &v693, v704, v125, v126, v127, v128, 16, v121, v122, v123);
    }

    while (v124);
  }

  __p = 0;
  v691 = 0;
  v692 = 0;
  v689 = 0;
  v665 = v59;
  sub_239F5363C(&__p, v59, &v689);
  v685 = 0u;
  v686 = 0u;
  v687 = 0u;
  v688 = 0u;
  obj = objc_msgSend_attributes(v675, v133, v134, v135, 0, v140, v141, v142, v136, v137, v138, v139);
  v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v143, &v685, v703, v147, v148, v149, v150, 16, v144, v145, v146);
  if (v158)
  {
    v163 = *v686;
    v671 = 1;
    do
    {
      for (k = 0; k != v158; ++k)
      {
        if (*v686 != v163)
        {
          objc_enumerationMutation(obj);
        }

        v165 = *(*(&v685 + 1) + 8 * k);
        v166 = objc_msgSend_bufferIndex(v165, v151, v152, v153, v159, v160, v161, v162, v154, v155, v156, v157);
        v178 = objc_msgSend_name(v165, v167, v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);
        v189 = objc_msgSend_attributeNamed_(v676, v179, v178, v180, v185, v186, v187, v188, v181, v182, v183, v184);

        v201 = objc_msgSend_layouts(v676, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);
        v213 = objc_msgSend_bufferIndex(v189, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208);
        v224 = objc_msgSend_objectAtIndexedSubscript_(v201, v214, v213, v215, v220, v221, v222, v223, v216, v217, v218, v219);
        v236 = objc_msgSend_stride(v224, v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231);

        v248 = objc_msgSend_layouts(v675, v237, v238, v239, v244, v245, v246, v247, v240, v241, v242, v243);
        v259 = objc_msgSend_objectAtIndexedSubscript_(v248, v249, v166, v250, v255, v256, v257, v258, v251, v252, v253, v254);
        v271 = objc_msgSend_stride(v259, v260, v261, v262, v267, v268, v269, v270, v263, v264, v265, v266);

        if (v271)
        {
          if (!objc_msgSend_format(v165, v272, v273, v274, v279, v280, v281, v282, v275, v276, v277, v278) || !v189)
          {
            v318 = __p;
            if (*(__p + v166))
            {
              goto LABEL_43;
            }

            v320 = a2;
LABEL_42:
            v318[v166] = v320;
            goto LABEL_43;
          }

          v294 = objc_msgSend_bufferIndex(v189, v283, v284, v285, v290, v291, v292, v293, v286, v287, v288, v289);
          v305 = objc_msgSend_objectAtIndexedSubscript_(v670, v295, v294, v296, v301, v302, v303, v304, v297, v298, v299, v300);
          v317 = objc_msgSend_length(v305, v306, v307, v308, v313, v314, v315, v316, v309, v310, v311, v312);

          v318 = __p;
          v319 = *(__p + v166);
          v320 = v317 / v236;
          if (!v319)
          {
            goto LABEL_42;
          }

          if (v319 != v320)
          {
            if (v319 < v320)
            {
              v320 = *(__p + v166);
            }

            *(__p + v166) = v320;
            if (v671)
            {
              NSLog(&cfstr_WarningTryingT.isa, v166);
            }

            v671 = 0;
          }
        }

LABEL_43:
      }

      v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v151, &v685, v703, v159, v160, v161, v162, 16, v155, v156, v157);
    }

    while (v158);
  }

  if (v664)
  {
    v332 = v675;
    v663 = objc_msgSend_allocator(v664, v321, v322, v323, v328, v329, v330, v331, v324, v325, v326, v327);
LABEL_47:
    if (!v663)
    {
      v663 = objc_opt_new();
    }

    goto LABEL_53;
  }

  v332 = v675;
  if (!v662)
  {
    v683 = 0u;
    v684 = 0u;
    v681 = 0u;
    v682 = 0u;
    v625 = v670;
    v641 = objc_msgSend_countByEnumeratingWithState_objects_count_(v625, v626, &v681, v702, v630, v631, v632, v633, 16, v627, v628, v629);
    if (v641)
    {
      v646 = *v682;
      while (2)
      {
        for (m = 0; m != v641; ++m)
        {
          if (*v682 != v646)
          {
            objc_enumerationMutation(v625);
          }

          v648 = *(*(&v681 + 1) + 8 * m);
          v649 = objc_msgSend_null(MEMORY[0x277CBEB68], v634, v635, v636, v642, v643, v644, v645, v637, v638, v639, v640);
          isEqual = objc_msgSend_isEqual_(v648, v650, v649, v651, v656, v657, v658, v659, v652, v653, v654, v655);

          if ((isEqual & 1) == 0)
          {
            v663 = objc_msgSend_allocator(v648, v634, v635, v636, v642, v643, v644, v645, v637, v638, v639, v640);
            goto LABEL_96;
          }
        }

        v641 = objc_msgSend_countByEnumeratingWithState_objects_count_(v625, v634, &v681, v702, v642, v643, v644, v645, 16, v638, v639, v640);
        if (v641)
        {
          continue;
        }

        break;
      }
    }

    v663 = 0;
LABEL_96:

    v332 = v675;
    goto LABEL_47;
  }

  v663 = v662;
LABEL_53:
  if (v665)
  {
    for (n = 0; v665 != n; ++n)
    {
      v348 = objc_msgSend_layouts(v332, v333, v334, v335, v340, v341, v342, v343, v336, v337, v338, v339);
      v359 = objc_msgSend_objectAtIndexedSubscript_(v348, v349, n, v350, v355, v356, v357, v358, v351, v352, v353, v354);

      v371 = objc_msgSend_null(MEMORY[0x277CBEB68], v360, v361, v362, v367, v368, v369, v370, v363, v364, v365, v366);
      if (objc_msgSend_isEqual_(v359, v372, v371, v373, v378, v379, v380, v381, v374, v375, v376, v377))
      {
      }

      else
      {
        v404 = objc_msgSend_stride(v359, v382, v383, v384, v389, v390, v391, v392, v385, v386, v387, v388) == 0;

        if (!v404)
        {
          v405 = *(__p + n);
          v406 = objc_msgSend_stride(v359, v393, v394, v395, v400, v401, v402, v403, v396, v397, v398, v399);
          v415 = a2;
          if (v405)
          {
            v415 = v405;
          }

          v416 = objc_msgSend_newBufferFromZone_length_type_(v663, v407, v664, v415 * v406, v411, v412, v413, v414, 1, v408, v409, v410);
          objc_msgSend_addObject_(v669, v417, v416, v418, v423, v424, v425, v426, v419, v420, v421, v422);
          goto LABEL_62;
        }
      }

      v416 = objc_msgSend_null(MEMORY[0x277CBEB68], v393, v394, v395, v400, v401, v402, v403, v396, v397, v398, v399);
      objc_msgSend_addObject_(v669, v427, v416, v428, v433, v434, v435, v436, v429, v430, v431, v432);
LABEL_62:

      v332 = v675;
    }
  }

  v679 = 0u;
  v680 = 0u;
  v677 = 0u;
  v678 = 0u;
  v668 = objc_msgSend_attributes(v332, v333, v334, v335, 0, v341, v342, v343, v336, v337, v338, v339);
  v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v668, v437, &v677, v701, v441, v442, v443, v444, 16, v438, v439, v440);
  if (v445)
  {
    v672 = *v678;
    do
    {
      obja = v445;
      for (ii = 0; ii != obja; ii = ii + 1)
      {
        if (*v678 != v672)
        {
          objc_enumerationMutation(v668);
        }

        v458 = *(*(&v677 + 1) + 8 * ii);
        if (objc_msgSend_format(v458, v446, v447, v448, v453, v454, v455, v456, v449, v450, v451, v452))
        {
          v459 = objc_msgSend_bufferIndex(v458, v446, v447, v448, v453, v454, v455, v456, v449, v450, v451, v452);
          v471 = objc_msgSend_layouts(v332, v460, v461, v462, v467, v468, v469, v470, v463, v464, v465, v466);
          v482 = objc_msgSend_objectAtIndexedSubscript_(v471, v472, v459, v473, v478, v479, v480, v481, v474, v475, v476, v477);
          v494 = objc_msgSend_stride(v482, v483, v484, v485, v490, v491, v492, v493, v486, v487, v488, v489);

          v512 = objc_msgSend_objectAtIndexedSubscript_(v669, v495, v459, v496, v501, v502, v503, v504, v497, v498, v499, v500);
          if (v512)
          {
            v517 = objc_msgSend_name(v458, v505, v506, v507, v513, v514, v515, v516, v508, v509, v510, v511);
            v528 = objc_msgSend_attributeNamed_(v676, v518, v517, v519, v524, v525, v526, v527, v520, v521, v522, v523);

            v540 = *(__p + v459);
            if (v528)
            {
              v541 = objc_msgSend_bufferIndex(v528, v529, v530, v531, v536, v537, v538, v539, v532, v533, v534, v535);
              v553 = objc_msgSend_layouts(v676, v542, v543, v544, v549, v550, v551, v552, v545, v546, v547, v548);
              v564 = objc_msgSend_objectAtIndexedSubscript_(v553, v554, v541, v555, v560, v561, v562, v563, v556, v557, v558, v559);
              v576 = objc_msgSend_stride(v564, v565, v566, v567, v572, v573, v574, v575, v568, v569, v570, v571);

              v587 = objc_msgSend_objectAtIndexedSubscript_(v670, v577, v541, v578, v583, v584, v585, v586, v579, v580, v581, v582);
              v599 = objc_msgSend_length(v512, v588, v589, v590, v595, v596, v597, v598, v591, v592, v593, v594);
              v610 = objc_msgSend_objectAtIndexedSubscript_(v670, v600, v541, v601, v606, v607, v608, v609, v602, v603, v604, v605);
              v622 = objc_msgSend_length(v610, v611, v612, v613, v618, v619, v620, v621, v614, v615, v616, v617);
              sub_239F5EB80(v512, v494, v458, v587, v576, v528, v540, v599, v622);
            }

            else if (a7)
            {
              sub_239F5E970(v512, v494, v458, v540);
            }
          }

          v332 = v675;
        }
      }

      v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v668, v446, &v677, v701, v453, v454, v455, v456, 16, v450, v451, v452);
    }

    while (v445);
  }

  v346 = context;
  if (__p)
  {
    v691 = __p;
    operator delete(__p);
  }

  v345 = 0;
LABEL_81:
  objc_autoreleasePoolPop(v346);
  if ((v345 & 1) == 0)
  {
    v623 = v669;
  }

  return v669;
}

void sub_239F5338C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_239F53608(void *a1, unint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v6 = sub_239F52A80(a1, a2, a3, a4, a5, 0, a6);

  return v6;
}

uint64_t *sub_239F5363C(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_239F078EC(a1, a2);
  }

  return a1;
}

void sub_239F536F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F53714(uint64_t *a1, void *a2, uint64_t *a3, void *a4, int a5, int a6, int a7)
{
  v14 = (*a2)++;
  sub_239E56C3C(a1);
  *(a1[4] + 4 * v14) = a5;
  v15 = (*a2)++;
  sub_239E56C3C(a1);
  *(a1[4] + 4 * v15) = a6;
  v16 = (*a2)++;
  sub_239E56C3C(a1);
  *(a1[4] + 4 * v16) = a7;
  v17 = (*a4)++;
  sub_239E56C3C(a3);
  *(a3[4] + 4 * v17) = 3;
}

BOOL sub_239F537D4(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) == *a1)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(*v3 + 16);
  v5 = *(*a1 + 8);
  if (v5 == a2)
  {
    v5 = *(a2 + 8);
  }

  v6 = *(*a3 + 16 * *(*a1 + 16));
  v7 = vsubq_f32(v6, *(*a3 + 16 * v4));
  v8 = vsubq_f32(*(*a3 + 16 * *(v5 + 16)), v6);
  v9 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v7)), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v8);
  v10 = vmulq_f32(v9, v9);
  if (((v10.f32[2] + v10.f32[0]) + v10.f32[1]) < 1.0e-12)
  {
    return 1;
  }

  v12 = vmulq_f32(v9, xmmword_239F9C090);
  return ((v12.f32[2] + v12.f32[0]) + v12.f32[1]) < 0.0;
}

uint64_t sub_239F53888(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vcgt_f32(*a2, *a1);
  if (v2.i8[0])
  {
    v3 = 1;
  }

  else
  {
    if ((vcgt_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v4 = a1[1];
      v5 = a2[1];
      if (v4 != v5)
      {
        v6 = v4[1];
        v7 = *v5;
        v8 = v5[1];
        if (COERCE_FLOAT(*v4) == *&v6 && *&v7 != *&v8)
        {
          v3 = a1[2].i8[0];
          return v3 & 1;
        }

        if (COERCE_FLOAT(*v4) != *&v6 && *&v7 == *&v8)
        {
          v3 = a2[2].i8[0] ^ 1;
          return v3 & 1;
        }
      }

      v3 = v2.i8[4];
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_239F53908(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = a2[1];
    if (vcgt_f32(*a1, v4).u8[0] & 1) != 0 || (v5 = *a2, v6 = a1[1], (vcgt_f32(*a2, v6).u8[0]))
    {
LABEL_5:
      v2 = 0;
      return v2 & 1;
    }

    v8 = vsub_f32(v3, v6);
    v9 = vsub_f32(v5, v4);
    v10 = vmul_f32(v8, vrev64_s32(v9));
    v11 = vsub_f32(v10, vdup_lane_s32(v10, 1));
    if (v11.f32[0] == 0.0 || vmul_f32(v11, v11).f32[0] < 0.000001)
    {
      v35 = vsub_f32(v5, v6);
      v36 = vmul_f32(vrev64_s32(v35), v8);
      v37 = vsub_f32(v36, vdup_lane_s32(v36, 1));
      if (v37.f32[0] != 0.0 && vmul_f32(v37, v37).f32[0] >= 0.000001)
      {
        goto LABEL_5;
      }

      v38 = vmul_f32(v35, vsub_f32(v5, v3));
      v39 = vmul_f32(vsub_f32(v4, v6), vsub_f32(v4, v3));
      v40 = vmvn_s8(vcltz_f32(vadd_f32(vzip1_s32(v39, v38), vzip2_s32(v39, v38))));
      if (v40.i32[1] & v40.i32[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = vsub_f32(v5, v3);
      v13 = vsub_f32(v6, v3);
      v14 = vsub_f32(v4, v3);
      v15 = vsub_f32(v3, v5);
      v16 = vsub_f32(v4, v5);
      v17 = vsub_f32(v6, v5);
      v18 = vmla_f32(vneg_f32(vmul_f32(vzip1_s32(v13, v16), vzip2_s32(v14, v15))), vzip1_s32(v14, v15), vzip2_s32(v13, v16));
      v19 = vdup_n_s32(0x358637BDu);
      v20 = vext_s8(v12, v16, 4uLL);
      v12.i32[1] = v16.i32[1];
      v21 = vext_s8(v13, v17, 4uLL);
      v13.i32[1] = v17.i32[1];
      v22 = vmla_f32(vneg_f32(vmul_f32(v13, v20)), v12, v21);
      v23 = vmul_f32(vbic_s8(v22, vcgt_f32(v19, vmul_f32(v22, v22))), vbic_s8(v18, vcgt_f32(v19, vmul_f32(v18, v18))));
      if (*v23.i32 >= 0.0 || *&v23.i32[1] >= 0.0)
      {
        v24 = vsub_f32(v5, v6);
        v25 = vsub_f32(v4, v6);
        v26 = vsub_f32(v3, v4);
        v27 = vsub_f32(v6, v4);
        v28 = vmla_f32(vneg_f32(vmul_f32(vzip1_s32(v9, v8), vzip2_s32(v26, v25))), vzip1_s32(v26, v25), vzip2_s32(v9, v8));
        v29 = vext_s8(v27, v8, 4uLL);
        v27.i32[1] = v8.i32[1];
        v30 = vext_s8(v9, v24, 4uLL);
        v9.i32[1] = v24.i32[1];
        v31 = vmla_f32(vneg_f32(vmul_f32(v29, v9)), v30, v27);
        v32 = vmul_f32(vbic_s8(v31, vcgt_f32(v19, vmul_f32(v31, v31))), vbic_s8(v28, vcgt_f32(v19, vmul_f32(v28, v28))));
        v33.i64[0] = __PAIR64__(v32.u32[1], v23.u32[0]);
        *&v33.u32[2] = vext_s8(v23, v32, 4uLL);
        if (vmaxv_u16(vmovn_s32(vceqzq_f32(v33))))
        {
          v34 = vcltz_f32(v32);
          v2 = (*v23.i32 < 0.0 || *&v23.i32[1] < 0.0) | v34.i8[4] | v34.i8[0];
          return v2 & 1;
        }

        goto LABEL_5;
      }
    }

    v2 = 1;
  }

  return v2 & 1;
}

__n64 sub_239F53B28(float32x4_t *a1, float32x4_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = vsubq_f32(v3, v2);
  v6 = vmulq_f32(v5, v5);
  *v6.i32 = vaddv_f32(*v6.i8) + *&v6.i32[2];
  v7 = vrsqrte_f32(v6.u32[0]);
  v8 = vmulq_n_f32(v5, vmul_f32(vrsqrts_f32(v6.u32[0], vmul_f32(v7, v7)), v7).f32[0]);
  v9 = vsubq_f32(v4, v2);
  v10 = vmulq_f32(v9, v9);
  v11 = vaddv_f32(*v10.f32) + v10.f32[2];
  v12 = vrsqrte_f32(LODWORD(v11));
  v13 = vmulq_n_f32(v9, vmul_f32(vrsqrts_f32(LODWORD(v11), vmul_f32(v12, v12)), v12).f32[0]);
  v14 = vsubq_f32(v4, v3);
  v15 = vmulq_f32(v14, v14);
  v16 = vaddv_f32(*v15.f32) + v15.f32[2];
  v17 = vrsqrte_f32(LODWORD(v16));
  v18 = vmulq_n_f32(v14, vmul_f32(vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)), v17).f32[0]);
  v19 = vmulq_f32(v13, v8);
  v20 = vmulq_f32(v18, vnegq_f32(v8));
  v21 = vabs_f32(vadd_f32(vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8)), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL))));
  v22 = vmulq_f32(v18, v13);
  v23 = fabsf(vaddv_f32(*v22.f32) + v22.f32[2]);
  if (v21.f32[0] < v21.f32[1] && v21.f32[0] < v23)
  {
    v35 = vsubq_f32(a2, v2);
    v36 = vmulq_f32(v9, v5);
    v37 = vmulq_f32(v5, v35);
    v38 = vmulq_f32(v9, v35);
    *v38.i32 = vaddv_f32(*v38.i8) + *&v38.i32[2];
    *v36.i8 = vadd_f32(vadd_f32(vzip1_s32(*v37.i8, *v36.i8), vzip2_s32(*v37.i8, *v36.i8)), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
    *v37.i32 = -(vmuls_lane_f32(*v38.i32, *v36.i8, 1) - (v11 * *v36.i32));
    *&v38.i32[1] = v11;
    *v36.i8 = vmla_n_f32(vneg_f32(vmul_lane_f32(*v36.i8, *v36.i8, 1)), *v38.i8, *v6.i32);
    *v38.i8 = vdup_lane_s32(*v36.i8, 1);
    v36.i32[1] = v37.i32[0];
    *v6.i8 = vdiv_f32(*v36.i8, *v38.i8);
    *v38.i32 = 1.0 - vaddv_f32(*v6.i8);
    result.n64_u32[0] = vuzp1q_s32(v38, v6).u32[0];
    result.n64_u32[1] = v6.u32[1];
  }

  else if (v21.f32[1] < v21.f32[0] && v21.f32[1] < v23)
  {
    v39 = vsubq_f32(v2, v3);
    v40 = vsubq_f32(a2, v3);
    v41 = vmulq_f32(v39, v39);
    v42 = vmulq_f32(v14, v39);
    v43 = vmulq_f32(v39, v40);
    v44 = vmulq_f32(v14, v40);
    v44.f32[0] = vaddv_f32(*v44.f32) + v44.f32[2];
    *v43.i8 = vadd_f32(vadd_f32(vzip1_s32(*v43.i8, *v42.i8), vzip2_s32(*v43.i8, *v42.i8)), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
    *v42.i32 = -(vmuls_lane_f32(v44.f32[0], *v43.i8, 1) - (v16 * *v43.i32));
    v44.f32[1] = v16;
    *v43.i8 = vmla_n_f32(vneg_f32(vmul_lane_f32(*v43.i8, *v43.i8, 1)), *v44.f32, vaddv_f32(*v41.f32) + v41.f32[2]);
    result.n64_f32[0] = *v42.i32 / *&v43.i32[1];
    result.n64_f32[1] = 1.0 - ((*v43.i32 / *&v43.i32[1]) + (*v42.i32 / *&v43.i32[1]));
  }

  else
  {
    v26 = vsubq_f32(v2, v4);
    v27 = vsubq_f32(v3, v4);
    v28 = vsubq_f32(a2, v4);
    v29 = vmulq_f32(v26, v26);
    v30 = vmulq_f32(v26, v27);
    v30.f32[0] = vaddv_f32(*v30.f32) + v30.f32[2];
    v31 = vmulq_f32(v27, v27);
    v32 = vmulq_f32(v26, v28);
    v33 = vmulq_f32(v27, v28);
    *v27.f32 = vadd_f32(vadd_f32(vzip1_s32(*v31.i8, *v29.i8), vzip2_s32(*v31.i8, *v29.i8)), *&vzip2q_s32(v31, v29));
    *v33.i8 = vadd_f32(vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8)), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
    *v32.i8 = vmul_lane_f32(*v27.f32, *v27.f32, 1);
    *v32.i32 = *v32.i32 - (v30.f32[0] * v30.f32[0]);
    result.n64_u64[0] = vdiv_f32(vmla_f32(vneg_f32(vrev64_s32(vmul_n_f32(*v33.i8, v30.f32[0]))), *v27.f32, *v33.i8), vdup_lane_s32(*v32.i8, 0));
  }

  return result;
}

uint64_t sub_239F53DA4(float32x4_t *a1, float *a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a1[7];
  v5 = vmulq_f32(v4, a4);
  v6 = vaddv_f32(*v5.f32) + v5.f32[2];
  if (v6 > -0.00024414)
  {
    return 0;
  }

  v8 = vsubq_f32(a3, a1[1]);
  v9 = vmulq_f32(v8, v4);
  v10 = vaddv_f32(*v9.f32) + v9.f32[2];
  if (v10 < 0.00024414)
  {
    return 0;
  }

  v11 = -v10 / v6;
  if (v11 >= *a2)
  {
    return 0;
  }

  result = 0;
  v13.i32[0] = a1[10].i32[2];
  v13.i32[1] = a1[10].i32[0];
  v14 = vmlaq_n_f32(v8, a4, v11);
  v15 = vmulq_f32(a1[8], v14);
  v16 = vmulq_f32(a1[9], v14);
  *v16.i8 = vadd_f32(vadd_f32(vzip1_s32(*v15.i8, *v16.i8), vzip2_s32(*v15.i8, *v16.i8)), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  v17 = vmla_n_f32(vneg_f32(vrev64_s32(vmul_f32(*v16.i8, v13))), *v16.i8, a1[10].f32[1]);
  if (v17.f32[1] >= 0.0)
  {
    v18 = vaddv_f32(v17);
    if (v17.f32[0] >= 0.0 && v18 <= 1.0)
    {
      *a2 = v11;
      return 1;
    }
  }

  return result;
}

void sub_239F54044(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLScene;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_239F5425C(uint64_t a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    sub_239E879CC(*v6++);
  }

  while (v6 != v7);
  return 0;
}

void sub_239F54634(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x10A1C4029A5C24FLL);
  std::mutex::unlock(v2);

  _Unwind_Resume(a1);
}

id sub_239F5469C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_239E9E10C(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_239F550D0(a1, v13);
    v7 = a1[1];
    result = sub_239F55180(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_239F5477C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239F55180(va);
  _Unwind_Resume(a1);
}

void sub_239F54B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  MEMORY[0x23EE802C0](v12, 0x10A1C40A30AD078, a3, a4, a5, a6, a7, a8);
  __cxa_guard_abort(&qword_27DF912B8);

  _Unwind_Resume(a1);
}

void sub_239F54C00(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v66 = *(a1 + 168);
  v3 = HIDWORD(*(a1 + 168)) * a2;
  v4 = v3 >> 5;
  v5 = (v3 + HIDWORD(*(a1 + 168))) >> 5;
  v6 = *(a1 + 176);
  context = objc_autoreleasePoolPush();
  if (v4 < v5)
  {
    v7 = 0;
    v8 = v6 + 4 * v66 * v4;
    v9 = *(a1 + 172);
    v10 = *(a1 + 168);
    v11 = 0uLL;
    v61 = vdupq_n_s32(0x437F0000u);
    do
    {
      v12 = v10.i32[0];
      if (v10.i32[0] >= 1)
      {
        v13 = 0;
        *v10.i32 = v4 / (v9 - 1);
        v14 = vmlaq_n_f32(*(a1 + 32), vsubq_f32(*(a1 + 48), *(a1 + 32)), *v10.i32);
        v62 = vsubq_f32(vmlaq_f32(*(a1 + 64), vsubq_f32(*(a1 + 80), *(a1 + 64)), vdupq_lane_s32(v10, 0)), v14);
        v63 = v14;
        do
        {
          v15 = vmlaq_n_f32(v63, v62, v13 / (v12 - 1));
          v16 = vmulq_f32(v15, v15);
          *&v17 = vaddv_f32(*v16.f32) + v16.f32[2];
          *v16.f32 = vrsqrte_f32(v17);
          v79 = v11;
          v81 = v11.n128_u64[1];
          v77 = v11.n128_u64[1];
          v78 = v11;
          v72[6] = v11;
          v80 = 0;
          v73 = v11;
          v74 = v11;
          v75 = v11;
          v76 = 0;
          v67 = vmulq_n_f32(v15, vmul_f32(vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)), *v16.f32).f32[0]);
          sub_239F5425C(*(a1 + 128));
          if (v76)
          {
            v29 = qword_27DF912B0;
            v30 = *(a1 + 112);
            v72[2] = vnegq_f32(v67);
            v72[3] = v30;
            v72[4] = v74;
            v72[5] = v75;
            v72[0] = v78;
            v72[1] = v73;
            memset(v71, 0, sizeof(v71));
            v31 = objc_msgSend_textureData(*(a1 + 136), v18, v19, v20, 0, v73, v75, v78, v21, v22, v23, v24);
            v43 = objc_msgSend_textureData(*(a1 + 144), v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
            (*(*v29 + 24))(v29, v72, v31, v43, v71);
            *v44.i64 = (*(*v29 + 16))(v29, v72, v71);
            v64 = v44;
            v45 = powf(v44.f32[0], 2.2);
            v46 = v64;
            v46.f32[0] = v45;
            v68 = v46;
            v47 = powf(v64.f32[1], 2.2);
            v48 = v68;
            v48.f32[1] = v47;
            v69 = v48;
            v49 = v64.f32[2];
            v50 = 2.2;
          }

          else
          {
            v51 = objc_msgSend_textureData(*(a1 + 136), v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
            *v52.i64 = sub_239F6EA14(v51, v67);
            v65 = v52;
            v53 = powf(v52.f32[0], 0.625);
            v54 = v65;
            v54.f32[0] = v53;
            v70 = v54;
            v55 = powf(v65.f32[1], 0.625);
            v56 = v70;
            v56.f32[1] = v55;
            v69 = v56;
            v49 = v65.f32[2];
            v50 = 0.625;
          }

          v57 = powf(v49, v50);
          v58 = v69;
          v58.f32[2] = v57;
          v11 = 0uLL;
          v59 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_f32(v58, v61), 0), v61)));
          *(v8 + 4 * (v13 + v7 * *(a1 + 168))) = vuzp1_s8(v59, v59).u32[0];
          v10 = *(a1 + 168);
          v12 = v10.i32[0];
          ++v13;
        }

        while (v13 < v10.i32[0]);
      }

      v9 = v10.i32[1];
      LODWORD(v4) = v4 + 1;
      ++v7;
    }

    while (v4 != v5);
  }

  objc_autoreleasePoolPop(context);
  dispatch_group_async(*(a1 + 152), *(a1 + 160), &unk_284D15268);
}

void sub_239F54FEC(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_239F5506C(char **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
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

void sub_239F550D0(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_239F55180(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F551D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_239E5A31C(&v65, *a3);
  v6 = MEMORY[0x23EE7ED20](&v64, "constant");
  v7 = (a1 + 80);
  v8 = v64 ^ *(a1 + 80);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 <= 7)
  {
    if (*v3)
    {
      v9 = 0;
      do
      {
        sub_239E56C3C(&v65);
        *(v67 + 4 * v9++) = 0;
      }

      while (*v3 > v9);
    }

    goto LABEL_33;
  }

  v10 = MEMORY[0x23EE7ED20](v6, "vertex");
  v11 = v64 ^ *v7;
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v11 <= 7)
  {
    if (*(a1 + 16))
    {
      if (*v3)
      {
        v12 = 0;
        do
        {
          sub_239E56C3C(v3);
          v13 = *(v3[4] + 4 * v12);
          sub_239E56C3C((a1 + 16));
          LODWORD(v13) = *(*(a1 + 48) + 4 * v13);
          sub_239E56C3C(&v65);
          *(v67 + 4 * v12++) = v13;
        }

        while (*v3 > v12);
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_239EB3650(&v65, v3);
    goto LABEL_33;
  }

  v14 = MEMORY[0x23EE7ED20](v10, "uniform");
  v15 = v64 ^ *v7;
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15 > 7)
  {
    MEMORY[0x23EE7ED20](v14, "faceVarying");
    v21 = v64 ^ *v7;
    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v21 <= 7)
    {
      if (*(a1 + 16))
      {
        v3 = (a1 + 16);
        goto LABEL_32;
      }

      if (*v3)
      {
        v36 = 0;
        do
        {
          sub_239E56C3C(&v65);
          *(v67 + 4 * v36) = v36;
          ++v36;
        }

        while (*v3 > v36);
      }
    }
  }

  else
  {
    v16 = *a2;
    if (*(a1 + 16))
    {
      if (v16)
      {
        v17 = 0;
        LODWORD(i) = 0;
        do
        {
          v19 = 0;
          for (i = i; ; ++i)
          {
            sub_239E56C3C(a2);
            if (v19 >= *(a2[4] + 4 * v17))
            {
              break;
            }

            sub_239E56C3C((a1 + 16));
            v20 = *(*(a1 + 48) + 4 * v17);
            sub_239E56C3C(&v65);
            *(v67 + 4 * i) = v20;
            ++v19;
          }

          ++v17;
        }

        while (*a2 > v17);
      }
    }

    else if (v16)
    {
      v31 = 0;
      LODWORD(j) = 0;
      do
      {
        v33 = 0;
        for (j = j; ; ++j)
        {
          sub_239E56C3C(a2);
          if (v33 >= *(a2[4] + 4 * v31))
          {
            break;
          }

          sub_239E56C3C(&v65);
          *(v67 + 4 * j) = v31;
          ++v33;
        }

        ++v31;
      }

      while (*a2 > v31);
    }
  }

LABEL_33:
  v22 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_39;
  }

  if (!atomic_load(v22))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_39:
    v61 = v65;
    v62 = v66;
    v63 = v67;
    if (v67)
    {
      v25 = (v67 - 16);
      if (*(&v62 + 1))
      {
        v25 = *(&v62 + 1);
      }

      atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
    }

    sub_239F559A0(&v61, *(a1 + 88), a1);
    sub_239E56C80(&v61);
  }

  else
  {
    if (!atomic_load(v22))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_57;
    }

    if (!atomic_load(v22))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_57:
      v58 = v65;
      v59 = v66;
      v60 = v67;
      if (v67)
      {
        v28 = (v67 - 16);
        if (*(&v59 + 1))
        {
          v28 = *(&v59 + 1);
        }

        atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
      }

      sub_239F55B14(&v58, *(a1 + 88), a1);
      sub_239E56C80(&v58);
    }

    else
    {
      if (!atomic_load(v22))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v55 = v65;
        v56 = v66;
        v57 = v67;
        if (v67)
        {
          v30 = (v67 - 16);
          if (*(&v56 + 1))
          {
            v30 = *(&v56 + 1);
          }

          atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
        }

        sub_239F55CA4(&v55, *(a1 + 88), a1);
        sub_239E56C80(&v55);
      }

      else
      {
        if (!atomic_load(v22))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v52 = v65;
          v53 = v66;
          v54 = v67;
          if (v67)
          {
            v35 = (v67 - 16);
            if (*(&v53 + 1))
            {
              v35 = *(&v53 + 1);
            }

            atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
          }

          sub_239F55E10(&v52, *(a1 + 88), a1);
          sub_239E56C80(&v52);
        }

        else
        {
          if (!atomic_load(v22))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v49 = v65;
            v50 = v66;
            v51 = v67;
            if (v67)
            {
              v38 = (v67 - 16);
              if (*(&v50 + 1))
              {
                v38 = *(&v50 + 1);
              }

              atomic_fetch_add_explicit(v38, 1uLL, memory_order_relaxed);
            }

            sub_239F55F88(&v49, *(a1 + 88), a1);
            sub_239E56C80(&v49);
          }

          else
          {
            if (!atomic_load(v22))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v46 = v65;
              v47 = v66;
              v48 = v67;
              if (v67)
              {
                v40 = (v67 - 16);
                if (*(&v47 + 1))
                {
                  v40 = *(&v47 + 1);
                }

                atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
              }

              sub_239F560FC(&v46, *(a1 + 88), a1);
              sub_239E56C80(&v46);
            }

            else
            {
              if (!atomic_load(v22))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v43 = v65;
                v44 = v66;
                v45 = v67;
                if (v67)
                {
                  v42 = (v67 - 16);
                  if (*(&v44 + 1))
                  {
                    v42 = *(&v44 + 1);
                  }

                  atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
                }

                sub_239F56268(&v43, *(a1 + 88), a1);
                sub_239E56C80(&v43);
              }
            }
          }
        }
      }
    }
  }

  MEMORY[0x23EE7ED20](&v64, "vertex");
  if (&v64 == v7)
  {
    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v7 = v64;
  }

  sub_239E5B364((a1 + 16));
  sub_239E56C80(&v65);
}

void sub_239F558B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239E56C80(&a9);
  sub_239E56C80(v9 - 128);
  _Unwind_Resume(a1);
}

void sub_239F559A0(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_239E6D6B0(v20, (*a1 * a2));
  v6 = sub_239E6DAB4(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 8 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(a1[4] + 4 * v11);
            sub_239E6DBE4(&v17);
            v16 = v19;
            sub_239E6DBE4(v20);
            *(v21 + v14) = *(v16 + 8 * v15 * a2 + 8 * v13++);
            v14 += 8;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239E6DC28(a3, v20);
  sub_239E56C80(&v17);
  sub_239E56C80(v20);
}

void sub_239F55AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F55B14(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_239E6D0E8(v25, (*a1 * a2));
  v6 = sub_239E6AD14(a3);
  v21 = a3;
  v7 = *(v6 + 16);
  v22 = *v6;
  v23 = v7;
  v8 = *(v6 + 32);
  v24 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v23 + 1))
    {
      v9 = *(&v23 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 12 * v12;
          v15 = a2;
          do
          {
            sub_239E56C3C(a1);
            v16 = *(a1[4] + 4 * v11);
            sub_239E56B84(&v22);
            v17 = v24;
            sub_239E56B84(v25);
            v18 = (v17 + 12 * v16 * a2 + v13);
            v19 = v26 + v14;
            v20 = *v18;
            *(v19 + 8) = *(v18 + 2);
            *v19 = v20;
            v14 += 12;
            ++v12;
            v13 += 12;
            --v15;
          }

          while (v15);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239E6D3C8(v21, v25);
  sub_239E56C80(&v22);
  sub_239E56C80(v25);
}

void sub_239F55C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F55CA4(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239E5A31C(v19, (*a1 * a2));
  v6 = sub_239F57BA0(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(a1[4] + 4 * v11);
            sub_239E56C3C(&v16);
            LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
            sub_239E56C3C(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239F57C34(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F55DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F55E10(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_239E85F74(v21, (*a1 * a2));
  v6 = sub_239E85EB8(a3);
  v7 = *(v6 + 16);
  v18 = *v6;
  v19 = v7;
  v8 = *(v6 + 32);
  v20 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v19 + 1))
    {
      v9 = *(&v19 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 16 * v12;
          v15 = a2;
          do
          {
            sub_239E56C3C(a1);
            v16 = *(a1[4] + 4 * v11);
            sub_239E86480(&v18);
            v17 = v20;
            sub_239E86480(v21);
            *(v22 + v14) = *(v17 + 16 * v16 * a2 + v13);
            v14 += 16;
            ++v12;
            v13 += 16;
            --v15;
          }

          while (v15);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC6F88(a3, v21);
  sub_239E56C80(&v18);
  sub_239E56C80(v21);
}

void sub_239F55F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F55F88(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_239EC7200(v20, (*a1 * a2));
  v6 = sub_239EC4DC4(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(a1[4] + 4 * v11);
            sub_239EBF2E0(&v17);
            v16 = *(v19 + 4 * v15 * a2 + 4 * v13);
            sub_239EBF2E0(v20);
            *(v21 + v14) = v16;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC7274(a3, v20);
  sub_239E56C80(&v17);
  sub_239E56C80(v20);
}

void sub_239F560CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F560FC(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239F57EF0(v19, (*a1 * a2));
  v6 = sub_239EC4E58(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(a1[4] + 4 * v11);
            sub_239EC85E4(&v16);
            LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
            sub_239EC85E4(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239F57F64(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F56238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F56268(unint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239EC7040(v19, (*a1 * a2));
  v6 = sub_239EC70B4(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 2 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(a1[4] + 4 * v11);
            sub_239EC9804(&v16);
            LOWORD(v15) = *(v18 + 2 * v15 * a2 + 2 * v13);
            sub_239EC9804(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 2;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC7148(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F563A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_239E56C80(&a9);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F563D4(pxrInternal__aapl__pxrReserved__::VtValue *a1, unsigned int a2)
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v3 = sub_239E5A31C(&v44, a2);
  sub_239E56C3C(v3);
  v4 = v46;
  sub_239E56C3C(&v44);
  v5 = &v46[4 * v44] - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_9;
  }

  if (!atomic_load(v6))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_9:
    v41 = v44;
    v42 = v45;
    v43 = v46;
    if (v46)
    {
      v9 = (v46 - 16);
      if (*(&v42 + 1))
      {
        v9 = *(&v42 + 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    sub_239F559A0(&v41, *(a1 + 22), a1);
    sub_239E56C80(&v41);
  }

  else
  {
    if (!atomic_load(v6))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_21;
    }

    if (!atomic_load(v6))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_21:
      v38 = v44;
      v39 = v45;
      v40 = v46;
      if (v46)
      {
        v12 = (v46 - 16);
        if (*(&v39 + 1))
        {
          v12 = *(&v39 + 1);
        }

        atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
      }

      sub_239F55B14(&v38, *(a1 + 22), a1);
      sub_239E56C80(&v38);
    }

    else
    {
      if (!atomic_load(v6))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v35 = v44;
        v36 = v45;
        v37 = v46;
        if (v46)
        {
          v14 = (v46 - 16);
          if (*(&v36 + 1))
          {
            v14 = *(&v36 + 1);
          }

          atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
        }

        sub_239F55CA4(&v35, *(a1 + 22), a1);
        sub_239E56C80(&v35);
      }

      else
      {
        if (!atomic_load(v6))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v32 = v44;
          v33 = v45;
          v34 = v46;
          if (v46)
          {
            v16 = (v46 - 16);
            if (*(&v33 + 1))
            {
              v16 = *(&v33 + 1);
            }

            atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
          }

          sub_239F55E10(&v32, *(a1 + 22), a1);
          sub_239E56C80(&v32);
        }

        else
        {
          if (!atomic_load(v6))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v29 = v44;
            v30 = v45;
            v31 = v46;
            if (v46)
            {
              v18 = (v46 - 16);
              if (*(&v30 + 1))
              {
                v18 = *(&v30 + 1);
              }

              atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
            }

            sub_239F55F88(&v29, *(a1 + 22), a1);
            sub_239E56C80(&v29);
          }

          else
          {
            if (!atomic_load(v6))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v26 = v44;
              v27 = v45;
              v28 = v46;
              if (v46)
              {
                v20 = (v46 - 16);
                if (*(&v27 + 1))
                {
                  v20 = *(&v27 + 1);
                }

                atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
              }

              sub_239F560FC(&v26, *(a1 + 22), a1);
              sub_239E56C80(&v26);
            }

            else
            {
              if (!atomic_load(v6))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v23 = v44;
                v24 = v45;
                v25 = v46;
                if (v46)
                {
                  v22 = (v46 - 16);
                  if (*(&v24 + 1))
                  {
                    v22 = *(&v24 + 1);
                  }

                  atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
                }

                sub_239F56268(&v23, *(a1 + 22), a1);
                sub_239E56C80(&v23);
              }
            }
          }
        }
      }
    }
  }

  sub_239E56C80(&v44);
}

void sub_239F567E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239E56C80(&a9);
  sub_239E56C80(v9 - 80);
  _Unwind_Resume(a1);
}

void sub_239F568A0(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239E5A31C(v42, a4 * a8);
  v37 = a7;
  v14 = sub_239F57BA0(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239F57C34(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = (*(v38[4] + 4 * v27 * v18 + 4 * v36) * a8);
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239E56C3C(&v39);
        v33 = *(v41 + 4 * v30);
        sub_239E56C3C(v42);
        *(v43 + 4 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239F57C34(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(a1[4] + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = (v21 * a8);
  v23 = a8;
  v24 = (v20 * a8);
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239E56C3C(&v39);
    v26 = *(v41 + 4 * v22);
    sub_239E56C3C(v42);
    *(v43 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F56B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F56B98(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  sub_239E85F74(v47, a4 * a8);
  v40 = a7;
  v13 = sub_239E85EB8(a7);
  v14 = *(v13 + 16);
  v44 = *v13;
  v45 = v14;
  v15 = *(v13 + 32);
  v46 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v45 + 1))
    {
      v16 = *(&v45 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (!v44)
  {
    sub_239EC6F88(a7, v47);
    goto LABEL_10;
  }

  v39 = a5;
  v41 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v17 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      v29 = 16 * v28;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v41;
        v28 += a8;
        v29 += 16 * a8;
        if (*v41 / v17 <= v27)
        {
          goto LABEL_8;
        }
      }

      v30 = (*(v41[4] + 4 * v27 * v17 + 4 * v39) * a8);
      v31 = 16 * v30;
      v32 = a8;
      v33 = v29;
      v34 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v47[0].n128_u64[0] <= v34 || v44 <= v30)
        {
          break;
        }

        sub_239E86480(&v44);
        v36 = v46;
        sub_239E86480(v47);
        *(v48 + v33) = *(v36 + v31);
        ++v30;
        v31 += 16;
        ++v34;
        v33 += 16;
        if (!--v32)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC6F88(v40, v47);
    }

    goto LABEL_10;
  }

  v18 = 0;
  v42 = 0;
  v37 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v18 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v18)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v19 = *(a1[4] + 4 * v18 * a6 + 4 * v37 - 4);
  }

  else
  {
    v19 = v18;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v42;
    a5 = v39;
    a2 = v41;
    goto LABEL_27;
  }

  v20 = (v19 * a8);
  v21 = 16 * v20;
  v22 = 16 * (v42 * a8);
  v23 = a8;
  v24 = (v42 * a8);
  while (((v42 * a8) & 0x80000000) == 0 && (v20 & 0x8000000000000000) == 0)
  {
    if (v47[0].n128_u64[0] <= v24 || v44 <= v20)
    {
      break;
    }

    sub_239E86480(&v44);
    v26 = v46;
    sub_239E86480(v47);
    *(v48 + v22) = *(v26 + v21);
    ++v20;
    v21 += 16;
    ++v24;
    v22 += 16;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v44);
  sub_239E56C80(v47);
}

void sub_239F56EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F56EEC(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_239EC7200(v41, a4 * a8);
  v37 = a7;
  v14 = sub_239EC4DC4(a7);
  v15 = *(v14 + 16);
  v38 = *v14;
  v39 = v15;
  v16 = *(v14 + 32);
  v40 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v39 + 1))
    {
      v17 = *(&v39 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v38)
  {
    sub_239EC7274(a7, v41);
    goto LABEL_10;
  }

  v36 = a5;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        v28 += a8;
        if (*a2 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = (*(a2[4] + 4 * v27 * v18 + 4 * v36) * a8);
      v30 = a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v29 & 0x8000000000000000) == 0)
      {
        if (v41[0].n128_u64[0] <= v31 || v38 <= v29)
        {
          break;
        }

        sub_239EBF2E0(&v38);
        v33 = *(v40 + 4 * v29);
        sub_239EBF2E0(v41);
        *(v42 + 4 * v31) = v33;
        ++v29;
        ++v31;
        if (!--v30)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC7274(v37, v41);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(a1[4] + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    goto LABEL_27;
  }

  v22 = (v21 * a8);
  v23 = a8;
  v24 = (v20 * a8);
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v41[0].n128_u64[0] <= v24 || v38 <= v22)
    {
      break;
    }

    sub_239EBF2E0(&v38);
    v26 = *(v40 + 4 * v22);
    sub_239EBF2E0(v41);
    *(v42 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v38);
  sub_239E56C80(v41);
}

void sub_239F57190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F571DC(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239F57EF0(v42, a4 * a8);
  v37 = a7;
  v14 = sub_239EC4E58(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239F57F64(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = (*(v38[4] + 4 * v27 * v18 + 4 * v36) * a8);
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239EC85E4(&v39);
        v33 = *(v41 + 4 * v30);
        sub_239EC85E4(v42);
        *(v43 + 4 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239F57F64(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(a1[4] + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = (v21 * a8);
  v23 = a8;
  v24 = (v20 * a8);
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239EC85E4(&v39);
    v26 = *(v41 + 4 * v22);
    sub_239EC85E4(v42);
    *(v43 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F57488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F574D4(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239EC7040(v42, a4 * a8);
  v37 = a7;
  v14 = sub_239EC70B4(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239EC7148(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = (*(v38[4] + 4 * v27 * v18 + 4 * v36) * a8);
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239EC9804(&v39);
        v33 = *(v41 + 2 * v30);
        sub_239EC9804(v42);
        *(v43 + 2 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC7148(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(a1[4] + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = (v21 * a8);
  v23 = a8;
  v24 = (v20 * a8);
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239EC9804(&v39);
    v26 = *(v41 + 2 * v22);
    sub_239EC9804(v42);
    *(v43 + 2 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F57780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F577CC(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = off_284D15DF8;
  sub_239EB5D90(a1, a2);
}

void sub_239F57864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F578A0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F578C0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return sub_239F57A6C(a1);
}

unint64_t sub_239F578D8(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = ((*a1)[4] + 4);
    v3 = **a1;
    do
    {
      v4 = bswap64(0x9E3779B97F4A7C55 * (*v2 + ((*(v2 - 1) + *v2 + (*(v2 - 1) + *v2) * (*(v2 - 1) + *v2)) >> 1)));
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

void sub_239F57A54(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = off_284D15DF8;
  sub_239EB5D90(a2, v2);
}

uint64_t *sub_239F57A6C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F57AE4(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t sub_239F57B88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CC8](a2, v3);
}

uint64_t sub_239F57BA0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F57CEC(a1))
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

    return MEMORY[0x282207DB0](a1, sub_239F57D24, &stru_284D17A80);
  }
}

__n128 sub_239F57C34(uint64_t *a1, __n128 *a2)
{
  if ((sub_239F57CEC(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239F57DE0(a1, v10);
  }

  v4 = sub_239F57EB4(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239F57CEC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
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
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F57D84(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F57DE0(uint64_t *a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  sub_239E5B3EC(v4, a1);
  a1[1] = &off_284D15838;
  sub_239EC8A68(a1, a2);
}

void sub_239F57E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F57EB4(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F755B8();
  }

  return sub_239EC8984(a1);
}

uint64_t sub_239F57EF0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F5801C(a1, a2, &v6);
  return a1;
}

__n128 sub_239F57F64(uint64_t *a1, __n128 *a2)
{
  if ((sub_239F58388(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_239EEE9B4(a1, v10);
  }

  v4 = sub_239F583C0(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_239F5801C(unint64_t *a1, unint64_t a2, int **a3)
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
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239EC8628(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_239EC8628(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD40)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD30)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_239EC8628(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD40)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD30)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239F58388(pxrInternal__aapl__pxrReserved__::VtValue *a1)
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
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A68);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F583C0(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_239F75624();
  }

  return sub_239EF3E70(a1);
}

uint64_t sub_239F583FC(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v3 <= v2)
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = v3;
    }

    while (v5 != v3)
    {
      v6 = a1 + v3;
      v7 = *(a1 + v3++);
      if (v7 != *(v6 + 1))
      {
        v5 = v3 - 1;
        break;
      }
    }

    if (v5 < a2 - 3 && *(a1 + 2 + v5) == *(a1 + v5 + 3))
    {
      v5 += 3;
    }

    ++v4;
    v3 = v5 + 1;
  }

  while (v5 + 1 < v2);
  return v4;
}

uint64_t sub_239F5847C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v3 <= v2)
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5 - v3;
    v7 = v3 - 1;
    v8 = (a1 + 2 + 2 * v3);
    while (v6)
    {
      v9 = *(v8 - 1);
      v10 = *v8++;
      --v6;
      ++v7;
      if (v9 != v10)
      {
        goto LABEL_11;
      }
    }

    v7 = v5;
LABEL_11:
    if (v7 < a2 - 3 && *(a1 + 4 + 2 * v7) == *(a1 + 2 * (v7 + 3)))
    {
      v7 += 3;
    }

    ++v4;
    v3 = v7 + 1;
  }

  while (v7 + 1 < v2);
  return v4;
}

uint64_t sub_239F5850C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 - 3;
  do
  {
    if (v3 <= v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6 - v3;
    v8 = v3 - 1;
    v9 = (a1 + 4 + 4 * v3);
    while (v7)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      --v7;
      ++v8;
      ++v9;
      if (v11 != v10)
      {
        goto LABEL_11;
      }
    }

    v8 = v6;
LABEL_11:
    if (v8 < v5 && *(a1 + 8 + 4 * v8) == *(a1 + 4 * (v8 + 3)))
    {
      v8 += 3;
    }

    ++v4;
    v3 = v8 + 1;
  }

  while (v8 + 1 < v2);
  return v4;
}

void sub_239F585A0(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 8 && a7 == a8)
  {
    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    if (a3 <= v21)
    {
      if (a3 < v21)
      {
        *(a1 + 8) = &v20[a3];
      }
    }

    else
    {
      sub_239E7967C(a1, a3 - v21);
      v20 = *a1;
    }

    memcpy(v20, v9, v8);
  }

  else
  {
    if (!a6)
    {
      NSLog(&cfstr_CouldnTCopyInd_0.isa, a2, a3, a4, a5);
      return;
    }

    v16 = __ROR8__(a6, 3);
    if (v16 == 2)
    {
      if (a3)
      {
        v22 = a2;
        v23 = a3;
        do
        {
          v24 = *v22;
          v22 += 2;
          if (v24 >= 0x100)
          {
            goto LABEL_34;
          }
        }

        while (--v23);
      }
    }

    else if (v16 == 4 && a3)
    {
      v17 = a2;
      v18 = a3;
      while (1)
      {
        v19 = *v17++;
        if (v19 >= 0x100)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_24;
        }
      }

LABEL_34:
      NSLog(&cfstr_CouldnTCopyInd.isa, a2, a3, a4, a5);
      return;
    }

LABEL_24:
    if (a7 == a8)
    {
      v25 = *(a1 + 8) - *a1;
      if (a3 <= v25)
      {
        if (a3 < v25)
        {
          *(a1 + 8) = *a1 + a3;
        }
      }

      else
      {
        sub_239E7967C(a1, a3 - v25);
      }

      if (a6 == 32)
      {
        if (v8)
        {
          v49 = *a1;
          do
          {
            v50 = *v9;
            v9 += 4;
            *v49++ = v50;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v47 = *a1;
          do
          {
            v48 = *v9;
            v9 += 2;
            *v47++ = v48;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v29 = *a1;
        do
        {
          v30 = *v9++;
          *v29++ = v30;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v26 = sub_239F5850C(a2, a3);
          v27 = sub_239F5A06C(v9, v8, v26);
          break;
        case 16:
          v26 = sub_239F5847C(a2, a3);
          v27 = sub_239F59F20(v9, v8, v26);
          break;
        case 8:
          v26 = sub_239F583FC(a2, a3);
          v27 = sub_239F59DD8(v9, v8, v26);
          break;
        default:
          goto LABEL_109;
      }

      v114 = v27;
      if (v27)
      {
        v51 = *a1;
        v52 = *(a1 + 8) - *a1;
        if (v26 <= v52)
        {
          if (v26 < v52)
          {
            *(a1 + 8) = &v51[v26];
          }
        }

        else
        {
          sub_239E7967C(a1, v26 - v52);
          v51 = *a1;
        }

        v53 = v114;
        v65 = objc_msgSend_bytes(v53, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
        v66 = v51;
        v67 = v26;
        goto LABEL_113;
      }

LABEL_109:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v28 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v28 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v28 = sub_239F5A1C4(a2, a3);
          break;
        default:
          goto LABEL_138;
      }

      v114 = v28;
      if (!v28)
      {
        goto LABEL_115;
      }

      v68 = 3 * (v8 >> 1);
      sub_239F59DB0(a1, v68);
      if (v11 == 8)
      {
        v69 = *a1;
        v70 = v114;
        v65 = objc_msgSend_bytes(v70, v71, v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
        v66 = v69;
        v67 = 3 * (v8 >> 1);
LABEL_113:
        memcpy(v66, v65, v67);
LABEL_114:
        v28 = v114;
LABEL_115:

        return;
      }

      if (a6 == 32)
      {
        v97 = v114;
        v109 = objc_msgSend_bytes(v97, v98, v99, v100, v105, v106, v107, v108, v101, v102, v103, v104);
        if (v8 >= 2)
        {
          v110 = 0;
          if (v68 <= 1)
          {
            v111 = 1;
          }

          else
          {
            v111 = 3 * (v8 >> 1);
          }

          do
          {
            *(*a1 + v110) = *(v109 + 4 * v110);
            ++v110;
          }

          while (v111 != v110);
        }

        goto LABEL_114;
      }

      if (a6 == 16)
      {
        v82 = v114;
        v94 = objc_msgSend_bytes(v82, v83, v84, v85, v90, v91, v92, v93, v86, v87, v88, v89);
        if (v8 >= 2)
        {
          v95 = 0;
          if (v68 <= 1)
          {
            v96 = 1;
          }

          else
          {
            v96 = 3 * (v8 >> 1);
          }

          do
          {
            *(*a1 + v95) = *(v94 + 2 * v95);
            ++v95;
          }

          while (v96 != v95);
        }

        goto LABEL_114;
      }

LABEL_138:
      v28 = 0;
      goto LABEL_115;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa, a2, a3, a4, a5);
      return;
    }

    if (a5)
    {
      v31 = 0;
      v32 = 0;
      v112 = a2 + 2;
      v113 = a2 + 4;
      while (1)
      {
        LODWORD(v33) = *(a4 + v31);
        if (v33 == 3)
        {
          break;
        }

        if (v33 == 2)
        {
          if (a6 != 8)
          {
            if (a6 != 32)
            {
              if (a6 != 16)
              {
                goto LABEL_93;
              }

LABEL_84:
              v42 = &v9[2 * v32];
              v115 = *v42;
              sub_239EED6A4(a1, &v115);
              v115 = v42[2];
              sub_239EED6A4(a1, &v115);
              v115 = v42[2];
              sub_239EED6A4(a1, &v115);
            }

            v43 = &v9[4 * v32];
            v115 = *v43;
            sub_239EED6A4(a1, &v115);
            v115 = *(v43 + 1);
            sub_239EED6A4(a1, &v115);
            v44 = *(v43 + 1);
            goto LABEL_92;
          }

          sub_239EED6A4(a1, &v9[v32]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          goto LABEL_84;
        }

        if (v33 == 1)
        {
          if (a6 == 8)
          {
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, &v9[v32]);
            goto LABEL_90;
          }

          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_93;
            }

LABEL_90:
            v115 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v115);
            v115 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v115);
            v115 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v115);
          }

          v115 = *&v9[4 * v32];
          sub_239EED6A4(a1, &v115);
          v115 = *&v9[4 * v32];
          sub_239EED6A4(a1, &v115);
          v44 = *&v9[4 * v32];
LABEL_92:
          v115 = v44;
          sub_239EED6A4(a1, &v115);
          goto LABEL_93;
        }

        if (a6 == 32)
        {
          goto LABEL_79;
        }

        if (a6 != 16)
        {
          if (a6 != 8 || v33 < 3)
          {
            goto LABEL_93;
          }

          v34 = 0;
          v35 = &v112[v32];
          do
          {
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, v35 - 1);
            sub_239EED6A4(a1, v35);
            ++v34;
            v33 = *(a4 + v31);
            ++v35;
          }

          while (v34 < v33 - 2);
        }

        if (v33 >= 3)
        {
          v36 = 0;
          v37 = &v113[2 * v32];
          do
          {
            v115 = v9[2 * v32];
            sub_239EED6A4(a1, &v115);
            v115 = *(v37 - 2);
            sub_239EED6A4(a1, &v115);
            v38 = *v37;
            v37 += 2;
            v115 = v38;
            sub_239EED6A4(a1, &v115);
            ++v36;
            v33 = *(a4 + v31);
          }

          while (v36 < v33 - 2);
LABEL_79:
          if (v33 >= 3)
          {
            v39 = 0;
            v40 = &v9[4 * v32 + 8];
            do
            {
              v115 = *&v9[4 * v32];
              sub_239EED6A4(a1, &v115);
              v115 = *(v40 - 1);
              sub_239EED6A4(a1, &v115);
              v41 = *v40;
              v40 += 4;
              v115 = v41;
              sub_239EED6A4(a1, &v115);
              ++v39;
            }

            while (v39 < *(a4 + v31) - 2);
          }
        }

LABEL_93:
        v32 += *(a4 + v31++);
        if (v31 == a5)
        {
          return;
        }
      }

      switch(a6)
      {
        case 8:
          sub_239EED6A4(a1, &v9[v32]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          sub_239EED6A4(a1, &v9[v32 + 2]);
          break;
        case 32:
LABEL_88:
          v46 = &v9[4 * v32];
          v115 = *v46;
          sub_239EED6A4(a1, &v115);
          v115 = *(v46 + 1);
          sub_239EED6A4(a1, &v115);
          v44 = *(v46 + 2);
          goto LABEL_92;
        case 16:
          break;
        default:
          goto LABEL_93;
      }

      v45 = &v9[2 * v32];
      v115 = *v45;
      sub_239EED6A4(a1, &v115);
      v115 = v45[2];
      sub_239EED6A4(a1, &v115);
      v115 = v45[4];
      sub_239EED6A4(a1, &v115);
      goto LABEL_88;
    }
  }
}

void sub_239F58DF8(const void **a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 0x10 && a7 == a8)
  {
    sub_239EB8C58(a1, a3);
    v21 = *a1;

    memcpy(v21, v9, 2 * v8);
    return;
  }

  if (!a6)
  {
    NSLog(&cfstr_CouldnTCopyInd_0.isa, a2, a3, a4, a5);
    return;
  }

  if (__ROR8__(a6, 3) != 4 || !a3)
  {
LABEL_11:
    if (a7 == a8)
    {
      sub_239EB8C58(a1, a3);
      if (a6 == 32)
      {
        if (v8)
        {
          v43 = *a1;
          do
          {
            v44 = *v9++;
            *v43++ = v44;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v25 = *a1;
          do
          {
            v26 = *v9;
            v9 = (v9 + 2);
            *v25++ = v26;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v19 = *a1;
        do
        {
          v20 = *v9;
          v9 = (v9 + 1);
          *v19++ = v20;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v22 = sub_239F5850C(a2, a3);
          v23 = sub_239F5A06C(v9, v8, 2 * v22);
          break;
        case 16:
          v22 = sub_239F5847C(a2, a3);
          v23 = sub_239F59F20(v9, v8, 2 * v22);
          break;
        case 8:
          v22 = sub_239F583FC(a2, a3);
          v23 = sub_239F59DD8(v9, v8, 2 * v22);
          break;
        default:
          goto LABEL_99;
      }

      if (v23)
      {
        v124 = v23;
        sub_239EB8C58(a1, v22);
        v45 = *a1;
        v46 = v124;
        v58 = objc_msgSend_bytes(v46, v47, v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
        v59 = 2 * v22;
        goto LABEL_94;
      }

LABEL_99:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v24 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v24 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v24 = sub_239F5A1C4(a2, a3);
          break;
        default:
          v24 = 0;
          goto LABEL_96;
      }

      v124 = v24;
      if (!v24)
      {
LABEL_96:

        return;
      }

      v60 = 3 * (v8 >> 1);
      sub_239EB8C58(a1, v60);
      if (v11 != 16)
      {
        if (a6 == 32)
        {
          v105 = v124;
          v117 = objc_msgSend_bytes(v105, v106, v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
          if (v8 >= 2)
          {
            v118 = *a1;
            if (v60 <= 1)
            {
              v119 = 1;
            }

            else
            {
              v119 = 3 * (v8 >> 1);
            }

            do
            {
              v120 = *v117++;
              *v118++ = v120;
              --v119;
            }

            while (v119);
          }
        }

        else if (a6 == 16)
        {
          v89 = v124;
          v101 = objc_msgSend_bytes(v89, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96);
          if (v8 >= 2)
          {
            v102 = *a1;
            if (v60 <= 1)
            {
              v103 = 1;
            }

            else
            {
              v103 = 3 * (v8 >> 1);
            }

            do
            {
              v104 = *v101++;
              *v102++ = v104;
              --v103;
            }

            while (v103);
          }
        }

        else
        {
          v73 = v124;
          v85 = objc_msgSend_bytes(v73, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
          if (v8 >= 2)
          {
            v86 = *a1;
            if (v60 <= 1)
            {
              v87 = 1;
            }

            else
            {
              v87 = 3 * (v8 >> 1);
            }

            do
            {
              v88 = *v85++;
              *v86++ = v88;
              --v87;
            }

            while (v87);
          }
        }

        goto LABEL_95;
      }

      v45 = *a1;
      v61 = v124;
      v58 = objc_msgSend_bytes(v61, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
      v59 = 6 * (v8 >> 1);
LABEL_94:
      memcpy(v45, v58, v59);
LABEL_95:
      v24 = v124;
      goto LABEL_96;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa, a2, a3, a4, a5);
      return;
    }

    if (!a5)
    {
      return;
    }

    v27 = 0;
    v28 = 0;
    v121 = a2 + 2;
    v122 = a2 + 1;
    v123 = (a2 + 2);
    while (1)
    {
      LODWORD(v29) = *(a4 + v27);
      if (v29 == 3)
      {
        break;
      }

      if (v29 == 2)
      {
        if (a6 != 8)
        {
          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_82;
            }

LABEL_73:
            v38 = v9 + v28;
            sub_239EA1088(a1, v38);
            sub_239EA1088(a1, v38 + 1);
            sub_239EA1088(a1, v38 + 1);
          }

          v39 = &v9[v28];
          v125 = *v39;
          sub_239EA1088(a1, &v125);
          v125 = v39[1];
          sub_239EA1088(a1, &v125);
          v40 = v39[1];
          goto LABEL_81;
        }

        v125 = *(v9 + v28);
        sub_239EA1088(a1, &v125);
        v125 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v125);
        v125 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v125);
        goto LABEL_73;
      }

      if (v29 == 1)
      {
        if (a6 == 8)
        {
          v125 = *(v9 + v28);
          sub_239EA1088(a1, &v125);
          v125 = *(v9 + v28);
          sub_239EA1088(a1, &v125);
          v125 = *(v9 + v28);
          sub_239EA1088(a1, &v125);
          goto LABEL_79;
        }

        if (a6 != 32)
        {
          if (a6 != 16)
          {
            goto LABEL_82;
          }

LABEL_79:
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v9 + v28);
        }

        v125 = v9[v28];
        sub_239EA1088(a1, &v125);
        v125 = v9[v28];
        sub_239EA1088(a1, &v125);
        v40 = v9[v28];
LABEL_81:
        v125 = v40;
        sub_239EA1088(a1, &v125);
        goto LABEL_82;
      }

      if (a6 == 32)
      {
        goto LABEL_68;
      }

      if (a6 != 16)
      {
        if (a6 != 8 || v29 < 3)
        {
          goto LABEL_82;
        }

        v30 = 0;
        v31 = &v121[v28];
        do
        {
          v125 = *(v9 + v28);
          sub_239EA1088(a1, &v125);
          v125 = *(v31 - 1);
          sub_239EA1088(a1, &v125);
          v32 = *v31++;
          v125 = v32;
          sub_239EA1088(a1, &v125);
          ++v30;
          v29 = *(a4 + v27);
        }

        while (v30 < v29 - 2);
      }

      if (v29 >= 3)
      {
        v33 = 0;
        v34 = v122 + v28;
        do
        {
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v34 - 1);
          sub_239EA1088(a1, v34);
          ++v33;
          v29 = *(a4 + v27);
          ++v34;
        }

        while (v33 < v29 - 2);
LABEL_68:
        if (v29 >= 3)
        {
          v35 = 0;
          v36 = &v123[4 * v28];
          do
          {
            v125 = v9[v28];
            sub_239EA1088(a1, &v125);
            v125 = *(v36 - 1);
            sub_239EA1088(a1, &v125);
            v37 = *v36;
            v36 += 4;
            v125 = v37;
            sub_239EA1088(a1, &v125);
            ++v35;
          }

          while (v35 < *(a4 + v27) - 2);
        }
      }

LABEL_82:
      v28 += *(a4 + v27++);
      if (v27 == a5)
      {
        return;
      }
    }

    switch(a6)
    {
      case 8:
        v125 = *(v9 + v28);
        sub_239EA1088(a1, &v125);
        v125 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v125);
        v125 = *(v9 + v28 + 2);
        sub_239EA1088(a1, &v125);
        break;
      case 32:
LABEL_77:
        v42 = &v9[v28];
        v125 = *v42;
        sub_239EA1088(a1, &v125);
        v125 = v42[1];
        sub_239EA1088(a1, &v125);
        v40 = v42[2];
        goto LABEL_81;
      case 16:
        break;
      default:
        goto LABEL_82;
    }

    v41 = v9 + v28;
    sub_239EA1088(a1, v41);
    sub_239EA1088(a1, v41 + 1);
    sub_239EA1088(a1, v41 + 2);
    goto LABEL_77;
  }

  v16 = a2;
  v17 = a3;
  while (1)
  {
    v18 = *v16++;
    if (v18 >= 0x10000)
    {
      break;
    }

    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  NSLog(&cfstr_CouldnTCopyInd.isa, a2, a3, a4, a5);
}

void sub_239F59610(const void **a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 0x20 && a7 == a8)
  {
    sub_239EB2474(a1, a3);
    v16 = *a1;

    memcpy(v16, v9, 4 * v8);
  }

  else
  {
    if (!a6)
    {
      NSLog(&cfstr_CouldnTCopyInd_0.isa, a2, a3, a4, a5);
      return;
    }

    if (a7 == a8)
    {
      sub_239EB2474(a1, a3);
      if (a6 == 32)
      {
        if (v8)
        {
          v39 = *a1;
          do
          {
            v40 = *v9;
            v9 += 2;
            *v39++ = v40;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v22 = *a1;
          do
          {
            v23 = *v9++;
            *v22++ = v23;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v14 = *a1;
        do
        {
          v15 = *v9;
          v9 = (v9 + 1);
          *v14++ = v15;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v19 = sub_239F5850C(a2, a3);
          v20 = sub_239F5A06C(v9, v8, 4 * v19);
          break;
        case 16:
          v19 = sub_239F5847C(a2, a3);
          v20 = sub_239F59F20(v9, v8, 4 * v19);
          break;
        case 8:
          v19 = sub_239F583FC(a2, a3);
          v20 = sub_239F59DD8(v9, v8, 4 * v19);
          break;
        default:
          goto LABEL_94;
      }

      if (v20)
      {
        v104 = v20;
        sub_239EB2474(a1, v19);
        v41 = *a1;
        v42 = v104;
        v54 = objc_msgSend_bytes(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
        v55 = 4 * v19;
LABEL_89:
        memcpy(v41, v54, v55);
LABEL_90:
        v21 = v104;
LABEL_91:

        return;
      }

LABEL_94:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v21 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v21 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v21 = sub_239F5A1C4(a2, a3);
          break;
        default:
          goto LABEL_115;
      }

      v104 = v21;
      if (!v21)
      {
        goto LABEL_91;
      }

      v56 = 3 * (v8 >> 1);
      sub_239EB2474(a1, v56);
      if (v11 == 32)
      {
        v41 = *a1;
        v57 = v104;
        v54 = objc_msgSend_bytes(v57, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
        v55 = 12 * (v8 >> 1);
        goto LABEL_89;
      }

      if (a6 == 16)
      {
        v85 = v104;
        v97 = objc_msgSend_bytes(v85, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
        if (v8 >= 2)
        {
          v98 = *a1;
          if (v56 <= 1)
          {
            v99 = 1;
          }

          else
          {
            v99 = 3 * (v8 >> 1);
          }

          do
          {
            v100 = *v97++;
            *v98++ = v100;
            --v99;
          }

          while (v99);
        }

        goto LABEL_90;
      }

      if (a6 == 8)
      {
        v69 = v104;
        v81 = objc_msgSend_bytes(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
        if (v8 >= 2)
        {
          v82 = *a1;
          if (v56 <= 1)
          {
            v83 = 1;
          }

          else
          {
            v83 = 3 * (v8 >> 1);
          }

          do
          {
            v84 = *v81++;
            *v82++ = v84;
            --v83;
          }

          while (v83);
        }

        goto LABEL_90;
      }

LABEL_115:
      v21 = 0;
      goto LABEL_91;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa, a2, a3, a4, a5);
      return;
    }

    if (a5)
    {
      v24 = 0;
      v25 = 0;
      v101 = a2 + 1;
      v102 = a2 + 2;
      v103 = (a2 + 4);
      while (1)
      {
        LODWORD(v26) = *(a4 + v24);
        if (v26 == 3)
        {
          break;
        }

        if (v26 == 2)
        {
          if (a6 != 8)
          {
            if (a6 != 32)
            {
              if (a6 != 16)
              {
                goto LABEL_78;
              }

LABEL_68:
              v35 = &v9[v25];
              v105 = *v35;
              sub_239E73254(a1, &v105);
              v105 = v35[1];
              sub_239E73254(a1, &v105);
              v105 = v35[1];
              sub_239E73254(a1, &v105);
            }

            sub_239E73254(a1, &v9[2 * v25]);
            v36 = &v9[2 * v25 + 2];
            goto LABEL_76;
          }

          v105 = *(v9 + v25);
          sub_239E73254(a1, &v105);
          v105 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v105);
          v105 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v105);
          goto LABEL_68;
        }

        if (v26 == 1)
        {
          if (a6 == 8)
          {
            v105 = *(v9 + v25);
            sub_239E73254(a1, &v105);
            v105 = *(v9 + v25);
            sub_239E73254(a1, &v105);
            v105 = *(v9 + v25);
            sub_239E73254(a1, &v105);
            goto LABEL_74;
          }

          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_78;
            }

LABEL_74:
            v105 = v9[v25];
            sub_239E73254(a1, &v105);
            v105 = v9[v25];
            sub_239E73254(a1, &v105);
            v105 = v9[v25];
            sub_239E73254(a1, &v105);
          }

          v36 = &v9[2 * v25];
          sub_239E73254(a1, v36);
LABEL_76:
          sub_239E73254(a1, v36);
LABEL_77:
          sub_239E73254(a1, v36);
          goto LABEL_78;
        }

        if (a6 == 32)
        {
          goto LABEL_63;
        }

        if (a6 != 16)
        {
          if (a6 != 8 || v26 < 3)
          {
            goto LABEL_78;
          }

          v27 = 0;
          v28 = v101 + v25;
          do
          {
            v105 = *(v9 + v25);
            sub_239E73254(a1, &v105);
            v105 = *(v28 - 1);
            sub_239E73254(a1, &v105);
            v29 = *v28++;
            v105 = v29;
            sub_239E73254(a1, &v105);
            ++v27;
            v26 = *(a4 + v24);
          }

          while (v27 < v26 - 2);
        }

        if (v26 >= 3)
        {
          v30 = 0;
          v31 = &v102[v25];
          do
          {
            v105 = v9[v25];
            sub_239E73254(a1, &v105);
            v105 = *(v31 - 1);
            sub_239E73254(a1, &v105);
            v32 = *v31++;
            v105 = v32;
            sub_239E73254(a1, &v105);
            ++v30;
            v26 = *(a4 + v24);
          }

          while (v30 < v26 - 2);
LABEL_63:
          if (v26 >= 3)
          {
            v33 = 0;
            v34 = &v103[4 * v25];
            do
            {
              sub_239E73254(a1, &v9[2 * v25]);
              sub_239E73254(a1, v34 - 1);
              sub_239E73254(a1, v34);
              ++v33;
              ++v34;
            }

            while (v33 < *(a4 + v24) - 2);
          }
        }

LABEL_78:
        v25 += *(a4 + v24++);
        if (v24 == a5)
        {
          return;
        }
      }

      switch(a6)
      {
        case 8:
          v105 = *(v9 + v25);
          sub_239E73254(a1, &v105);
          v105 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v105);
          v105 = *(v9 + v25 + 2);
          sub_239E73254(a1, &v105);
          break;
        case 32:
LABEL_72:
          v38 = &v9[2 * v25];
          sub_239E73254(a1, v38);
          sub_239E73254(a1, v38 + 1);
          v36 = v38 + 2;
          goto LABEL_77;
        case 16:
          break;
        default:
          goto LABEL_78;
      }

      v37 = &v9[v25];
      v105 = *v37;
      sub_239E73254(a1, &v105);
      v105 = v37[1];
      sub_239E73254(a1, &v105);
      v105 = v37[2];
      sub_239E73254(a1, &v105);
      goto LABEL_72;
    }
  }
}

void sub_239F59DB0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_239E7967C(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

id sub_239F59DD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F583FC(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v27 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v18 = v8;
    v19 = a2 - 2;
    if (a2 != 2)
    {
      v20 = 0;
      v21 = v8;
      do
      {
        if (v20 <= v19)
        {
          v22 = a2 - 2;
        }

        else
        {
          v22 = v20;
        }

        while (v22 != v20)
        {
          v23 = a1 + v20;
          v24 = *(a1 + v20++);
          if (v24 != *(v23 + 1))
          {
            v22 = v20 - 1;
            break;
          }
        }

        v25 = a1 + v22;
        *v21 = *(a1 + v22);
        if (v22)
        {
          v21[1] = *(v25 + 1);
          v26 = (v25 + 2);
        }

        else
        {
          v21[1] = *(v25 + 2);
          v26 = (v25 + 1);
        }

        v21[2] = *v26;
        if (v22 < a2 - 3 && *(a1 + 2 + v22) == *(a1 + v22 + 3))
        {
          v22 += 3;
        }

        v21 += 3;
        v20 = v22 + 1;
      }

      while (v22 + 1 < v19);
    }

    v27 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v8, v7, v14, v15, v16, v17, v10, v11, v12, v13);
    free(v18);
  }

  return v27;
}

id sub_239F59F20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F5847C(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v32 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v18 = v8;
    v19 = a2 - 2;
    if (a2 != 2)
    {
      v20 = 0;
      v21 = v8;
      do
      {
        if (v20 <= v19)
        {
          v22 = a2 - 2;
        }

        else
        {
          v22 = v20;
        }

        v23 = v22 - v20;
        v24 = v20 - 1;
        v25 = (a1 + 2 + 2 * v20);
        while (v23)
        {
          v26 = *(v25 - 1);
          v27 = *v25++;
          --v23;
          ++v24;
          if (v26 != v27)
          {
            goto LABEL_12;
          }
        }

        v24 = v22;
LABEL_12:
        v28 = (a1 + 2 * v24);
        if (v24)
        {
          v31 = v28[1];
          v29 = v28[2];
          v30 = v29;
        }

        else
        {
          v29 = v28[2];
          v30 = v28[1];
          v31 = v29;
        }

        *v21 = *v28;
        v21[1] = v31;
        v21[2] = v30;
        if (v24 < a2 - 3 && v29 == *(a1 + 2 * (v24 + 3)))
        {
          v24 += 3;
        }

        v21 += 3;
        v20 = v24 + 1;
      }

      while (v24 + 1 < v19);
    }

    v32 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v8, v7, v14, v15, v16, v17, v10, v11, v12, v13);
    free(v18);
  }

  return v32;
}

id sub_239F5A06C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F5850C(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v30 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v18 = v8;
    v19 = a2 - 2;
    if (a2 != 2)
    {
      v20 = 0;
      v21 = v8;
      do
      {
        if (v20 <= v19)
        {
          v22 = a2 - 2;
        }

        else
        {
          v22 = v20;
        }

        v23 = v22 - v20;
        v24 = v20 - 1;
        v25 = (a1 + 4 + 4 * v20);
        while (v23)
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          --v23;
          ++v24;
          ++v25;
          if (v27 != v26)
          {
            goto LABEL_12;
          }
        }

        v24 = v22;
LABEL_12:
        v28 = (a1 + 4 * v24);
        *v21 = *v28;
        if (v24)
        {
          v21[1] = v28[1];
          v29 = v28 + 2;
        }

        else
        {
          v21[1] = v28[2];
          v29 = v28 + 1;
        }

        v21[2] = *v29;
        if (v24 < a2 - 3 && *(a1 + 8 + 4 * v24) == *(a1 + 4 * (v24 + 3)))
        {
          v24 += 3;
        }

        v21 += 3;
        v20 = v24 + 1;
      }

      while (v24 + 1 < v19);
    }

    v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v18, v7, v14, v15, v16, v17, v10, v11, v12, v13);
    free(v18);
  }

  return v30;
}

id sub_239F5A1C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v5 = 3 * (a2 >> 1);
    v11 = malloc_type_malloc(v5, 0x100004077774924uLL);
    v16 = 0;
    v17 = v11;
    do
    {
      *v17 = *(a1 + v16);
      v17[1] = *(a1 + v16 + 1);
      v17[2] = *(a1 + v16 + 2);
      v17[3] = *(a1 + v16);
      v17[4] = *(a1 + v16 + 2);
      v17[5] = *(a1 + v16 + 3);
      v17 += 6;
      v16 += 4;
    }

    while (v16 < a2);
    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v11, v5, v12, v13, v14, v15, v7, v8, v9, v10);
    free(v11);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_239F5A2AC(uint64_t a1, unint64_t a2)
{
  v2 = 6 * (a2 >> 1);
  if (v2)
  {
    v5 = malloc_type_malloc(v2, 0x1000040BDFB0063uLL);
    v15 = v5;
    if (a2)
    {
      v16 = (a1 + 4);
      v17 = 3;
      v18 = v5;
      do
      {
        *v18 = *(v16 - 2);
        v18[1] = *(v16 - 1);
        v18[2] = *v16;
        v18[3] = *(v16 - 2);
        v18[4] = *v16;
        v18[5] = v16[1];
        v19 = v17 + 1;
        v17 += 4;
        v16 += 4;
        v18 += 6;
      }

      while (v19 < a2);
    }

    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v5, v2, v11, v12, v13, v14, v7, v8, v9, v10);
    free(v15);
  }

  return v2;
}

id sub_239F5A398(uint64_t a1, unint64_t a2)
{
  v2 = 12 * (a2 >> 1);
  if (v2)
  {
    v5 = malloc_type_malloc(v2, 0x100004052888210uLL);
    v15 = v5;
    if (a2)
    {
      v16 = (a1 + 8);
      v17 = 3;
      v18 = v5;
      do
      {
        *v18 = *(v16 - 2);
        v18[1] = *(v16 - 1);
        v18[2] = *v16;
        v18[3] = *(v16 - 2);
        v18[4] = *v16;
        v18[5] = v16[1];
        v19 = v17 + 1;
        v17 += 4;
        v16 += 4;
        v18 += 6;
      }

      while (v19 < a2);
    }

    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v5, v2, v11, v12, v13, v14, v7, v8, v9, v10);
    free(v15);
  }

  return v2;
}

void sub_239F5A570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = v12;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F5B18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MDLAABB::intersect(MDLAABB *this, float32x4_t *a2, float *a3, float *a4, unsigned __int8 *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v24[0] = *(this + 1);
  v24[1] = v5;
  v6 = a2[3].u8[0];
  v7 = a2[2];
  v8 = vmulq_f32(vsubq_f32(v24[v6], *a2), v7);
  v9 = vmulq_f32(vsubq_f32(v24[v6 ^ 1], *a2), v7);
  v10 = a2[3].u8[1];
  LODWORD(v11) = HIDWORD(a2->i64[0]);
  v12 = vmuls_lane_f32(*(&v24[v10] + 1) - v11, *v7.f32, 1);
  v13 = vmuls_lane_f32(*(&v24[v10 ^ 1] + 1) - v11, *v7.f32, 1);
  v14 = a2[3].u8[2];
  *&v5 = COERCE_FLOAT(a2->i64[1]);
  v15 = vmuls_lane_f32(*(&v24[v14] + 2) - *&v5, v7, 2);
  v16 = vmuls_lane_f32(*(&v24[v14 ^ 1] + 2) - *&v5, v7, 2);
  if (vmovn_s32(vcgtq_f32(v8, v9)).u8[0])
  {
    v17 = v9.f32[0];
  }

  else
  {
    v17 = v8.f32[0];
  }

  if (v13 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  if (v17 < v18)
  {
    v17 = v18;
  }

  if (v16 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if (v17 < v19)
  {
    v17 = v19;
  }

  *a3 = v17;
  v20 = vmovn_s32(vcgtq_f32(v9, v8)).u8[0];
  if (v12 >= v13)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v20)
  {
    v8.f32[0] = v9.f32[0];
  }

  if (v15 >= v16)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v21 < v8.f32[0])
  {
    v8.f32[0] = v21;
  }

  if (v22 < v8.f32[0])
  {
    v8.f32[0] = v22;
  }

  *a4 = v8.f32[0];
  *a5 = (v8.f32[0] == v9.f32[0]) | (2 * (v8.f32[0] == v13)) | (4 * (v8.f32[0] == v16));
  return *a4 >= *a3;
}

BOOL MDLAABB::intersect(__int128 *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float *a5, float *a6, _BYTE *a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v15[0] = a1[1];
  v15[1] = v7;
  a3->f32[0] = (*&v15[*(a2 + 48)] - *a2) * *(a2 + 32);
  a4->f32[0] = (*&v15[*(a2 + 48) ^ 1] - *a2) * *(a2 + 32);
  a3->f32[1] = (*(&v15[*(a2 + 49)] + 1) - *(a2 + 4)) * *(a2 + 36);
  a4->f32[1] = (*(&v15[*(a2 + 49) ^ 1] + 1) - *(a2 + 4)) * *(a2 + 36);
  a3[1].f32[0] = (*(&v15[*(a2 + 50)] + 2) - *(a2 + 8)) * *(a2 + 40);
  v8 = (*(&v15[*(a2 + 50) ^ 1] + 2) - *(a2 + 8)) * *(a2 + 40);
  v9 = *a4->f32;
  a4[1].f32[0] = v8;
  v10 = vbsl_s8(vcgt_f32(*a3, *&v9), *&v9, *a3);
  if (*v10.i32 < *&v10.i32[1])
  {
    v10.i32[0] = v10.i32[1];
  }

  if (v8 >= COERCE_FLOAT(*&a3[1]))
  {
    LODWORD(v8) = a3[1];
  }

  if (*v10.i32 >= v8)
  {
    v8 = *v10.i32;
  }

  *a5 = v8;
  v11 = vbsl_s8(vcgt_f32(*a4, *a3), *a4, *a3);
  v12 = COERCE_FLOAT(*&a3[1]);
  if (v12 < COERCE_FLOAT(*&a4[1]))
  {
    LODWORD(v12) = a4[1];
  }

  if (*&v11.i32[1] >= *v11.i32)
  {
    v13 = *v11.i32;
  }

  else
  {
    v13 = *&v11.i32[1];
  }

  if (v12 >= v13)
  {
    v12 = v13;
  }

  *a6 = v12;
  *a7 = (v12 == COERCE_FLOAT(*a4->f32)) | (2 * (v12 == COERCE_FLOAT(HIDWORD(*a4)))) | (4 * (v12 == COERCE_FLOAT(*&a4[1])));
  return *a6 >= *a5;
}

void sub_239F5BB8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLMeshBufferData;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

BOOL sub_239F5C490(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = objc_msgSend_path(a1, a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v13 = v12;
  if (v12)
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    v14 = v12;
    v25 = objc_msgSend_cStringUsingEncoding_(v14, v15, 4, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    sub_239E552A0(__p, v25);
    if (v31 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    v27 = fopen(v26, "rb");
    v28 = v27 != 0;
    if (v27)
    {
      fclose(v27);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void sub_239F5C538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

FILE *sub_239F5C560(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = objc_msgSend_path(a1, a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v13 = v12;
  if (v12)
  {
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    v14 = v12;
    v25 = objc_msgSend_cStringUsingEncoding_(v14, v15, 4, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    sub_239E552A0(__p, v25);
    if (v30 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    v27 = fopen(v26, "rb");
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void sub_239F5C5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

FILE *sub_239F5C624(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  result = sub_239F5C560(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (result)
  {
    v13 = result;
    fseek(result, 0, 2);
    v14 = MEMORY[0x23EE80600](v13);
    fseek(v13, 0, 0);
    fclose(v13);
    return v14;
  }

  return result;
}

void sub_239F5C680(uint64_t a1, uint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v22 = objc_msgSend_transform(v10, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v109 = v22;
  if (v22)
  {
    objc_msgSend_matrix(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    v34 = 0;
    v127[0] = v35;
    v127[1] = v36;
    v127[2] = v37;
    v127[3] = v38;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    do
    {
      *(&v118 + v34 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v127[v34])), a5, *&v127[v34], 1), a6, v127[v34], 2), a7, v127[v34], 3);
      ++v34;
    }

    while (v34 != 4);
    a5 = v119;
    a4 = v118;
    a7 = v121;
    a6 = v120;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v10;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v108 = v50;
    v61 = objc_msgSend_submeshes(v50, v51, v52, v53, 0, v58, v59, v60, v54, v55, v56, v57);
    v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v123, v129, v66, v67, v68, v69, 16, v63, v64, v65);
    if (v74)
    {
      v75 = *v124;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v124 != v75)
          {
            objc_enumerationMutation(v61);
          }

          v77 = *(*(&v123 + 1) + 8 * i);
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v118 = 0u;
          sub_239F5C9DC(a2, &v118, v70, v71, v72, v73);

          v78 = *(a2 + 8);
          *(v78 - 80) = a4;
          *(v78 - 64) = a5;
          *(v78 - 48) = a6;
          *(v78 - 32) = a7;
          objc_storeStrong((*(a2 + 8) - 16), a3);
          objc_storeStrong((*(a2 + 8) - 8), v77);
        }

        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v79, &v123, v129, v82, v83, v84, v85, 16, v73, v80, v81);
      }

      while (v74);
    }
  }

  v86 = objc_msgSend_children(v10, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v87 = v86;
  if (v86)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v88 = v86;
    v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v114, v128, v93, v94, v95, v96, 16, v90, v91, v92);
    if (v97)
    {
      v98 = *v115;
      do
      {
        for (j = 0; j != v97; ++j)
        {
          if (*v115 != v98)
          {
            objc_enumerationMutation(v88);
          }

          sub_239F5C680(a1, a2, *(*(&v114 + 1) + 8 * j), a4, a5, a6, a7);
        }

        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v100, &v114, v128, v104, v105, v106, v107, 16, v101, v102, v103);
      }

      while (v97);
    }
  }
}

_OWORD *sub_239F5C9DC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 16))
  {
    result = sub_239F5CDAC(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[3];
    v7[2] = a2[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    v11 = a2[4];
    a2[4] = 0uLL;
    v7[4] = v11;
    result = v7 + 5;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_239F5CA38(uint64_t a1, uint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v140 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v21 = objc_msgSend_transform(v9, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v119 = v21;
  if (v21)
  {
    objc_msgSend_matrix(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    v33 = 0;
    v137[0] = v34;
    v137[1] = v35;
    v137[2] = v36;
    v137[3] = v37;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    do
    {
      *(&v128 + v33 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v137[v33])), a5, *&v137[v33], 1), a6, v137[v33], 2), a7, v137[v33], 3);
      ++v33;
    }

    while (v33 != 4);
    a5 = v129;
    a4 = v128;
    a7 = v131;
    a6 = v130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v118 = v9;
    v60 = objc_msgSend_coarseMesh(v118, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v71 = objc_msgSend_submeshes(v60, v61, v62, v63, 0, v68, v69, v70, v64, v65, v66, v67);
    v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v133, v139, v76, v77, v78, v79, 16, v73, v74, v75);
    if (v84)
    {
      v85 = *v134;
      do
      {
        for (i = 0; i != v84; ++i)
        {
          if (*v134 != v85)
          {
            objc_enumerationMutation(v71);
          }

          v87 = *(*(&v133 + 1) + 8 * i);
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v128 = 0u;
          sub_239F5C9DC(a2, &v128, v80, v81, v82, v83);

          v88 = *(a2 + 8);
          *(v88 - 80) = a4;
          *(v88 - 64) = a5;
          *(v88 - 48) = a6;
          *(v88 - 32) = a7;
          objc_storeStrong((*(a2 + 8) - 16), v60);
          objc_storeStrong((*(a2 + 8) - 8), v87);
        }

        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v89, &v133, v139, v92, v93, v94, v95, 16, v83, v90, v91);
      }

      while (v84);
    }
  }

  v96 = objc_msgSend_children(v9, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  v97 = v96;
  if (v96)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v98 = v96;
    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v124, v138, v103, v104, v105, v106, 16, v100, v101, v102);
    if (v107)
    {
      v108 = *v125;
      do
      {
        for (j = 0; j != v107; ++j)
        {
          if (*v125 != v108)
          {
            objc_enumerationMutation(v98);
          }

          sub_239F5CA38(a1, a2, *(*(&v124 + 1) + 8 * j), a4, a5, a6, a7);
        }

        v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v110, &v124, v138, v114, v115, v116, v117, 16, v111, v112, v113);
      }

      while (v107);
    }
  }
}

uint64_t sub_239F5CDAC(__int128 **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    sub_239E797B4();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v7)
  {
    v7 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x199999999999999)
  {
    v10 = 0x333333333333333;
  }

  else
  {
    v10 = v7;
  }

  v25 = a1;
  if (v10)
  {
    sub_239F5CEE8(a1, v10);
  }

  v11 = 80 * v6;
  v22 = 0;
  v23 = v11;
  *(&v24 + 1) = 0;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  *(v11 + 32) = a2[2];
  *(v11 + 48) = v14;
  *v11 = v12;
  *(v11 + 16) = v13;
  v15 = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(v11 + 64) = v15;
  *&v24 = 80 * v6 + 80;
  v16 = a1[1];
  v17 = (80 * v6 + *a1 - v16);
  sub_239F5CF40(a1, *a1, v16, v17, a5, a6);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_239F5D0D4(&v22);
  return v21;
}

void sub_239F5CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239F5D0D4(va);
  _Unwind_Resume(a1);
}

void sub_239F5CEE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F5CF40(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v14 = a4;
  v13 = a4;
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = &v14;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      a4[2] = v6[2];
      a4[3] = v9;
      *a4 = v7;
      a4[1] = v8;
      v10 = v6[4];
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      a4[4] = v10;
      v6 += 5;
      a4 += 5;
    }

    while (v6 != a3);
    v14 = a4;
  }

  v12[3] = 1;
  sub_239F5CFE4(a1, a2, a3);
  return sub_239F5D030(v12);
}

void sub_239F5CFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 80;
    }

    while (v4 != a3);
  }
}

uint64_t sub_239F5D030(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239F5D07C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239F5D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 80;
    }

    while (v6 != a5);
  }
}

uint64_t sub_239F5D0D4(uint64_t a1)
{
  sub_239F5D10C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F5D10C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
  }
}

uint64_t sub_239F5D2FC@<X0>(uint64_t a1@<X0>, unsigned __int8 ***a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_239E5BAE0(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    a2[2] = *(a1 + 16);
  }

  LODWORD(v3) = *(a2 + 23);
  v4 = *a2;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = a2;
  }

  v5 = *v4;
  v6 = MEMORY[0x277D85DE0];
  if ((v5 & 0x80000000) != 0)
  {
    result = __maskrune(v5, 0x100uLL);
    LOBYTE(v3) = *(a2 + 23);
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x100;
    if (result)
    {
      goto LABEL_16;
    }
  }

  if ((v3 & 0x80) != 0)
  {
    v9 = *a2;
    v8 = **a2;
    if (v8 == 58)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = *a2;
    if (v8 == 58)
    {
      goto LABEL_16;
    }

    v9 = a2;
  }

  if (v8 != 95)
  {
    *v9 = 95;
    LOBYTE(v3) = *(a2 + 23);
  }

LABEL_16:
  v10 = (v3 & 0x80u) != 0;
  LOBYTE(v11) = v10;
  v3 = v3;
  if (v10)
  {
    v3 = a2[1];
  }

  if (v3 >= 2)
  {
    v12 = 1;
    do
    {
      v13 = *a2;
      if ((v11 & 1) == 0)
      {
        v13 = a2;
      }

      v14 = *(v13 + v12);
      if ((v14 & 0x80000000) != 0)
      {
        result = __maskrune(*(v13 + v12), 0x500uLL);
      }

      else
      {
        result = *(v6 + 4 * v14 + 60) & 0x500;
      }

      if (!result && (v14 - 45 > 0x32 || ((1 << (v14 - 45)) & 0x4000000002003) == 0))
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        *(v17 + v12) = 95;
      }

      ++v12;
      v16 = *(a2 + 23);
      v11 = v16 >> 63;
      if ((v16 & 0x80000000) != 0)
      {
        v16 = a2[1];
      }
    }

    while (v12 < v16);
  }

  return result;
}

void sub_239F5D4A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F5D8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a23;
  sub_239EBD408(&__p);
  _Unwind_Resume(a1);
}

void sub_239F5E204(void *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v134 = *MEMORY[0x277D85DE8];
  v5 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v112 = v5;
  v16 = objc_msgSend_transform(v5, v6, v7, v8, 0, v13, v14, v15, v9, v10, v11, v12);
  v25 = a2[1];
  v121 = *a2;
  v122 = v25;
  v26 = a2[3];
  v123 = a2[2];
  v124 = v26;
  v110 = v16;
  if (v16)
  {
    objc_msgSend_matrix(v16, v17, v18, v19, v124, v123, v122, v24, v20, v21, v22, v23);
    v27 = 0;
    v125 = v28;
    v126 = v29;
    v127 = v30;
    v128 = v31;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v32 = v121;
    v34 = v123;
    v33 = v122;
    v35 = v124;
    do
    {
      *(&v129 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v125 + v27))), v33, *&v125.f32[v27 / 4], 1), v34, *(&v125 + v27), 2), v35, *(&v125 + v27), 3);
      v27 += 16;
    }

    while (v27 != 64);
    v121 = v129;
    v122 = v130;
    v123 = v131;
    v124 = v132;
  }

  __asm { FMOV            V1.4S, #-1.0 }

  *a3 = _Q1;
  *(a3 + 16) = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v112;
  }

  else
  {
    v41 = 0;
  }

  v111 = v41;
  if (v111)
  {
    objc_msgSend_boundingBox(v111, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v129 = v53;
    v130 = v54;
    sub_239EB1E70(a3, &v129, &v121);
  }

  v55 = objc_msgSend_children(v112, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  if (v55)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v109 = v55;
    v56 = v55;
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v117, v133, v61, v62, v63, v64, 16, v58, v59, v60);
    if (v72)
    {
      v77 = *v118;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v118 != v77)
          {
            objc_enumerationMutation(v56);
          }

          v79 = *(*(&v117 + 1) + 8 * i);
          v87 = objc_msgSend_transform(v79, v65, v66, v67, v73, v74, v75, v76, v68, v69, v70, v71);
          if (v87)
          {
            v92 = objc_msgSend_transform(v79, v80, v81, v82, v88, v89, v90, v91, v83, v84, v85, v86);
            objc_msgSend_matrix(v92, v93, v94, v95, v100, v101, v102, v103, v96, v97, v98, v99);
            v108 = 0;
            v125 = v121;
            v126 = v122;
            v127 = v123;
            v128 = v124;
            v129 = 0u;
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            do
            {
              *(&v129 + v108) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*(&v125 + v108))), v105, *&v125.f32[v108 / 4], 1), v106, *(&v125 + v108), 2), v107, *(&v125 + v108), 3);
              v108 += 16;
            }

            while (v108 != 64);
            v113 = v129;
            v114 = v130;
            v115 = v131;
            v116 = v132;
          }

          else
          {
            v113 = v121;
            v114 = v122;
            v115 = v123;
            v116 = v124;
          }

          sub_239F5E204(v79, &v113, &v129);
          sub_239EB1DF0(a3, &v129);
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v65, &v117, v133, v73, v74, v75, v76, 16, v69, v70, v71);
      }

      while (v72);
    }

    v55 = v109;
  }
}

void sub_239F5E650(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F5E6A8(uint64_t a1)
{
  sub_239F5E6E0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F5E6E0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_239F5E73C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_239F5E650(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_239F5E6A8(&v17);
  return v11;
}

void sub_239F5E868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239F5E6A8(va);
  _Unwind_Resume(a1);
}

float sub_239F5E87C(int a1)
{
  v1 = a1 & 0x80000000;
  v2 = a1 & 0x3FF;
  v3 = a1 & 0x7C00;
  if ((a1 & 0x7C00) == 0)
  {
    v5 = __clz(v2);
    v6 = a1 << (10 - (v5 ^ 0x1F));
    v7 = 1124073472 - (v5 << 23);
    v8 = v6 & 0x3FE;
    if ((a1 & 0x3FF) != 0)
    {
      v2 = v8;
    }

    else
    {
      v7 = 0;
      v2 = 0;
    }

    goto LABEL_9;
  }

  if (v3 != 31744)
  {
    v7 = (v3 << 13) + 939524096;
LABEL_9:
    v4 = v7 | (v2 << 13) | v1;
    return *&v4;
  }

  v4 = v1 | 0x7F800000;
  if ((a1 & 0x3FF) != 0)
  {
    v4 = a1 | 0x7FFFFFFF;
  }

  return *&v4;
}

uint64_t sub_239F5E8F8(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = LODWORD(a1) & 0x7F800000;
  v3 = LODWORD(a1) & 0x7FFFFF;
  if ((LODWORD(a1) >> 23) < 0x8Fu)
  {
    v4 = v1 | ((v2 + v3 + 0x8000000) >> 13);
    v1 |= v3 >> (((939524096 - v2) >> 23) + 14);
    if (v2 > 0x38000000)
    {
      LOWORD(v1) = v4;
    }
  }

  else if (v3 && v2 == 2139095040)
  {
    LOWORD(v1) = HIWORD(a1) | 0x7FFF;
  }

  else
  {
    LOWORD(v1) = v1 | 0x7C00;
  }

  return v1;
}

void sub_239F5E970(void *a1, float *a2, void *a3, float *a4)
{
  v144 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  bzero(v143, 0x3FCuLL);
  v20 = objc_msgSend_format(v8, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v20 < 5u)) == 1)
  {
    objc_msgSend_initializationValue(v8, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    if (v20)
    {
      v32 = 0;
      do
      {
        v142 = v28;
        v33 = (&v142 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
        v29.n128_u32[0] = *v33;
        LODWORD(v143[v32++]) = *v33;
      }

      while (v20 != v32);
    }
  }

  v34 = objc_msgSend_map(v7, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v35 = objc_alloc(MEMORY[0x277CBEB28]);
  v47 = objc_msgSend_bytes(v34, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  v59 = objc_msgSend_length(v7, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
  v69 = objc_msgSend_initWithBytes_length_(v35, v60, v47, v59, v65, v66, v67, v68, v61, v62, v63, v64);
  v70 = v69;
  v82 = objc_msgSend_mutableBytes(v70, v71, v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
  v94 = objc_msgSend_offset(v8, v83, v84, v85, v90, v91, v92, v93, v86, v87, v88, v89);
  v106 = objc_msgSend_format(v8, v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
  v118 = objc_msgSend_length(v7, v107, v108, v109, v114, v115, v116, v117, v110, v111, v112, v113);
  v130 = objc_msgSend_length(v7, v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125);
  sub_239E70A2C((v82 + v94), v106, a2, 0, 0xC0000, 0, v143, a4, v131, v132, v118, v130);
  objc_msgSend_fillData_offset_(v7, v133, v69, 0, v138, v139, v140, v141, v134, v135, v136, v137);
}

void sub_239F5EB80(void *a1, float *a2, void *a3, void *a4, float *a5, void *a6, float *a7, float *a8, float *a9)
{
  v66 = a1;
  v16 = a3;
  v17 = a6;
  v29 = objc_msgSend_map(a4, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v41 = objc_msgSend_bytes(v29, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  v53 = objc_msgSend_map(v66, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  v65 = objc_msgSend_bytes(v53, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);

  sub_239E70888(v65, a2, v16, v41, a5, v17, a7, a8, a9);
}

void sub_239F5ECA8(void *result, float a2)
{
  if ((result[4] & 0x1000) != 0)
  {
    return;
  }

  v3 = ((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16;
  if (v3 > 5)
  {
    if (((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16 > 8)
    {
      if (v3 != 9)
      {
        if (v3 == 10)
        {
          v70 = result[8];
          if (v70)
          {
            v71 = result[4];
            v72 = result[2];
            v73 = result[5];
            v74 = (result[3] + 4);
            v75 = (*result + 8);
            do
            {
              *(v75 - 2) = 2143289344 * *(v74 - 2);
              if (v71 >= 2)
              {
                *(v75 - 1) |= ((511 * *(v74 - 1)) & 0x3FF) << 12;
                if (v71 != 2)
                {
                  *v75 |= (2044 * *v74) & 0xFFC;
                  if (v71 >= 4)
                  {
                    v75[1] |= v74[1] & 3;
                  }
                }
              }

              v74 = (v74 + v73);
              v75 = (v75 + v72);
              --v70;
            }

            while (v70);
          }
        }

        else if (v3 == 11)
        {
          if (a2 == 1.0)
          {
            v22 = result[8];
            if (v22)
            {
              v23 = result[4];
              v24 = result[2];
              v25 = result[5];
              v26 = (result[3] + 8);
              v27 = (*result + 8);
              do
              {
                *(v27 - 2) = (*(v26 - 2) * 511.0) << 22;
                if (v23 >= 2)
                {
                  *(v27 - 1) |= ((*(v26 - 1) * 511.0) & 0x3FF) << 12;
                  if (v23 != 2)
                  {
                    *v27 |= 4 * ((*v26 * 511.0) & 0x3FF);
                    if (v23 >= 4)
                    {
                      v27[1] |= v26[1] & 3;
                    }
                  }
                }

                v26 = (v26 + v25);
                v27 = (v27 + v24);
                --v22;
              }

              while (v22);
            }
          }

          else
          {
            sub_239F684E0(nullsub_46, result);
          }
        }

        return;
      }

      if (a2 == 1.0)
      {
        v46 = result[8];
        if (v46)
        {
          v47 = result[4];
          v48 = result[2];
          v49 = result[5];
          v50 = result[3] + 8;
          v51 = (*result + 8);
          do
          {
            *(v51 - 2) = 2143289344 * *(v50 - 8);
            if (v47 >= 2)
            {
              *(v51 - 1) |= (2093056 * *(v50 - 4)) & 0x3FF000;
              if (v47 != 2)
              {
                *v51 |= (2044 * *v50) & 0xFFC;
                if (v47 >= 4)
                {
                  v51[1] |= *(v50 + 4) & 3;
                }
              }
            }

            v50 += v49;
            v51 = (v51 + v48);
            --v46;
          }

          while (v46);
        }

        return;
      }
    }

    else
    {
      if (v3 == 6)
      {
        v34 = result[8];
        if (v34)
        {
          v35 = result[4];
          v36 = result[2];
          v37 = result[5];
          v38 = (result[3] + 4);
          v39 = (*result + 8);
          do
          {
            *(v39 - 2) = 2143289344 * *(v38 - 2);
            if (v35 >= 2)
            {
              *(v39 - 1) |= ((511 * *(v38 - 1)) & 0x3FF) << 12;
              if (v35 != 2)
              {
                *v39 |= (2044 * *v38) & 0xFFC;
                if (v35 >= 4)
                {
                  v39[1] |= v38[1] & 3;
                }
              }
            }

            v38 = (v38 + v37);
            v39 = (v39 + v36);
            --v34;
          }

          while (v34);
        }

        return;
      }

      if (v3 == 7)
      {
        v58 = result[8];
        if (v58)
        {
          v59 = result[4];
          v60 = result[2];
          v61 = result[5];
          v62 = (result[3] + 4);
          v63 = (*result + 8);
          do
          {
            *(v63 - 2) = 2143289344 * *(v62 - 2);
            if (v59 >= 2)
            {
              *(v63 - 1) |= ((511 * *(v62 - 1)) & 0x3FF) << 12;
              if (v59 != 2)
              {
                *v63 |= (2044 * *v62) & 0xFFC;
                if (v59 >= 4)
                {
                  v63[1] |= v62[1] & 3;
                }
              }
            }

            v62 = (v62 + v61);
            v63 = (v63 + v60);
            --v58;
          }

          while (v58);
        }

        return;
      }

      if (v3 != 8)
      {
        return;
      }

      if (a2 == 1.0)
      {
        v10 = result[8];
        if (v10)
        {
          v11 = result[4];
          v12 = result[2];
          v13 = result[5];
          v14 = result[3] + 8;
          v15 = (*result + 8);
          do
          {
            *(v15 - 2) = 2143289344 * *(v14 - 8);
            if (v11 >= 2)
            {
              *(v15 - 1) |= (2093056 * *(v14 - 4)) & 0x3FF000;
              if (v11 != 2)
              {
                *v15 |= (2044 * *v14) & 0xFFC;
                if (v11 >= 4)
                {
                  v15[1] |= *(v14 + 4) & 3;
                }
              }
            }

            v14 += v13;
            v15 = (v15 + v12);
            --v10;
          }

          while (v10);
        }

        return;
      }
    }

    sub_239F687A4(nullsub_51, result);
    return;
  }

  if (((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (a2 == 1.0)
        {
          v52 = result[8];
          if (v52)
          {
            v53 = result[4];
            v54 = result[2];
            v55 = result[5];
            v56 = (result[3] + 3);
            v57 = (*result + 8);
            do
            {
              *(v57 - 2) = 2143289344 * *(v56 - 3);
              if (v53 >= 2)
              {
                *(v57 - 1) |= (2093056 * *(v56 - 2)) & 0x3FF000;
                if (v53 != 2)
                {
                  *v57 |= (2044 * *(v56 - 1)) & 0xFFC;
                  if (v53 >= 4)
                  {
                    v57[1] |= *v56 & 3;
                  }
                }
              }

              v56 += v55;
              v57 = (v57 + v54);
              --v52;
            }

            while (v52);
          }
        }

        else
        {
          sub_239F6859C(nullsub_47, result);
        }
      }

      else if (v3 == 2)
      {
        v4 = result[8];
        if (v4)
        {
          v5 = result[4];
          v6 = result[2];
          v7 = result[5];
          v8 = (result[3] + 3);
          v9 = (*result + 8);
          do
          {
            *(v9 - 2) = 2143289344 * *(v8 - 3);
            if (v5 >= 2)
            {
              *(v9 - 1) |= (2093056 * *(v8 - 2)) & 0x3FF000;
              if (v5 != 2)
              {
                *v9 |= (2044 * *(v8 - 1)) & 0xFFC;
                if (v5 >= 4)
                {
                  v9[1] |= *v8 & 3;
                }
              }
            }

            v8 += v7;
            v9 = (v9 + v6);
            --v4;
          }

          while (v4);
        }
      }
    }

    else if (a2 == 1.0)
    {
      v28 = result[8];
      if (v28)
      {
        v29 = result[4];
        v30 = result[2];
        v31 = result[5];
        v32 = (result[3] + 3);
        v33 = (*result + 8);
        do
        {
          *(v33 - 2) = 2143289344 * *(v32 - 3);
          if (v29 >= 2)
          {
            *(v33 - 1) |= (2093056 * *(v32 - 2)) & 0x3FF000;
            if (v29 != 2)
            {
              *v33 |= (2044 * *(v32 - 1)) & 0xFFC;
              if (v29 >= 4)
              {
                v33[1] |= *v32 & 3;
              }
            }
          }

          v32 += v31;
          v33 = (v33 + v30);
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      sub_239F68648(nullsub_48, result);
    }

    return;
  }

  switch(v3)
  {
    case 3uLL:
      v40 = result[8];
      if (v40)
      {
        v41 = result[4];
        v42 = result[2];
        v43 = result[5];
        v44 = (result[3] + 3);
        v45 = (*result + 8);
        do
        {
          *(v45 - 2) = 2143289344 * *(v44 - 3);
          if (v41 >= 2)
          {
            *(v45 - 1) |= (2093056 * *(v44 - 2)) & 0x3FF000;
            if (v41 != 2)
            {
              *v45 |= (2044 * *(v44 - 1)) & 0xFFC;
              if (v41 >= 4)
              {
                v45[1] |= *v44 & 3;
              }
            }
          }

          v44 += v43;
          v45 = (v45 + v42);
          --v40;
        }

        while (v40);
      }

      break;
    case 4uLL:
      if (a2 != 1.0)
      {
        v76 = nullsub_50;
        goto LABEL_122;
      }

      v64 = result[8];
      if (v64)
      {
        v65 = result[4];
        v66 = result[2];
        v67 = result[5];
        v68 = (result[3] + 4);
        v69 = (*result + 8);
        do
        {
          *(v69 - 2) = 2143289344 * *(v68 - 2);
          if (v65 >= 2)
          {
            *(v69 - 1) |= ((511 * *(v68 - 1)) & 0x3FF) << 12;
            if (v65 != 2)
            {
              *v69 |= (2044 * *v68) & 0xFFC;
              if (v65 >= 4)
              {
                v69[1] |= v68[1] & 3;
              }
            }
          }

          v68 = (v68 + v67);
          v69 = (v69 + v66);
          --v64;
        }

        while (v64);
      }

      break;
    case 5uLL:
      if (a2 == 1.0)
      {
        v16 = result[8];
        if (v16)
        {
          v17 = result[4];
          v18 = result[2];
          v19 = result[5];
          v20 = (result[3] + 4);
          v21 = (*result + 8);
          do
          {
            *(v21 - 2) = 2143289344 * *(v20 - 2);
            if (v17 >= 2)
            {
              *(v21 - 1) |= ((511 * *(v20 - 1)) & 0x3FF) << 12;
              if (v17 != 2)
              {
                *v21 |= (2044 * *v20) & 0xFFC;
                if (v17 >= 4)
                {
                  v21[1] |= v20[1] & 3;
                }
              }
            }

            v20 = (v20 + v19);
            v21 = (v21 + v18);
            --v16;
          }

          while (v16);
        }

        return;
      }

      v76 = nullsub_49;
LABEL_122:
      sub_239F686F4(v76, result);
      return;
    default:
      return;
  }
}

void sub_239F5F604(void *result, float a2)
{
  if ((result[4] & 0x1000) != 0)
  {
    return;
  }

  v3 = ((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16;
  if (v3 > 5)
  {
    if (((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16 > 8)
    {
      if (v3 != 9)
      {
        if (v3 == 10)
        {
          v70 = result[8];
          if (v70)
          {
            v71 = result[4];
            v72 = result[2];
            v73 = result[5];
            v74 = (result[3] + 4);
            v75 = (*result + 8);
            do
            {
              *(v75 - 2) = -4194304 * *(v74 - 2);
              if (v71 >= 2)
              {
                *(v75 - 1) |= (-*(v74 - 1) & 0x3FF) << 12;
                if (v71 != 2)
                {
                  *v75 |= (-4 * *v74) & 0xFFC;
                  if (v71 >= 4)
                  {
                    v75[1] |= -v74[1] & 3;
                  }
                }
              }

              v74 = (v74 + v73);
              v75 = (v75 + v72);
              --v70;
            }

            while (v70);
          }
        }

        else if (v3 == 11)
        {
          if (a2 == 1.0)
          {
            v22 = result[8];
            if (v22)
            {
              v23 = result[4];
              v24 = result[2];
              v25 = result[5];
              v26 = (result[3] + 8);
              v27 = (*result + 8);
              do
              {
                *(v27 - 2) = (*(v26 - 2) * 1023.0) << 22;
                if (v23 >= 2)
                {
                  *(v27 - 1) |= ((*(v26 - 1) * 1023.0) & 0x3FF) << 12;
                  if (v23 != 2)
                  {
                    *v27 |= 4 * ((*v26 * 1023.0) & 0x3FF);
                    if (v23 >= 4)
                    {
                      v27[1] |= (v26[1] * 3.0) & 3;
                    }
                  }
                }

                v26 = (v26 + v25);
                v27 = (v27 + v24);
                --v22;
              }

              while (v22);
            }
          }

          else
          {
            sub_239F68850(nullsub_52, result);
          }
        }

        return;
      }

      if (a2 == 1.0)
      {
        v46 = result[8];
        if (v46)
        {
          v47 = result[4];
          v48 = result[2];
          v49 = result[5];
          v50 = (result[3] + 8);
          v51 = (*result + 8);
          do
          {
            *(v51 - 2) = -4194304 * *(v50 - 2);
            if (v47 >= 2)
            {
              *(v51 - 1) |= (-4096 * *(v50 - 1)) & 0x3FF000;
              if (v47 != 2)
              {
                *v51 |= (-4 * *v50) & 0xFFC;
                if (v47 >= 4)
                {
                  v51[1] |= -v50[1] & 3;
                }
              }
            }

            v50 = (v50 + v49);
            v51 = (v51 + v48);
            --v46;
          }

          while (v46);
        }

        return;
      }
    }

    else
    {
      if (v3 == 6)
      {
        v34 = result[8];
        if (v34)
        {
          v35 = result[4];
          v36 = result[2];
          v37 = result[5];
          v38 = (result[3] + 4);
          v39 = (*result + 8);
          do
          {
            *(v39 - 2) = -4194304 * *(v38 - 2);
            if (v35 >= 2)
            {
              *(v39 - 1) |= (-*(v38 - 1) & 0x3FF) << 12;
              if (v35 != 2)
              {
                *v39 |= (-4 * *v38) & 0xFFC;
                if (v35 >= 4)
                {
                  v39[1] |= -v38[1] & 3;
                }
              }
            }

            v38 = (v38 + v37);
            v39 = (v39 + v36);
            --v34;
          }

          while (v34);
        }

        return;
      }

      if (v3 == 7)
      {
        v58 = result[8];
        if (v58)
        {
          v59 = result[4];
          v60 = result[2];
          v61 = result[5];
          v62 = (result[3] + 4);
          v63 = (*result + 8);
          do
          {
            *(v63 - 2) = -4194304 * *(v62 - 2);
            if (v59 >= 2)
            {
              *(v63 - 1) |= (-*(v62 - 1) & 0x3FF) << 12;
              if (v59 != 2)
              {
                *v63 |= (-4 * *v62) & 0xFFC;
                if (v59 >= 4)
                {
                  v63[1] |= -v62[1] & 3;
                }
              }
            }

            v62 = (v62 + v61);
            v63 = (v63 + v60);
            --v58;
          }

          while (v58);
        }

        return;
      }

      if (v3 != 8)
      {
        return;
      }

      if (a2 == 1.0)
      {
        v10 = result[8];
        if (v10)
        {
          v11 = result[4];
          v12 = result[2];
          v13 = result[5];
          v14 = (result[3] + 8);
          v15 = (*result + 8);
          do
          {
            *(v15 - 2) = -4194304 * *(v14 - 2);
            if (v11 >= 2)
            {
              *(v15 - 1) |= (-4096 * *(v14 - 1)) & 0x3FF000;
              if (v11 != 2)
              {
                *v15 |= (-4 * *v14) & 0xFFC;
                if (v11 >= 4)
                {
                  v15[1] |= -v14[1] & 3;
                }
              }
            }

            v14 = (v14 + v13);
            v15 = (v15 + v12);
            --v10;
          }

          while (v10);
        }

        return;
      }
    }

    sub_239F68B08(nullsub_57, result);
    return;
  }

  if (((result[4] & 0xFFFF0000uLL) - 0x10000) >> 16 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (a2 == 1.0)
        {
          v52 = result[8];
          if (v52)
          {
            v53 = result[4];
            v54 = result[2];
            v55 = result[5];
            v56 = (result[3] + 3);
            v57 = (*result + 8);
            do
            {
              *(v57 - 2) = -4194304 * *(v56 - 3);
              if (v53 >= 2)
              {
                *(v57 - 1) |= (-4096 * *(v56 - 2)) & 0x3FF000;
                if (v53 != 2)
                {
                  *v57 |= (-4 * *(v56 - 1)) & 0xFFC;
                  if (v53 >= 4)
                  {
                    v57[1] |= -*v56 & 3;
                  }
                }
              }

              v56 += v55;
              v57 = (v57 + v54);
              --v52;
            }

            while (v52);
          }
        }

        else
        {
          sub_239F68914(nullsub_53, result);
        }
      }

      else if (v3 == 2)
      {
        v4 = result[8];
        if (v4)
        {
          v5 = result[4];
          v6 = result[2];
          v7 = result[5];
          v8 = (result[3] + 3);
          v9 = (*result + 8);
          do
          {
            *(v9 - 2) = -4194304 * *(v8 - 3);
            if (v5 >= 2)
            {
              *(v9 - 1) |= (-4096 * *(v8 - 2)) & 0x3FF000;
              if (v5 != 2)
              {
                *v9 |= (-4 * *(v8 - 1)) & 0xFFC;
                if (v5 >= 4)
                {
                  v9[1] |= -*v8 & 3;
                }
              }
            }

            v8 += v7;
            v9 = (v9 + v6);
            --v4;
          }

          while (v4);
        }
      }
    }

    else if (a2 == 1.0)
    {
      v28 = result[8];
      if (v28)
      {
        v29 = result[4];
        v30 = result[2];
        v31 = result[5];
        v32 = (result[3] + 3);
        v33 = (*result + 8);
        do
        {
          *(v33 - 2) = -4194304 * *(v32 - 3);
          if (v29 >= 2)
          {
            *(v33 - 1) |= (-4096 * *(v32 - 2)) & 0x3FF000;
            if (v29 != 2)
            {
              *v33 |= (-4 * *(v32 - 1)) & 0xFFC;
              if (v29 >= 4)
              {
                v33[1] |= -*v32 & 3;
              }
            }
          }

          v32 += v31;
          v33 = (v33 + v30);
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      sub_239F689B8(nullsub_54, result);
    }

    return;
  }

  switch(v3)
  {
    case 3uLL:
      v40 = result[8];
      if (v40)
      {
        v41 = result[4];
        v42 = result[2];
        v43 = result[5];
        v44 = (result[3] + 3);
        v45 = (*result + 8);
        do
        {
          *(v45 - 2) = -4194304 * *(v44 - 3);
          if (v41 >= 2)
          {
            *(v45 - 1) |= (-4096 * *(v44 - 2)) & 0x3FF000;
            if (v41 != 2)
            {
              *v45 |= (-4 * *(v44 - 1)) & 0xFFC;
              if (v41 >= 4)
              {
                v45[1] |= -*v44 & 3;
              }
            }
          }

          v44 += v43;
          v45 = (v45 + v42);
          --v40;
        }

        while (v40);
      }

      break;
    case 4uLL:
      if (a2 != 1.0)
      {
        v76 = nullsub_56;
        goto LABEL_122;
      }

      v64 = result[8];
      if (v64)
      {
        v65 = result[4];
        v66 = result[2];
        v67 = result[5];
        v68 = (result[3] + 4);
        v69 = (*result + 8);
        do
        {
          *(v69 - 2) = -4194304 * *(v68 - 2);
          if (v65 >= 2)
          {
            *(v69 - 1) |= (-*(v68 - 1) & 0x3FF) << 12;
            if (v65 != 2)
            {
              *v69 |= (-4 * *v68) & 0xFFC;
              if (v65 >= 4)
              {
                v69[1] |= -v68[1] & 3;
              }
            }
          }

          v68 = (v68 + v67);
          v69 = (v69 + v66);
          --v64;
        }

        while (v64);
      }

      break;
    case 5uLL:
      if (a2 == 1.0)
      {
        v16 = result[8];
        if (v16)
        {
          v17 = result[4];
          v18 = result[2];
          v19 = result[5];
          v20 = (result[3] + 4);
          v21 = (*result + 8);
          do
          {
            *(v21 - 2) = -4194304 * *(v20 - 2);
            if (v17 >= 2)
            {
              *(v21 - 1) |= (-*(v20 - 1) & 0x3FF) << 12;
              if (v17 != 2)
              {
                *v21 |= (-4 * *v20) & 0xFFC;
                if (v17 >= 4)
                {
                  v21[1] |= -v20[1] & 3;
                }
              }
            }

            v20 = (v20 + v19);
            v21 = (v21 + v18);
            --v16;
          }

          while (v16);
        }

        return;
      }

      v76 = nullsub_55;
LABEL_122:
      sub_239F68A5C(v76, result);
      return;
    default:
      return;
  }
}

void sub_239F5FF24(float **a1, __n128 a2, float a3)
{
  v3 = a2.n128_f32[0];
  v5 = a1[4];
  if ((v5 & 0x1000) != 0)
  {
    if (v5 == 593924)
    {
      v45 = a1[8];
      if (v45)
      {
        v46 = a2.n128_f32[0] * 0.00097752;
        v47 = *(a1 + 8);
        v48 = a1[2];
        v49 = a1[5];
        v50 = a1[3] + 2;
        v51 = *a1 + 2;
        do
        {
          *(v51 - 2) = v46 * (*(v50 - 2) >> 22);
          if (v47 >= 2)
          {
            *(v51 - 1) = v46 * ((*(v50 - 1) >> 12) & 0x3FF);
            if (v47 != 2)
            {
              *v51 = v46 * ((*v50 >> 2) & 0x3FF);
              if (v47 >= 4)
              {
                v51[1] = (v3 * 0.33333) * (v50[1] & 3);
              }
            }
          }

          v50 = (v50 + v49);
          v51 = (v51 + v48);
          --v45;
        }

        while (v45);
      }
    }

    else if (v5 == 659460)
    {
      v23 = a1[8];
      if (v23)
      {
        v24 = a2.n128_f32[0] * 0.0019569;
        v25 = *(a1 + 8);
        v26 = a1[2];
        v27 = a1[5];
        v28 = a1[3] + 2;
        v29 = *a1 + 2;
        do
        {
          *(v29 - 2) = v24 * (*(v28 - 2) >> 22);
          if (v25 >= 2)
          {
            *(v29 - 1) = v24 * ((*(v28 - 1) >> 12) & 0x3FF);
            if (v25 != 2)
            {
              *v29 = v24 * ((*v28 >> 2) & 0x3FF);
              if (v25 >= 4)
              {
                v29[1] = (v28[1] & 3) * v3;
              }
            }
          }

          v28 = (v28 + v27);
          v29 = (v29 + v26);
          --v23;
        }

        while (v23);
      }
    }
  }

  else
  {
    v6 = ((a1[4] & 0xFFFF0000) - 0x10000) >> 16;
    if (v6 > 5)
    {
      if (((a1[4] & 0xFFFF0000) - 0x10000) >> 16 > 8)
      {
        switch(v6)
        {
          case 9uLL:
            if (a2.n128_f32[0] == 1.0)
            {
              v130 = a1[8];
              if (v130)
              {
                v131 = 0;
                v132 = 0;
                v133 = a1[4];
                v135 = *a1;
                v134 = a1[1];
                if (v133 >= v134)
                {
                  v133 = a1[1];
                }

                v136 = a1[4];
                if (v134 < v5)
                {
                  v136 = a1[1];
                }

                v138 = a1[2];
                v137 = a1[3];
                v139 = a1[5];
                v140 = a1[6];
                v141 = a1[7];
                do
                {
                  if (v132 >= v140)
                  {
                    if (v134)
                    {
                      v144 = 0;
                      do
                      {
                        v135[v144] = truncf(*(v141 + v144 * 4));
                        ++v144;
                      }

                      while (v134 != v144);
                    }
                  }

                  else
                  {
                    if (v133)
                    {
                      for (i = 0; i != v133; ++i)
                      {
                        v135[i] = *(v137 + i * 4);
                      }
                    }

                    v143 = v136;
                    if (v5 < v134)
                    {
                      do
                      {
                        v135[v143] = truncf(*(v141 + 4 * v143));
                        ++v143;
                      }

                      while ((v134 - v133 + v136) != v143);
                    }
                  }

                  v135 = (v135 + v138);
                  v137 += v139;
                  v132 += v139;
                  ++v131;
                }

                while (v131 != v130);
              }
            }

            else
            {

              sub_239F69094(sub_239F69220, a1, a2.n128_f32[0]);
            }

            break;
          case 0xAuLL:
            v212 = a1[8];
            if (v212)
            {
              v192 = 0;
              v193 = 0;
              v195 = *a1;
              v194 = a1[1];
              if (a1[4] >= v194)
              {
                v196 = a1[1];
              }

              else
              {
                v196 = a1[4];
              }

              if (v194 >= v5)
              {
                v197 = a1[4];
              }

              else
              {
                v197 = a1[1];
              }

              v207 = v197;
              v198 = a1[3];
              v210 = a1[2];
              v211 = a1[1];
              v199 = a1[7];
              v209 = a1[6];
              v208 = a1[5];
              v200 = 4 * v194;
              v201 = (v194 - v196 + v197);
              do
              {
                if (v193 >= v209)
                {
                  if (v211)
                  {
                    v204 = 0;
                    do
                    {
                      v195[v204 / 4] = sub_239F5E87C(*(v199 + v204)) * v3;
                      v204 += 4;
                    }

                    while (v200 != v204);
                  }
                }

                else
                {
                  if (v196)
                  {
                    for (j = 0; j != v196; ++j)
                    {
                      v195[j] = sub_239F5E87C(*(v198 + 2 * j)) * v3;
                    }
                  }

                  v203 = v207;
                  if (v5 < v211)
                  {
                    do
                    {
                      v195[v203] = sub_239F5E87C(*(v199 + 4 * v203)) * v3;
                      ++v203;
                    }

                    while (v201 != v203);
                  }
                }

                v195 = (v195 + v210);
                v198 += v208;
                v193 += v208;
                ++v192;
              }

              while (v192 != v212);
            }

            break;
          case 0xBuLL:
            if (a2.n128_f32[0] == 1.0)
            {
              v67 = a1[8];
              if (v67)
              {
                v68 = 0;
                v69 = 0;
                v70 = a1[4];
                v72 = *a1;
                v71 = a1[1];
                if (v70 >= v71)
                {
                  v70 = a1[1];
                }

                v73 = a1[4];
                if (v71 < v5)
                {
                  v73 = a1[1];
                }

                v75 = a1[2];
                v74 = a1[3];
                v76 = a1[5];
                v77 = a1[6];
                v78 = a1[7];
                do
                {
                  if (v69 >= v77)
                  {
                    if (v71)
                    {
                      v81 = 0;
                      do
                      {
                        v72[v81] = *(v78 + v81 * 4);
                        ++v81;
                      }

                      while (v71 != v81);
                    }
                  }

                  else
                  {
                    if (v70)
                    {
                      for (k = 0; k != v70; ++k)
                      {
                        v72[k] = *(v74 + k * 4);
                      }
                    }

                    v80 = v73;
                    if (v5 < v71)
                    {
                      do
                      {
                        v72[v80] = *(v78 + 4 * v80);
                        ++v80;
                      }

                      while ((v71 - v70 + v73) != v80);
                    }
                  }

                  v72 = (v72 + v75);
                  v74 += v76;
                  v69 += v76;
                  ++v68;
                }

                while (v68 != v67);
              }
            }

            else
            {

              sub_239F68BAC(sub_239F68D30, a1, a2.n128_f32[0]);
            }

            break;
        }
      }

      else
      {
        switch(v6)
        {
          case 6uLL:
            v98 = a1[8];
            if (v98)
            {
              v99 = 0;
              v100 = 0;
              v101 = a2.n128_f32[0] * 0.000015259;
              v103 = *a1;
              v102 = a1[1];
              if (a1[4] >= v102)
              {
                v104 = a1[1];
              }

              else
              {
                v104 = a1[4];
              }

              v105 = a1[4];
              if (v102 < v5)
              {
                v105 = a1[1];
              }

              v107 = a1[2];
              v106 = a1[3];
              v108 = a1[5];
              v109 = a1[6];
              v110 = a1[7];
              do
              {
                if (v100 >= v109)
                {
                  if (v102)
                  {
                    v113 = 0;
                    do
                    {
                      a3 = v101 * truncf(*(v110 + v113 * 4));
                      v103[v113++] = a3;
                    }

                    while (v102 != v113);
                  }
                }

                else
                {
                  if (v104)
                  {
                    for (m = 0; m != v104; ++m)
                    {
                      LOWORD(a3) = *(v106 + 2 * m);
                      a3 = v101 * LODWORD(a3);
                      v103[m] = a3;
                    }
                  }

                  v112 = v105;
                  if (v5 < v102)
                  {
                    do
                    {
                      a3 = v101 * truncf(*(v110 + 4 * v112));
                      v103[v112++] = a3;
                    }

                    while ((v102 - v104 + v105) != v112);
                  }
                }

                v103 = (v103 + v107);
                v106 += v108;
                v100 += v108;
                ++v99;
              }

              while (v99 != v98);
            }

            break;
          case 7uLL:
            v160 = a1[8];
            if (v160)
            {
              v161 = 0;
              v162 = 0;
              v163 = a2.n128_f32[0] * 0.000030519;
              v165 = *a1;
              v164 = a1[1];
              if (a1[4] >= v164)
              {
                v166 = a1[1];
              }

              else
              {
                v166 = a1[4];
              }

              v167 = a1[4];
              if (v164 < v5)
              {
                v167 = a1[1];
              }

              v169 = a1[2];
              v168 = a1[3];
              v170 = a1[5];
              v171 = a1[6];
              v172 = a1[7];
              do
              {
                if (v162 >= v171)
                {
                  if (v164)
                  {
                    v175 = 0;
                    do
                    {
                      v165[v175] = v163 * truncf(*(v172 + v175 * 4));
                      ++v175;
                    }

                    while (v164 != v175);
                  }
                }

                else
                {
                  if (v166)
                  {
                    for (n = 0; n != v166; ++n)
                    {
                      v165[n] = v163 * *(v168 + 2 * n);
                    }
                  }

                  v174 = v167;
                  if (v5 < v164)
                  {
                    do
                    {
                      v165[v174] = v163 * truncf(*(v172 + 4 * v174));
                      ++v174;
                    }

                    while ((v164 - v166 + v167) != v174);
                  }
                }

                v165 = (v165 + v169);
                v168 += v170;
                v162 += v170;
                ++v161;
              }

              while (v161 != v160);
            }

            break;
          case 8uLL:
            if (a2.n128_f32[0] == 1.0)
            {
              v30 = a1[8];
              if (v30)
              {
                v31 = 0;
                v32 = 0;
                v33 = a1[4];
                v35 = *a1;
                v34 = a1[1];
                if (v33 >= v34)
                {
                  v33 = a1[1];
                }

                v36 = a1[4];
                if (v34 < v5)
                {
                  v36 = a1[1];
                }

                v38 = a1[2];
                v37 = a1[3];
                v39 = a1[5];
                v40 = a1[6];
                v41 = a1[7];
                do
                {
                  if (v32 >= v40)
                  {
                    if (v34)
                    {
                      v44 = 0;
                      do
                      {
                        v35[v44] = *(v41 + v44 * 4);
                        ++v44;
                      }

                      while (v34 != v44);
                    }
                  }

                  else
                  {
                    if (v33)
                    {
                      for (ii = 0; ii != v33; ++ii)
                      {
                        v35[ii] = *(v37 + ii * 4);
                      }
                    }

                    v43 = v36;
                    if (v5 < v34)
                    {
                      do
                      {
                        v35[v43] = *(v41 + 4 * v43);
                        ++v43;
                      }

                      while ((v34 - v33 + v36) != v43);
                    }
                  }

                  v35 = (v35 + v38);
                  v37 += v39;
                  v32 += v39;
                  ++v31;
                }

                while (v31 != v30);
              }
            }

            else
            {

              sub_239F69230(sub_239F69220, a1, a2.n128_f32[0]);
            }

            break;
        }
      }
    }

    else if (((a1[4] & 0xFFFF0000) - 0x10000) >> 16 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v176 = 1.0;
          if (v3 == 1.0)
          {
            v177 = a1[8];
            if (v177)
            {
              v178 = 0;
              v179 = 0;
              v181 = *a1;
              v180 = a1[1];
              if (a1[4] >= v180)
              {
                v182 = a1[1];
              }

              else
              {
                v182 = a1[4];
              }

              v183 = a1[4];
              if (v180 < v5)
              {
                v183 = a1[1];
              }

              v185 = a1[2];
              v184 = a1[3];
              v186 = a1[5];
              v187 = a1[6];
              v188 = a1[7];
              do
              {
                if (v179 >= v187)
                {
                  if (v180)
                  {
                    v191 = 0;
                    do
                    {
                      v176 = truncf(*(v188 + v191 * 4));
                      v181[v191++] = v176;
                    }

                    while (v180 != v191);
                  }
                }

                else
                {
                  if (v182)
                  {
                    for (jj = 0; jj != v182; ++jj)
                    {
                      LOWORD(v176) = *(v184 + 2 * jj);
                      v176 = LODWORD(v176);
                      v181[jj] = v176;
                    }
                  }

                  v190 = v183;
                  if (v5 < v180)
                  {
                    do
                    {
                      v176 = truncf(*(v188 + 4 * v190));
                      v181[v190++] = v176;
                    }

                    while ((v180 - v182 + v183) != v190);
                  }
                }

                v181 = (v181 + v185);
                v184 += v186;
                v179 += v186;
                ++v178;
              }

              while (v178 != v177);
            }

            return;
          }

          v205 = sub_239F69084;
          a2.n128_f32[0] = v3;
        }

        else
        {
          if (v6 != 5)
          {
            return;
          }

          if (a2.n128_f32[0] == 1.0)
          {
            v52 = a1[8];
            if (v52)
            {
              v53 = 0;
              v54 = 0;
              v56 = *a1;
              v55 = a1[1];
              if (a1[4] >= v55)
              {
                v57 = a1[1];
              }

              else
              {
                v57 = a1[4];
              }

              v58 = a1[4];
              if (v55 < v5)
              {
                v58 = a1[1];
              }

              v60 = a1[2];
              v59 = a1[3];
              v61 = a1[5];
              v62 = a1[6];
              v63 = a1[7];
              do
              {
                if (v54 >= v62)
                {
                  if (v55)
                  {
                    v66 = 0;
                    do
                    {
                      v56[v66] = truncf(*(v63 + v66 * 4));
                      ++v66;
                    }

                    while (v55 != v66);
                  }
                }

                else
                {
                  if (v57)
                  {
                    for (kk = 0; kk != v57; ++kk)
                    {
                      v56[kk] = *(v59 + 2 * kk);
                    }
                  }

                  v65 = v58;
                  if (v5 < v55)
                  {
                    do
                    {
                      v56[v65] = truncf(*(v63 + 4 * v65));
                      ++v65;
                    }

                    while ((v55 - v57 + v58) != v65);
                  }
                }

                v56 = (v56 + v60);
                v59 += v61;
                v54 += v61;
                ++v53;
              }

              while (v53 != v52);
            }

            return;
          }

          v205 = sub_239F69074;
        }

        sub_239F68EE8(v205, a1, a2.n128_f32[0]);
        return;
      }

      v114 = a1[8];
      if (v114)
      {
        v115 = 0;
        v116 = 0;
        v117 = a2.n128_f32[0] * 0.007874;
        v119 = *a1;
        v118 = a1[1];
        if (a1[4] >= v118)
        {
          v120 = a1[1];
        }

        else
        {
          v120 = a1[4];
        }

        v121 = a1[4];
        if (v118 < v5)
        {
          v121 = a1[1];
        }

        v123 = a1[2];
        v122 = a1[3];
        v124 = a1[5];
        v125 = a1[6];
        v126 = a1[7];
        do
        {
          if (v116 >= v125)
          {
            if (v118)
            {
              v129 = 0;
              do
              {
                v119[v129] = v117 * truncf(*(v126 + v129 * 4));
                ++v129;
              }

              while (v118 != v129);
            }
          }

          else
          {
            if (v120)
            {
              for (mm = 0; mm != v120; ++mm)
              {
                v119[mm] = v117 * *(v122 + mm);
              }
            }

            v128 = v121;
            if (v5 < v118)
            {
              do
              {
                v119[v128] = v117 * truncf(*(v126 + 4 * v128));
                ++v128;
              }

              while ((v118 - v120 + v121) != v128);
            }
          }

          v119 = (v119 + v123);
          v122 += v124;
          v116 += v124;
          ++v115;
        }

        while (v115 != v114);
      }
    }

    else
    {
      if (v6)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            v7 = a1[8];
            if (v7)
            {
              v8 = 0;
              v9 = 0;
              v10 = a2.n128_f32[0] * 0.0039216;
              v12 = *a1;
              v11 = a1[1];
              if (a1[4] >= v11)
              {
                v13 = a1[1];
              }

              else
              {
                v13 = a1[4];
              }

              v14 = a1[4];
              if (v11 < v5)
              {
                v14 = a1[1];
              }

              v16 = a1[2];
              v15 = a1[3];
              v17 = a1[5];
              v18 = a1[6];
              v19 = a1[7];
              do
              {
                if (v9 >= v18)
                {
                  if (v11)
                  {
                    v22 = 0;
                    do
                    {
                      v12[v22] = v10 * *(v19 + v22 * 4);
                      ++v22;
                    }

                    while (v11 != v22);
                  }
                }

                else
                {
                  if (v13)
                  {
                    for (nn = 0; nn != v13; ++nn)
                    {
                      v12[nn] = v10 * *(v15 + nn);
                    }
                  }

                  v21 = v14;
                  if (v5 < v11)
                  {
                    do
                    {
                      v12[v21] = v10 * *(v19 + 4 * v21);
                      ++v21;
                    }

                    while ((v11 - v13 + v14) != v21);
                  }
                }

                v12 = (v12 + v16);
                v15 += v17;
                v9 += v17;
                ++v8;
              }

              while (v8 != v7);
            }
          }

          return;
        }

        if (a2.n128_f32[0] == 1.0)
        {
          v145 = a1[8];
          if (v145)
          {
            v146 = 0;
            v147 = 0;
            v149 = *a1;
            v148 = a1[1];
            if (a1[4] >= v148)
            {
              v150 = a1[1];
            }

            else
            {
              v150 = a1[4];
            }

            v151 = a1[4];
            if (v148 < v5)
            {
              v151 = a1[1];
            }

            v153 = a1[2];
            v152 = a1[3];
            v154 = a1[5];
            v155 = a1[6];
            v156 = a1[7];
            do
            {
              if (v147 >= v155)
              {
                if (v148)
                {
                  v159 = 0;
                  do
                  {
                    v149[v159] = truncf(*(v156 + v159 * 4));
                    ++v159;
                  }

                  while (v148 != v159);
                }
              }

              else
              {
                if (v150)
                {
                  for (i1 = 0; i1 != v150; ++i1)
                  {
                    v149[i1] = *(v152 + i1);
                  }
                }

                v158 = v151;
                if (v5 < v148)
                {
                  do
                  {
                    v149[v158] = truncf(*(v156 + 4 * v158));
                    ++v158;
                  }

                  while ((v148 - v150 + v151) != v158);
                }
              }

              v149 = (v149 + v153);
              v152 += v154;
              v147 += v154;
              ++v146;
            }

            while (v146 != v145);
          }

          return;
        }

        v206 = sub_239F68EC8;

LABEL_279:
        sub_239F68D3C(v206, a1, a2.n128_f32[0]);
        return;
      }

      v82 = 1.0;
      if (v3 != 1.0)
      {
        v206 = sub_239F68ED8;
        a2.n128_f32[0] = v3;

        goto LABEL_279;
      }

      v83 = a1[8];
      if (v83)
      {
        v84 = 0;
        v85 = 0;
        v87 = *a1;
        v86 = a1[1];
        if (a1[4] >= v86)
        {
          v88 = a1[1];
        }

        else
        {
          v88 = a1[4];
        }

        v89 = a1[4];
        if (v86 < v5)
        {
          v89 = a1[1];
        }

        v91 = a1[2];
        v90 = a1[3];
        v92 = a1[5];
        v93 = a1[6];
        v94 = a1[7];
        do
        {
          if (v85 >= v93)
          {
            if (v86)
            {
              v97 = 0;
              do
              {
                v82 = truncf(*(v94 + v97 * 4));
                v87[v97++] = v82;
              }

              while (v86 != v97);
            }
          }

          else
          {
            if (v88)
            {
              for (i2 = 0; i2 != v88; ++i2)
              {
                LOBYTE(v82) = *(v90 + i2);
                v82 = LODWORD(v82);
                v87[i2] = v82;
              }
            }

            v96 = v89;
            if (v5 < v86)
            {
              do
              {
                v82 = truncf(*(v94 + 4 * v96));
                v87[v96++] = v82;
              }

              while ((v86 - v88 + v89) != v96);
            }
          }

          v87 = (v87 + v91);
          v90 += v92;
          v85 += v92;
          ++v84;
        }

        while (v84 != v83);
      }
    }
  }
}